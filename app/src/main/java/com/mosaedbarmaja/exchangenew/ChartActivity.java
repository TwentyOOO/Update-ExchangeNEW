package com.mosaedbarmaja.exchangenew;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.MotionEvent;
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
    private String currentFilter = "ALL";
    private EditText searchInput;

    // --- Transaction Data Class ---
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

        // ✅ الانتظار حتى يتم layout الـ View قبل رسم البيانات
        if (barChartView != null) {
            barChartView.post(new Runnable() {
                @Override
                public void run() {
                    android.util.Log.d("CHART_LOAD", "========== View is laid out, loading real data ==========");
                    android.util.Log.d("CHART_LOAD", "View dimensions: " + barChartView.getWidth() + "x" + barChartView.getHeight());

                    // ✅ حمّل البيانات الحقيقية من المعاملات المحفوظة
                    loadAndDisplayData();
                }
            });
        } else {
            android.util.Log.e("CHART_LOAD", "barChartView is NULL!");
        }
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

        // ✅ خلفية احترافية
        mainLayout.setBackground(ContextCompat.getDrawable(this, R.drawable.bg_steel_blue_premium));

        mainLayout.setLayoutParams(new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.MATCH_PARENT
        ));

        mainLayout.addView(createModernHeader());

        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);

        LinearLayout contentLayout = new LinearLayout(this);
        contentLayout.setOrientation(LinearLayout.VERTICAL);
        contentLayout.setPadding(16, 16, 16, 16);

        contentLayout.addView(createSummaryCards());
        contentLayout.addView(createSectionHeader("ملخص المبيعات الشهري", "آخر 6 أشهر", R.drawable.ic_trending_up));
        contentLayout.addView(createChartCard());
        contentLayout.addView(createSectionHeader("جميع المعاملات", null, R.drawable.ic_list));
        contentLayout.addView(createSearchBar());
        contentLayout.addView(createFilterButtons());

        transactionListContainer = new LinearLayout(this);
        transactionListContainer.setOrientation(LinearLayout.VERTICAL);
        contentLayout.addView(transactionListContainer);

        scrollView.addView(contentLayout);
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
        float[] radii = {0, 0, 0, 0, 16, 16, 16, 16};
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
        } catch (Exception e) {}
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

        // العنوان مع أيقونة
        LinearLayout titleContainer = new LinearLayout(this);
        titleContainer.setOrientation(LinearLayout.HORIZONTAL);
        titleContainer.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams titleContainerParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f
        );
        titleContainer.setLayoutParams(titleContainerParams);

        ImageView titleIcon = new ImageView(this);
        try {
            titleIcon.setImageResource(R.drawable.ic_analytics);
        } catch (Exception e) {}
        titleIcon.setColorFilter(ContextCompat.getColor(this, R.color.btn_analytics), PorterDuff.Mode.SRC_IN);
        titleIcon.setLayoutParams(new LinearLayout.LayoutParams(32, 32));
        titleContainer.addView(titleIcon);

        TextView title = new TextView(this);
        title.setText("إحصائيات: " + ownerName);
        title.setTextColor(ContextCompat.getColor(this, R.color.text_primary));
        title.setTextSize(20);
        title.setTypeface(null, Typeface.BOLD);
        title.setPadding(12, 0, 0, 0);
        titleContainer.addView(title);

        headerLayout.addView(titleContainer);

        return headerLayout;
    }

    // ==================== SUMMARY CARDS - محسّن مع Ripple ====================

    private View createSummaryCards() {
        LinearLayout cardGrid = new LinearLayout(this);
        cardGrid.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams gridParams = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        );
        gridParams.setMargins(0, 0, 0, 16);
        cardGrid.setLayoutParams(gridParams);

        // Initialize TextViews
        totalAedInText = new TextView(this);
        totalYohoCommissionText = new TextView(this);
        totalSalesCountText = new TextView(this);
        avgSaleText = new TextView(this);

        // Row 1
        LinearLayout row1 = new LinearLayout(this);
        row1.setOrientation(LinearLayout.HORIZONTAL);
        row1.addView(createModernSummaryCard(
            "إجمالي الإيداعات",
            totalAedInText,
            R.color.success_green,
            "AED",
            R.drawable.ic_account_balance_wallet
        ));
        row1.addView(createModernSummaryCard(
            "إجمالي عمولة",
            totalYohoCommissionText,
            R.color.warning_orange,
            "YOHO",
            R.drawable.ic_local_offer
        ));
        cardGrid.addView(row1);

        // Row 2
        LinearLayout row2 = new LinearLayout(this);
        row2.setOrientation(LinearLayout.HORIZONTAL);
        row2.addView(createModernSummaryCard(
            "عدد المبيعات",
            totalSalesCountText,
            R.color.info_blue,
            "معاملة",
            R.drawable.ic_receipt
        ));
        row2.addView(createModernSummaryCard(
            "متوسط البيع",
            avgSaleText,
            R.color.btn_calculator,
            "AED",
            R.drawable.ic_trending_up
        ));
        cardGrid.addView(row2);

        return cardGrid;
    }

    private View createModernSummaryCard(String title, TextView valueTextView,
                                         int colorResId, String unit, int iconResId) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setClickable(true);
        card.setFocusable(true);

        GradientDrawable cardBg = new GradientDrawable();
        cardBg.setColor(ContextCompat.getColor(this, colorResId));
        cardBg.setCornerRadius(12f);

        // ✅ Ripple Effect للبطاقات
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            int rippleColor = ContextCompat.getColor(this, R.color.overlay_light_20);
            RippleDrawable ripple = new RippleDrawable(
                ColorStateList.valueOf(rippleColor),
                cardBg,
                null
            );
            card.setBackground(ripple);
            card.setElevation(3f);
        } else {
            card.setBackground(cardBg);
        }

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f
        );
        params.setMargins(6, 6, 6, 6);
        card.setLayoutParams(params);
        card.setPadding(16, 16, 16, 16);

        // Header مع الأيقونة
        LinearLayout headerRow = new LinearLayout(this);
        headerRow.setOrientation(LinearLayout.HORIZONTAL);
        headerRow.setGravity(Gravity.CENTER_VERTICAL);

        GradientDrawable iconBg = new GradientDrawable();
        iconBg.setColor(ContextCompat.getColor(this, R.color.overlay_light_10));
        iconBg.setShape(GradientDrawable.OVAL);

        LinearLayout iconContainer = new LinearLayout(this);
        iconContainer.setLayoutParams(new LinearLayout.LayoutParams(40, 40));
        iconContainer.setGravity(Gravity.CENTER);
        iconContainer.setBackground(iconBg);

        ImageView iconInner = new ImageView(this);
        try {
            iconInner.setImageResource(iconResId);
        } catch (Exception e) {}
        iconInner.setColorFilter(Color.WHITE, PorterDuff.Mode.SRC_IN);
        iconInner.setLayoutParams(new LinearLayout.LayoutParams(24, 24));
        iconContainer.addView(iconInner);

        headerRow.addView(iconContainer);

        TextView titleView = new TextView(this);
        titleView.setText(title);
        titleView.setTextColor(Color.WHITE);
        titleView.setTextSize(12);
        titleView.setPadding(10, 0, 0, 0);
        LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f
        );
        titleView.setLayoutParams(titleParams);
        headerRow.addView(titleView);

        card.addView(headerRow);

        // القيمة
        LinearLayout valueRow = new LinearLayout(this);
        valueRow.setOrientation(LinearLayout.HORIZONTAL);
        valueRow.setGravity(Gravity.CENTER_VERTICAL);
        valueRow.setPadding(0, 12, 0, 0);

        valueTextView.setText("0");
        valueTextView.setTextColor(Color.WHITE);
        valueTextView.setTextSize(20);
        valueTextView.setTypeface(null, Typeface.BOLD);
        LinearLayout.LayoutParams valueParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f
        );
        valueTextView.setLayoutParams(valueParams);
        valueRow.addView(valueTextView);

        TextView unitText = new TextView(this);
        unitText.setText(unit);
        unitText.setTextColor(ContextCompat.getColor(this, R.color.overlay_light_50));
        unitText.setTextSize(12);
        valueRow.addView(unitText);

        card.addView(valueRow);

        return card;
    }

    // ==================== SECTION HEADER - محسّن ====================

    private View createSectionHeader(String title, String subtitle, int iconResId) {
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(8, 20, 8, 12);

        // أيقونة
        ImageView icon = new ImageView(this);
        try {
            icon.setImageResource(iconResId);
        } catch (Exception e) {}
        icon.setColorFilter(ContextCompat.getColor(this, R.color.btn_records), PorterDuff.Mode.SRC_IN);
        icon.setLayoutParams(new LinearLayout.LayoutParams(28, 28));
        header.addView(icon);

        // النصوص
        LinearLayout textContainer = new LinearLayout(this);
        textContainer.setOrientation(LinearLayout.VERTICAL);
        textContainer.setPadding(12, 0, 0, 0);

        TextView titleText = new TextView(this);
        titleText.setText(title);
        titleText.setTextColor(ContextCompat.getColor(this, R.color.text_primary));
        titleText.setTextSize(18);
        titleText.setTypeface(null, Typeface.BOLD);
        textContainer.addView(titleText);

        if (subtitle != null) {
            TextView subtitleText = new TextView(this);
            subtitleText.setText(subtitle);
            subtitleText.setTextColor(ContextCompat.getColor(this, R.color.text_secondary));
            subtitleText.setTextSize(12);
            textContainer.addView(subtitleText);
        }

        header.addView(textContainer);

        return header;
    }

    // ==================== CHART CARD - محسّن ====================

    private View createChartCard() {
        LinearLayout chartCard = new LinearLayout(this);
        chartCard.setOrientation(LinearLayout.VERTICAL);

        // ✅ خلفية شفافة للبطاقة الخارجية - الرسم البياني له خلفيته الخاصة
        chartCard.setBackgroundColor(Color.TRANSPARENT);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            chartCard.setElevation(6f); // ✅ ظل أقوى
        }

        LinearLayout.LayoutParams cardParams = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        );
        cardParams.setMargins(0, 8, 0, 16);
        chartCard.setLayoutParams(cardParams);
        chartCard.setPadding(8, 8, 8, 8); // ✅ حواف خفيفة

        barChartView = new BarChartView(this);
        LinearLayout.LayoutParams chartParams = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            550 // ✅ ارتفاع أكبر قليلاً
        );
        barChartView.setLayoutParams(chartParams);
        chartCard.addView(barChartView);

        return chartCard;
    }

    // ==================== SEARCH BAR - محسّن ====================

    private View createSearchBar() {
        LinearLayout searchBox = new LinearLayout(this);
        searchBox.setOrientation(LinearLayout.HORIZONTAL);
        searchBox.setGravity(Gravity.CENTER_VERTICAL);
        searchBox.setPadding(16, 12, 16, 12);

        GradientDrawable searchBg = new GradientDrawable();
        searchBg.setColor(ContextCompat.getColor(this, R.color.background_surface));
        searchBg.setCornerRadius(12f);
        searchBg.setStroke(2, ContextCompat.getColor(this, R.color.border_default));
        searchBox.setBackground(searchBg);

        LinearLayout.LayoutParams searchBoxParams = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        );
        searchBoxParams.setMargins(0, 8, 0, 12);
        searchBox.setLayoutParams(searchBoxParams);

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
        searchInput.setHint("ابحث في المعاملات...");
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
                filterTransactionList(s.toString());
            }
            @Override
            public void afterTextChanged(Editable s) {}
        });
        searchBox.addView(searchInput);

        // زر مسح
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

        return searchBox;
    }

    // ==================== FILTER BUTTONS - محسّن مع Ripple ====================

    private View createFilterButtons() {
        HorizontalScrollView hsv = new HorizontalScrollView(this);
        hsv.setHorizontalScrollBarEnabled(false);
        LinearLayout.LayoutParams hsvParams = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        );
        hsvParams.setMargins(0, 0, 0, 12);
        hsv.setLayoutParams(hsvParams);

        LinearLayout filterLayout = new LinearLayout(this);
        filterLayout.setOrientation(LinearLayout.HORIZONTAL);
        filterLayout.setPadding(0, 0, 0, 0);

        filterLayout.addView(createFilterButton("الكل", "ALL"));
        filterLayout.addView(createFilterButton("مبيعات", "SALE"));
        filterLayout.addView(createFilterButton("تمويل", "FUND"));
        filterLayout.addView(createFilterButton("سحب/تحويل", "WITHDRAW"));

        hsv.addView(filterLayout);
        return hsv;
    }

    private Button createFilterButton(String text, final String filterType) {
        Button button = new Button(this);
        button.setText(text);
        button.setTextSize(13);
        button.setAllCaps(false);
        button.setTypeface(null, Typeface.BOLD);
        button.setPadding(20, 0, 20, 0);

        setFilterButtonState(button, filterType.equals(currentFilter));

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            button.setElevation(2f);
        }

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.WRAP_CONTENT,
            80
        );
        params.setMarginEnd(12);
        button.setLayoutParams(params);

        button.setOnClickListener(v -> {
            currentFilter = filterType;
            filterTransactionList(searchInput.getText().toString());

            ViewGroup parent = (ViewGroup) v.getParent();
            for (int i = 0; i < parent.getChildCount(); i++) {
                View child = parent.getChildAt(i);
                if (child instanceof Button) {
                    setFilterButtonState((Button) child, child.getTag().equals(currentFilter));
                }
            }
        });
        button.setTag(filterType);

        return button;
    }

    private void setFilterButtonState(Button button, boolean isActive) {
        GradientDrawable bg = new GradientDrawable();
        bg.setCornerRadius(8f);

        if (isActive) {
            button.setTextColor(Color.WHITE);
            bg.setColor(ContextCompat.getColor(this, R.color.btn_records));
        } else {
            button.setTextColor(ContextCompat.getColor(this, R.color.text_secondary));
            bg.setColor(ContextCompat.getColor(this, R.color.background_surface));
            bg.setStroke(2, ContextCompat.getColor(this, R.color.border_default));
        }

        // ✅ Ripple Effect للأزرار
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            int rippleColor = ContextCompat.getColor(this, R.color.overlay_light_20);
            RippleDrawable ripple = new RippleDrawable(
                ColorStateList.valueOf(rippleColor),
                bg,
                null
            );
            button.setBackground(ripple);
        } else {
            button.setBackground(bg);
        }
    }

    // ==================== TRANSACTION CARDS - محسّن مع Ripple ====================

    private View createTransactionCard(final Transaction t) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setClickable(true);
        card.setFocusable(true);

        GradientDrawable cardBg = new GradientDrawable();
        cardBg.setColor(ContextCompat.getColor(this, R.color.background_card));
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
            card.setElevation(3f);
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

        // Header
        card.addView(createCardHeader(t));

        // Divider
        card.addView(createDivider());

        // Body
        card.addView(createCardBody(t));

        return card;
    }

    private View createCardHeader(Transaction t) {
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);

        // أيقونة
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

        // التاريخ
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
            ViewGroup.LayoutParams.MATCH_PARENT, 1
        );
        divParams.setMargins(0, 12, 0, 12);
        divider.setLayoutParams(divParams);
        divider.setBackgroundColor(ContextCompat.getColor(this, R.color.border_light));
        return divider;
    }

    private View createCardBody(Transaction t) {
        LinearLayout body = new LinearLayout(this);
        body.setOrientation(LinearLayout.VERTICAL);

        if (t.amountAed > 0) {
            body.addView(createAmountRow("درهم", decimalFormat.format(t.amountAed),
                R.color.currency_dirham, "🇦🇪"));
        }
        if (t.amountYoho > 0) {
            body.addView(createAmountRow("يوهو", yohoDecimalFormat.format(t.amountYoho),
                R.color.currency_yoho, "🪙"));
        }

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

    // ==================== DATA LOADING ====================

    private void loadAndDisplayData() {
        allTransactions = new ArrayList<>();
        Set<String> recordsSet = preferences.getStringSet(MainActivity.RECORDS_PREFS_KEY, new HashSet<>());

        // ✅ طباعة للتأكد من القراءة
        android.util.Log.d("LOAD_DATA", "Total records found: " + recordsSet.size());

        for (String recordStr : recordsSet) {
            String[] parts = recordStr.split("\\|\\|", -1);

            // ✅ التحقق الصحيح: 13 جزء على الأقل
            if (parts.length >= 13) {
                Transaction t = new Transaction();
                try {
                    t.timestamp = Long.parseLong(parts[0]);
                    t.type = parts[1];
                    t.date = parts[2];
                    t.time = parts[3];
                    t.amountAed = Double.parseDouble(parts[4]);
                    t.amountYoho = Double.parseDouble(parts[6]);
                    t.owner = parts[7];
                    t.details = parts[8];

                    // ✅ فلترة حسب المالك
                    if (ownerKey.equals("ALL") || t.owner.equals(ownerKey)) {
                        allTransactions.add(t);
                        // طباعة للتأكد
                        android.util.Log.d("LOAD_DATA", "Added transaction: " + t.type +
                              " - AED: " + t.amountAed + " - Date: " + t.date);
                    }
                } catch (Exception e) {
                    android.util.Log.e("LOAD_DATA", "Error parsing record: " + e.getMessage());
                }
            } else {
                android.util.Log.w("LOAD_DATA", "Invalid record format (parts: " + parts.length + "): " + recordStr);
            }
        }

        Collections.sort(allTransactions);

        android.util.Log.d("LOAD_DATA", "Total transactions loaded: " + allTransactions.size());

        calculateAndDisplaySummaryStats();
        calculateAndDisplayChart();
        filterTransactionList("");
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
        String[] monthNames = {"يناير", "فبراير", "مارس", "أبريل", "مايو", "يونيو",
                              "يوليو", "أغسطس", "سبتمبر", "أكتوبر", "نوفمبر", "ديسمبر"};

        // ✅ إنشاء 6 أشهر الأخيرة
        Calendar cal = Calendar.getInstance();
        for (int i = 0; i < 6; i++) {
            String monthKey = String.format(Locale.US, "%d-%02d",
                cal.get(Calendar.YEAR), cal.get(Calendar.MONTH));
            monthlySales.put(monthKey, 0f);
            android.util.Log.d("CHART", "Created month: " + monthKey);
            cal.add(Calendar.MONTH, -1);
        }

        // ✅ حساب المبيعات لكل شهر
        int salesCount = 0;
        for (Transaction t : allTransactions) {
            // ✅ فقط المعاملات من نوع "sale"
            if (t.type.contains("sale")) {
                salesCount++;
                Calendar transCal = Calendar.getInstance();
                transCal.setTimeInMillis(t.timestamp);
                String monthKey = String.format(Locale.US, "%d-%02d",
                    transCal.get(Calendar.YEAR), transCal.get(Calendar.MONTH));

                if (monthlySales.containsKey(monthKey)) {
                    float currentValue = monthlySales.get(monthKey);
                    float newValue = currentValue + (float) t.amountAed;
                    monthlySales.put(monthKey, newValue);

                    android.util.Log.d("CHART", "Month: " + monthKey +
                          " - Added: " + t.amountAed +
                          " - Total: " + newValue);
                }
            }
        }

        android.util.Log.d("CHART", "Total sales transactions: " + salesCount);

        // ✅ تحويل إلى قائمة للرسم البياني
        List<ChartDataPoint> chartData = new ArrayList<>();
        for (Map.Entry<String, Float> entry : monthlySales.entrySet()) {
            String[] yearMonth = entry.getKey().split("-");
            int monthIndex = Integer.parseInt(yearMonth[1]);
            chartData.add(new ChartDataPoint(monthNames[monthIndex], entry.getValue()));

            android.util.Log.d("CHART", "Chart point: " + monthNames[monthIndex] +
                  " = " + entry.getValue());
        }

        Collections.reverse(chartData); // الأحدث أولاً

        // ✅ إرسال البيانات للرسم البياني
        if (barChartView != null) {
            barChartView.setData(chartData);
            android.util.Log.d("CHART", "Chart data set successfully with " + chartData.size() + " points");
        } else {
            android.util.Log.e("CHART", "barChartView is NULL!");
        }
    }

    private void filterTransactionList(String query) {
        transactionListContainer.removeAllViews();
        String lowerCaseQuery = query.toLowerCase();

        List<Transaction> displayList = new ArrayList<>();

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
                    matchesFilter = t.type.contains("withdraw") ||
                                  t.type.contains("transfer") ||
                                  t.type.equals("subtract");
                    break;
                case "ALL":
                default:
                    matchesFilter = true;
                    break;
            }

            if (matchesFilter && (query.isEmpty() || transactionMatchesQuery(t, lowerCaseQuery))) {
                displayList.add(t);
            }
        }

        if (displayList.isEmpty()) {
            LinearLayout emptyState = new LinearLayout(this);
            emptyState.setOrientation(LinearLayout.VERTICAL);
            emptyState.setGravity(Gravity.CENTER);
            emptyState.setPadding(32, 64, 32, 64);

            TextView emptyIcon = new TextView(this);
            emptyIcon.setText("📊");
            emptyIcon.setTextSize(64);
            emptyIcon.setGravity(Gravity.CENTER);
            emptyState.addView(emptyIcon);

            TextView emptyText = new TextView(this);
            emptyText.setText("لا توجد معاملات");
            emptyText.setGravity(Gravity.CENTER);
            emptyText.setTextSize(18);
            emptyText.setTextColor(ContextCompat.getColor(this, R.color.text_secondary));
            emptyText.setPadding(0, 16, 0, 0);
            emptyState.addView(emptyText);

            transactionListContainer.addView(emptyState);
        } else {
            for (Transaction t : displayList) {
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

    // ==================== CUSTOM BAR CHART VIEW ====================

    public class BarChartView extends View {
        private List<ChartDataPoint> dataPoints;
        private Paint barPaint, axisPaint, textPaint, valuePaint, gridPaint, bgPaint, shadowPaint, tooltipPaint, tooltipTextPaint;
        private float maxValue = 0;
        private int selectedBarIndex = -1; // العمود المحدد
        private List<RectF> barRects = new ArrayList<>(); // لحفظ مواضع الأعمدة

        // ألوان احترافية متدرجة
        private final int[] CHART_COLORS = {
            0xFF3B82F6, // أزرق
            0xFFEF4444, // أحمر
            0xFF10B981, // أخضر
            0xFFF59E0B, // برتقالي
            0xFF8B5CF6, // بنفسجي
            0xFF06B6D4  // سماوي
        };

        public BarChartView(Context context) {
            super(context);
            init();
        }

        private void init() {
            // خلفية الرسم البياني
            bgPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            bgPaint.setColor(0xFF2d3548);
            bgPaint.setStyle(Paint.Style.FILL);

            // الأشرطة
            barPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            barPaint.setStyle(Paint.Style.FILL);

            // ظل الأشرطة
            shadowPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            shadowPaint.setColor(0x40000000);
            shadowPaint.setStyle(Paint.Style.FILL);

            // المحاور
            axisPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            axisPaint.setColor(0xFF4f5665);
            axisPaint.setStrokeWidth(4f);
            axisPaint.setStyle(Paint.Style.STROKE);

            // خطوط الشبكة
            gridPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            gridPaint.setColor(0xFF3f4458);
            gridPaint.setStrokeWidth(2f);
            gridPaint.setAlpha(80);

            // نص التسميات
            textPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            textPaint.setColor(0xFFB8C1EC);
            textPaint.setTextSize(34f);
            textPaint.setTextAlign(Paint.Align.CENTER);
            textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));

            // نص القيم
            valuePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            valuePaint.setColor(0xFFFFFFFF);
            valuePaint.setTextSize(30f);
            valuePaint.setTextAlign(Paint.Align.CENTER);
            valuePaint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
            valuePaint.setShadowLayer(4f, 0f, 2f, 0x80000000);

            // Tooltip background
            tooltipPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            tooltipPaint.setColor(0xE0000000);
            tooltipPaint.setStyle(Paint.Style.FILL);

            // Tooltip text
            tooltipTextPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            tooltipTextPaint.setColor(0xFFFFFFFF);
            tooltipTextPaint.setTextSize(32f);
            tooltipTextPaint.setTextAlign(Paint.Align.CENTER);
            tooltipTextPaint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        }

        public void setData(List<ChartDataPoint> data) {
            android.util.Log.d("BARCHART", "==========================================");
            android.util.Log.d("BARCHART", "setData called!");

            if (data == null) {
                android.util.Log.e("BARCHART", "Data is NULL!");
                this.dataPoints = null;
                invalidate();
                return;
            }

            android.util.Log.d("BARCHART", "Data size: " + data.size());

            this.dataPoints = data;
            maxValue = 0;

            if (dataPoints != null && !dataPoints.isEmpty()) {
                for (ChartDataPoint dp : dataPoints) {
                    android.util.Log.d("BARCHART", "Point: " + dp.label + " = " + dp.value);
                    if (dp.value > maxValue) {
                        maxValue = dp.value;
                    }
                }
            }

            android.util.Log.d("BARCHART", "maxValue: " + maxValue);

            // إذا لا توجد قيم، ضع قيمة افتراضية
            if (maxValue == 0) {
                maxValue = 1000;
            } else {
                maxValue *= 1.2f; // إضافة مساحة في الأعلى
            }

            invalidate(); // إعادة الرسم
        }

        @Override
        protected void onSizeChanged(int w, int h, int oldw, int oldh) {
            super.onSizeChanged(w, h, oldw, oldh);
            android.util.Log.d("BARCHART", "==========================================");
            android.util.Log.d("BARCHART", "Size changed: " + w + "x" + h + " (old: " + oldw + "x" + oldh + ")");
            invalidate();
        }

        @Override
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);

            int width = getWidth();
            int height = getHeight();

            android.util.Log.d("CHART_DRAW", "==========================================");
            android.util.Log.d("CHART_DRAW", "onDraw called - Width: " + width + ", Height: " + height);

            // ✅ التحقق الحاسم من الأبعاد!
            if (width <= 0 || height <= 0) {
                android.util.Log.e("CHART_DRAW", "CRITICAL: Invalid dimensions! Cannot draw! Width: " + width + ", Height: " + height);
                return;
            }

            // رسم الخلفية - مستطيل بسيط للاختبار
            canvas.drawRect(0, 0, width, height, bgPaint);
            android.util.Log.d("CHART_DRAW", "Background drawn");

            // إذا لا توجد بيانات
            if (dataPoints == null) {
                android.util.Log.e("CHART_DRAW", "dataPoints is NULL!");
                drawEmptyState(canvas, width, height);
                return;
            }

            if (dataPoints.isEmpty()) {
                android.util.Log.w("CHART_DRAW", "dataPoints is EMPTY!");
                drawEmptyState(canvas, width, height);
                return;
            }

            android.util.Log.d("CHART_DRAW", "Drawing chart with " + dataPoints.size() + " data points");
            android.util.Log.d("CHART_DRAW", "maxValue: " + maxValue);

            int padding = 70;
            int labelHeight = 70;
            int chartHeight = height - (2 * padding) - labelHeight;
            int chartWidth = width - (2 * padding);

            android.util.Log.d("CHART_DRAW", "Chart dimensions - Height: " + chartHeight + ", Width: " + chartWidth);

            // رسم خطوط الشبكة
            drawGrid(canvas, padding, chartHeight, chartWidth);

            // رسم المحاور
            drawAxes(canvas, padding, chartHeight, chartWidth);

            // رسم الأشرطة
            drawBars(canvas, padding, chartHeight, chartWidth, labelHeight);
        }

        private void drawEmptyState(Canvas canvas, int width, int height) {
            Paint emptyPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            emptyPaint.setColor(0xFF6B7280);
            emptyPaint.setTextSize(40f);
            emptyPaint.setTextAlign(Paint.Align.CENTER);
            emptyPaint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));

            canvas.drawText("📊", width / 2f, height / 2f - 40, emptyPaint);

            emptyPaint.setTextSize(32f);
            canvas.drawText("لا توجد بيانات", width / 2f, height / 2f + 20, emptyPaint);

            emptyPaint.setTextSize(24f);
            emptyPaint.setColor(0xFF4B5563);
            canvas.drawText("قم بإضافة معاملات لرؤية الإحصائيات",
                width / 2f, height / 2f + 55, emptyPaint);
        }

        private void drawGrid(Canvas canvas, int padding, int chartHeight, int chartWidth) {
            int gridLines = 5;
            for (int i = 0; i <= gridLines; i++) {
                float y = padding + (chartHeight * i / (float) gridLines);
                canvas.drawLine(padding, y, padding + chartWidth, y, gridPaint);
            }
        }

        private void drawAxes(Canvas canvas, int padding, int chartHeight, int chartWidth) {
            // المحور العمودي (Y)
            canvas.drawLine(padding, padding, padding, chartHeight + padding, axisPaint);

            // المحور الأفقي (X)
            canvas.drawLine(padding, chartHeight + padding,
                padding + chartWidth, chartHeight + padding, axisPaint);
        }

        private void drawBars(Canvas canvas, int padding, int chartHeight,
                              int chartWidth, int labelHeight) {
            if (dataPoints == null || dataPoints.isEmpty()) return;

            android.util.Log.d("CHART_DRAW", "=== Starting to draw bars ===");

            barRects.clear(); // مسح المواضع القديمة

            float barWidth = (float) chartWidth / dataPoints.size();
            float barSpacing = barWidth * 0.25f;
            float actualBarWidth = barWidth - barSpacing;

            android.util.Log.d("CHART_DRAW", "Bar width: " + actualBarWidth + ", Spacing: " + barSpacing);

            for (int i = 0; i < dataPoints.size(); i++) {
                ChartDataPoint dp = dataPoints.get(i);

                // ✅ حساب ارتفاع الشريط بشكل أفضل - يتناسب مع القيمة
                float barHeight = 0;
                if (maxValue > 0 && dp.value > 0) {
                    barHeight = (dp.value / maxValue) * chartHeight;
                    // حد أدنى 30 بكسل للقيم الصغيرة
                    if (barHeight < 30) barHeight = 30;
                } else {
                    // للقيم الصفرية
                    barHeight = 10;
                }

                android.util.Log.d("CHART_DRAW", "Bar " + i + " (" + dp.label + "): value=" +
                    dp.value + ", height=" + barHeight + ", maxValue=" + maxValue);

                float left = padding + (i * barWidth) + (barSpacing / 2);
                float top = padding + chartHeight - barHeight;
                float right = left + actualBarWidth;
                float bottom = padding + chartHeight;

                // حفظ موضع العمود
                barRects.add(new RectF(left, top, right, bottom));

                android.util.Log.d("CHART_DRAW", "Bar " + i + " coords: left=" + left +
                    ", top=" + top + ", right=" + right + ", bottom=" + bottom);

                // ✅ رسم الظل أولاً
                canvas.drawRect(left + 4, top + 4, right + 4, bottom + 4, shadowPaint);

                // ✅ رسم العمود بزوايا منحنية احترافية
                barPaint.setColor(CHART_COLORS[i % CHART_COLORS.length]);

                // إذا كان هذا العمود محدد، اجعله أبرز
                if (i == selectedBarIndex) {
                    barPaint.setAlpha(255);
                    // رسم حدود
                    Paint borderPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
                    borderPaint.setColor(0xFFFFFFFF);
                    borderPaint.setStyle(Paint.Style.STROKE);
                    borderPaint.setStrokeWidth(6f);
                    canvas.drawRoundRect(new RectF(left - 3, top - 3, right + 3, bottom), 12f, 12f, borderPaint);
                } else {
                    barPaint.setAlpha(220);
                }

                canvas.drawRoundRect(new RectF(left, top, right, bottom), 12f, 12f, barPaint);

                android.util.Log.d("CHART_DRAW", "Drew bar " + i + " with color: " +
                    Integer.toHexString(CHART_COLORS[i % CHART_COLORS.length]));

                // ✅ رسم القيمة فوق الشريط دائماً
                if (dp.value > 0) {
                    String valueStr = formatValue(dp.value);

                    // خلفية للنص
                    Paint.FontMetrics fm = valuePaint.getFontMetrics();
                    float textWidth = valuePaint.measureText(valueStr);
                    float textHeight = fm.descent - fm.ascent;

                    RectF textBg = new RectF(
                        left + actualBarWidth / 2 - textWidth / 2 - 8,
                        top - textHeight - 12,
                        left + actualBarWidth / 2 + textWidth / 2 + 8,
                        top - 4
                    );

                    tooltipPaint.setAlpha(180);
                    canvas.drawRoundRect(textBg, 8f, 8f, tooltipPaint);

                    valuePaint.setTextSize(26f);
                    valuePaint.setColor(0xFFFFFFFF);
                    canvas.drawText(valueStr, left + actualBarWidth / 2, top - 12, valuePaint);
                }

                // رسم التسمية تحت الشريط
                canvas.drawText(dp.label, left + actualBarWidth / 2,
                    bottom + labelHeight - 20, textPaint);
            }

            android.util.Log.d("CHART_DRAW", "=== Finished drawing bars ===");
        }

        private String formatValue(float value) {
            DecimalFormatSymbols symbols = new DecimalFormatSymbols(Locale.ENGLISH);
            DecimalFormat formatter = new DecimalFormat("#,##0", symbols);
            return formatter.format(value);
        }

        @Override
        public boolean onTouchEvent(MotionEvent event) {
            if (event.getAction() == MotionEvent.ACTION_DOWN &&
                dataPoints != null && !dataPoints.isEmpty()) {

                float x = event.getX();
                float y = event.getY();

                // البحث عن العمود المضغوط
                for (int i = 0; i < barRects.size(); i++) {
                    RectF rect = barRects.get(i);
                    // توسيع منطقة اللمس
                    RectF touchRect = new RectF(
                        rect.left - 20,
                        rect.top - 20,
                        rect.right + 20,
                        rect.bottom + 20
                    );

                    if (touchRect.contains(x, y)) {
                        ChartDataPoint dp = dataPoints.get(i);
                        DecimalFormatSymbols symbols = new DecimalFormatSymbols(Locale.ENGLISH);
                        DecimalFormat formatter = new DecimalFormat("#,##0.00", symbols);

                        // تحديد العمود
                        selectedBarIndex = i;
                        invalidate(); // إعادة الرسم لإظهار التحديد

                        Toast.makeText(getContext(),
                            dp.label + ": " + formatter.format(dp.value) + " AED",
                            Toast.LENGTH_SHORT).show();
                        return true;
                    }
                }

                // إذا لم يتم الضغط على أي عمود، إلغاء التحديد
                if (selectedBarIndex != -1) {
                    selectedBarIndex = -1;
                    invalidate();
                }
            }
            return super.onTouchEvent(event);
        }
    }
}
