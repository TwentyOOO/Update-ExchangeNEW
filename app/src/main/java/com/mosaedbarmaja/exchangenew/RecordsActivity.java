package com.mosaedbarmaja.exchangenew;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class RecordsActivity extends Activity {

    // --- Views & State for Selection Mode ---
    private LinearLayout recordsContainer;
    private EditText searchInput;
    private Button btnSelect, btnDeleteSelected, btnCancelSelection, btnSelectAll;
    private HorizontalScrollView filterScrollView;

    // --- Data & Utilities ---
    private SharedPreferences preferences;
    private List<Transaction> allTransactions;
    private List<Transaction> currentlyDisplayedTransactions;
    private String ownerKey;
    private String ownerName;
    private DecimalFormat decimalFormat;
    private DecimalFormat yohoDecimalFormat;

    // --- State variables for selection ---
    private boolean isInSelectionMode = false;
    private final Set<Transaction> selectedTransactions = new HashSet<>();

    // --- Data Holder Classes ---
    private static class Transaction implements Comparable<Transaction> {
        long timestamp;
        String type, date, time, owner, details, whatsappMessage, beforeState, rawRecord;
        double amountAed, amountUsdt, amountYoho;

        @Override
        public int compareTo(Transaction other) {
            return Long.compare(other.timestamp, this.timestamp);
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            Transaction that = (Transaction) o;
            return rawRecord.equals(that.rawRecord);
        }

        @Override
        public int hashCode() {
            return rawRecord.hashCode();
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        ownerKey = getIntent().getStringExtra("owner_key");
        ownerName = getIntent().getStringExtra("owner_name");
        if (ownerName == null) ownerName = "السجلات";

        preferences = getSharedPreferences("GoldExchangeApp", Context.MODE_PRIVATE);
        setupFormatting();
        setupUI();
        loadAndDisplayRecords();
    }

    private void setupFormatting() {
        DecimalFormatSymbols symbols = new DecimalFormatSymbols(Locale.ENGLISH);
        decimalFormat = new DecimalFormat("#,##0.00", symbols);
        yohoDecimalFormat = new DecimalFormat("#,##0", symbols);
    }

    private void setupUI() {
        LinearLayout mainLayout = new LinearLayout(this);
        mainLayout.setOrientation(LinearLayout.VERTICAL);
        mainLayout.setBackgroundColor(Color.WHITE);
        mainLayout.setLayoutParams(new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT
        ));

        mainLayout.addView(createHeader());
        mainLayout.addView(createSearchAndFilterBar());

        // *** ملاحظة هامة للأداء ***
        // استخدام ScrollView مع بناء الواجهة بهذا الشكل سيء جداً للأداء
        // إذا كان هناك عدد كبير من السجلات (مثلاً أكثر من 50)، سيصبح التطبيق بطيئاً جداً وقد يتجمد.
        // الحل الصحيح هو استخدام RecyclerView بدلاً من ScrollView.
        ScrollView scrollView = new ScrollView(this);
        LinearLayout.LayoutParams scrollParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT
        );
        scrollParams.setMargins(0, 10, 0, 0);
        scrollView.setLayoutParams(scrollParams);

        recordsContainer = new LinearLayout(this);
        recordsContainer.setOrientation(LinearLayout.VERTICAL);
        recordsContainer.setPadding(20,10,20,20);
        scrollView.addView(recordsContainer);

        mainLayout.addView(scrollView);
        setContentView(mainLayout);
    }

    private View createHeader() {
        LinearLayout headerLayout = new LinearLayout(this);
        headerLayout.setOrientation(LinearLayout.HORIZONTAL);
        headerLayout.setBackgroundColor(Color.parseColor("#2C3E50"));
        headerLayout.setPadding(30, 30, 30, 30);
        headerLayout.setGravity(Gravity.CENTER_VERTICAL);

        Button backButton = new Button(this);
        backButton.setText("‹ رجوع");
        backButton.setTextColor(Color.WHITE);
        backButton.setBackgroundColor(Color.TRANSPARENT);
        backButton.setTextSize(16);
        backButton.setOnClickListener(v -> finish());
        headerLayout.addView(backButton);

        TextView title = new TextView(this);
        title.setText("سجل: " + ownerName);
        title.setTextColor(Color.WHITE);
        title.setTextSize(22);
        title.setTypeface(null, Typeface.BOLD);
        title.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        title.setLayoutParams(titleParams);
        headerLayout.addView(title);

        return headerLayout;
    }

    private View createSearchAndFilterBar() {
        LinearLayout searchFilterLayout = new LinearLayout(this);
        searchFilterLayout.setOrientation(LinearLayout.VERTICAL);
        searchFilterLayout.setPadding(20, 20, 20, 10);

        searchInput = new EditText(this);
        searchInput.setHint("🔎 ابحث هنا...");
        setDrawableBackground(searchInput, createShape(Color.parseColor("#F0F0F0"), 50, Color.parseColor("#E0E0E0")));
        searchInput.setPadding(40, 25, 40, 25);
        searchInput.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                filterAndDisplayData(s.toString());
            }
            @Override
            public void afterTextChanged(Editable s) {}
        });
        searchFilterLayout.addView(searchInput);

        filterScrollView = new HorizontalScrollView(this);
        filterScrollView.setHorizontalScrollBarEnabled(false);
        LinearLayout.LayoutParams hsvParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        hsvParams.setMargins(0,20,0,0);
        filterScrollView.setLayoutParams(hsvParams);

        LinearLayout filterLayout = new LinearLayout(this);
        filterLayout.setOrientation(LinearLayout.HORIZONTAL);
        filterLayout.setGravity(Gravity.CENTER_VERTICAL);

        // --- Selection Mode Buttons ---
        btnSelect = createFilterButton("تحديد", "#8E44AD");
        btnSelect.setOnClickListener(v -> toggleSelectionMode(true));

        btnCancelSelection = createFilterButton("إلغاء", "#7F8C8D");
        btnCancelSelection.setOnClickListener(v -> toggleSelectionMode(false));
        btnCancelSelection.setVisibility(View.GONE);

        btnSelectAll = createFilterButton("تحديد الكل", "#2980B9");
        btnSelectAll.setOnClickListener(v -> selectAllDisplayed());
        btnSelectAll.setVisibility(View.GONE);

        btnDeleteSelected = createFilterButton("حذف المحدد (0)", "#E74C3C");
        btnDeleteSelected.setOnClickListener(v -> {
            String message = "هل أنت متأكد من حذف السجلات المحددة (" + selectedTransactions.size() + ")؟";
            confirmDelete(new ArrayList<>(selectedTransactions), message);
        });
        btnDeleteSelected.setVisibility(View.GONE);

        filterLayout.addView(btnSelect);
        filterLayout.addView(btnCancelSelection);
        filterLayout.addView(btnSelectAll);
        filterLayout.addView(btnDeleteSelected);

        filterScrollView.addView(filterLayout);
        searchFilterLayout.addView(filterScrollView);
        return searchFilterLayout;
    }

    private Button createFilterButton(String text, String color) {
        Button button = new Button(this);
        button.setText(text);
        button.setTextSize(14);
        button.setTextColor(Color.WHITE);
        button.setPadding(40, 0, 40, 0);
        setDrawableBackground(button, createShape(Color.parseColor(color), 50, null));
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                100
        );
        params.setMarginEnd(15);
        button.setLayoutParams(params);
        return button;
    }

    private void toggleSelectionMode(boolean enable) {
        isInSelectionMode = enable;
        btnSelect.setVisibility(enable ? View.GONE : View.VISIBLE);
        btnCancelSelection.setVisibility(enable ? View.VISIBLE : View.GONE);
        btnSelectAll.setVisibility(enable ? View.VISIBLE : View.GONE);
        btnDeleteSelected.setVisibility(enable ? View.VISIBLE : View.GONE);

        if (!enable) {
            selectedTransactions.clear();
        }
        btnDeleteSelected.setText("حذف المحدد (" + selectedTransactions.size() + ")");
        filterAndDisplayData(searchInput.getText().toString()); // Refresh view
    }

    private void selectAllDisplayed() {
        if (currentlyDisplayedTransactions != null) {
            if(selectedTransactions.size() == currentlyDisplayedTransactions.size()){
                // If all are selected, deselect all
                selectedTransactions.clear();
            } else {
                // Otherwise, select all
                selectedTransactions.clear();
                selectedTransactions.addAll(currentlyDisplayedTransactions);
            }
        }
        btnDeleteSelected.setText("حذف المحدد (" + selectedTransactions.size() + ")");
        filterAndDisplayData(searchInput.getText().toString()); // Refresh view to update selection visuals
    }

    private void loadAndDisplayRecords() {
        allTransactions = new ArrayList<>();
        Set<String> recordsSet = preferences.getStringSet(MainActivity.RECORDS_PREFS_KEY, new HashSet<String>());

        for (String recordStr : recordsSet) {
            String[] parts = recordStr.split("\\|\\|", -1);
            if (parts.length >= 9) {
                Transaction t = new Transaction();
                try {
                    t.rawRecord = recordStr;
                    t.timestamp = Long.parseLong(parts[0]);
                    t.type = parts[1];
                    t.date = parts[2];
                    t.time = parts[3];
                    t.amountAed = Double.parseDouble(parts[4]);
                    t.amountUsdt = Double.parseDouble(parts[5]);
                    t.amountYoho = Double.parseDouble(parts[6]);
                    t.owner = parts[7];
                    t.details = parts[8];
                    t.whatsappMessage = parts.length > 10 ? parts[10] : "";
                    t.beforeState = parts.length > 12 ? parts[12] : "";

                    if (ownerKey.equals("ALL") || t.owner.equals(ownerKey)) {
                        allTransactions.add(t);
                    }
                } catch (Exception e) {
                    // Ignore
                }
            }
        }
        Collections.sort(allTransactions);
        filterAndDisplayData(searchInput.getText().toString());
    }

    private void filterAndDisplayData(String query) {
        List<Transaction> filteredList = new ArrayList<>();
        String lowerCaseQuery = query.toLowerCase();
        if (query.isEmpty()) {
            filteredList.addAll(allTransactions);
        } else {
            for (Transaction t : allTransactions) {
                if (transactionMatchesQuery(lowerCaseQuery, t)) {
                    filteredList.add(t);
                }
            }
        }
        displayRecords(filteredList);
    }

    private void displayRecords(List<Transaction> transactions) {
        recordsContainer.removeAllViews();
        currentlyDisplayedTransactions = transactions;

        if (transactions.isEmpty()) {
            TextView noRecordsText = new TextView(this);
            noRecordsText.setText("لا توجد سجلات لعرضها");
            noRecordsText.setGravity(Gravity.CENTER);
            noRecordsText.setPadding(0, 100, 0, 0);
            noRecordsText.setTextSize(18);
            recordsContainer.addView(noRecordsText);
            return;
        }

        for (Transaction t : transactions) {
            recordsContainer.addView(createRecordCard(t));
        }
    }

    private View createRecordCard(final Transaction t) {
        final LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);

        int backgroundColor = selectedTransactions.contains(t)
                ? Color.parseColor("#A9CCE3")
                : getCardBackgroundColor(t.type);
        setDrawableBackground(card, createShape(backgroundColor, 25, null));

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
        );
        params.setMargins(0, 0, 0, 20);
        card.setLayoutParams(params);
        card.setPadding(30, 30, 30, 30);

        card.setOnClickListener(v -> {
            if (isInSelectionMode) {
                if (selectedTransactions.contains(t)) {
                    selectedTransactions.remove(t);
                    setDrawableBackground(card, createShape(getCardBackgroundColor(t.type), 25, null));
                } else {
                    selectedTransactions.add(t);
                    setDrawableBackground(card, createShape(Color.parseColor("#A9CCE3"), 25, null));
                }
                btnDeleteSelected.setText("حذف المحدد (" + selectedTransactions.size() + ")");
            }
        });

        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);

        TextView typeText = new TextView(this);
        typeText.setText(getTransactionTypeDisplay(t.type));
        typeText.setTextColor(getTransactionColor(t.type));
        typeText.setTextSize(18);
        typeText.setTypeface(null, Typeface.BOLD);
        header.addView(typeText);

        TextView dateTimeText = new TextView(this);
        dateTimeText.setText(t.date + "  " + t.time);
        dateTimeText.setGravity(Gravity.END);
        dateTimeText.setTextColor(Color.DKGRAY);
        LinearLayout.LayoutParams dateParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        dateTimeText.setLayoutParams(dateParams);
        header.addView(dateTimeText);
        card.addView(header);

        View divider = new View(this);
        LinearLayout.LayoutParams divParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 2);
        divParams.setMargins(0, 20, 0, 20);
        divider.setLayoutParams(divParams);
        divider.setBackgroundColor(Color.parseColor("#E0E0E0"));
        card.addView(divider);

        LinearLayout body = new LinearLayout(this);
        body.setOrientation(LinearLayout.VERTICAL);

        if (t.amountAed > 0) body.addView(createAmountRow("AED 🇦🇪", decimalFormat.format(t.amountAed)));
        if (t.amountUsdt > 0) body.addView(createAmountRow("USDT 💵", decimalFormat.format(t.amountUsdt)));
        if (t.amountYoho > 0) body.addView(createAmountRow("YOHO 🪙", yohoDecimalFormat.format(t.amountYoho)));
        if (!t.details.isEmpty()) {
            TextView detailsText = new TextView(this);
            detailsText.setText("التفاصيل: " + t.details);
            detailsText.setTextColor(Color.DKGRAY);
            detailsText.setPadding(0, 10, 0, 0);
            body.addView(detailsText);
        }
        card.addView(body);

        LinearLayout footer = new LinearLayout(this);
        footer.setOrientation(LinearLayout.HORIZONTAL);
        footer.setGravity(Gravity.END);
        LinearLayout.LayoutParams footerParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        footerParams.setMargins(0, 20, 0, 0);
        footer.setLayoutParams(footerParams);

        if (t.beforeState != null && !t.beforeState.isEmpty()) {
            Button revertBtn = new Button(this);
            revertBtn.setText("↪ تراجع");
            revertBtn.setBackgroundColor(Color.parseColor("#F39C12"));
            revertBtn.setTextColor(Color.WHITE);
            LinearLayout.LayoutParams revertParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            revertParams.setMarginEnd(20);
            revertBtn.setLayoutParams(revertParams);
            revertBtn.setOnClickListener(v -> confirmRevertTransaction(t));
            footer.addView(revertBtn);
        }

        if (t.whatsappMessage != null && !t.whatsappMessage.isEmpty()) {
            Button shareBtn = new Button(this);
            shareBtn.setText("مشاركة");
            shareBtn.setBackgroundColor(Color.parseColor("#25D366"));
            shareBtn.setTextColor(Color.WHITE);
            shareBtn.setOnClickListener(v -> sendToWhatsApp(t.whatsappMessage));
            footer.addView(shareBtn);
        }
        card.addView(footer);

        return card;
    }

    private boolean transactionMatchesQuery(String query, Transaction t) {
        return getTransactionTypeDisplay(t.type).toLowerCase().contains(query) ||
                t.details.toLowerCase().contains(query) ||
                String.valueOf(t.amountAed).contains(query) ||
                String.valueOf(t.amountYoho).contains(query) ||
                t.date.contains(query) ||
                t.time.contains(query);
    }

    private TextView createAmountRow(String label, String value) {
        TextView tv = new TextView(this);
        String text = "<b>" + label + ":</b> " + value;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            tv.setText(Html.fromHtml(text, Html.FROM_HTML_MODE_LEGACY));
        } else {
            tv.setText(Html.fromHtml(text));
        }
        tv.setTextSize(18);
        tv.setTextColor(Color.BLACK);
        tv.setPadding(0, 5, 0, 5);
        return tv;
    }

    private GradientDrawable createShape(int color, float radius, Integer strokeColor) {
        GradientDrawable shape = new GradientDrawable();
        shape.setShape(GradientDrawable.RECTANGLE);
        shape.setColor(color);
        shape.setCornerRadius(radius);
        if (strokeColor != null) {
            shape.setStroke(2, strokeColor);
        }
        return shape;
    }

    private void setDrawableBackground(View view, GradientDrawable drawable) {
        view.setBackground(drawable);
    }

    private String getTransactionTypeDisplay(String type) {
        switch (type) {
            case "add": return "➕ إيداع";
            case "subtract": return "➖ خصم";
            case "reset": return "🔁 تصفير";
            case "agent_sale": return "📈 بيع";
            case "agent_custom_sale": return "✨ بيع مخصص";
            case "group_sale": return "👥 بيع جماعي";
            case "fund_agent_yoho": return "🪙 تمويل YOHO";
            case "withdraw_agent_yoho": return "💸 سحب YOHO";
            case "agent_aed_transfer": return "➡ تحويل AED";
            case "agent_fund": return "💰 تمويل وكيل";
            default: return type;
        }
    }

    private int getTransactionColor(String type) {
        switch (type) {
            case "add": case "agent_sale": case "agent_custom_sale": case "group_sale": case "fund_agent_yoho": case "agent_fund":
                return Color.parseColor("#27AE60");
            case "subtract": case "withdraw_agent_yoho":
                return Color.parseColor("#E74C3C");
            case "reset": case "agent_aed_transfer":
                return Color.parseColor("#F39C12");
            default:
                return Color.parseColor("#34495E");
        }
    }

    private int getCardBackgroundColor(String type) {
        switch (type) {
            case "add": case "agent_sale": case "agent_custom_sale": case "group_sale": case "fund_agent_yoho": case "agent_fund":
                return Color.parseColor("#E8F5E9");
            case "subtract": case "withdraw_agent_yoho":
                return Color.parseColor("#FFEBEE");
            default:
                return Color.parseColor("#FFFFFF");
        }
    }

    private void sendToWhatsApp(String message) {
        try {
            Intent intent = new Intent(Intent.ACTION_SEND);
            intent.setType("text/plain");
            intent.setPackage("com.whatsapp.w4b");
            intent.putExtra(Intent.EXTRA_TEXT, message);
            startActivity(intent);
        } catch (Exception e) {
            try {
                Intent intent = new Intent(Intent.ACTION_SEND);
                intent.setType("text/plain");
                intent.setPackage("com.whatsapp");
                intent.putExtra(Intent.EXTRA_TEXT, message);
                startActivity(intent);
            } catch (Exception e2) {
                Toast.makeText(this, "لم يتم العثور على تطبيق واتساب", Toast.LENGTH_SHORT).show();
            }
        }
    }

    private void confirmRevertTransaction(final Transaction transaction) {
        new AlertDialog.Builder(this)
                .setTitle("تأكيد التراجع")
                .setMessage("هل أنت متأكد من أنك تريد التراجع عن هذه المعاملة؟ ستتم استعادة الأرصدة إلى ما كانت عليه قبلها.")
                .setPositiveButton("نعم، تراجع", (dialog, which) -> revertTransaction(transaction))
                .setNegativeButton("إلغاء", null)
                .show();
    }

    private void revertTransaction(Transaction transaction) {
        try {
            if (transaction.owner.equals(MainActivity.OWNER_KEY_MAIN_WALLET)) {
                String[] parts = transaction.beforeState.split("\\|");
                SharedPreferences.Editor editor = preferences.edit();
                editor.putString("aed_wallet", parts[0]);
                editor.putString("usdt_wallet", parts[1]);
                editor.apply();
            } else if (transaction.owner.startsWith("AGENT:")) {
                String agentName = transaction.owner.substring(6);
                String[] parts = transaction.beforeState.split("\\|");
                double yohoBalance = Double.parseDouble(parts[0]);
                double aedBalance = Double.parseDouble(parts[1]);

                Set<String> agentsSet = preferences.getStringSet(MainActivity.AGENTS_PREFS_KEY, new HashSet<String>());
                Set<String> newAgentsSet = new HashSet<>();
                for (String agentData : agentsSet) {
                    if (!agentData.split("\\|")[0].equals(agentName)) {
                        newAgentsSet.add(agentData);
                    }
                }
                newAgentsSet.add(agentName + "|" + yohoBalance + "|" + aedBalance);
                preferences.edit().putStringSet(MainActivity.AGENTS_PREFS_KEY, newAgentsSet).apply();
            }

            Set<String> recordsSet = preferences.getStringSet(MainActivity.RECORDS_PREFS_KEY, new HashSet<String>());
            recordsSet.remove(transaction.rawRecord);
            preferences.edit().putStringSet(MainActivity.RECORDS_PREFS_KEY, recordsSet).apply();

            Toast.makeText(this, "تم التراجع عن المعاملة بنجاح", Toast.LENGTH_LONG).show();

            loadAndDisplayRecords();

        } catch (Exception e) {
            Toast.makeText(this, "فشل التراجع عن المعاملة: " + e.getMessage(), Toast.LENGTH_LONG).show();
        }
    }

    private void confirmDelete(final List<Transaction> transactionsToDelete, String message) {
        if (transactionsToDelete == null || transactionsToDelete.isEmpty()) {
            Toast.makeText(this, "لم يتم تحديد سجلات لحذفها", Toast.LENGTH_SHORT).show();
            return;
        }

        new AlertDialog.Builder(this)
                .setTitle("تأكيد الحذف")
                .setMessage(message)
                .setPositiveButton("نعم، حذف", (dialog, which) -> deleteTransactions(transactionsToDelete))
                .setNegativeButton("إلغاء", null)
                .show();
    }

    private void deleteTransactions(List<Transaction> transactionsToDelete) {
        Set<String> allRecords = preferences.getStringSet(MainActivity.RECORDS_PREFS_KEY, new HashSet<>());
        Set<String> recordsToRemove = new HashSet<>();
        for (Transaction t : transactionsToDelete) {
            recordsToRemove.add(t.rawRecord);
        }

        allRecords.removeAll(recordsToRemove);

        preferences.edit().putStringSet(MainActivity.RECORDS_PREFS_KEY, allRecords).apply();

        Toast.makeText(this, "تم حذف " + recordsToRemove.size() + " سجل بنجاح", Toast.LENGTH_LONG).show();

        // Exit selection mode and refresh the data
        toggleSelectionMode(false);
        loadAndDisplayRecords();
    }
}