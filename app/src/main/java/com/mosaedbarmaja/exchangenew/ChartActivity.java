package com.mosaedbarmaja.exchangenew;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.MotionEvent;
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
import java.util.Calendar;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public class ChartActivity extends Activity {

    private SharedPreferences preferences;
    private String ownerKey;
    private String ownerName;
    private DecimalFormat decimalFormat;
    private DecimalFormat yohoDecimalFormat;

    private TextView totalAedInText, totalYohoCommissionText, totalSalesCountText, avgSaleText;
    private BarChartView barChartView;
    private LinearLayout transactionListContainer;
    private List<Transaction> allTransactions;
    private String currentFilter = "ALL"; // State for the current filter

    // --- Data Holder Classes ---
    private static class Transaction implements Comparable<Transaction> {
        long timestamp;
        String type, date, time, owner, details;
        double amountAed, amountYoho;

        @Override
        public int compareTo(Transaction other) {
            return Long.compare(other.timestamp, this.timestamp);
        }
    }

    private static class ChartDataPoint {
        String label;
        float value;

        ChartDataPoint(String label, float value) {
            this.label = label;
            this.value = value;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        ownerKey = getIntent().getStringExtra("owner_key");
        ownerName = getIntent().getStringExtra("owner_name");
        if (ownerName == null) ownerName = "الإحصائيات";

        preferences = getSharedPreferences("GoldExchangeApp", Context.MODE_PRIVATE);
        setupFormatting();
        setupUI();
    }

    @Override
    protected void onResume() {
        super.onResume();
        loadAndDisplayData();
    }

    private void setupFormatting() {
        DecimalFormatSymbols symbols = new DecimalFormatSymbols(Locale.ENGLISH);
        decimalFormat = new DecimalFormat("#,##0.00", symbols);
        yohoDecimalFormat = new DecimalFormat("#,##0", symbols);
    }

    private void setupUI() {
        LinearLayout mainLayout = new LinearLayout(this);
        mainLayout.setOrientation(LinearLayout.VERTICAL);
        mainLayout.setBackgroundColor(Color.parseColor("#F4F6F9"));

        mainLayout.addView(createHeader());

        ScrollView scrollView = new ScrollView(this);
        LinearLayout contentLayout = new LinearLayout(this);
        contentLayout.setOrientation(LinearLayout.VERTICAL);
        contentLayout.setPadding(20, 20, 20, 20);

        contentLayout.addView(createSummaryCards());
        contentLayout.addView(createChartSectionTitle("ملخص المبيعات الشهري (آخر 6 أشهر)"));

        barChartView = new BarChartView(this);
        LinearLayout.LayoutParams chartParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 600);
        chartParams.setMargins(0, 20, 0, 0);
        barChartView.setLayoutParams(chartParams);
        contentLayout.addView(barChartView);

        contentLayout.addView(createChartSectionTitle("جميع المعاملات"));
        contentLayout.addView(createSearchAndFilterControls());

        transactionListContainer = new LinearLayout(this);
        transactionListContainer.setOrientation(LinearLayout.VERTICAL);
        contentLayout.addView(transactionListContainer);


        scrollView.addView(contentLayout);
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
        title.setText("إحصائيات: " + ownerName);
        title.setTextColor(Color.WHITE);
        title.setTextSize(22);
        title.setTypeface(null, Typeface.BOLD);
        title.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        title.setLayoutParams(titleParams);
        headerLayout.addView(title);

        return headerLayout;
    }

    private View createSummaryCards() {
        LinearLayout cardGrid = new LinearLayout(this);
        cardGrid.setOrientation(LinearLayout.VERTICAL);

        // Initialize TextViews
        totalAedInText = new TextView(this);
        totalYohoCommissionText = new TextView(this);
        totalSalesCountText = new TextView(this);
        avgSaleText = new TextView(this);

        // First Row
        LinearLayout row1 = new LinearLayout(this);
        row1.setOrientation(LinearLayout.HORIZONTAL);
        row1.addView(createSummaryCard("إجمالي الإيداعات (AED)", totalAedInText, "#27AE60"));
        row1.addView(createSummaryCard("إجمالي عمولة (YOHO)", totalYohoCommissionText, "#E67E22"));
        cardGrid.addView(row1);

        // Second Row
        LinearLayout row2 = new LinearLayout(this);
        row2.setOrientation(LinearLayout.HORIZONTAL);
        row2.addView(createSummaryCard("عدد المبيعات", totalSalesCountText, "#3498DB"));
        row2.addView(createSummaryCard("متوسط قيمة البيع (AED)", avgSaleText, "#8E44AD"));
        cardGrid.addView(row2);

        return cardGrid;
    }

    private View createSummaryCard(String title, TextView valueTextView, String color) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        setDrawableBackground(card, createShape(Color.parseColor(color), 25, null));
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        params.setMargins(10, 10, 10, 10);
        card.setLayoutParams(params);
        card.setPadding(20, 20, 20, 20);
        card.setGravity(Gravity.CENTER);

        TextView titleView = new TextView(this);
        titleView.setText(title);
        titleView.setTextColor(Color.WHITE);
        titleView.setTextSize(14);
        titleView.setGravity(Gravity.CENTER);
        card.addView(titleView);

        valueTextView.setText("0");
        valueTextView.setTextColor(Color.WHITE);
        valueTextView.setTextSize(22);
        valueTextView.setTypeface(null, Typeface.BOLD);
        valueTextView.setGravity(Gravity.CENTER);
        valueTextView.setPadding(0, 10, 0, 0);
        card.addView(valueTextView);

        return card;
    }

    private TextView createChartSectionTitle(String title) {
        TextView textView = new TextView(this);
        textView.setText(title);
        textView.setTextColor(Color.BLACK);
        textView.setTextSize(18);
        textView.setTypeface(null, Typeface.BOLD);
        textView.setPadding(10, 30, 10, 10);
        return textView;
    }

    private View createSearchAndFilterControls() {
        LinearLayout container = new LinearLayout(this);
        container.setOrientation(LinearLayout.VERTICAL);

        // Search Box
        EditText searchInput = new EditText(this);
        searchInput.setHint("🔎 ابحث في السجلات...");
        setDrawableBackground(searchInput, createShape(Color.WHITE, 50, Color.parseColor("#E0E0E0")));
        searchInput.setPadding(40, 25, 40, 25);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        params.setMargins(0, 10, 0, 20);
        searchInput.setLayoutParams(params);
        searchInput.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                filterTransactionList(s.toString());
            }
            @Override
            public void afterTextChanged(Editable s) {}
        });
        container.addView(searchInput);

        // Filter Buttons
        HorizontalScrollView hsv = new HorizontalScrollView(this);
        hsv.setHorizontalScrollBarEnabled(false);
        LinearLayout filterLayout = new LinearLayout(this);
        filterLayout.setOrientation(LinearLayout.HORIZONTAL);

        filterLayout.addView(createFilterButton("الكل", "ALL"));
        filterLayout.addView(createFilterButton("مبيعات", "SALE"));
        filterLayout.addView(createFilterButton("تمويل", "FUND"));
        filterLayout.addView(createFilterButton("سحب/تحويل", "WITHDRAW"));

        hsv.addView(filterLayout);
        container.addView(hsv);

        return container;
    }

    private Button createFilterButton(String text, final String filterType) {
        Button button = new Button(this);
        button.setText(text);
        button.setTextSize(14);
        setFilterButtonState(button, filterType.equals(currentFilter));
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, 100);
        params.setMarginEnd(15);
        button.setLayoutParams(params);
        button.setOnClickListener(v -> {
            currentFilter = filterType;
            filterTransactionList(""); // Apply filter, clear search
            // Update all buttons state
            ViewGroup parent = (ViewGroup) v.getParent();
            for (int i = 0; i < parent.getChildCount(); i++) {
                View child = parent.getChildAt(i);
                if (child instanceof Button) {
                    // We assume the button's tag is its filter type
                    setFilterButtonState((Button) child, child.getTag().equals(currentFilter));
                }
            }
        });
        button.setTag(filterType); // Store filter type in tag
        return button;
    }

    private void setFilterButtonState(Button button, boolean isActive) {
        if (isActive) {
            button.setTextColor(Color.WHITE);
            setDrawableBackground(button, createShape(Color.parseColor("#2980B9"), 50, null));
        } else {
            button.setTextColor(Color.DKGRAY);
            setDrawableBackground(button, createShape(Color.WHITE, 50, Color.parseColor("#BDBDBD")));
        }
    }


    private void loadAndDisplayData() {
        allTransactions = new ArrayList<>();
        Set<String> recordsSet = preferences.getStringSet(MainActivity.RECORDS_PREFS_KEY, new HashSet<String>());

        for (String recordStr : recordsSet) {
            String[] parts = recordStr.split("\\|\\|", -1);
            if (parts.length >= 9) {
                Transaction t = new Transaction();
                try {
                    t.timestamp = Long.parseLong(parts[0]);
                    t.type = parts[1];
                    t.date = parts[2];
                    t.time = parts[3];
                    t.amountAed = Double.parseDouble(parts[4]);
                    t.amountYoho = Double.parseDouble(parts[6]);
                    String recordOwner = parts[7];
                    t.details = parts[8];

                    if (ownerKey.equals("ALL") || recordOwner.equals(ownerKey)) {
                        allTransactions.add(t);
                    }
                } catch (Exception e) { /* ignore */ }
            }
        }
        Collections.sort(allTransactions);

        calculateAndDisplaySummaryStats();
        calculateAndDisplayChart();
        filterTransactionList(""); // Display all initially
    }

    private void calculateAndDisplaySummaryStats() {
        double totalAed = 0;
        double totalCommission = 0;
        int salesCount = 0;
        double totalSalesAed = 0;

        for (Transaction t : allTransactions) {
            if (t.type.contains("sale") || t.type.equals("add") || t.type.equals("agent_fund")) {
                totalAed += t.amountAed;
            }
            if (t.type.contains("sale")) {
                salesCount++;
                totalCommission += t.amountYoho;
                totalSalesAed += t.amountAed;
            }
        }

        totalAedInText.setText(decimalFormat.format(totalAed));
        totalYohoCommissionText.setText(yohoDecimalFormat.format(totalCommission));
        totalSalesCountText.setText(String.valueOf(salesCount));
        if (salesCount > 0) {
            avgSaleText.setText(decimalFormat.format(totalSalesAed / salesCount));
        } else {
            avgSaleText.setText("0.00");
        }
    }

    private void calculateAndDisplayChart() {
        Map<String, Float> monthlySales = new TreeMap<>();
        String[] monthNames = {"يناير", "فبراير", "مارس", "أبريل", "مايو", "يونيو", "يوليو", "أغسطس", "سبتمبر", "أكتوبر", "نوفمبر", "ديسمبر"};

        Calendar cal = Calendar.getInstance();
        for (int i = 0; i < 6; i++) {
            String monthKey = String.format(Locale.US, "%d-%02d", cal.get(Calendar.YEAR), cal.get(Calendar.MONTH));
            monthlySales.put(monthKey, 0f);
            cal.add(Calendar.MONTH, -1);
        }

        for (Transaction t : allTransactions) {
            if (t.type.contains("sale")) {
                Calendar transCal = Calendar.getInstance();
                transCal.setTimeInMillis(t.timestamp);
                String monthKey = String.format(Locale.US, "%d-%02d", transCal.get(Calendar.YEAR), transCal.get(Calendar.MONTH));
                if(monthlySales.containsKey(monthKey)) {
                    monthlySales.put(monthKey, monthlySales.get(monthKey) + (float)t.amountAed);
                }
            }
        }

        List<ChartDataPoint> chartData = new ArrayList<>();
        // To sort by date, we iterate through the TreeMap which is already sorted by key (YYYY-MM)
        for (Map.Entry<String, Float> entry : monthlySales.entrySet()) {
            String[] yearMonth = entry.getKey().split("-");
            int monthIndex = Integer.parseInt(yearMonth[1]);
            chartData.add(new ChartDataPoint(monthNames[monthIndex], entry.getValue()));
        }
        Collections.reverse(chartData); // Show most recent month first

        barChartView.setData(chartData);
    }

    private void filterTransactionList(String query) {
        transactionListContainer.removeAllViews();
        String lowerCaseQuery = query.toLowerCase();

        for (Transaction t : allTransactions) {
            boolean matchesFilter = false;
            switch (currentFilter) {
                case "SALE":
                    matchesFilter = t.type.contains("sale");
                    break;
                case "FUND":
                    matchesFilter = t.type.contains("fund") || t.type.equals("add");
                    break;
                case "WITHDRAW":
                    matchesFilter = t.type.contains("withdraw") || t.type.contains("transfer") || t.type.equals("subtract");
                    break;
                case "ALL":
                default:
                    matchesFilter = true;
                    break;
            }

            if (matchesFilter && (query.isEmpty() || transactionMatchesQuery(t, lowerCaseQuery))) {
                transactionListContainer.addView(createTransactionCard(t));
            }
        }
    }

    private boolean transactionMatchesQuery(Transaction t, String query) {
        return getTransactionTypeDisplay(t.type).toLowerCase().contains(query) ||
                t.details.toLowerCase().contains(query) ||
                String.valueOf(t.amountAed).contains(query) ||
                String.valueOf(t.amountYoho).contains(query) ||
                t.date.contains(query) ||
                t.time.contains(query);
    }

    private View createTransactionCard(final Transaction t) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        setDrawableBackground(card, createShape(getCardBackgroundColor(t.type), 25, null));
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
        );
        params.setMargins(0, 0, 0, 20);
        card.setLayoutParams(params);
        card.setPadding(30, 30, 30, 30);

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
        if (t.amountYoho > 0) body.addView(createAmountRow("YOHO 🪙", yohoDecimalFormat.format(t.amountYoho)));
        if (!t.details.isEmpty()) {
            TextView detailsText = new TextView(this);
            detailsText.setText("التفاصيل: " + t.details);
            detailsText.setTextColor(Color.DKGRAY);
            detailsText.setPadding(0, 10, 0, 0);
            body.addView(detailsText);
        }
        card.addView(body);

        return card;
    }

    private TextView createAmountRow(String label, String value) {
        TextView tv = new TextView(this);
        String text = "<b>" + label + ":</b> " + value;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            tv.setText(Html.fromHtml(text, Html.FROM_HTML_MODE_LEGACY));
        } else {
            tv.setText(Html.fromHtml(text));
        }
        tv.setTextSize(16);
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
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
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

    // --- Custom Bar Chart View ---
    public class BarChartView extends View {
        private List<ChartDataPoint> dataPoints;
        private Paint barPaint, axisPaint, textPaint, valuePaint;
        private float maxValue = 0;

        public BarChartView(Context context) {
            super(context);
            init();
        }

        private void init() {
            barPaint = new Paint(Paint.ANTI_ALIAS_FLAG);

            axisPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            axisPaint.setColor(Color.LTGRAY);
            axisPaint.setStrokeWidth(2f);

            textPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            textPaint.setColor(Color.BLACK);
            textPaint.setTextSize(24f);
            textPaint.setTextAlign(Paint.Align.CENTER);

            valuePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            valuePaint.setColor(Color.WHITE);
            valuePaint.setTextSize(20f);
            valuePaint.setTextAlign(Paint.Align.CENTER);
            valuePaint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        }

        public void setData(List<ChartDataPoint> data) {
            this.dataPoints = data;
            maxValue = 0;
            if (dataPoints != null) {
                for (ChartDataPoint dp : dataPoints) {
                    if (dp.value > maxValue) {
                        maxValue = dp.value;
                    }
                }
            }
            if (maxValue == 0) maxValue = 100;
            maxValue *= 1.2f;

            invalidate();
        }

        @Override
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (dataPoints == null || dataPoints.isEmpty()) {
                canvas.drawText("لا توجد بيانات لعرضها", getWidth() / 2, getHeight() / 2, textPaint);
                return;
            }

            int padding = 40;
            int labelHeight = 40;
            int chartHeight = getHeight() - (2 * padding) - labelHeight;
            int chartWidth = getWidth() - (2 * padding);

            canvas.drawLine(padding, padding, padding, chartHeight + padding, axisPaint);
            canvas.drawLine(padding, chartHeight + padding, getWidth() - padding, chartHeight + padding, axisPaint);

            float barWidth = (float) chartWidth / dataPoints.size();
            float barSpacing = barWidth * 0.3f;
            float actualBarWidth = barWidth - barSpacing;
            int[] colors = {Color.parseColor("#3498DB"), Color.parseColor("#E74C3C"), Color.parseColor("#2ECC71"), Color.parseColor("#F1C40F"), Color.parseColor("#9B59B6"), Color.parseColor("#1ABC9C")};

            for (int i = 0; i < dataPoints.size(); i++) {
                ChartDataPoint dp = dataPoints.get(i);
                barPaint.setColor(colors[i % colors.length]);

                float barHeight = (dp.value / maxValue) * chartHeight;
                if (barHeight < 1 && dp.value > 0) barHeight = 1; // Ensure bar is visible

                float left = padding + (i * barWidth) + (barSpacing / 2);
                float top = padding + chartHeight - barHeight;
                float right = left + actualBarWidth;
                float bottom = padding + chartHeight;

                RectF rect = new RectF(left, top, right, bottom);
                canvas.drawRoundRect(rect, 15f, 15f, barPaint);

                // Draw value on top of the bar if it fits
                if(barHeight > 30) {
                    canvas.drawText(yohoDecimalFormat.format(dp.value), left + actualBarWidth / 2, top + 25, valuePaint);
                }

                canvas.drawText(dp.label, left + actualBarWidth / 2, bottom + labelHeight, textPaint);
            }
        }

        @Override
        public boolean onTouchEvent(MotionEvent event) {
            if (event.getAction() == MotionEvent.ACTION_DOWN && dataPoints != null && !dataPoints.isEmpty()) {
                float x = event.getX();
                int padding = 40;
                int chartWidth = getWidth() - (2 * padding);
                float barWidth = (float) chartWidth / dataPoints.size();

                int index = (int) ((x - padding) / barWidth);

                if(index >= 0 && index < dataPoints.size()) {
                    ChartDataPoint dp = dataPoints.get(index);
                    Toast.makeText(getContext(), dp.label + ": " + decimalFormat.format(dp.value) + " AED", Toast.LENGTH_SHORT).show();
                    return true;
                }
            }
            return super.onTouchEvent(event);
        }
    }
}
