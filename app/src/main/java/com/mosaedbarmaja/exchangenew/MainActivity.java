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
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
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
import androidx.core.content.FileProvider;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

// ## تم حذف الاعتماد على BuildConfig بشكل كامل ##

public class MainActivity extends Activity {

    // --- Constants ---
    private static final String PREFS_NAME = "GoldExchangeApp";
    public static final String RECORDS_PREFS_KEY = "transaction_records";
    public static final String AGENTS_PREFS_KEY = "shipping_agents";
    public static final String OWNER_KEY_MAIN_WALLET = "MAIN_WALLET";
    private static final int CODE_DRAW_OVER_OTHER_APP_PERMISSION = 2084;
    private static final Object ACTION_ITEM_MARKER = new Object();

    private final double AED_TO_USDT_RATE = 1 / 3.8;
    private final double USDT_TO_AED_RATE = 3.8 / 1;
    private final double CUSTOM_SALE_BASE_RATE = 265000.0;

    // !! مهم: تأكد من استبدال "TwentyOOO" و "Update-ExchangeNEW" بمعلوماتك الصحيحة
    private static final String UPDATE_JSON_URL = "https://raw.githubusercontent.com/TwentyOOO/Update-ExchangeNEW/main/update.json";


    // --- UI Components ---
    private EditText aedInput, usdtInput, yohoInput;
    private TextView aedValue, usdtValue, selectedAgentTextView, yohoPriceSelector;
    private TextView agentYohoWalletDisplay, agentAedWalletDisplay;
    private LinearLayout agentWalletLayout;
    private Button agentCommissionButton, addBtn, subBtn;
    private ImageView usdtIconView;
    private ListPopupWindow listPopupWindow;


    // --- Data & State ---
    private SharedPreferences preferences;
    private DecimalFormat decimalFormat, yohoDecimalFormat, whatsappDecimalFormat;

    private final double[] yohoPrices = {250000, 255000, 260000, 265000};
    private final String[] yohoNames = {"التسعيرة الاولى", "التسعيرة الثانية", "التسعيرة الثالثة", "التسعيرة الرابعة"};
    private int currentYohoIndex = 0;

    private final double[] agentCommissionPrices = {250000, 255000, 260000, 265000, 0};
    private final double[] agentCommissionValues = {15000, 10000, 5000, 0, 0};
    private final String[] agentCommissionNames = {"عمولة 6%", "عمولة 4%", "عمولة 2%", "تسعرة جماعية 6%", "تسعرة مخصصة 6%"};
    private int currentAgentCommissionIndex = -1;

    private boolean isUpdating = false;
    private String selectedMainAgentName = null;
    private boolean isTransferToMemberMode = false;
    private boolean isCustomGroupSaleActive = false;
    private boolean isCustomCommissionSale = false;
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
        super.onPause();
        unregisterReceiver(updateReceiver);
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
        DecimalFormatSymbols symbols = new DecimalFormatSymbols(Locale.ENGLISH);
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
                    updateCalculationsFromYoho(s.toString());
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
        mainLayout.setBackgroundColor(Color.WHITE);
        mainLayout.setPadding(0, 0, 0, 0);

        mainLayout.addView(createTitleSection());
        mainLayout.addView(createTopButtonsLayout());

        ScrollView scrollView = new ScrollView(this);
        LinearLayout contentContainer = new LinearLayout(this);
        contentContainer.setOrientation(LinearLayout.VERTICAL);
        contentContainer.setPadding(20, 20, 20, 20);

        contentContainer.addView(createSelectedAgentTextView());
        contentContainer.addView(createAgentWalletLayout());
        contentContainer.addView(createOldStyleInputLayout());
        contentContainer.addView(createOldStyleYohoControls());

        yohoInput = createOldStyleEditText("YOHO", 22, true);
        LinearLayout.LayoutParams yohoResultParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        yohoResultParams.setMargins(15, 15, 15, 30);
        yohoInput.setLayoutParams(yohoResultParams);
        contentContainer.addView(yohoInput);

        TextView walletTitle = new TextView(this);
        walletTitle.setText("المحفظة (انقر على الرصيد للتعديل)");
        walletTitle.setTextSize(18);
        walletTitle.setTextColor(Color.BLACK);
        walletTitle.setGravity(Gravity.CENTER);
        walletTitle.setPadding(0, 20, 0, 10);
        contentContainer.addView(walletTitle);

