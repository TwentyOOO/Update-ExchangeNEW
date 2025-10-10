package com.mosaedbarmaja.exchangenew;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.text.Editable;
import android.text.InputType;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListPopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class MainActivity extends Activity {

    // --- Constants ---
    private static final String PREFS_NAME = "GoldExchangeApp";
    public static final String RECORDS_PREFS_KEY = "transaction_records";
    public static final String AGENTS_PREFS_KEY = "shipping_agents";
    public static final String OWNER_KEY_MAIN_WALLET = "MAIN_WALLET";
    private static final String KEY_SELECTED_AGENT = "selected_agent";
    private static final String KEY_CURRENT_YOHO_INDEX = "current_yoho_index";
    private static final String KEY_COMMISSION_INDEX = "commission_index";
    private static final String KEY_IS_TRANSFER_MODE = "is_transfer_mode";  // ✅ حفظ حالة الوضع
    private boolean isActivityActive = false;
    private static final int CODE_DRAW_OVER_OTHER_APP_PERMISSION = 2084;
    private static final Object ACTION_ITEM_MARKER = new Object();

    // معدل التحويل: 100 AED = 265000 YOHO (السعر الافتراضي)
    private final double AED_TO_YOHO_RATE = 2650.0;  // 1 AED = 2650 YOHO
    private final double YOHO_TO_AED_RATE = 1 / 2650.0;  // 1 YOHO = 0.000377 AED
    // إبقاء المتغيرات القديمة للتوافق مع حقول الإدخال
    private final double AED_TO_USDT_RATE = 1 / 3.80;
    private final double USDT_TO_AED_RATE = 3.80 / 1;
    private final double CUSTOM_SALE_BASE_RATE_265 = 265000.0;
    private final double CUSTOM_SALE_BASE_RATE_260 = 260000.0;

    // !! مهم: تأكد من استبدال "TwentyOOO" و "Update-ExchangeNEW" بمعلوماتك الصحيحة
    private static final String UPDATE_JSON_URL = "https://raw.githubusercontent.com/TwentyOOO/Update-ExchangeNEW/main/update.json";


    // --- UI Components ---
    private EditText aedInput, usdtInput, yohoInput;
    private TextView aedValue, usdtValue, selectedAgentTextView, yohoPriceSelector;  // استرجاع usdtValue
    private TextView agentYohoWalletDisplay, agentAedWalletDisplay;
    private LinearLayout agentWalletLayout;
    private Button agentCommissionButton;
    private ImageView usdtIconView;

    // --- UI Helper for Colors and Styles ---
    private UIHelper uiHelper;
    private GradientHelper gradientHelper;
    // --- تم تعديل تعريف النوافذ المنبثقة ---
    private ListPopupWindow agentListPopupWindow;
    private ListPopupWindow yohoPricePopupWindow;
    private ListPopupWindow agentCommissionPopupWindow;


    // --- Data & State ---
    private SharedPreferences preferences;
    private DecimalFormat decimalFormat, yohoDecimalFormat, whatsappDecimalFormat;

    private final double[] yohoPrices = {250000, 255000, 260000, 265000};
    private final String[] yohoNames = {"التسعيرة 250", "التسعيرة 255", "التسعيرة 260", "التسعيرة 265"};
    private int currentYohoIndex = 0;

    private final double[] agentCommissionPrices = {250000, 250000, 250000, 265000, 0, 0};
    private final double[] agentCommissionValues = {15000, 10000, 5000, 0, 0, 0};
    private final String[] agentCommissionNames = {"تسعيرة 265", "تسعيرة 260", "تسعيرة 255", "تسعيرة جماعية 265", "تسعيرة مخصصة 265", "تسعيرة مخصصة 260"};
    private int currentAgentCommissionIndex = -1;

    private boolean isUpdating = false;
    private String selectedMainAgentName = null;
    private boolean isTransferToMemberMode = false;
    private boolean isCustomGroupSaleActive = false;
    private boolean isCustomCommissionSale = false;
    private double currentCustomRate = CUSTOM_SALE_BASE_RATE_265;
    private final List<double[]> customMemberSales = new ArrayList<>();
    private boolean isAgentSaleMode = true;

    private BroadcastReceiver updateReceiver;

    private static class Agent {
        String name;
        double yohoBalance;
        double aedBalance;
        Agent(String name, double yohoBalance, double aedBalance) {
            this.name = name;
            this.yohoBalance = yohoBalance;
            this.aedBalance = aedBalance;
        }
    }

    // --- Lifecycle Methods ---
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);

        preferences = getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);

        // تهيئة UIHelper و GradientHelper
        uiHelper = new UIHelper(this);
        gradientHelper = new GradientHelper(this);

        setupFormatting();
        setupUI();
        setupTextWatchers();

        updateWalletDisplay();
        updateYohoDisplay();

        setupUpdateReceiver();

        checkForUpdate();
    }

    @SuppressLint("UnspecifiedRegisterReceiverFlag")
    @Override
    protected void onResume() {
        super.onResume();
        isActivityActive = true;
        updateWalletDisplay();
        updateAgentBalanceDisplay();

        IntentFilter filter = new IntentFilter(FloatingViewService.ACTION_UPDATE_UI);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(updateReceiver, filter, RECEIVER_NOT_EXPORTED);
        } else {
            registerReceiver(updateReceiver, filter);
        }
    }

    @Override
    protected void onPause() {
        isActivityActive = false;
        dismissAllPopups();
        super.onPause();
        unregisterReceiver(updateReceiver);
    }

    @Override
    protected void onDestroy() {
        cleanupPopupWindows();
        super.onDestroy();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putString(KEY_SELECTED_AGENT, selectedMainAgentName);
        outState.putInt(KEY_CURRENT_YOHO_INDEX, currentYohoIndex);
        outState.putInt(KEY_COMMISSION_INDEX, currentAgentCommissionIndex);
        outState.putBoolean(KEY_IS_TRANSFER_MODE, isTransferToMemberMode);  // ✅ حفظ حالة الوضع
    }

    @Override
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        if (savedInstanceState != null) {
            selectedMainAgentName = savedInstanceState.getString(KEY_SELECTED_AGENT);
            currentYohoIndex = savedInstanceState.getInt(KEY_CURRENT_YOHO_INDEX);
            currentAgentCommissionIndex = savedInstanceState.getInt(KEY_COMMISSION_INDEX);
            isTransferToMemberMode = savedInstanceState.getBoolean(KEY_IS_TRANSFER_MODE);  // ✅ استعادة حالة الوضع
            updateDisplayAfterStateRestore();
        }
    }

    private void updateDisplayAfterStateRestore() {
        updateYohoDisplay();
        updateWalletDisplay();
        if (selectedMainAgentName != null) {
            // ✅ إعادة عرض شريط الوكيل
            setupAgentMode(selectedMainAgentName, isTransferToMemberMode);
        }
    }

    // --- Setup Methods ---

    private void setupUpdateReceiver() {
        updateReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                updateWalletDisplay();
                updateAgentBalanceDisplay();
            }
        };
    }

    private void setupFormatting() {
        // استخدام Locale.ENGLISH لضمان ظهور الأرقام بالإنجليزية
        DecimalFormatSymbols symbols = new DecimalFormatSymbols(Locale.ENGLISH);
        symbols.setGroupingSeparator(',');
        symbols.setDecimalSeparator('.');
        decimalFormat = new DecimalFormat("#,##0.00", symbols);
        yohoDecimalFormat = new DecimalFormat("#,##0", symbols);
        whatsappDecimalFormat = new DecimalFormat("0.00", symbols);
    }

    private void setupTextWatchers() {
        TextWatcher smartWatcher = new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {}

            @Override
            public void afterTextChanged(Editable s) {
                if (isUpdating) return;
                View focusedView = getCurrentFocus();
                if (!(focusedView instanceof EditText)) return;
                EditText currentField = (EditText) focusedView;
                isUpdating = true;

                if (currentField.getId() == aedInput.getId()) {
                    updateCalculationsFromAed(s.toString());
                } else if (currentField.getId() == usdtInput.getId()) {
                    updateCalculationsFromUsdt(s.toString());
                } else if (currentField.getId() == yohoInput.getId()) {
                    if (isCustomCommissionSale && currentAgentCommissionIndex == 5) {
                        // في التسعيرة المخصصة 260، نحسب فقط العمولة بدون تغيير قيمة الدرهم
                        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
                        if (aedAmount > 0) {
                            double baseYoho = (aedAmount / 100.0) * CUSTOM_SALE_BASE_RATE_260;
                            double customerYoho = parseDoubleSafe(s.toString());
                            if (customerYoho > 0 && customerYoho <= baseYoho) {
                                double commission = baseYoho - customerYoho;
                                usdtInput.setText(yohoDecimalFormat.format(commission));
                            } else {
                                usdtInput.setText("");
                            }
                        }
                    } else {
                        updateCalculationsFromYoho(s.toString());
                    }
                }

                isUpdating = false;
            }
        };
        aedInput.addTextChangedListener(smartWatcher);
        usdtInput.addTextChangedListener(smartWatcher);
        yohoInput.addTextChangedListener(smartWatcher);
    }

    // --- UI Creation ---

    private void setupUI() {
        LinearLayout mainLayout = new LinearLayout(this);
        mainLayout.setOrientation(LinearLayout.VERTICAL);
        // خلفية بسيطة داكنة
        mainLayout.setBackgroundColor(uiHelper.getBackgroundDark());
        mainLayout.setPadding(0, 0, 0, 0);

        mainLayout.addView(createTitleSection());
        mainLayout.addView(createTopButtonsLayout());

        ScrollView scrollView = new ScrollView(this);
        LinearLayout contentContainer = new LinearLayout(this);
        contentContainer.setOrientation(LinearLayout.VERTICAL);
        contentContainer.setPadding(10, 5, 10, 5);  // ✅ تقليل المسافات من 20 إلى 10,5

        contentContainer.addView(createSelectedAgentTextView());
        contentContainer.addView(createAgentWalletLayout());
        contentContainer.addView(createOldStyleInputLayout());
        contentContainer.addView(createOldStyleYohoControls());

        yohoInput = createOldStyleEditText("YOHO", 22, true);
        LinearLayout.LayoutParams yohoResultParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        yohoResultParams.setMargins(10, 5, 10, 10);  // ✅ تقليل المسافات من 15,15,15,30 إلى 10,5,10,10
        yohoInput.setLayoutParams(yohoResultParams);
        contentContainer.addView(yohoInput);

        TextView walletTitle = new TextView(this);
        walletTitle.setText(uiHelper.getWalletEmoji() + " المحفظة (انقر على الرصيد للتعديل)");
        walletTitle.setTextSize(20);
        walletTitle.setTextColor(uiHelper.getTextPrimary());
        walletTitle.setGravity(Gravity.CENTER);
        walletTitle.setPadding(0, 10, 0, 5);  // ✅ تقليل المسافات من 20,10 إلى 10,5
        walletTitle.setTypeface(null, Typeface.BOLD);
        contentContainer.addView(walletTitle);

        contentContainer.addView(createOldStyleWalletLayout());
        // contentContainer.addView(createBubbleControlButtons()); // ✅ تم حذف شريط الحاسبة العائمة
        contentContainer.addView(createOldStyleActionButtons());

        scrollView.addView(contentContainer);
        mainLayout.addView(scrollView);

        setContentView(mainLayout);
    }

    // --- UI Helper Methods ---

    private LinearLayout createTitleSection() {
        LinearLayout titleSection = new LinearLayout(this);
        titleSection.setOrientation(LinearLayout.VERTICAL);
        titleSection.setPadding(0, 10, 0, 10);  // ✅ تقليل من 30 إلى 10
        titleSection.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        // خلفية نظيفة وبسيطة
        titleSection.setBackgroundColor(uiHelper.getBackgroundCard());

        TextView title = new TextView(this);
        title.setText("🏦 حاسبة اليويوهو");
        title.setTextSize(24);
        title.setTextColor(uiHelper.getTextPrimary());
        title.setGravity(Gravity.CENTER);
        title.setTypeface(null, Typeface.BOLD);
        titleSection.addView(title);

        TextView subTitle = new TextView(this);
        subTitle.setText("درهم إماراتي ⇌ دولار ⇌ يوهو");
        subTitle.setTextSize(16);
        subTitle.setTextColor(uiHelper.getTextSecondary());
        subTitle.setGravity(Gravity.CENTER);
        subTitle.setPadding(0, 4, 0, 0);  // ✅ تقليل من 8 إلى 4
        titleSection.addView(subTitle);
        return titleSection;
    }

    // ==================== شريط الأزرار العلوي - محسّن ====================

    /**
     * إنشاء شريط الأزرار العلوي (تحليل، وكلاء، السجلات، حاسبة، تصفير)
     */
    private LinearLayout createTopButtonsLayout() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.HORIZONTAL);

        // ✅ زيادة الارتفاع لإظهار النص كاملاً
        layout.setLayoutParams(new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            130  // ✅ من 120 إلى 130 (مساحة أكبر للنص)
        ));
        layout.setPadding(8, 4, 8, 4);  // ✅ تقليل Padding العلوي والسفلي
        layout.setBackgroundColor(Color.parseColor("#1E1E1E"));

        // ========== 1️⃣ زر التحليل (أخضر) - أصغر ==========
        LinearLayout chartBtn = createSimpleIconButton(
            R.drawable.ic_analytics,
            "تحليل",
            "#27AE60"
        );
        chartBtn.setOnClickListener(v -> openChartActivity());

        // ✅ تصغير زر التحليل ليكون 0.8 من الحجم العادي
        LinearLayout.LayoutParams chartParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.MATCH_PARENT, 0.8f  // ✅ weight = 0.8 أصغر من 1.0
        );
        chartParams.setMargins(2, 0, 2, 0);
        chartBtn.setLayoutParams(chartParams);

        // ========== 2️⃣ زر الوكلاء (برتقالي) - أكبر بكثير ==========
        LinearLayout agentsBtn = createSimpleIconButton(
            R.drawable.ic_local_shipping,
            "وكلاء",
            "#F39C12"
        );
        agentsBtn.setOnClickListener(this::showAgentPopupMenu);

        agentsBtn.setOnLongClickListener(v -> {
            isAgentSaleMode = !isAgentSaleMode;
            // ✅ تحديث الخلفية مع الزوايا المنحنية
            GradientDrawable bg = new GradientDrawable();
            bg.setColor(Color.parseColor(isAgentSaleMode ? "#F39C12" : "#3498DB"));
            bg.setCornerRadius(8f);
            v.setBackground(bg);
            Toast.makeText(MainActivity.this,
                isAgentSaleMode ? "وضع بيع الوكيل" : "وضع تعديل الوكيل",
                Toast.LENGTH_SHORT).show();
            return true;
        });

        // ✅ تكبير زر الوكلاء ليكون 1.5 من حجم الأزرار (أكبر من قبل)
        LinearLayout.LayoutParams agentsParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.MATCH_PARENT, 1.5f  // ✅ weight = 1.5 أكبر بكثير
        );
        agentsParams.setMargins(2, 0, 2, 0);
        agentsBtn.setLayoutParams(agentsParams);

        // ========== 3️⃣ زر السجلات (أزرق) - أصغر ==========
        LinearLayout recordsBtn = createSimpleIconButton(
            R.drawable.ic_history,
            "السجلات",
            "#3498DB"
        );
        recordsBtn.setOnClickListener(v -> openRecordsActivity());

        // ✅ تصغير زر السجلات ليكون 0.8 من الحجم العادي
        LinearLayout.LayoutParams recordsParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.MATCH_PARENT, 0.8f  // ✅ weight = 0.8 أصغر من 1.0
        );
        recordsParams.setMargins(2, 0, 2, 0);
        recordsBtn.setLayoutParams(recordsParams);

        // ========== 4️⃣ زر التصفير (أحمر) - أصغر ==========
        LinearLayout resetBtn = createSimpleIconButton(
            R.drawable.ic_restart_alt,
            "تصفير",
            "#FF4757"
        );
        resetBtn.setOnClickListener(v -> handleReset());

        // ✅ تصغير زر التصفير ليكون 0.6 من حجم الأزرار الأخرى (أصغر من قبل)
        LinearLayout.LayoutParams resetParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.MATCH_PARENT, 0.6f  // ✅ weight = 0.6 أصغر من 0.7
        );
        resetParams.setMargins(2, 0, 2, 0);
        resetBtn.setLayoutParams(resetParams);

        // ========== 5️⃣ زر Dark Mode (رمادي/أصفر) - صغير جداً ==========
        LinearLayout darkModeBtn = createDarkModeButton();
        darkModeBtn.setOnClickListener(v -> toggleDarkMode());

        // ✅ زر صغير جداً 0.5
        LinearLayout.LayoutParams darkModeParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.MATCH_PARENT, 0.5f  // ✅ weight = 0.5 صغير جداً
        );
        darkModeParams.setMargins(2, 0, 2, 0);
        darkModeBtn.setLayoutParams(darkModeParams);

        // ✅ إضافة الأزرار مع مسافات بينها
        layout.addView(chartBtn);
        layout.addView(agentsBtn);
        layout.addView(recordsBtn);
        layout.addView(resetBtn);
        layout.addView(darkModeBtn);

        return layout;
    }

    private LinearLayout createMaterialIconButton(int iconResId, String label, String bgColor) {
        LinearLayout buttonLayout = new LinearLayout(this);
        buttonLayout.setOrientation(LinearLayout.VERTICAL);
        buttonLayout.setGravity(Gravity.CENTER);
        buttonLayout.setPadding(15, 15, 15, 15);
        buttonLayout.setBackgroundColor(Color.parseColor(bgColor));
        buttonLayout.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));
        buttonLayout.setClickable(true);
        buttonLayout.setFocusable(true);

        ImageView iconView = new ImageView(this);
        try { iconView.setImageResource(iconResId); } catch (Exception ignored) {}
        iconView.setColorFilter(uiHelper.getTextPrimary(), PorterDuff.Mode.SRC_IN);
        iconView.setLayoutParams(new LinearLayout.LayoutParams(72, 72));
        buttonLayout.addView(iconView);

        TextView labelView = new TextView(this);
        labelView.setText(label);
        labelView.setTextColor(uiHelper.getTextPrimary());
        labelView.setTextSize(14);
        labelView.setGravity(Gravity.CENTER);
        labelView.setTypeface(null, Typeface.BOLD);
        labelView.setPadding(0, 8, 0, 0);
        buttonLayout.addView(labelView);

        return buttonLayout;
    }

    // ==================== دالة إنشاء زر - محسّنة بصرياً مع Ripple ====================

    /**
     * إنشاء زر أيقونة بسيط واحترافي مع تأثير Ripple
     */
    // ==================== دالة الزر - محسّنة لإظهار النص كاملاً ====================

    private LinearLayout createSimpleIconButton(int iconResId, String label, String bgColor) {
        LinearLayout buttonLayout = new LinearLayout(this);
        buttonLayout.setOrientation(LinearLayout.VERTICAL);
        buttonLayout.setGravity(Gravity.CENTER);
        buttonLayout.setPadding(6, 8, 6, 8);  // ✅ تقليل Padding أكثر

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f
        );
        params.setMargins(2, 0, 2, 0);  // ✅ مسافة صغيرة بين الأزرار
        buttonLayout.setLayoutParams(params);

        buttonLayout.setClickable(true);
        buttonLayout.setFocusable(true);

        // زوايا منحنية وظل
        GradientDrawable background = new GradientDrawable();
        background.setColor(Color.parseColor(bgColor));
        background.setCornerRadius(6f);
        buttonLayout.setBackground(background);

        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.LOLLIPOP) {
            buttonLayout.setElevation(2f);
        }

        // ========== الأيقونة - أصغر ==========
        ImageView iconView = new ImageView(this);
        try {
            iconView.setImageResource(iconResId);
        } catch (Exception ignored) {}

        iconView.setColorFilter(Color.WHITE, PorterDuff.Mode.SRC_IN);
        iconView.setLayoutParams(new LinearLayout.LayoutParams(40, 40)); // ✅ من 48 إلى 40
        iconView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        buttonLayout.addView(iconView);

        // ========== النص - محسّن ==========
        TextView labelView = new TextView(this);
        labelView.setText(label);
        labelView.setTextColor(Color.WHITE);
        labelView.setTextSize(12);  // ✅ من 13 إلى 12
        labelView.setGravity(Gravity.CENTER);
        labelView.setTypeface(null, Typeface.BOLD);
        labelView.setPadding(0, 3, 0, 0);  // ✅ مسافة صغيرة من الأيقونة

        // ✅ ضمان ظهور النص كاملاً
        labelView.setMaxLines(1);  // ✅ سطر واحد
        labelView.setEllipsize(android.text.TextUtils.TruncateAt.END);  // ✅ إذا كان طويل جداً يضع ...
        labelView.setSingleLine(true);  // ✅ سطر واحد فقط

        labelView.setShadowLayer(1.5f, 0f, 0.5f, Color.parseColor("#30000000"));

        // ✅ تأكد من أن TextView يأخذ المساحة المتاحة
        labelView.setLayoutParams(new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        ));

        buttonLayout.addView(labelView);

        return buttonLayout;
    }

    /**
     * دالة مساعدة لتعديل سطوع اللون
     */
    private int adjustBrightness(int color, float factor) {
        int red = (int) (Color.red(color) * factor);
        int green = (int) (Color.green(color) * factor);
        int blue = (int) (Color.blue(color) * factor);
        return Color.rgb(
            Math.min(255, red),
            Math.min(255, green),
            Math.min(255, blue)
        );
    }

    /**
     * إنشاء زر Dark Mode صغير
     */
    private LinearLayout createDarkModeButton() {
        LinearLayout buttonLayout = new LinearLayout(this);
        buttonLayout.setOrientation(LinearLayout.VERTICAL);
        buttonLayout.setGravity(Gravity.CENTER);
        buttonLayout.setPadding(4, 8, 4, 8);

        buttonLayout.setClickable(true);
        buttonLayout.setFocusable(true);

        // اللون حسب الوضع الحالي
        String bgColor = uiHelper.isDarkMode() ? "#FFD700" : "#5D6D7E";
        GradientDrawable background = new GradientDrawable();
        background.setColor(Color.parseColor(bgColor));
        background.setCornerRadius(6f);
        buttonLayout.setBackground(background);

        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.LOLLIPOP) {
            buttonLayout.setElevation(2f);
        }

        // أيقونة (نص بدل أيقونة)
        TextView iconView = new TextView(this);
        iconView.setText(uiHelper.isDarkMode() ? "☀" : "🌙");
        iconView.setTextSize(20);
        iconView.setGravity(Gravity.CENTER);
        iconView.setLayoutParams(new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.WRAP_CONTENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        ));
        buttonLayout.addView(iconView);

        // النص
        TextView labelView = new TextView(this);
        labelView.setText("");
        labelView.setTextColor(Color.WHITE);
        labelView.setTextSize(10);
        labelView.setGravity(Gravity.CENTER);
        labelView.setPadding(0, 2, 0, 0);
        buttonLayout.addView(labelView);

        // حفظ المرجع لتحديثه لاحقاً
        buttonLayout.setTag(R.id.dark_mode_button_tag, new Object[]{iconView, labelView, background});

        return buttonLayout;
    }

    /**
     * تبديل Dark Mode وإعادة إنشاء الواجهة
     */
    private void toggleDarkMode() {
        uiHelper.toggleDarkMode();

        // إعادة إنشاء Activity لتطبيق الألوان الجديدة
        recreate();
    }

    private TextView createSelectedAgentTextView() {
        selectedAgentTextView = new TextView(this);
        selectedAgentTextView.setTextSize(18);
        selectedAgentTextView.setTextColor(Color.WHITE);  // ✅ أبيض دائماً على الخلفية البرتقالية
        selectedAgentTextView.setGravity(Gravity.CENTER);
        selectedAgentTextView.setPadding(20, 12, 20, 12);  // ✅ تقليل من 24,18 إلى 20,12
        selectedAgentTextView.setVisibility(View.GONE);
        selectedAgentTextView.setTypeface(null, Typeface.BOLD);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        params.setMargins(0, 5, 0, 5);  // ✅ تقليل من 12 إلى 5
        selectedAgentTextView.setLayoutParams(params);
        selectedAgentTextView.setOnClickListener(v -> resetSelection());
        return selectedAgentTextView;
    }

    private LinearLayout createAgentWalletLayout() {
        agentWalletLayout = new LinearLayout(this);
        agentWalletLayout.setOrientation(LinearLayout.HORIZONTAL);
        agentWalletLayout.setVisibility(View.GONE);
        agentWalletLayout.setPadding(0, 3, 0, 8);  // ✅ تقليل من 5,15 إلى 3,8

        LinearLayout.LayoutParams yohoParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        yohoParams.setMarginEnd(10);
        LinearLayout yohoDisplayLayout = new LinearLayout(this);
        yohoDisplayLayout.setOrientation(LinearLayout.VERTICAL);  // ✅ تغيير من HORIZONTAL إلى VERTICAL
        yohoDisplayLayout.setGravity(Gravity.CENTER);
        yohoDisplayLayout.setBackgroundColor(uiHelper.getBackgroundCard());
        yohoDisplayLayout.setPadding(24, 18, 24, 18);
        yohoDisplayLayout.setLayoutParams(yohoParams);
        yohoDisplayLayout.setOnClickListener(v -> {
            if (selectedMainAgentName == null) return;
            EditText balanceEditor = yohoDisplayLayout.findViewWithTag("yoho_editor");
            TextView balanceText = yohoDisplayLayout.findViewWithTag("yoho_text");
            if (balanceText != null) balanceText.setVisibility(View.GONE);
            if (balanceEditor != null) {
                balanceEditor.setVisibility(View.VISIBLE);
                Agent agent = getAgentData(selectedMainAgentName);
                if (agent != null) {
                    balanceEditor.setText("");
                    balanceEditor.setHint(yohoDecimalFormat.format(agent.yohoBalance));
                }
                balanceEditor.requestFocus();
                InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
                imm.showSoftInput(balanceEditor, InputMethodManager.SHOW_IMPLICIT);
            }
        });

        ImageView yohoIcon = new ImageView(this);
        try { yohoIcon.setImageResource(R.drawable.yoho_icon); } catch (Exception ignored) {}
        LinearLayout.LayoutParams yohoIconParams = new LinearLayout.LayoutParams(64, 64);  // ✅ حجم أكبر للأيقونة
        yohoIconParams.setMargins(0, 0, 0, 8);  // ✅ مسافة تحت الأيقونة
        yohoIcon.setLayoutParams(yohoIconParams);
        yohoDisplayLayout.addView(yohoIcon);

        agentYohoWalletDisplay = new TextView(this);
        agentYohoWalletDisplay.setText("0");  // ✅ أرقام فقط
        agentYohoWalletDisplay.setTextColor(uiHelper.getTextPrimary());
        agentYohoWalletDisplay.setTextSize(20);  // ✅ حجم أكبر قليلاً
        agentYohoWalletDisplay.setTypeface(null, Typeface.BOLD);
        agentYohoWalletDisplay.setGravity(Gravity.CENTER);  // ✅ توسيط النص
        agentYohoWalletDisplay.setTag("yoho_text");
        yohoDisplayLayout.addView(agentYohoWalletDisplay);

        final EditText yohoBalanceEditor = new EditText(this);
        yohoBalanceEditor.setTextSize(18);
        yohoBalanceEditor.setGravity(Gravity.CENTER);
        yohoBalanceEditor.setBackground(null);
        yohoBalanceEditor.setTextColor(uiHelper.getTextPrimary());
        yohoBalanceEditor.setPadding(20, 15, 20, 15);
        yohoBalanceEditor.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_SIGNED | InputType.TYPE_NUMBER_FLAG_DECIMAL);
        yohoBalanceEditor.setVisibility(View.GONE);
        yohoBalanceEditor.setImeOptions(EditorInfo.IME_ACTION_DONE);
        yohoBalanceEditor.setTag("yoho_editor");
        yohoDisplayLayout.addView(yohoBalanceEditor);

        yohoBalanceEditor.setOnFocusChangeListener((v, hasFocus) -> {
            if (!hasFocus) {
                handleAgentYohoManualEdit(yohoBalanceEditor.getText().toString());
                yohoBalanceEditor.setVisibility(View.GONE);
                agentYohoWalletDisplay.setVisibility(View.VISIBLE);
            }
        });
        yohoBalanceEditor.setOnEditorActionListener((v, actionId, event) -> {
            if (actionId == EditorInfo.IME_ACTION_DONE) {
                v.clearFocus();
                InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
                imm.hideSoftInputFromWindow(v.getWindowToken(), 0);
                return true;
            }
            return false;
        });

        LinearLayout aedDisplayLayout = new LinearLayout(this);
        aedDisplayLayout.setOrientation(LinearLayout.VERTICAL);  // ✅ تغيير من HORIZONTAL إلى VERTICAL
        aedDisplayLayout.setGravity(Gravity.CENTER);
        aedDisplayLayout.setBackgroundColor(uiHelper.getAedColor());
        aedDisplayLayout.setPadding(24, 18, 24, 18);
        aedDisplayLayout.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        aedDisplayLayout.setOnClickListener(v -> transferAgentAedToMainWallet());

        ImageView aedIcon = new ImageView(this);
        try { aedIcon.setImageResource(R.drawable.aed_icon); } catch (Exception ignored) {}
        LinearLayout.LayoutParams iconParams = new LinearLayout.LayoutParams(64, 64);  // ✅ حجم أكبر للأيقونة
        iconParams.setMargins(0, 0, 0, 8);  // ✅ مسافة تحت الأيقونة
        aedIcon.setLayoutParams(iconParams);
        aedDisplayLayout.addView(aedIcon);

        agentAedWalletDisplay = new TextView(this);
        agentAedWalletDisplay.setText("0.00");  // ✅ أرقام فقط
        agentAedWalletDisplay.setTextColor(uiHelper.getTextPrimary());
        agentAedWalletDisplay.setTextSize(20);  // ✅ حجم أكبر قليلاً
        agentAedWalletDisplay.setTypeface(null, Typeface.BOLD);
        agentAedWalletDisplay.setGravity(Gravity.CENTER);  // ✅ توسيط النص
        aedDisplayLayout.addView(agentAedWalletDisplay);

        // ✅ تبديل الأماكن: AED يسار، YOHO يمين
        agentWalletLayout.addView(aedDisplayLayout);
        agentWalletLayout.addView(yohoDisplayLayout);

        return agentWalletLayout;
    }

    private EditText createOldStyleEditText(String hint, int size, boolean isBold) {
        EditText editText = new EditText(this);
        editText.setId(View.generateViewId());
        editText.setHint(hint);
        editText.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL);
        editText.setTextSize(size);
        editText.setGravity(Gravity.CENTER);
        editText.setBackgroundColor(uiHelper.getBackgroundSurface());
        editText.setTextColor(uiHelper.getTextPrimary());
        editText.setHintTextColor(uiHelper.getTextHint());
        editText.setPadding(24, 24, 24, 24);
        if (isBold) {
            editText.setTypeface(null, Typeface.BOLD);
        }
        return editText;
    }

    private LinearLayout createOldStyleInputLayout() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.HORIZONTAL);
        layout.setGravity(Gravity.CENTER);
        layout.setPadding(10, 10, 10, 10);

        LinearLayout aedLayout = new LinearLayout(this);
        aedLayout.setOrientation(LinearLayout.VERTICAL);
        aedLayout.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        aedLayout.setPadding(5, 5, 5, 5);
        aedLayout.addView(createCurrencyIcon(R.drawable.aed_icon));
        aedInput = createOldStyleEditText("0.00", 18, false);
        aedLayout.addView(aedInput);

        LinearLayout usdtLayout = new LinearLayout(this);
        usdtLayout.setOrientation(LinearLayout.VERTICAL);
        usdtLayout.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        usdtLayout.setPadding(5, 5, 5, 5);
        usdtIconView = createCurrencyIcon(R.drawable.usdt_icon);
        usdtLayout.addView(usdtIconView);
        usdtInput = createOldStyleEditText("0.00", 18, false);
        usdtLayout.addView(usdtInput);

        layout.addView(aedLayout);
        layout.addView(usdtLayout);
        return layout;
    }

    private LinearLayout createOldStyleYohoControls() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.HORIZONTAL);
        layout.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        params.setMargins(10, 10, 10, 0);  // ✅ تقليل من 15,30 إلى 10,10
        layout.setLayoutParams(params);
        yohoPriceSelector = new TextView(this);
        yohoPriceSelector.setText("📌 اختر سعر YOHO");
        yohoPriceSelector.setTextSize(18);
        yohoPriceSelector.setTextColor(uiHelper.getPrimaryGold());
        yohoPriceSelector.setGravity(Gravity.CENTER);
        yohoPriceSelector.setBackgroundColor(uiHelper.getBackgroundSurface());
        yohoPriceSelector.setTypeface(null, Typeface.BOLD);
        yohoPriceSelector.setPadding(18, 16, 18, 16);  // ✅ تقليل من 24 إلى 18,16
        yohoPriceSelector.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        yohoPriceSelector.setOnClickListener(this::showYohoPrices);
        agentCommissionButton = new Button(this);
        agentCommissionButton.setText("💰 سعر العميل");
        agentCommissionButton.setTextSize(16);
        agentCommissionButton.setTextColor(uiHelper.getTextPrimary());
        agentCommissionButton.setBackgroundColor(uiHelper.getWarningOrange());
        agentCommissionButton.setTypeface(null, Typeface.BOLD);
        agentCommissionButton.setPadding(18, 16, 18, 16);  // ✅ تقليل من 24 إلى 18,16
        LinearLayout.LayoutParams agentBtnParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1);
        agentBtnParams.setMarginStart(8);  // ✅ تقليل من 10 إلى 8
        agentCommissionButton.setLayoutParams(agentBtnParams);
        agentCommissionButton.setVisibility(View.GONE);
        agentCommissionButton.setOnClickListener(this::showAgentCommissionPrices);
        layout.addView(yohoPriceSelector);
        layout.addView(agentCommissionButton);
        return layout;
    }

    private LinearLayout createOldStyleWalletLayout() {
        // الصف الرئيسي - يحتوي على صندوقين أفقياً
        LinearLayout walletRow = new LinearLayout(this);
        walletRow.setOrientation(LinearLayout.HORIZONTAL);
        walletRow.setLayoutParams(new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        ));
        walletRow.setPadding(10, 10, 10, 10);

        // ════════════════════════════════════════════════════════════
        // 1️⃣ صندوق AED (أبيض) - النصف الأيسر
        // ════════════════════════════════════════════════════════════
        LinearLayout aedBox = new LinearLayout(this);
        aedBox.setOrientation(LinearLayout.VERTICAL);
        aedBox.setGravity(Gravity.CENTER);
        aedBox.setPadding(15, 20, 15, 20);

        // خلفية بيضاء مع زوايا منحنية
        GradientDrawable aedBg = new GradientDrawable();
        int aedBgColor = uiHelper.isDarkMode() ?
            Color.parseColor("#2C3E50") :  // داكن في Dark Mode
            Color.WHITE;                    // أبيض في Light Mode
        aedBg.setColor(aedBgColor);
        aedBg.setCornerRadius(12f);
        aedBox.setBackground(aedBg);

        // الوزن - نصف العرض
        LinearLayout.LayoutParams aedParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f
        );
        aedParams.setMargins(0, 0, 5, 0);  // مسافة من اليمين
        aedBox.setLayoutParams(aedParams);

        // أيقونة AED PNG - في الأعلى
        ImageView aedIconView = new ImageView(this);
        try { aedIconView.setImageResource(R.drawable.aed_icon); } catch (Exception ignored) {}
        LinearLayout.LayoutParams aedIconParams = new LinearLayout.LayoutParams(64, 64);
        aedIconParams.setMargins(0, 0, 0, 8);  // مسافة تحت الأيقونة
        aedIconParams.gravity = Gravity.CENTER_HORIZONTAL;
        aedIconView.setLayoutParams(aedIconParams);
        aedBox.addView(aedIconView);

        // القيمة AED (قابلة للتعديل) - تحت الأيقونة
        final TextView aedDisplay = new TextView(this);
        aedDisplay.setTextSize(22);
        int aedTextColor = uiHelper.isDarkMode() ? Color.WHITE : Color.BLACK;
        aedDisplay.setTextColor(aedTextColor);
        aedDisplay.setTypeface(null, Typeface.BOLD);
        aedDisplay.setGravity(Gravity.CENTER);
        aedValue = aedDisplay;
        aedBox.addView(aedDisplay);

        // جعل الصندوق قابل للنقر للتعديل
        aedBox.setOnClickListener(v -> showEditDialog("AED"));

        walletRow.addView(aedBox);

        // ════════════════════════════════════════════════════════════
        // 2️⃣ صندوق USDT (أبيض) - النصف الأيمن
        // ════════════════════════════════════════════════════════════
        LinearLayout usdtBox = new LinearLayout(this);
        usdtBox.setOrientation(LinearLayout.VERTICAL);
        usdtBox.setGravity(Gravity.CENTER);
        usdtBox.setPadding(15, 20, 15, 20);

        // خلفية بيضاء مع زوايا منحنية
        GradientDrawable usdtBg = new GradientDrawable();
        int usdtBgColor = uiHelper.isDarkMode() ?
            Color.parseColor("#2C3E50") :  // داكن في Dark Mode
            Color.WHITE;                    // أبيض في Light Mode
        usdtBg.setColor(usdtBgColor);
        usdtBg.setCornerRadius(12f);
        usdtBox.setBackground(usdtBg);

        // الوزن - نصف العرض
        LinearLayout.LayoutParams usdtParams = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f
        );
        usdtParams.setMargins(5, 0, 0, 0);  // مسافة من اليسار
        usdtBox.setLayoutParams(usdtParams);

        // أيقونة USDT PNG - في الأعلى
        ImageView usdtIconView = new ImageView(this);
        try { usdtIconView.setImageResource(R.drawable.usdt_icon); } catch (Exception ignored) {}
        LinearLayout.LayoutParams usdtIconParams = new LinearLayout.LayoutParams(64, 64);
        usdtIconParams.setMargins(0, 0, 0, 8);  // مسافة تحت الأيقونة
        usdtIconParams.gravity = Gravity.CENTER_HORIZONTAL;
        usdtIconView.setLayoutParams(usdtIconParams);
        usdtBox.addView(usdtIconView);

        // القيمة USDT (قابلة للتعديل) - تحت الأيقونة
        final TextView usdtDisplay = new TextView(this);
        usdtDisplay.setTextSize(22);
        int usdtTextColor = uiHelper.isDarkMode() ? Color.WHITE : Color.BLACK;
        usdtDisplay.setTextColor(usdtTextColor);
        usdtDisplay.setTypeface(null, Typeface.BOLD);
        usdtDisplay.setGravity(Gravity.CENTER);
        usdtValue = usdtDisplay;
        usdtBox.addView(usdtDisplay);

        // جعل الصندوق قابل للنقر للتعديل
        usdtBox.setOnClickListener(v -> showEditDialog("USDT"));

        walletRow.addView(usdtBox);

        return walletRow;
    }

    // دالة مساعدة لإظهار حوار التعديل
    private void showEditDialog(final String currency) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("تعديل رصيد " + currency);

        final EditText input = new EditText(this);
        input.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL);
        input.setHint("أدخل الرصيد الجديد");
        String currentValue = preferences.getString(
            currency.equals("AED") ? "aed_wallet" : "usdt_wallet", "0.0"
        );
        input.setText(currentValue);
        builder.setView(input);

        builder.setPositiveButton("حفظ", (dialog, which) -> {
            handleWalletManualEdit(currency, input.getText().toString());
        });
        builder.setNegativeButton("إلغاء", (dialog, which) -> dialog.cancel());

        builder.show();
    }

    private ImageView createCurrencyIcon(int imageResourceId) {
        ImageView icon = new ImageView(this);
        try { icon.setImageResource(imageResourceId); } catch (Exception ignored) {}
        LinearLayout.LayoutParams iconParams = new LinearLayout.LayoutParams(64, 64);  // ✅ حجم أكبر
        iconParams.gravity = Gravity.CENTER_HORIZONTAL;
        iconParams.setMargins(0, 0, 0, 12);  // ✅ مسافة أكبر تحت الأيقونة
        icon.setLayoutParams(iconParams);
        return icon;
    }

    private View createEditableBalanceView(final String currency) {
        FrameLayout frameLayout = new FrameLayout(this);
        final TextView balanceText = new TextView(this);
        balanceText.setTextSize(22);
        balanceText.setGravity(Gravity.CENTER);
        balanceText.setBackgroundColor(uiHelper.getBackgroundCard());
        balanceText.setTextColor(uiHelper.getTextPrimary());
        balanceText.setTypeface(null, Typeface.BOLD);
        balanceText.setPadding(12, 20, 12, 20);
        if (currency.equals("AED")) {
            aedValue = balanceText;
        } else {
            usdtValue = balanceText;
        }
        frameLayout.addView(balanceText);

        final EditText balanceEditor = new EditText(this);
        balanceEditor.setTextSize(22);
        balanceEditor.setGravity(Gravity.CENTER);
        balanceEditor.setBackgroundColor(uiHelper.getBackgroundSurface());
        balanceEditor.setTextColor(uiHelper.getTextPrimary());
        balanceEditor.setHintTextColor(uiHelper.getTextHint());
        balanceEditor.setPadding(12, 20, 12, 20);
        balanceEditor.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL | InputType.TYPE_NUMBER_FLAG_SIGNED);
        balanceEditor.setVisibility(View.GONE);
        balanceEditor.setImeOptions(EditorInfo.IME_ACTION_DONE);
        frameLayout.addView(balanceEditor);

        balanceText.setOnClickListener(v -> {
            balanceText.setVisibility(View.GONE);
            balanceEditor.setVisibility(View.VISIBLE);
            String currentValue = preferences.getString(currency.equals("AED") ? "aed_wallet" : "usdt_wallet", "0.0");
            balanceEditor.setText("");
            balanceEditor.setHint(currentValue);
            balanceEditor.requestFocus();
            InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
            imm.showSoftInput(balanceEditor, InputMethodManager.SHOW_IMPLICIT);
        });

        balanceEditor.setOnFocusChangeListener((v, hasFocus) -> {
            if (!hasFocus) {
                handleWalletManualEdit(currency, balanceEditor.getText().toString());
                balanceEditor.setVisibility(View.GONE);
                balanceText.setVisibility(View.VISIBLE);
            }
        });
        balanceEditor.setOnEditorActionListener((v, actionId, event) -> {
            if (actionId == EditorInfo.IME_ACTION_DONE) {
                v.clearFocus();
                InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
                imm.hideSoftInputFromWindow(v.getWindowToken(), 0);
                return true;
            }
            return false;
        });

        return frameLayout;
    }

    // ==================== أزرار الإضافة والخصم - بنفس نمط الأزرار العلوية ====================
    private LinearLayout createOldStyleActionButtons() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.HORIZONTAL);

        layout.setLayoutParams(new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            180  // ✅ ارتفاع أكبر لعرض النص الطويل بوضوح
        ));
        layout.setPadding(8, 4, 8, 4);

        // ✅ خلفية بنفس نمط الشريط العلوي (اختياري)
        layout.setBackgroundColor(Color.parseColor("#1E1E1E"));

        // ========== زر الإضافة - نص فقط ==========
        LinearLayout addButton = createActionButton(
            "اضف الرصيد",
            "",  // بدون رمز
            "#4CAF50"  // أخضر
        );
        addButton.setOnClickListener(v -> handleAddOrSubtract(true));

        // ========== زر الخصم - نص فقط ==========
        LinearLayout subButton = createActionButton(
            "اخصم الرصيد",
            "",  // بدون رمز
            "#F44336"  // أحمر
        );
        subButton.setOnClickListener(v -> handleAddOrSubtract(false));

        layout.addView(addButton);
        layout.addView(subButton);

        return layout;
    }

    /**
     * إنشاء زر إضافة/خصم بنفس نمط الأزرار العلوية
     */
    private LinearLayout createActionButton(String label, String emoji, String bgColor) {
        LinearLayout buttonLayout = new LinearLayout(this);
        buttonLayout.setOrientation(LinearLayout.VERTICAL);
        buttonLayout.setGravity(Gravity.CENTER);
        buttonLayout.setPadding(6, 8, 6, 8);

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f
        );
        params.setMargins(2, 0, 2, 0);  // مسافة صغيرة بين الأزرار
        buttonLayout.setLayoutParams(params);

        buttonLayout.setClickable(true);
        buttonLayout.setFocusable(true);

        // زوايا منحنية وظل
        GradientDrawable background = new GradientDrawable();
        background.setColor(Color.parseColor(bgColor));
        background.setCornerRadius(6f);
        buttonLayout.setBackground(background);

        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.LOLLIPOP) {
            buttonLayout.setElevation(2f);
        }

        // ========== الأيقونة (الرمز) - فقط إذا كان موجود ==========
        if (emoji != null && !emoji.isEmpty()) {
            TextView emojiView = new TextView(this);
            emojiView.setText(emoji);
            emojiView.setTextSize(40);  // حجم كبير للرمز + / -
            emojiView.setTextColor(Color.WHITE);
            emojiView.setGravity(Gravity.CENTER);
            emojiView.setTypeface(null, Typeface.BOLD);
            emojiView.setLayoutParams(new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ));
            buttonLayout.addView(emojiView);
        }

        // ========== النص ==========
        TextView labelView = new TextView(this);
        labelView.setText(label);
        labelView.setTextColor(Color.WHITE);
        labelView.setTextSize(15);  // ✅ حجم أكبر وأوضح
        labelView.setGravity(Gravity.CENTER);
        labelView.setTypeface(null, Typeface.BOLD);
        labelView.setPadding(4, 6, 4, 0);  // ✅ مساحة أكبر من الجوانب

        labelView.setMaxLines(2);  // ✅ السماح بسطرين
        labelView.setEllipsize(android.text.TextUtils.TruncateAt.END);
        labelView.setSingleLine(false);  // ✅ السماح بأكثر من سطر

        labelView.setShadowLayer(1.5f, 0f, 0.5f, Color.parseColor("#30000000"));

        labelView.setLayoutParams(new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        ));

        buttonLayout.addView(labelView);

        return buttonLayout;
    }

    // ✅ تم حذف createBubbleControlButtons() - لم تعد مستخدمة

    private void checkPermissionAndStartService() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && !Settings.canDrawOverlays(this)) {
            Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                    Uri.parse("package:" + getPackageName()));
            startActivityForResult(intent, CODE_DRAW_OVER_OTHER_APP_PERMISSION);
        } else {
            startFloatingService();
        }
    }

    private void startFloatingService() {
        startService(new Intent(MainActivity.this, FloatingViewService.class));
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == CODE_DRAW_OVER_OTHER_APP_PERMISSION) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                if (Settings.canDrawOverlays(this)) {
                    startFloatingService();
                } else {
                    Toast.makeText(this, "لم يتم منح الإذن، لا يمكن عرض الفقاعة.", Toast.LENGTH_SHORT).show();
                }
            }
        } else {
            super.onActivityResult(requestCode, resultCode, data);
        }
    }

    // --- Calculation Logic ---
    private double parseDoubleSafe(String value) {
        if (value == null || value.trim().isEmpty()) return 0.0;
        try {
            return Double.parseDouble(value.replace(",", ""));
        } catch (NumberFormatException e) {
            return 0.0;
        }
    }

    private void updateCalculationsFromAed(String aedStr) {
        double aedAmount = parseDoubleSafe(aedStr);
        if (aedAmount > 0) {
            if (isTransferToMemberMode) {
                if (isCustomGroupSaleActive) {
                    double baseRate = agentCommissionPrices[3];
                    double totalYohoGenerated = aedAmount * (baseRate / 100.0);
                    double totalMemberYoho = 0;
                    for (double[] sale : customMemberSales) {
                        totalMemberYoho += sale[1];
                    }
                    double agentCommission = totalYohoGenerated - totalMemberYoho;
                    usdtInput.setText(yohoDecimalFormat.format(agentCommission));
                } else if (isCustomCommissionSale) {
                    double baseYoho = (aedAmount / 100.0) * currentCustomRate;
                    double customerYoho = parseDoubleSafe(yohoInput.getText().toString());
                    if (currentAgentCommissionIndex == 5) { // تسعيرة مخصصة 260
                        if (customerYoho > 0) {
                            double commission = baseYoho - customerYoho;
                            if (commission >= 0) {
                                usdtInput.setText(yohoDecimalFormat.format(commission));
                            } else {
                                usdtInput.setText("");
                            }
                        } else {
                            usdtInput.setText("");
                        }
                    } else { // تسعيرة مخصصة 265
                        double commission = baseYoho - customerYoho;
                        usdtInput.setText(yohoDecimalFormat.format(commission));
                    }
                } else {
                    double yohoRate = agentCommissionPrices[currentAgentCommissionIndex] / 100.0;
                    double yohoForMember = aedAmount * yohoRate;
                    double commissionValue = agentCommissionValues[currentAgentCommissionIndex];
                    double basePrice = agentCommissionPrices[currentAgentCommissionIndex];
                    double commissionForAgent = (basePrice > 0) ? (yohoForMember / basePrice) * commissionValue : 0;
                    usdtInput.setText(yohoDecimalFormat.format(commissionForAgent));
                    yohoInput.setText(yohoDecimalFormat.format(yohoForMember));
                }
            } else {
                double usdtAmount = aedAmount * AED_TO_USDT_RATE;
                usdtInput.setText(decimalFormat.format(usdtAmount));
                double yohoRate = yohoPrices[currentYohoIndex] / 100.0;
                double yohoResult = aedAmount * yohoRate;
                yohoInput.setText(yohoDecimalFormat.format(yohoResult));
            }
        } else {
            usdtInput.setText("");
            if (!isCustomCommissionSale) {
                yohoInput.setText("");
            }
        }
    }

    private void updateCalculationsFromUsdt(String usdtStr) {
        if (isTransferToMemberMode) return;
        double usdtAmount = parseDoubleSafe(usdtStr);
        if (usdtAmount > 0) {
            double aedAmount = usdtAmount * USDT_TO_AED_RATE;
            aedInput.setText(decimalFormat.format(aedAmount));
        } else {
            aedInput.setText("");
        }
    }

    private void updateCalculationsFromYoho(String yohoStr) {
        if (isCustomCommissionSale) {
            if (currentAgentCommissionIndex == 5) { // تسعيرة مخصصة 260
                // لا نفعل شيئاً هنا لأن التحديث يتم في TextWatcher
                return;
            } else { // تسعيرة مخصصة 265 أو غيرها
                updateCalculationsFromAed(aedInput.getText().toString());
            }
            return;
        }
        if (isCustomGroupSaleActive) return;

        // التسعيرات العادية
        double yohoAmount = parseDoubleSafe(yohoStr);
        if (yohoAmount > 0) {
            double yohoRatePer100Aed = yohoPrices[currentYohoIndex];
            if (yohoRatePer100Aed > 0) {
                double aedAmount = (yohoAmount / yohoRatePer100Aed) * 100.0;
                aedInput.setText(decimalFormat.format(aedAmount));
            } else {
                aedInput.setText("");
                usdtInput.setText("");
            }
        } else {
            aedInput.setText("");
            usdtInput.setText("");
        }
    }

    // --- Core Business Logic ---

    private void handleAddOrSubtract(boolean isAdding) {
        if (selectedMainAgentName != null) {
            handleAgentLogic(isAdding);
        } else {
            handleMainWalletLogic(isAdding);
        }
    }

    private void handleMainWalletLogic(boolean isAdding) {
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        if (aedAmount <= 0) {
            Toast.makeText(this, "الرجاء إدخال قيمة موجبة صالحة", Toast.LENGTH_SHORT).show();
            return;
        }
        double usdtAmount = aedAmount * AED_TO_USDT_RATE;
        double currentAed = parseDoubleSafe(preferences.getString("aed_wallet", "0.0"));
        double currentUsdt = parseDoubleSafe(preferences.getString("usdt_wallet", "0.0"));
        String beforeState = currentAed + "|" + currentUsdt;
        double newBalanceAed = isAdding ? (currentAed + aedAmount) : (currentAed - aedAmount);
        double newBalanceUsdt = isAdding ? (currentUsdt + usdtAmount) : (currentUsdt - usdtAmount);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString("aed_wallet", String.valueOf(newBalanceAed));
        editor.putString("usdt_wallet", String.valueOf(newBalanceUsdt));
        editor.apply();
        String type = isAdding ? "add" : "subtract";
        String message = generateWhatsappMessage(type, aedAmount, usdtAmount, newBalanceAed, newBalanceUsdt, null);
        saveTransactionRecord(type, aedAmount, usdtAmount, 0, OWNER_KEY_MAIN_WALLET, "Main Wallet Transaction", message, beforeState);
        shareToWhatsApp(message);
        Toast.makeText(this, isAdding ? "تمت الإضافة بنجاح" : "تم الخصم بنجاح", Toast.LENGTH_SHORT).show();
        updateWalletDisplay();
    }

    private void handleWalletManualEdit(String currency, String newValueStr) {
        String trimmedValue = newValueStr.trim();
        if (trimmedValue.isEmpty()) {
            updateWalletDisplay();
            return;
        }

        if ("AED".equals(currency)) {
            double oldAed = parseDoubleSafe(preferences.getString("aed_wallet", "0.0"));
            double oldUsdt = parseDoubleSafe(preferences.getString("usdt_wallet", "0.0"));
            double finalNewAed;
            if (trimmedValue.startsWith("+")) {
                finalNewAed = oldAed + parseDoubleSafe(trimmedValue.substring(1));
            } else if (trimmedValue.startsWith("-")) {
                finalNewAed = oldAed - parseDoubleSafe(trimmedValue.substring(1));
            } else {
                finalNewAed = parseDoubleSafe(trimmedValue);
            }
            double newUsdt = finalNewAed * AED_TO_USDT_RATE;
            preferences.edit()
                    .putString("aed_wallet", String.valueOf(finalNewAed))
                    .putString("usdt_wallet", String.valueOf(newUsdt))
                    .apply();
            String beforeState = oldAed + "|" + oldUsdt;
            String details = "تعديل يدوي. قديم: " + decimalFormat.format(oldAed) + ", جديد: " + decimalFormat.format(finalNewAed);
            saveTransactionRecord("wallet_aed_edit", finalNewAed - oldAed, newUsdt - oldUsdt, 0, OWNER_KEY_MAIN_WALLET, details, "", beforeState);
        } else if ("USDT".equals(currency)) {
            double oldAed = parseDoubleSafe(preferences.getString("aed_wallet", "0.0"));
            double oldUsdt = parseDoubleSafe(preferences.getString("usdt_wallet", "0.0"));
            double finalNewUsdt;
            if (trimmedValue.startsWith("+")) {
                finalNewUsdt = oldUsdt + parseDoubleSafe(trimmedValue.substring(1));
            } else if (trimmedValue.startsWith("-")) {
                finalNewUsdt = oldUsdt - parseDoubleSafe(trimmedValue.substring(1));
            } else {
                finalNewUsdt = parseDoubleSafe(trimmedValue);
            }
            double newAed = finalNewUsdt * USDT_TO_AED_RATE;
            preferences.edit()
                    .putString("aed_wallet", String.valueOf(newAed))
                    .putString("usdt_wallet", String.valueOf(finalNewUsdt))
                    .apply();
            String beforeState = oldAed + "|" + oldUsdt;
            String details = "تعديل يدوي. قديم: " + decimalFormat.format(oldUsdt) + ", جديد: " + decimalFormat.format(finalNewUsdt);
            saveTransactionRecord("wallet_usdt_edit", newAed - oldAed, finalNewUsdt - oldUsdt, 0, OWNER_KEY_MAIN_WALLET, details, "", beforeState);
        }
        updateWalletDisplay();
        Toast.makeText(this, "تم تحديث الرصيد", Toast.LENGTH_SHORT).show();
    }


    private void handleAgentLogic(boolean isAdding) {
        if (isTransferToMemberMode) {
            if (isAdding) {
                if (isCustomGroupSaleActive) {
                    performFinalGroupSaleCalculation();
                } else if (isCustomCommissionSale) {
                    performCustomCommissionSale();
                } else {
                    performAgentSaleToMember();
                }
            } else {
                performAgentStockTransfer();
            }
        } else {
            if (isAdding) {
                fundAgentWithAedAndYoho();
            } else {
                withdrawAgentYoho();
            }
        }
    }

    private void fundAgentWithAedAndYoho() {
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        double yohoAmount = parseDoubleSafe(yohoInput.getText().toString());
        if (aedAmount <= 0 && yohoAmount <= 0) {
            Toast.makeText(this, "الرجاء إدخال مبلغ بالدرهم الإماراتي أو YOHO", Toast.LENGTH_SHORT).show();
            return;
        }
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;
        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.aedBalance += aedAmount;
        agent.yohoBalance += yohoAmount;
        saveAgentData(agent);
        saveTransactionRecord("agent_fund", aedAmount, 0, yohoAmount, "AGENT:" + agent.name, "تمويل مباشر", "", beforeState);
        Toast.makeText(this, "تم إيداع " + decimalFormat.format(aedAmount) + " درهم إماراتي و " + yohoDecimalFormat.format(yohoAmount) + " YOHO للوكيل", Toast.LENGTH_LONG).show();
        updateAgentBalanceDisplay();
        resetInputs();
    }

    private void performAgentSaleToMember() {
        if (currentAgentCommissionIndex == -1) {
            Toast.makeText(this, "الرجاء تحديد سعر العميل أولاً", Toast.LENGTH_SHORT).show();
            return;
        }
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        if (aedAmount <= 0) {
            Toast.makeText(this, "الرجاء إدخال قيمة", Toast.LENGTH_SHORT).show();
            return;
        }
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;
        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.aedBalance += aedAmount;
        double yohoRate = agentCommissionPrices[currentAgentCommissionIndex] / 100.0;
        double yohoForMember = aedAmount * yohoRate;
        double commissionValue = agentCommissionValues[currentAgentCommissionIndex];
        double basePrice = agentCommissionPrices[currentAgentCommissionIndex];
        double commissionForAgent = (basePrice > 0) ? (yohoForMember / basePrice) * commissionValue : 0;
        agent.yohoBalance += commissionForAgent;
        saveAgentData(agent);
        String message = generateAgentSaleMessage(selectedMainAgentName, yohoForMember, commissionForAgent, agent.yohoBalance);
        saveTransactionRecord("agent_sale", aedAmount, 0, commissionForAgent, "AGENT:" + selectedMainAgentName, "YOHO للعضو: " + yohoForMember, message, beforeState);
        shareToWhatsApp(message);
        Toast.makeText(this, "تمت عملية البيع بنجاح", Toast.LENGTH_SHORT).show();
        updateAgentBalanceDisplay();
        resetInputs();
    }

        private void performCustomCommissionSale() {
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        double customerYoho = parseDoubleSafe(yohoInput.getText().toString());
        if (aedAmount <= 0) {
            Toast.makeText(this, "الرجاء إدخال مبلغ الدرهم الإماراتي", Toast.LENGTH_LONG).show();
            return;
        }
        double baseYoho = (aedAmount / 100.0) * currentCustomRate;

        if (currentAgentCommissionIndex == 5) { // تسعيرة مخصصة 260
            if (customerYoho <= 0) {
                Toast.makeText(this, "الرجاء إدخال مبلغ YOHO للعميل", Toast.LENGTH_LONG).show();
                return;
            }
            if (customerYoho > baseYoho) {
                Toast.makeText(this, "خطأ: مبلغ YOHO المدخل أكبر من القيمة الأساسية", Toast.LENGTH_LONG).show();
                return;
            }
        } else { // تسعيرة مخصصة 265
            if (customerYoho <= 0) {
                customerYoho = baseYoho;
            }
            if (customerYoho > baseYoho) {
                Toast.makeText(this, "خطأ: مبلغ YOHO المدخل أكبر من القيمة الأساسية", Toast.LENGTH_LONG).show();
                return;
            }
        }
        double commission = baseYoho - customerYoho;
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;
        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.aedBalance += aedAmount;
        agent.yohoBalance += commission;
        saveAgentData(agent);
        String message = generateAgentCustomSaleMessage(agent.name, aedAmount, customerYoho, commission, agent.yohoBalance);
        saveTransactionRecord("agent_custom_sale", aedAmount, 0, commission, "AGENT:" + agent.name, "بيع مخصص. YOHO العميل: " + customerYoho, message, beforeState);
        shareToWhatsApp(message);
        Toast.makeText(this, "تمت عملية البيع المخصص بنجاح", Toast.LENGTH_SHORT).show();
        resetSelection();
    }

    private void performFinalGroupSaleCalculation() {
        if (customMemberSales.isEmpty()) {
            Toast.makeText(this, "لم يتم تحديد حصص YOHO للأعضاء.", Toast.LENGTH_SHORT).show();
            return;
        }
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        if (aedAmount <= 0) {
            Toast.makeText(this, "الرجاء إدخال المبلغ الإجمالي بالدرهم الإماراتي", Toast.LENGTH_SHORT).show();
            return;
        }
        double baseRate = agentCommissionPrices[3];
        if (baseRate <= 0) {
            baseRate = CUSTOM_SALE_BASE_RATE_265;
        }
        double totalYohoGenerated = aedAmount * (baseRate / 100.0);
        double totalMemberYoho = 0;
        StringBuilder detailsBuilder = new StringBuilder("تم التوزيع: ");
        for (double[] sale : customMemberSales) {
            totalMemberYoho += sale[1];
            detailsBuilder.append("عضو").append("=").append(sale[1]).append("; ");
        }
        double agentCommission = totalYohoGenerated - totalMemberYoho;
        if (agentCommission < 0) {
            Toast.makeText(this, "خطأ: إجمالي YOHO للأعضاء (" + yohoDecimalFormat.format(totalMemberYoho) + ") أكبر من الإجمالي (" + yohoDecimalFormat.format(totalYohoGenerated) + ")", Toast.LENGTH_LONG).show();
            return;
        }
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;
        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.aedBalance += aedAmount;
        agent.yohoBalance += agentCommission;
        saveAgentData(agent);
        String message = generateGroupSaleMessage(selectedMainAgentName, customMemberSales, agentCommission, agent.yohoBalance);
        saveTransactionRecord("group_sale", aedAmount, 0, agentCommission, "AGENT:" + selectedMainAgentName, detailsBuilder.toString(), message, beforeState);
        shareToWhatsApp(message);
        Toast.makeText(this, "تمت المعاملة بنجاح", Toast.LENGTH_SHORT).show();
        resetSelection();
    }

    private void performAgentStockTransfer() {
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        if (aedAmount <= 0) {
            Toast.makeText(this, "الرجاء إدخال قيمة", Toast.LENGTH_SHORT).show();
            return;
        }
        double yohoRate = yohoPrices[currentYohoIndex] / 100.0;
        double yohoToSubtract = aedAmount * yohoRate;
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;
        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.yohoBalance -= yohoToSubtract;
        saveAgentData(agent);
        String message = generateAgentYohoMessage("transfer", selectedMainAgentName, yohoToSubtract, agent.yohoBalance);
        saveTransactionRecord("agent_transfer_stock", aedAmount, 0, yohoToSubtract, "AGENT:" + selectedMainAgentName, "تحويل من مخزون الوكيل", message, beforeState);
        shareToWhatsApp(message);
        Toast.makeText(this, "تم تحويل الرصيد من الوكيل", Toast.LENGTH_SHORT).show();
        updateAgentBalanceDisplay();
        resetInputs();
    }

    private void withdrawAgentYoho() {
        double yohoAmount = parseDoubleSafe(yohoInput.getText().toString());
        if (yohoAmount <= 0) {
            Toast.makeText(this, "الرجاء إدخال مبلغ YOHO للسحب", Toast.LENGTH_SHORT).show();
            return;
        }
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;
        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.yohoBalance -= yohoAmount;
        saveAgentData(agent);
        String message = generateAgentYohoMessage("subtract", selectedMainAgentName, yohoAmount, agent.yohoBalance);
        saveTransactionRecord("withdraw_agent_yoho", 0, 0, yohoAmount, "AGENT:" + selectedMainAgentName, "سحب YOHO مباشر", message, beforeState);
        shareToWhatsApp(message);
        Toast.makeText(this, "تم سحب YOHO من الوكيل", Toast.LENGTH_SHORT).show();
        updateAgentBalanceDisplay();
        resetInputs();
    }

    private void addToMainWalletSilently(double addAed) {
        double addUsdt = addAed * AED_TO_USDT_RATE;
        double currentAed = parseDoubleSafe(preferences.getString("aed_wallet", "0.0"));
        double currentUsdt = parseDoubleSafe(preferences.getString("usdt_wallet", "0.0"));
        double newBalanceAed = currentAed + addAed;
        double newBalanceUsdt = currentUsdt + addUsdt;
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString("aed_wallet", String.valueOf(newBalanceAed));
        editor.putString("usdt_wallet", String.valueOf(newBalanceUsdt));
        editor.apply();
        String beforeState = currentAed + "|" + currentUsdt;
        saveTransactionRecord("add_silent", addAed, addUsdt, 0, OWNER_KEY_MAIN_WALLET, "تحويل داخلي", "", beforeState);
        updateWalletDisplay();
    }

    // --- WhatsApp & Records ---

    private String generateWhatsappMessage(String type, double amountAed, double amountUsdt, double newBalanceAed, double newBalanceUsdt, String agentName) {
        StringBuilder sb = new StringBuilder();
        sb.append("📃 تقرير العملية و المحفضة\n");
        switch (type) {
            case "add":
                sb.append("🟩 الدولأر إلامريكى : ").append(whatsappDecimalFormat.format(newBalanceUsdt)).append("\n");
                sb.append("🟩 الدرهم إلاماراتي : ").append(whatsappDecimalFormat.format(newBalanceAed)).append("\n");
                sb.append("___________________________________\n");
                sb.append("🔋 تم اضافة الرصيد\n");
                sb.append("💷 درهم إماراتي    : ").append(whatsappDecimalFormat.format(amountAed)).append("\n");
                sb.append("💵 الدولار الأمريكى: ").append(whatsappDecimalFormat.format(amountUsdt)).append("\n");
                break;
            case "subtract":
                sb.append("🟥 الدولأر إلامريكى : ").append(whatsappDecimalFormat.format(newBalanceUsdt)).append("\n");
                sb.append("🟥 الدرهم إلاماراتي : ").append(whatsappDecimalFormat.format(newBalanceAed)).append("\n");
                sb.append("___________________________________\n");
                sb.append("🪫 تم خصم الرصيد\n");
                sb.append("💷 درهم إماراتي    : ").append(whatsappDecimalFormat.format(amountAed)).append("\n");
                sb.append("💵 الدولار الأمريكى: ").append(whatsappDecimalFormat.format(amountUsdt)).append("\n");
                break;
            case "reset":
                sb.append("⬜ الدولأر إلامريكى : ").append(whatsappDecimalFormat.format(newBalanceUsdt)).append("\n");
                sb.append("⬜ الدرهم إلاماراتي : ").append(whatsappDecimalFormat.format(newBalanceAed)).append("\n");
                sb.append("___________________________________\n");
                sb.append("🪫 تم إعادة التعيين 🔁\n");
                sb.append("💷 درهم إماراتي    : ").append(whatsappDecimalFormat.format(amountAed)).append("\n");
                sb.append("💵 الدولار الأمريكى: ").append(whatsappDecimalFormat.format(amountUsdt)).append("\n");
                break;
        }
        return sb.toString();
    }

    private String formatToK(double value) {
        DecimalFormatSymbols symbols = new DecimalFormatSymbols(Locale.ENGLISH);
        symbols.setGroupingSeparator(',');
        symbols.setDecimalSeparator('.');

        if (value < 1000 && value > -1000) {
            return new DecimalFormat("0.#", symbols).format(value);
        }
        return new DecimalFormat("0.#K", symbols).format(value / 1000.0);
    }

    private String generateAgentYohoMessage(String type, String fromAgent, double yohoAmount, double newBalance) {
        StringBuilder sb = new StringBuilder();
        sb.append("📃 تقرير العملية و المحفضة\n");
        sb.append("🟥 إلى يوهو : ").append(formatToK(newBalance)).append("\n");
        sb.append("___________________________________\n");
        sb.append("👤 عبر وكيل : ").append(fromAgent).append("\n");
        sb.append("🪫 خصم الى يوهو ").append(formatToK(yohoAmount)).append("\n");
        return sb.toString();
    }

    private String generateAgentSaleMessage(String agentName, double yohoForMember, double commission, double agentNewBalance) {
        StringBuilder sb = new StringBuilder();
        sb.append("📃 تقرير العملية و المحفضة\n");
        sb.append("🟩 إلى يوهو : ").append(formatToK(agentNewBalance)).append("\n");
        sb.append("___________________________________\n");
        sb.append("👤 عبر وكيل : ").append(agentName).append("\n");
        sb.append("🔋 عمولة الى يوهو ").append(formatToK(commission)).append("\n\n");
        sb.append("👤 إلى العضو:\n");
        sb.append("💵 للعضو يوهو: ").append(formatToK(yohoForMember)).append("\n");
        return sb.toString();
    }

    private String generateAgentCustomSaleMessage(String agentName, double aedAmount, double customerYoho, double commission, double agentNewBalance) {
        return "Custom sale performed by " + agentName;
    }

    private String generateGroupSaleMessage(String agentName, List<double[]> sales, double commission, double agentNewBalance) {
        StringBuilder sb = new StringBuilder();
        sb.append("📃 تقرير العملية و المحفضة\n");
        sb.append("🟩 إلى يوهو : ").append(formatToK(agentNewBalance)).append("\n");
        sb.append("___________________________________\n");
        sb.append("🔋 بيع جماعي 🧑‍🧑‍🧒‍🧒\n");
        int i = 1;
        for (double[] sale : sales) {
            sb.append("🟡 ").append(String.format(Locale.US, "%-10s", "عضو " + i)).append(": ").append(formatToK(sale[1])).append("\n");
            i++;
        }
        return sb.toString();
    }

    private void saveTransactionRecord(String type, double amountAed, double amountUsdt,
                                       double amountYoho, String owner, String details,
                                       String whatsappMessage, String beforeState) {
        long timestamp = System.currentTimeMillis();

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd", Locale.getDefault());
        SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss", Locale.getDefault());
        String date = dateFormat.format(new Date(timestamp));
        String time = timeFormat.format(new Date(timestamp));

        // ✅ صيغة موحدة ومنظمة
        String record = timestamp + "||" +
                        type + "||" +
                        date + "||" +
                        time + "||" +
                        amountAed + "||" +
                        amountUsdt + "||" +
                        amountYoho + "||" +
                        owner + "||" +
                        details + "||" +
                        "MSG" + "||" +
                        whatsappMessage + "||" +
                        "BEFORE" + "||" +
                        beforeState;

        // حفظ في SharedPreferences
        SharedPreferences.Editor editor = preferences.edit();
        Set<String> records = new HashSet<>(preferences.getStringSet(RECORDS_PREFS_KEY, new HashSet<>()));
        records.add(record);
        editor.putStringSet(RECORDS_PREFS_KEY, records);
        editor.apply();

        // ✅ مهم جداً: طباعة للتأكد من الحفظ
        Log.d("SAVE_RECORD", "Saved: " + record);
        Log.d("SAVE_RECORD", "Total records: " + records.size());
    }

    private void shareToWhatsApp(String text) {
        try {
            Intent sendIntent = new Intent();
            sendIntent.setAction(Intent.ACTION_SEND);
            sendIntent.putExtra(Intent.EXTRA_TEXT, text);
            sendIntent.setType("text/plain");
            sendIntent.setPackage("com.whatsapp.w4b"); // WhatsApp Business
            startActivity(sendIntent);
        } catch (Exception e) {
            // إذا لم يكن WhatsApp مثبتاً، نقوم بالنسخ كاحتياط
            ClipboardManager clipboard = (ClipboardManager) getSystemService(Context.CLIPBOARD_SERVICE);
            ClipData clip = ClipData.newPlainText("Transaction", text);
            if (clipboard != null) {
                clipboard.setPrimaryClip(clip);
                Toast.makeText(this, "تم نسخ الرسالة! (WhatsApp Business غير مثبت)", Toast.LENGTH_SHORT).show();
            }
        }
    }

    // --- UI & State Updates ---

    private void updateYohoDisplay() {
        isCustomCommissionSale = false;
        yohoInput.setEnabled(true);
        aedInput.setEnabled(true);
        yohoInput.setHint("YOHO");
        if (isTransferToMemberMode) {
            yohoPriceSelector.setVisibility(View.GONE);
            agentCommissionButton.setVisibility(View.VISIBLE);
            if (isCustomGroupSaleActive) {
                agentCommissionButton.setText("سعر مجموعة مخصص");
                yohoInput.setText("");
                yohoInput.setHint("توزيع مخصص");
                yohoInput.setEnabled(false);
            } else if (currentAgentCommissionIndex == 4 || currentAgentCommissionIndex == 5) { // تسعيرة مخصصة
                isCustomCommissionSale = true;
                agentCommissionButton.setText(agentCommissionNames[currentAgentCommissionIndex]);
            } else if (currentAgentCommissionIndex != -1) {
                agentCommissionButton.setText(agentCommissionNames[currentAgentCommissionIndex]);
            } else {
                agentCommissionButton.setText("اختر سعر العميل");
            }
        } else {
            yohoPriceSelector.setVisibility(View.VISIBLE);
            agentCommissionButton.setVisibility(View.GONE);
        }

        // Trigger a recalculation after state changes
        if (aedInput.getText().length() > 0) {
            isUpdating = true;
            updateCalculationsFromAed(aedInput.getText().toString());
            isUpdating = false;
        }
    }

    private void updateWalletDisplay() {
        double aedWallet = parseDoubleSafe(preferences.getString("aed_wallet", "0.0"));
        double usdtWallet = parseDoubleSafe(preferences.getString("usdt_wallet", "0.0"));
        aedValue.setText(decimalFormat.format(aedWallet));
        usdtValue.setText(decimalFormat.format(usdtWallet));

        // نفس اللون للاثنين
        int textColor = uiHelper.isDarkMode() ? Color.WHITE : Color.BLACK;
        aedValue.setTextColor(aedWallet < 0 ? uiHelper.getErrorRed() : textColor);
        usdtValue.setTextColor(usdtWallet < 0 ? uiHelper.getErrorRed() : textColor);
    }

    private void updateAgentBalanceDisplay() {
        if (selectedMainAgentName != null) {
            Agent agent = getAgentData(selectedMainAgentName);
            if (agent != null) {
                agentYohoWalletDisplay.setText(yohoDecimalFormat.format(agent.yohoBalance));  // ✅ أرقام فقط بدون نص
                agentAedWalletDisplay.setText(decimalFormat.format(agent.aedBalance));  // ✅ أرقام فقط بدون نص
                if (agent.yohoBalance < 0) {
                    agentYohoWalletDisplay.setTextColor(uiHelper.getErrorRed());
                } else if (agent.yohoBalance > 0) {
                    agentYohoWalletDisplay.setTextColor(uiHelper.getSuccessGreen());
                } else {
                    agentYohoWalletDisplay.setTextColor(uiHelper.getTextPrimary());
                }
                agentWalletLayout.setVisibility(View.VISIBLE);
            }
        } else {
            agentWalletLayout.setVisibility(View.GONE);
        }
    }

    private void resetInputs(){
        aedInput.setText("");
        usdtInput.setText("");
        yohoInput.setText("");
    }

    private void resetSelection() {
        selectedMainAgentName = null;
        isTransferToMemberMode = false;
        currentAgentCommissionIndex = -1;
        isCustomGroupSaleActive = false;
        isCustomCommissionSale = false;
        customMemberSales.clear();
        selectedAgentTextView.setVisibility(View.GONE);
        agentWalletLayout.setVisibility(View.GONE);
        yohoInput.setEnabled(true);
        aedInput.setEnabled(true);

        if (usdtIconView != null) {
            try { usdtIconView.setImageResource(R.drawable.usdt_icon); } catch (Exception ignored) {}
        }
        usdtInput.setHint("0.00");
        usdtInput.setEnabled(true);

        resetInputs();
        updateYohoDisplay();
    }

    private void setupAgentMode(String agentName, boolean isTransferToMember) {
        selectedMainAgentName = agentName;
        isTransferToMemberMode = isTransferToMember;
        if (isTransferToMemberMode) { // Orange "Sale" Mode
            selectedAgentTextView.setText(uiHelper.getAgentEmoji() + " بيع عبر الوكيل: " + selectedMainAgentName);
            selectedAgentTextView.setBackgroundColor(uiHelper.getButtonAgentSale());
            currentAgentCommissionIndex = 0;

            try { usdtIconView.setImageResource(R.drawable.yoho_icon); } catch (Exception ignored) {}
            usdtInput.setHint("العمولة");
            usdtInput.setEnabled(false);
            usdtInput.setText("");

        } else { // Blue "Modify" Mode
            selectedAgentTextView.setText(uiHelper.getAgentEmoji() + " تعديل الوكيل: " + selectedMainAgentName);
            selectedAgentTextView.setBackgroundColor(uiHelper.getButtonAgentAdjust());
            currentAgentCommissionIndex = -1;

            try { usdtIconView.setImageResource(R.drawable.usdt_icon); } catch (Exception ignored) {}
            usdtInput.setHint("0.00");
            usdtInput.setEnabled(true);
        }
        selectedAgentTextView.setVisibility(View.VISIBLE);
        updateYohoDisplay();
        updateAgentBalanceDisplay();
    }

    // --- إدارة النوافذ المنبثقة (الحل الجديد) ---

    /**
     * دالة مساعدة لإغلاق جميع نوافذ ListPopupWindow المفتوحة حالياً.
     * هذا يضمن وجود نافذة منبثقة واحدة فقط على الشاشة في كل مرة.
     */
    private void cleanupPopupWindows() {
        if (agentListPopupWindow != null) {
            agentListPopupWindow.dismiss();
            agentListPopupWindow = null;
        }
        if (yohoPricePopupWindow != null) {
            yohoPricePopupWindow.dismiss();
            yohoPricePopupWindow = null;
        }
        if (agentCommissionPopupWindow != null) {
            agentCommissionPopupWindow.dismiss();
            agentCommissionPopupWindow = null;
        }
    }

    private void dismissAllPopups() {
        if (agentListPopupWindow != null && agentListPopupWindow.isShowing()) {
            agentListPopupWindow.dismiss();
        }
        if (yohoPricePopupWindow != null && yohoPricePopupWindow.isShowing()) {
            yohoPricePopupWindow.dismiss();
        }
        if (agentCommissionPopupWindow != null && agentCommissionPopupWindow.isShowing()) {
            agentCommissionPopupWindow.dismiss();
        }
    }

    // ==================== عرض قائمة أسعار YOHO - محسّنة بصرياً ====================
    private void showYohoPrices(View anchorView) {
        if (!isActivityActive) return;

        // سلوك التبديل: إذا كانت هذه النافذة مفتوحة بالفعل، أغلقها.
        if (yohoPricePopupWindow != null && yohoPricePopupWindow.isShowing()) {
            yohoPricePopupWindow.dismiss();
            return;
        }

        // أغلق أي نوافذ منبثقة أخرى قد تكون مفتوحة
        dismissAllPopups();

        try {
            // إنشاء نافذة جديدة في كل مرة لتجنب المشاكل
            yohoPricePopupWindow = new ListPopupWindow(this);

            // ✅ استخدام Custom Adapter محسّن
            PriceListAdapter adapter = new PriceListAdapter(this, yohoNames);
            yohoPricePopupWindow.setAdapter(adapter);
            yohoPricePopupWindow.setModal(true);

            yohoPricePopupWindow.setOnItemClickListener((parent, view, position, id) -> {
                if (isActivityActive) {
                    currentYohoIndex = position;
                    updateYohoDisplay();
                }
                dismissAllPopups();
            });

            // إضافة إمكانية الإغلاق عند النقر خارج النافذة
            yohoPricePopupWindow.setOnDismissListener(() -> {
                if (yohoPricePopupWindow != null) {
                    yohoPricePopupWindow = null;
                }
            });

            // قم بتكوين وإظهار النافذة
            yohoPricePopupWindow.setAnchorView(anchorView);

            // ✅ عرض محسّن
            int screenWidth = getResources().getDisplayMetrics().widthPixels;
            int popupWidth = Math.min((int)(anchorView.getWidth() * 1.2), (int)(screenWidth * 0.8));
            yohoPricePopupWindow.setWidth(popupWidth);
            yohoPricePopupWindow.setHeight(ListPopupWindow.WRAP_CONTENT);

            // ✅ خلفية محسّنة
            GradientDrawable popupBackground = new GradientDrawable();
            popupBackground.setColor(Color.WHITE);
            popupBackground.setCornerRadius(12f);
            popupBackground.setStroke(2, Color.parseColor("#E0E0E0"));
            yohoPricePopupWindow.setBackgroundDrawable(popupBackground);

            yohoPricePopupWindow.setVerticalOffset(8);
            yohoPricePopupWindow.show();
        } catch (Exception e) {
            Log.e("PopupError", "Error showing yoho prices popup", e);
            Toast.makeText(this, "حدث خطأ في عرض القائمة", Toast.LENGTH_SHORT).show();
        }
    }

    // ==================== عرض قائمة عمولات الوكلاء - بألوان برتقالية داكنة ====================
    private void showAgentCommissionPrices(View anchorView) {
        if (!isActivityActive) return;

        if (!isTransferToMemberMode) {
            Toast.makeText(this, "الرجاء تحديد وضع بيع الوكيل أولاً", Toast.LENGTH_SHORT).show();
            return;
        }

        // سلوك التبديل: إذا كانت هذه النافذة مفتوحة بالفعل، أغلقها.
        if (agentCommissionPopupWindow != null && agentCommissionPopupWindow.isShowing()) {
            agentCommissionPopupWindow.dismiss();
            return;
        }

        // أغلق أي نوافذ منبثقة أخرى قد تكون مفتوحة
        dismissAllPopups();

        try {
            // إنشاء نافذة جديدة في كل مرة لتجنب المشاكل
            agentCommissionPopupWindow = new ListPopupWindow(this);

            // ✅ استخدام Custom Adapter بألوان برتقالية
            CommissionListAdapter adapter = new CommissionListAdapter(this, agentCommissionNames);
            agentCommissionPopupWindow.setAdapter(adapter);
            agentCommissionPopupWindow.setModal(true);

            agentCommissionPopupWindow.setOnItemClickListener((parent, view, position, id) -> {
                if (isActivityActive) {
                    isCustomGroupSaleActive = false;
                    isCustomCommissionSale = false;
                    customMemberSales.clear();
                    currentAgentCommissionIndex = position;
                    if (position == 3) {
                        isCustomGroupSaleActive = true;
                        showMemberGroupSaleDialog();
                    } else if (position == 4 || position == 5) {
                        isCustomCommissionSale = true;
                        currentCustomRate = position == 4 ? CUSTOM_SALE_BASE_RATE_265 : CUSTOM_SALE_BASE_RATE_260;
                    }
                    updateYohoDisplay();
                }
                dismissAllPopups();
            });

            // إضافة إمكانية الإغلاق عند النقر خارج النافذة
            agentCommissionPopupWindow.setOnDismissListener(() -> {
                if (agentCommissionPopupWindow != null) {
                    agentCommissionPopupWindow = null;
                }
            });

            // قم بتكوين وإظهار النافذة
            agentCommissionPopupWindow.setAnchorView(anchorView);

            // ✅ عرض محسّن
            int screenWidth = getResources().getDisplayMetrics().widthPixels;
            int popupWidth = Math.min((int)(anchorView.getWidth() * 1.2), (int)(screenWidth * 0.8));
            agentCommissionPopupWindow.setWidth(popupWidth);
            agentCommissionPopupWindow.setHeight(ListPopupWindow.WRAP_CONTENT);

            // ✅ خلفية محسّنة بألوان برتقالية
            GradientDrawable popupBackground = new GradientDrawable();
            popupBackground.setColor(Color.WHITE);
            popupBackground.setCornerRadius(12f);
            popupBackground.setStroke(2, Color.parseColor("#E67E22"));  // حدود برتقالية
            agentCommissionPopupWindow.setBackgroundDrawable(popupBackground);

            agentCommissionPopupWindow.setVerticalOffset(8);
            agentCommissionPopupWindow.show();
        } catch (Exception e) {
            Log.e("PopupError", "Error showing agent commission popup", e);
            Toast.makeText(this, "حدث خطأ في عرض قائمة العمولات", Toast.LENGTH_SHORT).show();
        }
    }

    private void showMemberGroupSaleDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("توزيع YOHO على الأعضاء");
        LinearLayout mainDialogLayout = new LinearLayout(this);
        mainDialogLayout.setOrientation(LinearLayout.VERTICAL);
        mainDialogLayout.setPadding(30, 20, 30, 20);
        ScrollView scrollView = new ScrollView(this);
        LinearLayout membersContainer = new LinearLayout(this);
        membersContainer.setOrientation(LinearLayout.VERTICAL);
        scrollView.addView(membersContainer);
        List<EditText> nameInputs = new ArrayList<>();
        List<EditText> yohoInputs = new ArrayList<>();
        AtomicInteger memberCounter = new AtomicInteger(1);
        final Runnable addMemberField = new Runnable() {
            @Override
            public void run() {
                if (yohoInputs.size() >= 10) {
                    Toast.makeText(MainActivity.this, "الحد الأقصى 10 أعضاء", Toast.LENGTH_SHORT).show();
                    return;
                }
                LinearLayout memberRowLayout = new LinearLayout(MainActivity.this);
                memberRowLayout.setOrientation(LinearLayout.HORIZONTAL);
                memberRowLayout.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
                memberRowLayout.setGravity(Gravity.CENTER_VERTICAL);
                EditText nameInput = new EditText(MainActivity.this);
                LinearLayout.LayoutParams nameParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
                nameParams.setMarginEnd(10);
                nameInput.setLayoutParams(nameParams);
                nameInput.setHint("اسم العضو " + memberCounter.get());
                nameInput.setInputType(InputType.TYPE_CLASS_TEXT);
                nameInputs.add(nameInput);
                EditText yohoInput = new EditText(MainActivity.this);
                LinearLayout.LayoutParams yohoParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
                yohoInput.setLayoutParams(yohoParams);
                yohoInput.setHint("أدخل YOHO");
                yohoInput.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL);
                yohoInputs.add(yohoInput);
                yohoInput.setOnEditorActionListener((v, actionId, event) -> {
                    if (actionId == EditorInfo.IME_ACTION_DONE || (event != null && event.getKeyCode() == KeyEvent.KEYCODE_ENTER && event.getAction() == KeyEvent.ACTION_DOWN)) {
                        v.post(this);
                        return true;
                    }
                    return false;
                });
                memberRowLayout.addView(nameInput);
                memberRowLayout.addView(yohoInput);
                membersContainer.addView(memberRowLayout);
                memberCounter.incrementAndGet();
                yohoInput.requestFocus();
            }
        };
        addMemberField.run();
        mainDialogLayout.addView(scrollView);
        builder.setView(mainDialogLayout);
        builder.setPositiveButton("تأكيد", (dialog, which) -> {
            customMemberSales.clear();
            for (int i = 0; i < yohoInputs.size(); i++) {
                String nameStr = nameInputs.get(i).getText().toString().trim();
                String yohoStr = yohoInputs.get(i).getText().toString();
                if (!yohoStr.isEmpty()) {
                    double yohoValue = parseDoubleSafe(yohoStr);
                    if (yohoValue > 0) {
                        String finalName = nameStr.isEmpty() ? "عضو " + (i + 1) : nameStr;
                        customMemberSales.add(new double[]{0, yohoValue}); // Storing only yoho, name is not needed for calc
                    }
                }
            }
            if (!customMemberSales.isEmpty()) {
                isCustomGroupSaleActive = true;
                updateYohoDisplay();
            }
        });
        builder.setNegativeButton("إلغاء", (dialog, which) -> {
            isCustomGroupSaleActive = false;
            updateYohoDisplay();
        });
        builder.setCancelable(false);
        builder.show();
    }

    private void showAgentPopupMenu(View anchorView) {
        if (!isActivityActive) return;

        // سلوك التبديل: إذا كانت هذه النافذة مفتوحة بالفعل، أغلقها.
        if (agentListPopupWindow != null && agentListPopupWindow.isShowing()) {
            agentListPopupWindow.dismiss();
            return;
        }

        // أغلق أي نوافذ منبثقة أخرى قد تكون مفتوحة
        dismissAllPopups();

        try {
            // إنشاء نافذة جديدة في كل مرة لتجنب المشاكل
            agentListPopupWindow = new ListPopupWindow(this);

            // أنشئ محولاً جديداً في كل مرة لأن قائمة الوكلاء قد تتغير
            Set<String> agentsSet = preferences.getStringSet(AGENTS_PREFS_KEY, new HashSet<>());
            List<String> agentNames = new ArrayList<>();
            for (String agentData : agentsSet) {
                agentNames.add(agentData.split("\\|")[0]);
            }
            Collections.sort(agentNames);
            List<Object> menuItems = new ArrayList<>(agentNames);
            menuItems.add(ACTION_ITEM_MARKER); // علامة لإضافة أزرار الإجراءات
            MenuAdapter adapter = new MenuAdapter(this, menuItems);
            agentListPopupWindow.setAdapter(adapter);
            agentListPopupWindow.setModal(true);

            agentListPopupWindow.setOnItemClickListener((parent, view, position, id) -> {
                if (isActivityActive) {
                    Object selectedItem = adapter.getItem(position);
                    if (selectedItem instanceof String) {
                        setupAgentMode((String) selectedItem, isAgentSaleMode);
                    }
                }
                dismissAllPopups();
            });

            // إضافة إمكانية الإغلاق عند النقر خارج النافذة
            agentListPopupWindow.setOnDismissListener(() -> {
                if (agentListPopupWindow != null) {
                    agentListPopupWindow = null;
                }
            });

            // ========== تحسينات الحجم والعرض ==========
            agentListPopupWindow.setAnchorView(anchorView);

            // ✅ عرض ثابت ومناسب للـ popup - متوسط مثالي
            int screenWidth = getResources().getDisplayMetrics().widthPixels;
            // عرض ثابت: 27% من عرض الشاشة مع حد أدنى 165dp وحد أقصى 205dp
            float density = getResources().getDisplayMetrics().density;
            int minWidth = (int)(165 * density);  // 165dp (أعرض قليلاً من 150، أقصر من 180)
            int maxWidth = (int)(205 * density);  // 205dp (أعرض قليلاً من 190، أقصر من 230)
            int preferredWidth = (int)(screenWidth * 0.27);  // 27% من الشاشة (بين 24% و 30%)

            int popupWidth = Math.max(minWidth, Math.min(preferredWidth, maxWidth));
            agentListPopupWindow.setWidth(popupWidth);
            agentListPopupWindow.setHeight(ListPopupWindow.WRAP_CONTENT);

            GradientDrawable popupBackground = new GradientDrawable();
            popupBackground.setColor(Color.WHITE);
            popupBackground.setCornerRadius(6f); // ✅ زوايا حادة جداً على الأربع جوانب
            popupBackground.setStroke(2, Color.parseColor("#E0E0E0")); // ✅ حدود أفتح
            agentListPopupWindow.setBackgroundDrawable(popupBackground);

            agentListPopupWindow.setVerticalOffset(0); // ✅ إزالة الفراغ - متصل بالزر مباشرة
            agentListPopupWindow.show();
        } catch (Exception e) {
            Log.e("PopupError", "Error showing agent list popup", e);
            Toast.makeText(this, "حدث خطأ في عرض قائمة الوكلاء", Toast.LENGTH_SHORT).show();
        }
    }

    private void openRecordsActivity() {
        openRecordsActivity(selectedMainAgentName);
    }

    private void openChartActivity() {
        openChartActivity(selectedMainAgentName);
    }

    private void openRecordsActivity(String agentName) {
        Intent intent = new Intent(this, RecordsActivity.class);
        String ownerKey = (agentName != null) ? "AGENT:" + agentName : "ALL";
        String ownerName = (agentName != null) ? agentName : "جميع السجلات";
        intent.putExtra("owner_key", ownerKey);
        intent.putExtra("owner_name", ownerName);
        startActivity(intent);
    }

    private void openChartActivity(String agentName) {
        Intent intent = new Intent(this, ChartActivity.class);
        String ownerKey = (agentName != null) ? "AGENT:" + agentName : "ALL";
        String ownerName = (agentName != null) ? agentName : "جميع السجلات";
        intent.putExtra("owner_key", ownerKey);
        intent.putExtra("owner_name", ownerName);
        startActivity(intent);
    }

    private void showAddAgentDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("إضافة وكيل جديد");
        final EditText input = new EditText(this);
        input.setInputType(InputType.TYPE_CLASS_TEXT);
        input.setHint("اسم الوكيل");
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        lp.setMargins(50, 20, 50, 20);
        input.setLayoutParams(lp);
        builder.setView(input);
        builder.setPositiveButton("إضافة", (dialog, which) -> {
            String agentName = input.getText().toString().trim();
            if (TextUtils.isEmpty(agentName)) {
                Toast.makeText(this, "لا يمكن أن يكون اسم الوكيل فارغًا", Toast.LENGTH_SHORT).show();
                return;
            }
            Set<String> agentsSet = preferences.getStringSet(AGENTS_PREFS_KEY, new HashSet<>());
            for (String agentData : agentsSet) {
                if (agentData.split("\\|")[0].equalsIgnoreCase(agentName)) {
                    Toast.makeText(this, "هذا الوكيل موجود بالفعل", Toast.LENGTH_SHORT).show();
                    return;
                }
            }
            Set<String> newAgentsSet = new HashSet<>(agentsSet);
            newAgentsSet.add(agentName + "|0.0|0.0");
            preferences.edit().putStringSet(AGENTS_PREFS_KEY, newAgentsSet).apply();
            Toast.makeText(this, "تمت إضافة الوكيل " + agentName, Toast.LENGTH_SHORT).show();
        });
        builder.setNegativeButton("إلغاء", (dialog, which) -> dialog.cancel());
        builder.show();
    }

    private void showDeleteAgentDialog() {
        Set<String> agentsSet = preferences.getStringSet(AGENTS_PREFS_KEY, new HashSet<>());
        if (agentsSet.isEmpty()) {
            Toast.makeText(this, "لا يوجد وكلاء لحذفهم", Toast.LENGTH_SHORT).show();
            return;
        }
        List<String> agentNames = new ArrayList<>();
        for (String agentData : agentsSet) {
            agentNames.add(agentData.split("\\|")[0]);
        }
        Collections.sort(agentNames);
        final CharSequence[] agentNamesArray = agentNames.toArray(new CharSequence[0]);
        new AlertDialog.Builder(this)
                .setTitle("اختر الوكيل المراد حذفه")
                .setItems(agentNamesArray, (dialog, which) -> {
                    String agentToDelete = (String) agentNamesArray[which];
                    confirmDeleteAgent(agentToDelete);
                })
                .show();
    }

    private void confirmDeleteAgent(final String agentNameToDelete) {
        new AlertDialog.Builder(this)
                .setTitle("تأكيد الحذف")
                .setMessage("هل أنت متأكد أنك تريد حذف الوكيل '" + agentNameToDelete + "'؟ لا يمكن التراجع عن هذا الإجراء.")
                .setPositiveButton("حذف", (dialog, which) -> {
                    Set<String> agentsSet = preferences.getStringSet(AGENTS_PREFS_KEY, new HashSet<>());
                    Set<String> newAgentsSet = new HashSet<>();
                    for (String agentData : agentsSet) {
                        if (!agentData.split("\\|")[0].equals(agentNameToDelete)) {
                            newAgentsSet.add(agentData);
                        }
                    }
                    preferences.edit().putStringSet(AGENTS_PREFS_KEY, newAgentsSet).apply();
                    Toast.makeText(this, "تم حذف الوكيل " + agentNameToDelete, Toast.LENGTH_SHORT).show();
                    if (agentNameToDelete.equals(selectedMainAgentName)) {
                        resetSelection();
                    }
                })
                .setNegativeButton("إلغاء", null)
                .show();
    }

    private Agent getAgentData(String agentName) {
        Set<String> agentsSet = preferences.getStringSet(AGENTS_PREFS_KEY, new HashSet<>());
        for (String agentData : agentsSet) {
            String[] parts = agentData.split("\\|");
            if (parts.length > 0 && parts[0].equals(agentName)) {
                double yohoBalance = (parts.length > 1) ? parseDoubleSafe(parts[1]) : 0.0;
                double aedBalance = (parts.length > 2) ? parseDoubleSafe(parts[2]) : 0.0;
                return new Agent(agentName, yohoBalance, aedBalance);
            }
        }
        return null;
    }

    private void saveAgentData(Agent agent) {
        if (agent == null) return;
        Set<String> agentsSet = preferences.getStringSet(AGENTS_PREFS_KEY, new HashSet<>());
        Set<String> newAgentsSet = new HashSet<>();
        for (String agentData : agentsSet) {
            if (!agentData.split("\\|")[0].equals(agent.name)) {
                newAgentsSet.add(agentData);
            }
        }
        newAgentsSet.add(agent.name + "|" + agent.yohoBalance + "|" + agent.aedBalance);
        preferences.edit().putStringSet(AGENTS_PREFS_KEY, newAgentsSet).apply();
    }

    private void transferAgentAedToMainWallet() {
        if (selectedMainAgentName == null) return;
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null || agent.aedBalance <= 0) {
            Toast.makeText(this, "لا يوجد رصيد درهم إماراتي لتحويله", Toast.LENGTH_SHORT).show();
            return;
        }
        double amountToTransfer = agent.aedBalance;
        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.aedBalance = 0.0;
        saveAgentData(agent);
        addToMainWalletSilently(amountToTransfer);
        String message = generateWhatsappMessage("add", amountToTransfer, amountToTransfer * AED_TO_USDT_RATE,
                parseDoubleSafe(preferences.getString("aed_wallet", "0.0")),
                parseDoubleSafe(preferences.getString("usdt_wallet", "0.0")),
                "تحويل من " + agent.name);
        shareToWhatsApp(message);
        saveTransactionRecord("agent_aed_transfer", amountToTransfer, 0, 0, "AGENT:" + agent.name, "تحويل درهم إماراتي إلى المحفظة الرئيسية", message, beforeState);
        Toast.makeText(this, "تم تحويل " + decimalFormat.format(amountToTransfer) + " درهم إماراتي إلى المحفظة الرئيسية", Toast.LENGTH_LONG).show();
        updateAgentBalanceDisplay();
        updateWalletDisplay();
    }

    private void handleReset() {
        if (selectedMainAgentName != null) {
            new AlertDialog.Builder(this)
                    .setTitle("إعادة تعيين الرصيد لـ " + selectedMainAgentName)
                    .setMessage("هل أنت متأكد أنك تريد إعادة تعيين الأرصدة (YOHO ودرهم إماراتي) لـ " + selectedMainAgentName + "؟")
                    .setPositiveButton("نعم، إعادة تعيين", (dialog, which) -> {
                        resetAgentBalance(selectedMainAgentName);
                        resetSelection();
                    })
                    .setNegativeButton("إلغاء", null)
                    .show();
        } else {
            resetMainWallet();
        }
    }

    private void resetMainWallet() {
        new AlertDialog.Builder(this)
                .setTitle("إعادة تعيين المحفظة الرئيسية")
                .setMessage("هل أنت متأكد أنك تريد إعادة تعيين المحفظة بالكامل؟")
                .setPositiveButton("نعم", (dialog, which) -> {
                    double oldAed = parseDoubleSafe(preferences.getString("aed_wallet", "0.0"));
                    double oldUsdt = parseDoubleSafe(preferences.getString("usdt_wallet", "0.0"));
                    String beforeState = oldAed + "|" + oldUsdt;
                    SharedPreferences.Editor editor = preferences.edit();
                    editor.putString("aed_wallet", "0.0");
                    editor.putString("usdt_wallet", "0.0");
                    editor.apply();
                    String message = generateWhatsappMessage("reset", oldAed, oldUsdt, 0.0, 0.0, null);
                    saveTransactionRecord("reset", oldAed, oldUsdt, 0, OWNER_KEY_MAIN_WALLET, "إعادة تعيين المحفظة الرئيسية", message, beforeState);
                    updateWalletDisplay();
                    shareToWhatsApp(message);
                    Toast.makeText(this, "تمت إعادة تعيين المحفظة", Toast.LENGTH_SHORT).show();
                })
                .setNegativeButton("إلغاء", null)
                .show();
    }

    private void resetAgentBalance(String agentName) {
        Agent agent = getAgentData(agentName);
        if (agent != null) {
            double oldYoho = agent.yohoBalance;
            double oldAed = agent.aedBalance;
            String beforeState = oldYoho + "|" + oldAed;
            agent.yohoBalance = 0.0;
            agent.aedBalance = 0.0;
            saveAgentData(agent);
            Toast.makeText(this, "تمت إعادة تعيين أرصدة الوكيل " + agentName, Toast.LENGTH_LONG).show();
            saveTransactionRecord("reset_agent", oldAed, 0, oldYoho, "AGENT:" + agentName, "إعادة تعيين رصيد الوكيل", "", beforeState);
        }
    }

    private void handleAgentYohoManualEdit(String newValueStr) {
        if (selectedMainAgentName == null) return;
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;
        String trimmedValue = newValueStr.trim();
        if (trimmedValue.isEmpty()) {
            updateAgentBalanceDisplay();
            return;
        }
        double finalNewValue;
        double currentBalance = agent.yohoBalance;
        if (trimmedValue.startsWith("+")) {
            finalNewValue = currentBalance + parseDoubleSafe(trimmedValue.substring(1));
        } else if (trimmedValue.startsWith("-")) {
            if (trimmedValue.length() > 1 && Character.isDigit(trimmedValue.charAt(1))) {
                finalNewValue = currentBalance - parseDoubleSafe(trimmedValue.substring(1));
            } else {
                finalNewValue = parseDoubleSafe(trimmedValue);
            }
        } else {
            finalNewValue = parseDoubleSafe(trimmedValue);
        }
        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.yohoBalance = finalNewValue;
        saveAgentData(agent);
        String details = "تعديل يدوي. قديم: " + yohoDecimalFormat.format(currentBalance) + ", جديد: " + yohoDecimalFormat.format(finalNewValue);
        saveTransactionRecord("agent_yoho_edit", 0, 0, finalNewValue - currentBalance, "AGENT:" + agent.name, details, "", beforeState);
        updateAgentBalanceDisplay();
        Toast.makeText(this, "تم تحديث رصيد YOHO", Toast.LENGTH_SHORT).show();
    }

    // ==================== MENU ADAPTER - المحسّن ====================
    private class MenuAdapter extends ArrayAdapter<Object> {
        private static final int TYPE_AGENT = 0;
        private static final int TYPE_ACTIONS = 1;

        public MenuAdapter(Context context, List<Object> items) {
            super(context, 0, items);
        }

        @Override
        public int getItemViewType(int position) {
            return getItem(position) instanceof String ? TYPE_AGENT : TYPE_ACTIONS;
        }

        @Override
        public int getViewTypeCount() {
            return 2;
        }

        @NonNull
        @Override
        public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
            int type = getItemViewType(position);

            if (type == TYPE_AGENT) {
                // ========== عرض اسم الوكيل - محسّن ==========
                if (convertView == null) {
                    convertView = LayoutInflater.from(getContext()).inflate(android.R.layout.simple_list_item_1, parent, false);
                }
                TextView textView = convertView.findViewById(android.R.id.text1);
                textView.setText((String) getItem(position));

                // ✅ تحسينات النص
                textView.setTextSize(16); // ✅ أصغر من 18
                textView.setPadding(24, 16, 24, 16); // ✅ أقل من (32, 24, 32, 24)
                textView.setTextColor(Color.parseColor("#2C3E50"));
                textView.setTypeface(null, Typeface.BOLD);

            } else { // TYPE_ACTIONS - محسّن بصرياً ✅
                if (convertView == null) {
                    LinearLayout actionsLayout = new LinearLayout(getContext());
                    actionsLayout.setOrientation(LinearLayout.HORIZONTAL);
                    actionsLayout.setGravity(Gravity.CENTER);
                    actionsLayout.setPadding(16, 20, 16, 20); // ✅ مسافات أكبر
                    actionsLayout.setBackgroundColor(Color.parseColor("#F5F5F5")); // ✅ خلفية أوضح

                    // ========== زر إضافة وكيل - ممطط ومحسّن ✅ ==========
                    ImageView addAgentButton = new ImageView(getContext());
                    LinearLayout.LayoutParams buttonParams = new LinearLayout.LayoutParams(
                        0,
                        120, // ✅ ارتفاع أكبر لملء الـ popup بشكل أفضل
                        1f
                    );
                    buttonParams.setMarginEnd(10); // ✅ مسافة أكبر بين الأزرار
                    addAgentButton.setLayoutParams(buttonParams);

                    try {
                        addAgentButton.setImageResource(R.drawable.person_add_24);
                    } catch (Exception ignored) {}

                    addAgentButton.setColorFilter(Color.WHITE, PorterDuff.Mode.SRC_IN);
                    addAgentButton.setPadding(24, 24, 24, 24); // ✅ padding أكبر للأيقونة

                    // ✅ خلفية بزوايا منحنية
                    GradientDrawable addButtonBg = new GradientDrawable();
                    addButtonBg.setColor(Color.parseColor("#4CAF50"));
                    addButtonBg.setCornerRadius(16f); // ✅ زوايا أكثر انحناءً
                    addAgentButton.setBackground(addButtonBg);

                    addAgentButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.LOLLIPOP) {
                        addAgentButton.setElevation(6f); // ✅ ظل أقوى
                    }

                    addAgentButton.setOnClickListener(v -> {
                        showAddAgentDialog();
                        if (agentListPopupWindow != null && agentListPopupWindow.isShowing()) {
                            agentListPopupWindow.dismiss();
                        }
                    });
                    actionsLayout.addView(addAgentButton);

                    // ========== زر حذف وكيل - ممطط ومحسّن ✅ ==========
                    ImageView deleteAgentButton = new ImageView(getContext());
                    LinearLayout.LayoutParams deleteButtonParams = new LinearLayout.LayoutParams(
                        0,
                        120, // ✅ ارتفاع أكبر لملء الـ popup بشكل أفضل
                        1f
                    );
                    deleteButtonParams.setMarginStart(10); // ✅ مسافة أكبر بين الأزرار
                    deleteAgentButton.setLayoutParams(deleteButtonParams);

                    try {
                        deleteAgentButton.setImageResource(R.drawable.person_remove_24);
                    } catch (Exception ignored) {}

                    deleteAgentButton.setColorFilter(Color.WHITE, PorterDuff.Mode.SRC_IN);
                    deleteAgentButton.setPadding(24, 24, 24, 24); // ✅ padding أكبر للأيقونة

                    // ✅ خلفية بزوايا منحنية
                    GradientDrawable deleteButtonBg = new GradientDrawable();
                    deleteButtonBg.setColor(Color.parseColor("#F44336"));
                    deleteButtonBg.setCornerRadius(16f); // ✅ زوايا أكثر انحناءً
                    deleteAgentButton.setBackground(deleteButtonBg);

                    deleteAgentButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.LOLLIPOP) {
                        deleteAgentButton.setElevation(6f); // ✅ ظل أقوى
                    }

                    deleteAgentButton.setOnClickListener(v -> {
                        showDeleteAgentDialog();
                        if (agentListPopupWindow != null && agentListPopupWindow.isShowing()) {
                            agentListPopupWindow.dismiss();
                        }
                    });
                    actionsLayout.addView(deleteAgentButton);

                    convertView = actionsLayout;
                }
            }
            return convertView;
        }
    }

    // --- كود التحديث: الدوال اللازمة للتحقق والتحميل والتثبيت ---

    private int getCurrentVersionCode() {
        try {
            PackageInfo pInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
            return pInfo.versionCode;
        } catch (Exception e) {
            return 0;
        }
    }

    private void checkForUpdate() {
        new Thread(() -> {
            try {
                URL url = new URL(UPDATE_JSON_URL);
                HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                connection.connect();

                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                StringBuilder stringBuilder = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    stringBuilder.append(line).append("\n");
                }
                reader.close();
                String jsonString = stringBuilder.toString();

                JSONObject jsonObject = new JSONObject(jsonString);
                int latestVersionCode = jsonObject.getInt("versionCode");  // ✅ تصحيح اسم المفتاح
                String apkUrl = jsonObject.getString("apkUrl");

                int currentVersionCode = getCurrentVersionCode();

                Log.d("UpdateChecker", "Current version: " + currentVersionCode + ", Latest version: " + latestVersionCode);

                if (latestVersionCode > currentVersionCode) {
                    Log.d("UpdateChecker", "Update available! Showing dialog.");
                    runOnUiThread(() -> showUpdateDialog(apkUrl));
                } else {
                    Log.d("UpdateChecker", "App is up to date.");
                }

            } catch (Exception e) {
                Log.e("UpdateChecker", "Error checking for update", e);
            }
        }).start();
    }

    private void showUpdateDialog(String apkUrl) {
        new AlertDialog.Builder(this)
                .setTitle("تحديث جديد متوفر")
                .setMessage("يوجد إصدار جديد من التطبيق، هل ترغب في تحميله الآن؟")
                .setPositiveButton("تحديث الآن", (dialog, which) -> downloadAndInstallApk(apkUrl))
                .setNegativeButton("لاحقاً", null)
                .setCancelable(false)
                .show();
    }


    private boolean isAccessibilityServiceEnabled() {
        String serviceName = getPackageName() + "/" + QuickCalculatorService.class.getCanonicalName();
        int accessibilityEnabled = 0;
        try {
            accessibilityEnabled = Settings.Secure.getInt(
                    getContentResolver(),
                    Settings.Secure.ACCESSIBILITY_ENABLED);
        } catch (Settings.SettingNotFoundException e) {
            return false;
        }

        if (accessibilityEnabled == 1) {
            String settingValue = Settings.Secure.getString(
                    getContentResolver(),
                    Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES);
            if (settingValue != null) {
                return settingValue.contains(serviceName);
            }
        }
        return false;
    }

    @SuppressLint("UnspecifiedRegisterReceiverFlag")
    private void downloadAndInstallApk(String apkUrl) {
        String fileName = "app-update.apk";

        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(apkUrl));
        request.setMimeType("application/vnd.android.package-archive");
        request.setTitle("تحميل التحديث");
        request.setDescription("جاري تحميل الإصدار الجديد...");
        request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);

        // استخدم الطريقة الموصى بها لتحديد وجهة التحميل
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, fileName);

        Toast.makeText(this, "بدأ تحميل التحديث...", Toast.LENGTH_LONG).show();
        final DownloadManager downloadManager = (DownloadManager) getSystemService(Context.DOWNLOAD_SERVICE);
        if (downloadManager == null) {
            Toast.makeText(this, "فشل بدء التحميل.", Toast.LENGTH_SHORT).show();
            return;
        }
        final long downloadId = downloadManager.enqueue(request);

        BroadcastReceiver onComplete = new BroadcastReceiver() {
            public void onReceive(Context ctxt, Intent intent) {
                long receivedDownloadId = intent.getLongExtra(DownloadManager.EXTRA_DOWNLOAD_ID, -1);
                if (downloadId == receivedDownloadId) {
                    unregisterReceiver(this); // إلغاء تسجيل المستقبل أولاً
                    try {
                        // استخدم الـ URI الذي يوفره مدير التحميل مباشرة
                        Uri apkUri = downloadManager.getUriForDownloadedFile(downloadId);
                        if (apkUri == null) {
                            Log.e("UpdateInstaller", "فشل التحميل، الـ URI فارغ.");
                            Toast.makeText(MainActivity.this, "فشل التحميل. حاول مرة أخرى.", Toast.LENGTH_LONG).show();
                            return;
                        }

                        Intent installIntent = new Intent(Intent.ACTION_VIEW);
                        installIntent.setDataAndType(apkUri, "application/vnd.android.package-archive");
                        installIntent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_ACTIVITY_NEW_TASK);
                        startActivity(installIntent);

                    } catch (Exception e) {
                        Log.e("UpdateInstaller", "خطأ أثناء تثبيت APK", e);
                        Toast.makeText(MainActivity.this, "فشل تثبيت التحديث.", Toast.LENGTH_LONG).show();
                    }
                }
            }
        };

        IntentFilter filter = new IntentFilter(DownloadManager.ACTION_DOWNLOAD_COMPLETE);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(onComplete, filter, RECEIVER_NOT_EXPORTED);
        } else {
            registerReceiver(onComplete, filter);
        }
    }
}
