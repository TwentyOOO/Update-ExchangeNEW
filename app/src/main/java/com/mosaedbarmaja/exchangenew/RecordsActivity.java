package com.mosaedbarmaja.exchangenew;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class RecordsActivity extends Activity {

    // --- Views & State ---
    private LinearLayout recordsContainer;
    private EditText searchInput;
    private Button btnSelect, btnDeleteSelected, btnCancelSelection, btnSelectAll;
    private HorizontalScrollView filterScrollView;
    private TextView emptyStateText;

    // --- Data ---
    private SharedPreferences preferences;
    private List<Transaction> allTransactions;
    private List<Transaction> currentlyDisplayedTransactions;
    private String ownerKey;
    private String ownerName;
    private DecimalFormat decimalFormat;
    private DecimalFormat yohoDecimalFormat;

    // --- Selection State ---
    private boolean isInSelectionMode = false;
    private final Set<Transaction> selectedTransactions = new HashSet<>();

    // --- Transaction Data Class ---
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

    // ==================== UI SETUP - محسّن ====================

    private void setupUI() {
        LinearLayout mainLayout = new LinearLayout(this);
        mainLayout.setOrientation(LinearLayout.VERTICAL);

        // ✅ خلفية بالتدرج الأزرق الداكن
        mainLayout.setBackground(ContextCompat.getDrawable(this, R.drawable.bg_steel_blue_premium));

        mainLayout.setLayoutParams(new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.MATCH_PARENT
        ));

        mainLayout.addView(createModernHeader());
        mainLayout.addView(createSearchBar());
        mainLayout.addView(createFilterButtons());

        // ✅ ScrollView محسّن
        ScrollView scrollView = new ScrollView(this);
        LinearLayout.LayoutParams scrollParams = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            0,
            1.0f // weight
        );
        scrollView.setLayoutParams(scrollParams);
        scrollView.setFillViewport(true);

        recordsContainer = new LinearLayout(this);
        recordsContainer.setOrientation(LinearLayout.VERTICAL);
        recordsContainer.setPadding(16, 16, 16, 16);
        scrollView.addView(recordsContainer);

        mainLayout.addView(scrollView);
        setContentView(mainLayout);
    }

    // ==================== HEADER - محسّن مع Ripple ====================

    private View createModernHeader() {
        LinearLayout headerLayout = new LinearLayout(this);
        headerLayout.setOrientation(LinearLayout.HORIZONTAL);
        headerLayout.setBackgroundColor(ContextCompat.getColor(this, R.color.background_card));
        headerLayout.setPadding(16, 20, 16, 20);
        headerLayout.setGravity(Gravity.CENTER_VERTICAL);

        // ✅ زوايا منحنية في الأسفل
        GradientDrawable headerBg = new GradientDrawable();
        headerBg.setColor(ContextCompat.getColor(this, R.color.background_card));
        float[] radii = {0, 0, 0, 0, 16, 16, 16, 16}; // فقط الزوايا السفلية
        headerBg.setCornerRadii(radii);
        headerLayout.setBackground(headerBg);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            headerLayout.setElevation(4f);
        }

        // ✅ زر الرجوع مع Ripple Effect
        LinearLayout backButton = new LinearLayout(this);
        backButton.setOrientation(LinearLayout.HORIZONTAL);
        backButton.setGravity(Gravity.CENTER);
        backButton.setPadding(12, 8, 12, 8);
        backButton.setClickable(true);
        backButton.setFocusable(true);

        GradientDrawable backBtnBg = new GradientDrawable();
        backBtnBg.setColor(ContextCompat.getColor(this, R.color.overlay_light_10));
        backBtnBg.setCornerRadius(8f);

        // ✅ Ripple Effect
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            RippleDrawable ripple = new RippleDrawable(
                ColorStateList.valueOf(ContextCompat.getColor(this, R.color.overlay_light_20)),
                backBtnBg,
                null
            );
            backButton.setBackground(ripple);
        } else {
            backButton.setBackground(backBtnBg);
        }

        ImageView backIcon = new ImageView(this);
        try {
            backIcon.setImageResource(R.drawable.ic_arrow_back);
        } catch (Exception e) {
            // Fallback
        }
        backIcon.setColorFilter(ContextCompat.getColor(this, R.color.text_primary), PorterDuff.Mode.SRC_IN);
        backIcon.setLayoutParams(new LinearLayout.LayoutParams(24, 24));
        backButton.addView(backIcon);

        TextView backText = new TextView(this);
        backText.setText("رجوع");
        backText.setTextColor(ContextCompat.getColor(this, R.color.text_primary));
        backText.setTextSize(14);
        backText.setPadding(8, 0, 0, 0);
        backButton.addView(backText);

        backButton.setOnClickListener(v -> finish());
        headerLayout.addView(backButton);

        // ✅ العنوان مع أيقونة
        LinearLayout titleContainer = new LinearLayout(this);
        titleContainer.setOrientation(LinearLayout.HORIZONTAL);
        titleContainer.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams titleContainerParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f
        );
        titleContainer.setLayoutParams(titleContainerParams);

        ImageView titleIcon = new ImageView(this);
        try {
            titleIcon.setImageResource(R.drawable.ic_history);
        } catch (Exception e) {}
        titleIcon.setColorFilter(ContextCompat.getColor(this, R.color.btn_records), PorterDuff.Mode.SRC_IN);
        titleIcon.setLayoutParams(new LinearLayout.LayoutParams(32, 32));
        titleContainer.addView(titleIcon);

        TextView title = new TextView(this);
        title.setText("سجل: " + ownerName);
        title.setTextColor(ContextCompat.getColor(this, R.color.text_primary));
        title.setTextSize(20);
        title.setTypeface(null, Typeface.BOLD);
        title.setPadding(12, 0, 0, 0);
        titleContainer.addView(title);

        headerLayout.addView(titleContainer);

        return headerLayout;
    }

    // ==================== SEARCH BAR - محسّن ====================

    private View createSearchBar() {
        LinearLayout searchContainer = new LinearLayout(this);
        searchContainer.setOrientation(LinearLayout.VERTICAL);
        searchContainer.setPadding(16, 16, 16, 8);

        // ✅ حاوية البحث مع أيقونة
        LinearLayout searchBox = new LinearLayout(this);
        searchBox.setOrientation(LinearLayout.HORIZONTAL);
        searchBox.setGravity(Gravity.CENTER_VERTICAL);
        searchBox.setPadding(16, 12, 16, 12);

        GradientDrawable searchBg = new GradientDrawable();
        searchBg.setColor(ContextCompat.getColor(this, R.color.background_surface));
        searchBg.setCornerRadius(12f);
        searchBg.setStroke(2, ContextCompat.getColor(this, R.color.border_default));
        searchBox.setBackground(searchBg);

        // أيقونة البحث
        ImageView searchIcon = new ImageView(this);
        try {
            searchIcon.setImageResource(R.drawable.ic_search);
        } catch (Exception e) {}
        searchIcon.setColorFilter(ContextCompat.getColor(this, R.color.text_secondary), PorterDuff.Mode.SRC_IN);
        searchIcon.setLayoutParams(new LinearLayout.LayoutParams(24, 24));
        searchBox.addView(searchIcon);

        // حقل البحث
        searchInput = new EditText(this);
        searchInput.setHint("ابحث في السجلات...");
        searchInput.setHintTextColor(ContextCompat.getColor(this, R.color.text_disabled));
        searchInput.setTextColor(ContextCompat.getColor(this, R.color.text_primary));
        searchInput.setBackgroundColor(Color.TRANSPARENT);
        searchInput.setPadding(16, 0, 16, 0);
        searchInput.setTextSize(16);
        searchInput.setSingleLine(true);
        LinearLayout.LayoutParams inputParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f
        );
        searchInput.setLayoutParams(inputParams);

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
        searchBox.addView(searchInput);

        // زر مسح البحث (يظهر عند الكتابة)
        ImageView clearButton = new ImageView(this);
        try {
            clearButton.setImageResource(R.drawable.ic_clear);
        } catch (Exception e) {}
        clearButton.setColorFilter(ContextCompat.getColor(this, R.color.text_disabled), PorterDuff.Mode.SRC_IN);
        clearButton.setLayoutParams(new LinearLayout.LayoutParams(24, 24));
        clearButton.setPadding(8, 8, 8, 8);
        clearButton.setVisibility(View.GONE);
        clearButton.setOnClickListener(v -> searchInput.setText(""));
        searchBox.addView(clearButton);

        // إظهار/إخفاء زر المسح
        searchInput.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                clearButton.setVisibility(s.length() > 0 ? View.VISIBLE : View.GONE);
            }
            @Override
            public void afterTextChanged(Editable s) {}
        });

        searchContainer.addView(searchBox);
        return searchContainer;
    }

    // ==================== FILTER BUTTONS - محسّن مع Ripple ====================

    private View createFilterButtons() {
        filterScrollView = new HorizontalScrollView(this);
        filterScrollView.setHorizontalScrollBarEnabled(false);
        LinearLayout.LayoutParams hsvParams = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        );
        hsvParams.setMargins(0, 0, 0, 12);
        filterScrollView.setLayoutParams(hsvParams);

        LinearLayout filterLayout = new LinearLayout(this);
        filterLayout.setOrientation(LinearLayout.HORIZONTAL);
        filterLayout.setPadding(16, 0, 16, 0);

        // ✅ أزرار محسّنة مع Ripple
        btnSelect = createModernFilterButton("تحديد", R.color.btn_calculator, R.drawable.ic_check_box);
        btnSelect.setOnClickListener(v -> toggleSelectionMode(true));

        btnCancelSelection = createModernFilterButton("إلغاء", R.color.text_disabled, R.drawable.ic_close);
        btnCancelSelection.setOnClickListener(v -> toggleSelectionMode(false));
        btnCancelSelection.setVisibility(View.GONE);

        btnSelectAll = createModernFilterButton("تحديد الكل", R.color.btn_records, R.drawable.ic_select_all);
        btnSelectAll.setOnClickListener(v -> selectAllDisplayed());
        btnSelectAll.setVisibility(View.GONE);

        btnDeleteSelected = createModernFilterButton("حذف المحدد (0)", R.color.danger_red, R.drawable.ic_delete);
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
        return filterScrollView;
    }

    private Button createModernFilterButton(String text, int colorResId, int iconResId) {
        Button button = new Button(this);
        button.setText(text);
        button.setTextSize(13);
        button.setTextColor(Color.WHITE);
        button.setTypeface(null, Typeface.BOLD);
        button.setPadding(20, 0, 20, 0);
        button.setAllCaps(false);

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(ContextCompat.getColor(this, colorResId));
        bg.setCornerRadius(8f);

        // ✅ Ripple Effect للأزرار
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            int rippleColor = ContextCompat.getColor(this, R.color.overlay_light_30);
            RippleDrawable ripple = new RippleDrawable(
                ColorStateList.valueOf(rippleColor),
                bg,
                null
            );
            button.setBackground(ripple);
            button.setElevation(2f);
        } else {
            button.setBackground(bg);
        }

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.WRAP_CONTENT,
            80
        );
        params.setMarginEnd(12);
        button.setLayoutParams(params);

        return button;
    }

    // ==================== RECORD CARDS - محسّن مع Ripple ====================

    private View createRecordCard(final Transaction t) {
        final LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setClickable(true);
        card.setFocusable(true);

        int backgroundColor = selectedTransactions.contains(t)
                ? ContextCompat.getColor(this, R.color.state_selected)
                : getCardBackgroundColor(t.type);

        GradientDrawable cardBg = new GradientDrawable();
        cardBg.setColor(backgroundColor);
        cardBg.setCornerRadius(12f);
        cardBg.setStroke(2, ContextCompat.getColor(this, R.color.border_light));

        // ✅ Ripple Effect للبطاقات
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            int rippleColor = ContextCompat.getColor(this, R.color.overlay_light_20);
            RippleDrawable ripple = new RippleDrawable(
                ColorStateList.valueOf(rippleColor),
                cardBg,
                null
            );
            card.setBackground(ripple);
            card.setElevation(selectedTransactions.contains(t) ? 6f : 3f);
        } else {
            card.setBackground(cardBg);
        }

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        );
        params.setMargins(0, 0, 0, 12);
        card.setLayoutParams(params);
        card.setPadding(16, 16, 16, 16);

        card.setOnClickListener(v -> {
            if (isInSelectionMode) {
                if (selectedTransactions.contains(t)) {
                    selectedTransactions.remove(t);
                    cardBg.setColor(getCardBackgroundColor(t.type));
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                        card.setElevation(3f);
                    }
                } else {
                    selectedTransactions.add(t);
                    cardBg.setColor(ContextCompat.getColor(this, R.color.state_selected));
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                        card.setElevation(6f);
                    }
                }

                // Update ripple with new color
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                    int rippleColor = ContextCompat.getColor(this, R.color.overlay_light_20);
                    RippleDrawable ripple = new RippleDrawable(
                        ColorStateList.valueOf(rippleColor),
                        cardBg,
                        null
                    );
                    card.setBackground(ripple);
                } else {
                    card.setBackground(cardBg);
                }

                btnDeleteSelected.setText("حذف المحدد (" + selectedTransactions.size() + ")");
            }
        });

        // ✅ Header - النوع والتاريخ
        card.addView(createCardHeader(t));

        // ✅ Divider
        card.addView(createDivider());

        // ✅ Body - المبالغ
        card.addView(createCardBody(t));

        // ✅ Footer - الأزرار
        if (needsFooter(t)) {
            card.addView(createCardFooter(t));
        }

        return card;
    }

    private View createCardHeader(Transaction t) {
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);

        // أيقونة النوع
        ImageView typeIcon = new ImageView(this);
        typeIcon.setLayoutParams(new LinearLayout.LayoutParams(32, 32));
        typeIcon.setColorFilter(getTransactionColor(t.type), PorterDuff.Mode.SRC_IN);
        try {
            typeIcon.setImageResource(getTransactionIcon(t.type));
        } catch (Exception e) {}

        GradientDrawable iconBg = new GradientDrawable();
        iconBg.setColor(ContextCompat.getColor(this, R.color.overlay_light_10));
        iconBg.setShape(GradientDrawable.OVAL);

        LinearLayout iconContainer = new LinearLayout(this);
        iconContainer.setLayoutParams(new LinearLayout.LayoutParams(48, 48));
        iconContainer.setGravity(Gravity.CENTER);
        iconContainer.setBackground(iconBg);
        iconContainer.addView(typeIcon);
        header.addView(iconContainer);

        // نص النوع
        TextView typeText = new TextView(this);
        typeText.setText(getTransactionTypeDisplay(t.type));
        typeText.setTextColor(getTransactionColor(t.type));
        typeText.setTextSize(16);
        typeText.setTypeface(null, Typeface.BOLD);
        typeText.setPadding(12, 0, 0, 0);
        header.addView(typeText);

        // التاريخ والوقت
        LinearLayout dateTimeContainer = new LinearLayout(this);
        dateTimeContainer.setOrientation(LinearLayout.VERTICAL);
        dateTimeContainer.setGravity(Gravity.END);
        LinearLayout.LayoutParams dateParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f
        );
        dateTimeContainer.setLayoutParams(dateParams);

        TextView dateText = new TextView(this);
        dateText.setText(t.date);
        dateText.setTextColor(ContextCompat.getColor(this, R.color.text_secondary));
        dateText.setTextSize(12);
        dateText.setGravity(Gravity.END);
        dateTimeContainer.addView(dateText);

        TextView timeText = new TextView(this);
        timeText.setText(t.time);
        timeText.setTextColor(ContextCompat.getColor(this, R.color.text_disabled));
        timeText.setTextSize(11);
        timeText.setGravity(Gravity.END);
        dateTimeContainer.addView(timeText);

        header.addView(dateTimeContainer);

        return header;
    }

    private View createDivider() {
        View divider = new View(this);
        LinearLayout.LayoutParams divParams = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            1
        );
        divParams.setMargins(0, 12, 0, 12);
        divider.setLayoutParams(divParams);
        divider.setBackgroundColor(ContextCompat.getColor(this, R.color.border_light));
        return divider;
    }

    private View createCardBody(Transaction t) {
        LinearLayout body = new LinearLayout(this);
        body.setOrientation(LinearLayout.VERTICAL);

        if (t.amountAed > 0) body.addView(createAmountRow("درهم", decimalFormat.format(t.amountAed), R.color.currency_dirham, "🇦🇪"));
        if (t.amountUsdt > 0) body.addView(createAmountRow("دولار", decimalFormat.format(t.amountUsdt), R.color.currency_dollar, "💵"));
        if (t.amountYoho > 0) body.addView(createAmountRow("يوهو", yohoDecimalFormat.format(t.amountYoho), R.color.currency_yoho, "🪙"));

        if (!t.details.isEmpty()) {
            TextView detailsText = new TextView(this);
            detailsText.setText("📝 " + t.details);
            detailsText.setTextColor(ContextCompat.getColor(this, R.color.text_secondary));
            detailsText.setTextSize(13);
            detailsText.setPadding(0, 8, 0, 0);
            detailsText.setMaxLines(2);
            detailsText.setEllipsize(TextUtils.TruncateAt.END);
            body.addView(detailsText);
        }

        return body;
    }

    private View createAmountRow(String label, String value, int colorResId, String emoji) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(0, 4, 0, 4);

        TextView emojiText = new TextView(this);
        emojiText.setText(emoji);
        emojiText.setTextSize(18);
        row.addView(emojiText);

        TextView labelText = new TextView(this);
        labelText.setText(label);
        labelText.setTextSize(14);
        labelText.setTextColor(ContextCompat.getColor(this, R.color.text_secondary));
        labelText.setPadding(8, 0, 8, 0);
        row.addView(labelText);

        TextView valueText = new TextView(this);
        valueText.setText(value);
        valueText.setTextSize(16);
        valueText.setTextColor(ContextCompat.getColor(this, colorResId));
        valueText.setTypeface(null, Typeface.BOLD);
        LinearLayout.LayoutParams valueParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f
        );
        valueText.setLayoutParams(valueParams);
        valueText.setGravity(Gravity.END);
        row.addView(valueText);

        return row;
    }

    private View createCardFooter(Transaction t) {
        LinearLayout footer = new LinearLayout(this);
        footer.setOrientation(LinearLayout.HORIZONTAL);
        footer.setGravity(Gravity.END);
        LinearLayout.LayoutParams footerParams = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        );
        footerParams.setMargins(0, 12, 0, 0);
        footer.setLayoutParams(footerParams);

        if (t.beforeState != null && !t.beforeState.isEmpty()) {
            Button revertBtn = createFooterButton("تراجع", R.color.warning_orange, R.drawable.ic_undo);
            revertBtn.setOnClickListener(v -> confirmRevertTransaction(t));
            footer.addView(revertBtn);
        }

        if (t.whatsappMessage != null && !t.whatsappMessage.isEmpty()) {
            Button shareBtn = createFooterButton("مشاركة", R.color.success_green, R.drawable.ic_share);
            shareBtn.setOnClickListener(v -> sendToWhatsApp(t.whatsappMessage));
            footer.addView(shareBtn);
        }

        return footer;
    }

    private Button createFooterButton(String text, int colorResId, int iconResId) {
        Button button = new Button(this);
        button.setText(text);
        button.setTextSize(12);
        button.setTextColor(Color.WHITE);
        button.setAllCaps(false);
        button.setPadding(16, 8, 16, 8);

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(ContextCompat.getColor(this, colorResId));
        bg.setCornerRadius(6f);

        // ✅ Ripple Effect لأزرار Footer
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            int rippleColor = ContextCompat.getColor(this, R.color.overlay_light_30);
            RippleDrawable ripple = new RippleDrawable(
                ColorStateList.valueOf(rippleColor),
                bg,
                null
            );
            button.setBackground(ripple);
        } else {
            button.setBackground(bg);
        }

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.WRAP_CONTENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        );
        params.setMarginStart(8);
        button.setLayoutParams(params);

        return button;
    }

    private boolean needsFooter(Transaction t) {
        return (t.beforeState != null && !t.beforeState.isEmpty()) ||
               (t.whatsappMessage != null && !t.whatsappMessage.isEmpty());
    }

    // ==================== HELPER METHODS ====================

    private int getTransactionIcon(String type) {
        switch (type) {
            case "add": return R.drawable.ic_add_circle;
            case "subtract": return R.drawable.ic_remove_circle;
            case "reset": return R.drawable.ic_restart_alt;
            case "agent_sale":
            case "agent_custom_sale":
            case "group_sale": return R.drawable.ic_trending_up;
            case "fund_agent_yoho":
            case "agent_fund": return R.drawable.ic_account_balance_wallet;
            case "withdraw_agent_yoho": return R.drawable.ic_money_off;
            case "agent_aed_transfer": return R.drawable.ic_swap_horiz;
            default: return R.drawable.ic_receipt;
        }
    }

    private int getCardBackgroundColor(String type) {
        switch (type) {
            case "add":
            case "agent_sale":
            case "agent_custom_sale":
            case "group_sale":
            case "fund_agent_yoho":
            case "agent_fund":
                return ContextCompat.getColor(this, R.color.background_card);
            case "subtract":
            case "withdraw_agent_yoho":
                return ContextCompat.getColor(this, R.color.background_card);
            default:
                return ContextCompat.getColor(this, R.color.background_card);
        }
    }

    // ==================== الباقي من الكود ====================

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
        filterAndDisplayData(searchInput.getText().toString());
    }

    private void selectAllDisplayed() {
        if (currentlyDisplayedTransactions != null) {
            if(selectedTransactions.size() == currentlyDisplayedTransactions.size()){
                selectedTransactions.clear();
            } else {
                selectedTransactions.clear();
                selectedTransactions.addAll(currentlyDisplayedTransactions);
            }
        }
        btnDeleteSelected.setText("حذف المحدد (" + selectedTransactions.size() + ")");
        filterAndDisplayData(searchInput.getText().toString());
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
            LinearLayout emptyState = new LinearLayout(this);
            emptyState.setOrientation(LinearLayout.VERTICAL);
            emptyState.setGravity(Gravity.CENTER);
            emptyState.setPadding(32, 64, 32, 64);

            TextView emptyIcon = new TextView(this);
            emptyIcon.setText("📋");
            emptyIcon.setTextSize(64);
            emptyIcon.setGravity(Gravity.CENTER);
            emptyState.addView(emptyIcon);

            TextView noRecordsText = new TextView(this);
            noRecordsText.setText("لا توجد سجلات لعرضها");
            noRecordsText.setGravity(Gravity.CENTER);
            noRecordsText.setTextSize(18);
            noRecordsText.setTextColor(ContextCompat.getColor(this, R.color.text_secondary));
            noRecordsText.setPadding(0, 16, 0, 0);
            emptyState.addView(noRecordsText);

            recordsContainer.addView(emptyState);
            return;
        }

        for (Transaction t : transactions) {
            recordsContainer.addView(createRecordCard(t));
        }
    }

    private boolean transactionMatchesQuery(String query, Transaction t) {
        return getTransactionTypeDisplay(t.type).toLowerCase().contains(query) ||
                t.details.toLowerCase().contains(query) ||
                String.valueOf(t.amountAed).contains(query) ||
                String.valueOf(t.amountYoho).contains(query) ||
                t.date.contains(query) ||
                t.time.contains(query);
    }

    private String getTransactionTypeDisplay(String type) {
        switch (type) {
            case "add": return "إيداع";
            case "subtract": return "خصم";
            case "reset": return "تصفير";
            case "agent_sale": return "بيع";
            case "agent_custom_sale": return "بيع مخصص";
            case "group_sale": return "بيع جماعي";
            case "fund_agent_yoho": return "تمويل YOHO";
            case "withdraw_agent_yoho": return "سحب YOHO";
            case "agent_aed_transfer": return "تحويل AED";
            case "agent_fund": return "تمويل وكيل";
            default: return type;
        }
    }

    private int getTransactionColor(String type) {
        switch (type) {
            case "add":
            case "agent_sale":
            case "agent_custom_sale":
            case "group_sale":
            case "fund_agent_yoho":
            case "agent_fund":
                return ContextCompat.getColor(this, R.color.success_green);
            case "subtract":
            case "withdraw_agent_yoho":
                return ContextCompat.getColor(this, R.color.danger_red);
            case "reset":
            case "agent_aed_transfer":
                return ContextCompat.getColor(this, R.color.warning_orange);
            default:
                return ContextCompat.getColor(this, R.color.text_secondary);
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

        toggleSelectionMode(false);
        loadAndDisplayRecords();
    }
}