        contentContainer.addView(createOldStyleWalletLayout());
        contentContainer.addView(createBubbleControlButtons());
        contentContainer.addView(createOldStyleActionButtons());

        scrollView.addView(contentContainer);
        mainLayout.addView(scrollView);

        setContentView(mainLayout);
    }

    // --- UI Helper Methods ---

    private LinearLayout createTitleSection() {
        LinearLayout titleSection = new LinearLayout(this);
        titleSection.setOrientation(LinearLayout.VERTICAL);
        titleSection.setPadding(0, 40, 0, 40);
        titleSection.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        titleSection.setBackgroundColor(Color.BLACK);

        TextView title = new TextView(this);
        title.setText("حاسبة الى يوهو");
        title.setTextSize(32);
        title.setTextColor(Color.WHITE);
        title.setGravity(Gravity.CENTER);
        title.setTypeface(null, Typeface.BOLD);
        titleSection.addView(title);

        TextView subTitle = new TextView(this);
        subTitle.setText("درهم إماراتي ⇌ الدولار أمريكى");
        subTitle.setTextSize(24);
        subTitle.setTextColor(Color.parseColor("#FFBF00"));
        subTitle.setGravity(Gravity.CENTER);
        subTitle.setTypeface(null, Typeface.BOLD);
        subTitle.setPadding(0, 10, 0, 0);
        titleSection.addView(subTitle);
        return titleSection;
    }

    private LinearLayout createTopButtonsLayout() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.HORIZONTAL);
        layout.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 150));

        LinearLayout chartBtn = createMaterialIconButton(R.drawable.ic_analytics, "تحليل", "#27AE60");
        chartBtn.setOnClickListener(v -> openChartActivity());

        LinearLayout shippingAgentsBtn = createMaterialIconButton(R.drawable.ic_local_shipping, "وكلاء", "#F39C12");
        shippingAgentsBtn.setOnClickListener(this::showAgentPopupMenu);
        shippingAgentsBtn.setOnLongClickListener(v -> {
            isAgentSaleMode = !isAgentSaleMode;
            v.setBackgroundColor(isAgentSaleMode ? Color.parseColor("#F39C12") : Color.parseColor("#3498DB"));
            Toast.makeText(MainActivity.this, isAgentSaleMode ? "وضع بيع الوكيل" : "وضع تعديل الوكيل", Toast.LENGTH_SHORT).show();
            return true;
        });

        LinearLayout recordsBtn = createMaterialIconButton(R.drawable.ic_history, "السجلات", "#3498DB");
        recordsBtn.setOnClickListener(v -> openRecordsActivity());

        LinearLayout resetBtn = createMaterialIconButton(R.drawable.ic_restart_alt, "تصفير", "#FF6B6B");
        resetBtn.setOnClickListener(v -> handleReset());

        layout.addView(chartBtn);
        layout.addView(shippingAgentsBtn);
        layout.addView(recordsBtn);
        layout.addView(resetBtn);

        return layout;
    }

    private LinearLayout createMaterialIconButton(int iconResId, String label, String bgColor) {
        LinearLayout buttonLayout = new LinearLayout(this);
        buttonLayout.setOrientation(LinearLayout.VERTICAL);
        buttonLayout.setGravity(Gravity.CENTER);
        buttonLayout.setPadding(10, 10, 10, 10);
        buttonLayout.setBackgroundColor(Color.parseColor(bgColor));
        buttonLayout.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));
        buttonLayout.setClickable(true);
        buttonLayout.setFocusable(true);

        ImageView iconView = new ImageView(this);
        try { iconView.setImageResource(iconResId); } catch (Exception ignored) {}
        iconView.setColorFilter(Color.WHITE, PorterDuff.Mode.SRC_IN);
        iconView.setLayoutParams(new LinearLayout.LayoutParams(64, 64));
        buttonLayout.addView(iconView);

        TextView labelView = new TextView(this);
        labelView.setText(label);
        labelView.setTextColor(Color.WHITE);
        labelView.setTextSize(12);
        labelView.setGravity(Gravity.CENTER);
        labelView.setPadding(0, 5, 0, 0);
        buttonLayout.addView(labelView);

        return buttonLayout;
    }


    private TextView createSelectedAgentTextView() {
        selectedAgentTextView = new TextView(this);
        selectedAgentTextView.setTextSize(16);
        selectedAgentTextView.setTextColor(Color.WHITE);
        selectedAgentTextView.setGravity(Gravity.CENTER);
        selectedAgentTextView.setPadding(20, 15, 20, 15);
        selectedAgentTextView.setVisibility(View.GONE);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        params.setMargins(0, 10, 0, 10);
        selectedAgentTextView.setLayoutParams(params);
        selectedAgentTextView.setOnClickListener(v -> resetSelection());
        return selectedAgentTextView;
    }

    private LinearLayout createAgentWalletLayout() {
        agentWalletLayout = new LinearLayout(this);
        agentWalletLayout.setOrientation(LinearLayout.HORIZONTAL);
        agentWalletLayout.setVisibility(View.GONE);
        agentWalletLayout.setPadding(0, 5, 0, 15);

        LinearLayout.LayoutParams yohoParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        yohoParams.setMarginEnd(10);
        LinearLayout yohoDisplayLayout = new LinearLayout(this);
        yohoDisplayLayout.setOrientation(LinearLayout.HORIZONTAL);
        yohoDisplayLayout.setGravity(Gravity.CENTER);
        yohoDisplayLayout.setBackgroundColor(Color.parseColor("#2C3E50"));
        yohoDisplayLayout.setPadding(20, 15, 20, 15);
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
        LinearLayout.LayoutParams yohoIconParams = new LinearLayout.LayoutParams(48, 48);
        yohoIconParams.setMarginEnd(10);
        yohoIcon.setLayoutParams(yohoIconParams);
        yohoDisplayLayout.addView(yohoIcon);

        agentYohoWalletDisplay = new TextView(this);
        agentYohoWalletDisplay.setText("YOHO: 0");
        agentYohoWalletDisplay.setTextColor(Color.WHITE);
        agentYohoWalletDisplay.setTextSize(16);
        agentYohoWalletDisplay.setTag("yoho_text");
        yohoDisplayLayout.addView(agentYohoWalletDisplay);

        final EditText yohoBalanceEditor = new EditText(this);
        yohoBalanceEditor.setTextSize(16);
        yohoBalanceEditor.setGravity(Gravity.CENTER);
        yohoBalanceEditor.setBackground(null);
        yohoBalanceEditor.setTextColor(Color.WHITE);
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
        agentWalletLayout.addView(yohoDisplayLayout);

        LinearLayout aedDisplayLayout = new LinearLayout(this);
        aedDisplayLayout.setOrientation(LinearLayout.HORIZONTAL);
        aedDisplayLayout.setGravity(Gravity.CENTER);
        aedDisplayLayout.setBackgroundColor(Color.parseColor("#16A085"));
        aedDisplayLayout.setPadding(20, 15, 20, 15);
        aedDisplayLayout.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        aedDisplayLayout.setOnClickListener(v -> transferAgentAedToMainWallet());

        ImageView aedIcon = new ImageView(this);
        try { aedIcon.setImageResource(R.drawable.aed_icon); } catch (Exception ignored) {}
        LinearLayout.LayoutParams iconParams = new LinearLayout.LayoutParams(48, 48);
        iconParams.setMarginEnd(10);
        aedIcon.setLayoutParams(iconParams);
        aedDisplayLayout.addView(aedIcon);

        agentAedWalletDisplay = new TextView(this);
        agentAedWalletDisplay.setText("0.00");
        agentAedWalletDisplay.setTextColor(Color.WHITE);
        agentAedWalletDisplay.setTextSize(16);
        aedDisplayLayout.addView(agentAedWalletDisplay);
        agentWalletLayout.addView(aedDisplayLayout);
        return agentWalletLayout;
    }

    private EditText createOldStyleEditText(String hint, int size, boolean isBold) {
        EditText editText = new EditText(this);
        editText.setId(View.generateViewId());
        editText.setHint(hint);
        editText.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL);
        editText.setTextSize(size);
        editText.setGravity(Gravity.CENTER);
        editText.setBackgroundColor(Color.parseColor("#F0F0F0"));
        editText.setPadding(20, 20, 20, 20);
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
        params.setMargins(15, 30, 15, 0);
        layout.setLayoutParams(params);
        yohoPriceSelector = new TextView(this);
        yohoPriceSelector.setText("اختر سعر YOHO");
        yohoPriceSelector.setTextSize(16);
        yohoPriceSelector.setTextColor(Color.parseColor("#FFBF00"));
        yohoPriceSelector.setGravity(Gravity.CENTER);
        yohoPriceSelector.setBackgroundColor(Color.parseColor("#F0F0F0"));
        yohoPriceSelector.setPadding(20, 20, 20, 20);
        yohoPriceSelector.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        yohoPriceSelector.setOnClickListener(this::showYohoPrices);
        agentCommissionButton = new Button(this);
        agentCommissionButton.setText("سعر العميل");
        agentCommissionButton.setTextSize(14);
        agentCommissionButton.setTextColor(Color.WHITE);
        agentCommissionButton.setBackgroundColor(Color.parseColor("#F39C12"));
        agentCommissionButton.setPadding(20, 20, 20, 20);
        LinearLayout.LayoutParams agentBtnParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1);
        agentBtnParams.setMarginStart(10);
        agentCommissionButton.setLayoutParams(agentBtnParams);
        agentCommissionButton.setVisibility(View.GONE);
        agentCommissionButton.setOnClickListener(this::showAgentCommissionPrices);
        layout.addView(yohoPriceSelector);
        layout.addView(agentCommissionButton);
        return layout;
    }

    private LinearLayout createOldStyleWalletLayout() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.HORIZONTAL);
        layout.setGravity(Gravity.CENTER);
        layout.setPadding(10, 10, 10, 10);

        LinearLayout aedWalletLayout = new LinearLayout(this);
        aedWalletLayout.setOrientation(LinearLayout.VERTICAL);
        aedWalletLayout.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        aedWalletLayout.setPadding(5, 5, 5, 5);
        aedWalletLayout.addView(createCurrencyIcon(R.drawable.aed_icon));
        aedWalletLayout.addView(createEditableBalanceView("AED"));
        layout.addView(aedWalletLayout);

        LinearLayout usdtWalletLayout = new LinearLayout(this);
        usdtWalletLayout.setOrientation(LinearLayout.VERTICAL);
        usdtWalletLayout.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        usdtWalletLayout.setPadding(5, 5, 5, 5);
        usdtWalletLayout.addView(createCurrencyIcon(R.drawable.usdt_icon));
        usdtWalletLayout.addView(createEditableBalanceView("USDT"));
        layout.addView(usdtWalletLayout);

        return layout;
    }

    private ImageView createCurrencyIcon(int imageResourceId) {
        ImageView icon = new ImageView(this);
        try { icon.setImageResource(imageResourceId); } catch (Exception ignored) {}
        LinearLayout.LayoutParams iconParams = new LinearLayout.LayoutParams(48, 48);
        iconParams.gravity = Gravity.CENTER_HORIZONTAL;
        iconParams.setMargins(0, 0, 0, 10);
        icon.setLayoutParams(iconParams);
        return icon;
    }

    private View createEditableBalanceView(final String currency) {
        FrameLayout frameLayout = new FrameLayout(this);
        final TextView balanceText = new TextView(this);
        balanceText.setTextSize(20);
        balanceText.setGravity(Gravity.CENTER);
        balanceText.setBackgroundColor(Color.parseColor("#F8F8F8"));
        balanceText.setPadding(10, 15, 10, 15);
        if (currency.equals("AED")) {
            aedValue = balanceText;
        } else {
            usdtValue = balanceText;
        }
        frameLayout.addView(balanceText);

        final EditText balanceEditor = new EditText(this);
        balanceEditor.setTextSize(20);
        balanceEditor.setGravity(Gravity.CENTER);
        balanceEditor.setBackgroundColor(Color.parseColor("#E0F7FA"));
        balanceEditor.setPadding(10, 15, 10, 15);
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

    private LinearLayout createOldStyleActionButtons() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.HORIZONTAL);
        layout.setGravity(Gravity.CENTER);
        layout.setPadding(0, 20, 0, 20);

        LinearLayout.LayoutParams btnParams = new LinearLayout.LayoutParams(0, 150, 1);
        btnParams.setMargins(0, 0, 0, 0);

        addBtn = new Button(this);
        addBtn.setText("+ إضافة");
        addBtn.setBackgroundColor(Color.parseColor("#4CAF50"));
        addBtn.setTextColor(Color.WHITE);
        addBtn.setTextSize(16);
        addBtn.setLayoutParams(btnParams);
        addBtn.setOnClickListener(v -> handleAddOrSubtract(true));

        subBtn = new Button(this);
        subBtn.setText("- خصم");
        subBtn.setBackgroundColor(Color.parseColor("#F44336"));
        subBtn.setTextColor(Color.WHITE);
        subBtn.setTextSize(16);
        subBtn.setLayoutParams(btnParams);
        subBtn.setOnClickListener(v -> handleAddOrSubtract(false));

        layout.addView(addBtn);
        layout.addView(subBtn);
        return layout;
    }

    private LinearLayout createBubbleControlButtons() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.HORIZONTAL);
        layout.setGravity(Gravity.CENTER);
        layout.setPadding(10, 40, 10, 10);

        Button startButton = new Button(this);
        startButton.setText("تشغيل الآلة الحاسبة العائمة");
        startButton.setBackgroundColor(Color.parseColor("#1ABC9C"));
        startButton.setTextColor(Color.WHITE);
        LinearLayout.LayoutParams startParams = new LinearLayout.LayoutParams(0, 150, 1);
        startParams.setMarginEnd(10);
        startButton.setLayoutParams(startParams);
        startButton.setOnClickListener(v -> checkPermissionAndStartService());

        Button stopButton = new Button(this);
        stopButton.setText("إيقاف الآلة الحاسبة العائمة");
        stopButton.setBackgroundColor(Color.parseColor("#95A5A6"));
        stopButton.setTextColor(Color.WHITE);
        LinearLayout.LayoutParams stopParams = new LinearLayout.LayoutParams(0, 150, 1);
        stopParams.setMarginStart(10);
        stopButton.setLayoutParams(stopParams);
        stopButton.setOnClickListener(v -> stopService(new Intent(MainActivity.this, FloatingViewService.class)));

        layout.addView(startButton);
        layout.addView(stopButton);
        return layout;
    }

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
                    double customerYoho = parseDoubleSafe(yohoInput.getText().toString());
                    double baseYoho = (aedAmount / 100.0) * CUSTOM_SALE_BASE_RATE;
                    double commission = baseYoho - customerYoho;
                    usdtInput.setText(yohoDecimalFormat.format(commission));
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
            updateCalculationsFromAed(aedInput.getText().toString());
            return;
        }
        if (isCustomGroupSaleActive) return;
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
        copyToClipboard(message);
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
        copyToClipboard(message);
        Toast.makeText(this, "تمت عملية البيع بنجاح", Toast.LENGTH_SHORT).show();
        updateAgentBalanceDisplay();
        resetInputs();
    }

    private void performCustomCommissionSale() {
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        double customerYoho = parseDoubleSafe(yohoInput.getText().toString());
        if (aedAmount <= 0 || customerYoho <= 0) {
            Toast.makeText(this, "الرجاء إدخال مبلغ الدرهم الإماراتي و YOHO للبيع المخصص", Toast.LENGTH_LONG).show();
            return;
        }
        double baseYoho = (aedAmount / 100.0) * CUSTOM_SALE_BASE_RATE;
        double commission = baseYoho - customerYoho;
        if (commission < 0) {
            Toast.makeText(this, "خطأ: مبلغ YOHO المدخل أكبر من القيمة الأساسية", Toast.LENGTH_LONG).show();
            return;
        }
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;
        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.aedBalance += aedAmount;
        agent.yohoBalance += commission;
        saveAgentData(agent);
        String message = generateAgentCustomSaleMessage(agent.name, aedAmount, customerYoho, commission, agent.yohoBalance);
        saveTransactionRecord("agent_custom_sale", aedAmount, 0, commission, "AGENT:" + agent.name, "بيع مخصص. YOHO العميل: " + customerYoho, message, beforeState);
        copyToClipboard(message);
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
            baseRate = CUSTOM_SALE_BASE_RATE;
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
        copyToClipboard(message);
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
        copyToClipboard(message);
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
        copyToClipboard(message);
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
        if (value < 1000 && value > -1000) {
            return new DecimalFormat("0.#").format(value);
        }
        return new DecimalFormat("0.#K").format(value / 1000.0);
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

    private void saveTransactionRecord(String type, double amountAed, double amountUsdt, double amountYoho, String owner, String details, String whatsappMessage, String beforeState) {
        long timestamp = System.currentTimeMillis();
        String date = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH).format(Calendar.getInstance().getTime());
        String time = new SimpleDateFormat("HH:mm", Locale.ENGLISH).format(Calendar.getInstance().getTime());
        String record = timestamp + "||" + type + "||" + date + "||" + time + "||" + amountAed + "||" + amountUsdt + "||" + amountYoho + "||" + owner + "||" + details + "||MSG||" + whatsappMessage + "||BEFORE||" + beforeState;
        Set<String> records = preferences.getStringSet(RECORDS_PREFS_KEY, new HashSet<>());
        Set<String> newRecords = new HashSet<>(records);
        newRecords.add(record);
        preferences.edit().putStringSet(RECORDS_PREFS_KEY, newRecords).apply();
    }

    private void copyToClipboard(String text) {
        ClipboardManager clipboard = (ClipboardManager) getSystemService(Context.CLIPBOARD_SERVICE);
        ClipData clip = ClipData.newPlainText("Transaction", text);
        if (clipboard != null) {
            clipboard.setPrimaryClip(clip);
            Toast.makeText(this, "تم نسخ الرسالة!", Toast.LENGTH_SHORT).show();
        }
    }

    // --- UI & State Updates ---

    private void updateYohoDisplay() {
        isCustomCommissionSale = false;
        yohoInput.setEnabled(true);
        aedInput.setEnabled(true);
        yohoInput.setHint("YOHO"); // Changed hint back to English
        if (isTransferToMemberMode) {
            yohoPriceSelector.setVisibility(View.GONE);
            agentCommissionButton.setVisibility(View.VISIBLE);
            if (isCustomGroupSaleActive) {
                agentCommissionButton.setText("سعر مجموعة مخصص"); // Translated text
                yohoInput.setText("");
                yohoInput.setHint("توزيع مخصص"); // Translated hint
                yohoInput.setEnabled(false);
            } else if (currentAgentCommissionIndex == 4) { // تسعرة مخصصة
                isCustomCommissionSale = true;
                agentCommissionButton.setText(agentCommissionNames[4]);
            } else if (currentAgentCommissionIndex != -1) {
                agentCommissionButton.setText(agentCommissionNames[currentAgentCommissionIndex]);
            } else {
                agentCommissionButton.setText("اختر سعر العميل"); // Translated text
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
        aedValue.setTextColor(aedWallet < 0 ? Color.RED : Color.parseColor("#FFBF00"));
        usdtValue.setTextColor(usdtWallet < 0 ? Color.RED : Color.parseColor("#FFBF00"));
    }

    private void updateAgentBalanceDisplay() {
        if (selectedMainAgentName != null) {
            Agent agent = getAgentData(selectedMainAgentName);
            if (agent != null) {
                agentYohoWalletDisplay.setText(yohoDecimalFormat.format(agent.yohoBalance));
                agentAedWalletDisplay.setText(decimalFormat.format(agent.aedBalance));
                if (agent.yohoBalance < 0) {
                    agentYohoWalletDisplay.setTextColor(Color.RED);
                } else if (agent.yohoBalance > 0) {
                    agentYohoWalletDisplay.setTextColor(Color.parseColor("#4CAF50"));
                } else {
                    agentYohoWalletDisplay.setTextColor(Color.WHITE);
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
            usdtIconView.setImageResource(R.drawable.usdt_icon);
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
            selectedAgentTextView.setText("👤 بيع عبر الوكيل: " + selectedMainAgentName);
            selectedAgentTextView.setBackgroundColor(Color.parseColor("#F39C12"));
            currentAgentCommissionIndex = 0;

            usdtIconView.setImageResource(R.drawable.yoho_icon);
            usdtInput.setHint("العمولة");
            usdtInput.setEnabled(false);
            usdtInput.setText("");

        } else { // Blue "Modify" Mode
            selectedAgentTextView.setText("👤 تعديل الوكيل: " + selectedMainAgentName);
            selectedAgentTextView.setBackgroundColor(Color.parseColor("#3498DB"));
            currentAgentCommissionIndex = -1;

            usdtIconView.setImageResource(R.drawable.usdt_icon);
            usdtInput.setHint("0.00");
            usdtInput.setEnabled(true);
        }
        selectedAgentTextView.setVisibility(View.VISIBLE);
        updateYohoDisplay();
        updateAgentBalanceDisplay();
    }

    private void showYohoPrices(View anchorView) {
        ListPopupWindow listPopupWindow = new ListPopupWindow(this);
        listPopupWindow.setAnchorView(anchorView);
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, yohoNames);
        listPopupWindow.setAdapter(adapter);
        listPopupWindow.setWidth(anchorView.getWidth());
        listPopupWindow.setOnItemClickListener((parent, view, position, id) -> {
            currentYohoIndex = position;
            updateYohoDisplay();
            listPopupWindow.dismiss();
        });
        listPopupWindow.show();
    }

    private void showAgentCommissionPrices(View anchorView) {
        if (!isTransferToMemberMode) {
            Toast.makeText(this, "الرجاء تحديد وضع بيع الوكيل أولاً", Toast.LENGTH_SHORT).show();
            return;
        }
        ListPopupWindow listPopupWindow = new ListPopupWindow(this);
        listPopupWindow.setAnchorView(anchorView);
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, agentCommissionNames);
        listPopupWindow.setAdapter(adapter);
        listPopupWindow.setWidth(anchorView.getWidth());
        listPopupWindow.setOnItemClickListener((parent, view, position, id) -> {
            isCustomGroupSaleActive = false;
            isCustomCommissionSale = false;
            customMemberSales.clear();
            currentAgentCommissionIndex = position;
            if (position == 3) {
                isCustomGroupSaleActive = true;
                showMemberGroupSaleDialog();
            } else if (position == 4) {
                isCustomCommissionSale = true;
            }
            updateYohoDisplay();
            listPopupWindow.dismiss();
        });
        listPopupWindow.show();
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
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            listPopupWindow.dismiss();
            listPopupWindow = null;
            return;
        }
        listPopupWindow = new ListPopupWindow(this);
        listPopupWindow.setAnchorView(anchorView);
        Set<String> agentsSet = preferences.getStringSet(AGENTS_PREFS_KEY, new HashSet<>());
        List<String> agentNames = new ArrayList<>();
        for (String agentData : agentsSet) {
            agentNames.add(agentData.split("\\|")[0]);
        }
        Collections.sort(agentNames);
        List<Object> menuItems = new ArrayList<>(agentNames);
        menuItems.add(ACTION_ITEM_MARKER);
        MenuAdapter adapter = new MenuAdapter(this, menuItems);
        listPopupWindow.setAdapter(adapter);
        listPopupWindow.setWidth(anchorView.getWidth());
        listPopupWindow.setOnItemClickListener((parent, view, position, id) -> {
            Object selectedItem = menuItems.get(position);
            if (selectedItem instanceof String) {
                setupAgentMode((String) selectedItem, isAgentSaleMode);
            }
            listPopupWindow.dismiss();
            listPopupWindow = null;
        });
        listPopupWindow.show();
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
        copyToClipboard(message);
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
                    copyToClipboard(message);
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

    // --- Custom Adapter for the Popup Menu ---
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
                if (convertView == null) {
                    convertView = LayoutInflater.from(getContext()).inflate(android.R.layout.simple_list_item_1, parent, false);
                }
                TextView textView = convertView.findViewById(android.R.id.text1);
                textView.setText((String) getItem(position));
            } else { // TYPE_ACTIONS
                if (convertView == null) {
                    LinearLayout actionsLayout = new LinearLayout(getContext());
                    actionsLayout.setOrientation(LinearLayout.HORIZONTAL);
                    actionsLayout.setGravity(Gravity.CENTER);
                    actionsLayout.setPadding(0, 10, 0, 10);

                    // ## تم إصلاح الأخطاء هنا ##
                    ImageView addAgentButton = new ImageView(getContext());
                    LinearLayout.LayoutParams buttonParams = new LinearLayout.LayoutParams(0, 100, 1f);
                    addAgentButton.setLayoutParams(buttonParams);
                    addAgentButton.setImageResource(R.drawable.person_add_24);
                    addAgentButton.setColorFilter(Color.parseColor("#4CAF50"), PorterDuff.Mode.SRC_IN);
                    addAgentButton.setPadding(20, 20, 20, 20);
                    addAgentButton.setBackgroundColor(Color.parseColor("#E0E0E0"));
                    addAgentButton.setOnClickListener(v -> {
                        showAddAgentDialog();
                        if (listPopupWindow != null && listPopupWindow.isShowing()) {
                            listPopupWindow.dismiss();
                        }
                    });
                    actionsLayout.addView(addAgentButton);

                    ImageView deleteAgentButton = new ImageView(getContext());
                    LinearLayout.LayoutParams deleteButtonParams = new LinearLayout.LayoutParams(0, 100, 1f);
                    deleteButtonParams.setMarginStart(10);
                    deleteAgentButton.setLayoutParams(deleteButtonParams);
                    deleteAgentButton.setImageResource(R.drawable.person_remove_24);
                    deleteAgentButton.setColorFilter(Color.parseColor("#F44336"), PorterDuff.Mode.SRC_IN);
                    deleteAgentButton.setPadding(20, 20, 20, 20);
                    deleteAgentButton.setBackgroundColor(Color.parseColor("#E0E0E0"));
                    deleteAgentButton.setOnClickListener(v -> {
                        showDeleteAgentDialog();
                        if (listPopupWindow != null && listPopupWindow.isShowing()) {
                            listPopupWindow.dismiss();
                        }
                    });
                    actionsLayout.addView(deleteAgentButton);
                    convertView = actionsLayout;
                }
            }
            return convertView;
        }
    }

    // ## كود التحديث: الدوال اللازمة للتحقق والتحميل والتثبيت ##

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
                int latestVersionCode = jsonObject.getInt("latestVersionCode");
                String apkUrl = jsonObject.getString("apkUrl");

                int currentVersionCode = getCurrentVersionCode();

                if (latestVersionCode > currentVersionCode) {
                    runOnUiThread(() -> showUpdateDialog(apkUrl));
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

    @SuppressLint("UnspecifiedRegisterReceiverFlag")
    private void downloadAndInstallApk(String apkUrl) {
        String destination = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + "/app-update.apk";
        Uri uri = Uri.parse("file://" + destination);

        File file = new File(destination);
        if (file.exists()) {
            file.delete();
        }

        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(apkUrl));
        request.setMimeType("application/vnd.android.package-archive");
        request.setTitle("تحميل التحديث");
        request.setDescription("جاري تحميل الإصدار الجديد...");
        request.setDestinationUri(uri);

        Toast.makeText(this, "بدأ تحميل التحديث...", Toast.LENGTH_LONG).show();
        final DownloadManager downloadManager = (DownloadManager) getSystemService(Context.DOWNLOAD_SERVICE);
        final long downloadId = downloadManager.enqueue(request);

        BroadcastReceiver onComplete = new BroadcastReceiver() {
            public void onReceive(Context ctxt, Intent intent) {
                long receivedDownloadId = intent.getLongExtra(DownloadManager.EXTRA_DOWNLOAD_ID, -1);
                if (downloadId == receivedDownloadId) {
                    try {
                        File apkFile = new File(destination);
                        Uri apkUri = FileProvider.getUriForFile(MainActivity.this, getPackageName() + ".provider", apkFile);
                        Intent installIntent = new Intent(Intent.ACTION_VIEW);
                        installIntent.setDataAndType(apkUri, "application/vnd.android.package-archive");
                        installIntent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_ACTIVITY_NEW_TASK);
                        startActivity(installIntent);
                    } catch (Exception e) {
                        Log.e("UpdateInstaller", "Error installing APK", e);
                        Toast.makeText(MainActivity.this, "فشل تثبيت التحديث.", Toast.LENGTH_LONG).show();
                    } finally {
                        unregisterReceiver(this);
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
