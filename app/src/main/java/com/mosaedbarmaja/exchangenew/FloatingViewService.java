package com.mosaedbarmaja.exchangenew;

import android.app.Service;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.IBinder;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.mosaedbarmaja.exchangenew.Agent;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.HashSet;

public class FloatingViewService extends Service {

    private WindowManager mWindowManager;
    private View mFloatingView;
    private WindowManager.LayoutParams params;

    // --- UI Components ---
    private FrameLayout contentFrame;
    private EditText aedInput, usdtInput, yohoInput;
    private TextView yohoPriceSelector, selectedAgentTextView, commissionSelectorBar;
    private Button addBtn, subBtn;
    private LinearLayout agentPopup;
    private LinearLayout commissionPopup;


    // --- Data & State ---
    private SharedPreferences preferences;
    private boolean isUpdating = false;
    private final double AED_TO_USDT_RATE = 1 / 3.7594;
    private final double USDT_TO_AED_RATE = 3.7594 / 1;
    private final double CUSTOM_SALE_BASE_RATE_265 = 265000.0;
    private final double CUSTOM_SALE_BASE_RATE_260 = 260000.0;
    private final double[] yohoPrices = {250000, 255000, 260000, 265000};
    private final String[] yohoNames = {"التسعيرة الاولى", "التسعيرة الثانية", "التسعيرة الثالثة", "التسعيرة الرابعة"};
    private int currentYohoIndex = 0;
    private DecimalFormat decimalFormat;
    private DecimalFormat yohoDecimalFormat;
    private DecimalFormat whatsappDecimalFormat;


    // --- Agent and Mode State ---
    private String selectedMainAgentName = null;
    private boolean isAgentSaleMode = true;
    private int currentAgentCommissionIndex = 0;
    private final double[] agentCommissionPrices = {250000, 255000, 260000, 265000, 0};
    private final double[] agentCommissionValues = {15000, 10000, 5000, 0, 0};
    private final String[] agentCommissionNames = {"عمولة 6%", "عمولة 4%", "عمولة 2%", "تسعرة جماعية 6%", "تسعرة مخصصة 6%"};
    private boolean isCustomGroupSaleActive = false;
    private boolean isCustomCommissionSale = false;
    private List<double[]> customMemberSales = new ArrayList<>();


    public static final String ACTION_UPDATE_UI = "com.mosaedbarmaja.exchangenew.UPDATE_UI";


    public FloatingViewService() {}

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        setupFormatting();
        preferences = getSharedPreferences("GoldExchangeApp", Context.MODE_PRIVATE);

        mFloatingView = createRootView();

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            params = new WindowManager.LayoutParams(
                    WindowManager.LayoutParams.WRAP_CONTENT,
                    WindowManager.LayoutParams.WRAP_CONTENT,
                    WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                    WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                    PixelFormat.TRANSLUCENT);
        } else {
            params = new WindowManager.LayoutParams(
                    WindowManager.LayoutParams.WRAP_CONTENT,
                    WindowManager.LayoutParams.WRAP_CONTENT,
                    WindowManager.LayoutParams.TYPE_PHONE,
                    WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                    PixelFormat.TRANSLUCENT);
        }

        params.gravity = Gravity.TOP | Gravity.START;
        params.x = 0;
        params.y = 100;

        mWindowManager = (WindowManager) getSystemService(WINDOW_SERVICE);
        if (mWindowManager != null) {
            mWindowManager.addView(mFloatingView, params);
        }

        showCalculatorView();
    }

    // --- Main View Structure ---

    private View createRootView() {
        LinearLayout rootLayout = new LinearLayout(this);
        rootLayout.setOrientation(LinearLayout.VERTICAL);
        rootLayout.setMinimumWidth(600);
        GradientDrawable background = new GradientDrawable();
        background.setColor(Color.parseColor("#2C3E50"));
        background.setCornerRadius(24);
        background.setStroke(2, Color.parseColor("#3498DB"));
        rootLayout.setBackground(background);

        RelativeLayout titleBar = new RelativeLayout(this);
        titleBar.setTag("title_bar_tag");
        titleBar.setPadding(16, 8, 16, 8);
        titleBar.setLayoutParams(new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        TextView title = new TextView(this);
        title.setText("حاسبة يوهو");
        title.setTextColor(Color.WHITE);
        title.setTextSize(16);
        RelativeLayout.LayoutParams titleParams = new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        titleParams.addRule(RelativeLayout.CENTER_IN_PARENT, RelativeLayout.TRUE);
        title.setLayoutParams(titleParams);

        Button closeButton = new Button(this);
        closeButton.setText("X");
        closeButton.setTextColor(Color.WHITE);
        closeButton.setBackgroundColor(Color.TRANSPARENT);
        RelativeLayout.LayoutParams closeParams = new RelativeLayout.LayoutParams(96, 96);
        closeParams.addRule(RelativeLayout.ALIGN_PARENT_END, RelativeLayout.TRUE);
        closeButton.setLayoutParams(closeParams);
        closeButton.setOnClickListener(v -> stopSelf());

        titleBar.addView(title);
        titleBar.addView(closeButton);
        setupDraggable(titleBar);

        contentFrame = new FrameLayout(this);
        contentFrame.setLayoutParams(new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        contentFrame.setPadding(16, 0, 16, 16);

        rootLayout.addView(titleBar);
        rootLayout.addView(contentFrame);

        return rootLayout;
    }

    private void showCalculatorView() {
        contentFrame.removeAllViews();
        contentFrame.addView(createCalculatorLayout());
        setupTextWatchers();
        updateYohoDisplay();
        updateAgentModeUI();
    }

    private void showRecordsView() {
        contentFrame.removeAllViews();
        contentFrame.addView(createRecordsLayout());
    }

    // --- Calculator View ---

    private View createCalculatorLayout() {
        LinearLayout calculatorLayout = new LinearLayout(this);
        calculatorLayout.setOrientation(LinearLayout.VERTICAL);

        selectedAgentTextView = new TextView(this);
        selectedAgentTextView.setTextColor(Color.WHITE);
        selectedAgentTextView.setTextSize(14);
        selectedAgentTextView.setGravity(Gravity.CENTER);
        selectedAgentTextView.setPadding(8, 8, 8, 8);
        selectedAgentTextView.setVisibility(View.GONE);
        selectedAgentTextView.setOnClickListener(v -> resetSelection());

        LinearLayout controlsLayout = new LinearLayout(this);
        controlsLayout.setOrientation(LinearLayout.HORIZONTAL);
        Button agentsButton = createControlButton("الوكلاء");
        agentsButton.setOnClickListener(v -> showAgentList());
        Button modeButton = createControlButton("تبديل الوضع");
        modeButton.setOnClickListener(v -> {
            isAgentSaleMode = !isAgentSaleMode;
            updateAgentModeUI();
        });
        Button recordsButton = createControlButton("السجلات");
        recordsButton.setOnClickListener(v -> showRecordsView());
        controlsLayout.addView(agentsButton);
        controlsLayout.addView(modeButton);
        controlsLayout.addView(recordsButton);

        FrameLayout selectorContainer = new FrameLayout(this);
        LinearLayout.LayoutParams selectorContainerParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        selectorContainerParams.topMargin = 16;
        selectorContainer.setLayoutParams(selectorContainerParams);

        commissionSelectorBar = new TextView(this);
        commissionSelectorBar.setTextColor(Color.WHITE);
        commissionSelectorBar.setTextSize(14);
        commissionSelectorBar.setGravity(Gravity.CENTER);
        commissionSelectorBar.setPadding(8, 8, 8, 8);
        commissionSelectorBar.setBackgroundColor(Color.parseColor("#F39C12"));
        commissionSelectorBar.setOnClickListener(v -> showCommissionPricesPopup());
        commissionSelectorBar.setVisibility(View.GONE);

        yohoPriceSelector = new TextView(this);
        yohoPriceSelector.setTextColor(Color.WHITE);
        yohoPriceSelector.setGravity(Gravity.CENTER);
        yohoPriceSelector.setPadding(8, 8, 8, 8);
        yohoPriceSelector.setOnClickListener(v -> {
            currentYohoIndex = (currentYohoIndex + 1) % yohoPrices.length;
            updateYohoDisplay();
        });

        selectorContainer.addView(commissionSelectorBar);
        selectorContainer.addView(yohoPriceSelector);


        LinearLayout inputsContainer = new LinearLayout(this);
        inputsContainer.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        inputsContainer.setOrientation(LinearLayout.HORIZONTAL);
        aedInput = createEditText("درهم");
        usdtInput = createEditText("دولار");
        inputsContainer.addView(aedInput);
        inputsContainer.addView(usdtInput);

        yohoInput = createEditText("YOHO");
        LinearLayout.LayoutParams yohoParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        yohoParams.setMargins(0, 10, 0, 0);
        yohoInput.setLayoutParams(yohoParams);
        yohoInput.setTextSize(20);

        LinearLayout actionsLayout = new LinearLayout(this);
        actionsLayout.setOrientation(LinearLayout.HORIZONTAL);
        addBtn = createActionButton("+ إضافة", "#4CAF50");
        addBtn.setOnClickListener(v -> handleAddOrSubtract(true));
        subBtn = createActionButton("- خصم", "#F44336");
        subBtn.setOnClickListener(v -> handleAddOrSubtract(false));
        actionsLayout.addView(addBtn);
        actionsLayout.addView(subBtn);

        calculatorLayout.addView(selectedAgentTextView);
        calculatorLayout.addView(controlsLayout);
        calculatorLayout.addView(selectorContainer);
        calculatorLayout.addView(inputsContainer);
        calculatorLayout.addView(yohoInput);
        calculatorLayout.addView(actionsLayout);

        return calculatorLayout;
    }

    // --- Records View ---

    private View createRecordsLayout() {
        LinearLayout recordsLayout = new LinearLayout(this);
        recordsLayout.setOrientation(LinearLayout.VERTICAL);

        TextView recordsTitle = new TextView(this);
        recordsTitle.setText("آخر 5 عمليات");
        recordsTitle.setTextColor(Color.WHITE);
        recordsTitle.setTextSize(16);
        recordsTitle.setGravity(Gravity.CENTER);
        recordsTitle.setPadding(0, 16, 0, 16);
        recordsLayout.addView(recordsTitle);

        ScrollView scrollView = new ScrollView(this);
        LinearLayout recordsContainer = new LinearLayout(this);
        recordsContainer.setOrientation(LinearLayout.VERTICAL);

        Set<String> recordsSet = preferences.getStringSet("transaction_records", new HashSet<>());
        if (recordsSet.isEmpty()) {
            TextView noRecordsText = new TextView(this);
            noRecordsText.setText("لا توجد سجلات لعرضها");
            noRecordsText.setTextColor(Color.GRAY);
            noRecordsText.setGravity(Gravity.CENTER);
            noRecordsText.setPadding(0, 40, 0, 40);
            recordsContainer.addView(noRecordsText);
        } else {
            List<String> sortedRecords = new ArrayList<>(recordsSet);
            Collections.sort(sortedRecords, (o1, o2) -> {
                try {
                    long t1 = Long.parseLong(o1.split("\\|\\|")[0]);
                    long t2 = Long.parseLong(o2.split("\\|\\|")[0]);
                    return Long.compare(t2, t1);
                } catch (Exception e) {
                    return 0;
                }
            });

            int count = 0;
            for (String record : sortedRecords) {
                if (count >= 5) break;
                recordsContainer.addView(createRecordRow(record));
                count++;
            }
        }

        scrollView.addView(recordsContainer);
        recordsLayout.addView(scrollView);

        Button backButton = createControlButton("العودة إلى الآلة الحاسبة");
        LinearLayout.LayoutParams backParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        backParams.setMargins(0, 24, 0, 0);
        backButton.setLayoutParams(backParams);
        backButton.setOnClickListener(v -> showCalculatorView());
        recordsLayout.addView(backButton);

        return recordsLayout;
    }

    private View createRecordRow(String record) {
        LinearLayout rowLayout = new LinearLayout(this);
        rowLayout.setOrientation(LinearLayout.HORIZONTAL);
        rowLayout.setPadding(8, 8, 8, 8);
        rowLayout.setGravity(Gravity.CENTER_VERTICAL);

        TextView recordText = new TextView(this);
        recordText.setTextColor(Color.WHITE);
        recordText.setTextSize(12);
        recordText.setText(formatRecordForDisplay(record));
        LinearLayout.LayoutParams textParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        recordText.setLayoutParams(textParams);

        Button undoButton = new Button(this);
        undoButton.setText("↪️");
        undoButton.setBackgroundColor(Color.TRANSPARENT);
        undoButton.setOnClickListener(v -> {
            undoRecord(record);
            showRecordsView();
        });

        Button shareButton = new Button(this);
        shareButton.setText("💬");
        shareButton.setBackgroundColor(Color.TRANSPARENT);
        shareButton.setOnClickListener(v -> {
            String[] parts = record.split("\\|\\|MSG\\|\\|");
            if (parts.length > 1) {
                copyToClipboard(parts[1].split("\\|\\|BEFORE\\|\\|")[0]);
            }
        });

        rowLayout.addView(recordText);
        rowLayout.addView(undoButton);
        rowLayout.addView(shareButton);
        return rowLayout;
    }

    // --- UI Helpers and Listeners ---

    private void setupDraggable(View view) {
        view.setOnTouchListener(new View.OnTouchListener() {
            private int initialX, initialY;
            private float initialTouchX, initialTouchY;

            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (agentPopup != null) {
                    mWindowManager.removeView(agentPopup);
                    agentPopup = null;
                }
                if (commissionPopup != null) {
                    mWindowManager.removeView(commissionPopup);
                    commissionPopup = null;
                }

                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        initialX = params.x;
                        initialY = params.y;
                        initialTouchX = event.getRawX();
                        initialTouchY = event.getRawY();
                        return true;
                    case MotionEvent.ACTION_MOVE:
                        params.x = initialX + (int) (event.getRawX() - initialTouchX);
                        params.y = initialY + (int) (event.getRawY() - initialTouchY);
                        mWindowManager.updateViewLayout(mFloatingView, params);
                        return true;
                }
                return false;
            }
        });
    }

    private Button createControlButton(String text) {
        Button button = new Button(this);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        params.setMargins(4, 4, 4, 4);
        button.setLayoutParams(params);
        button.setText(text);
        button.setTextColor(Color.WHITE);
        button.setTextSize(12);
        button.setBackgroundColor(Color.parseColor("#5D6D7E"));
        return button;
    }

    private Button createActionButton(String text, String color) {
        Button button = new Button(this);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0, 150, 1.0f);
        params.topMargin = 16;
        button.setLayoutParams(params);
        button.setText(text);
        button.setTextColor(Color.WHITE);
        button.setTextSize(16);
        button.setBackgroundColor(Color.parseColor(color));
        return button;
    }

    private EditText createEditText(String hint) {
        EditText editText = new EditText(this);
        LinearLayout.LayoutParams editTextParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        editTextParams.setMargins(8, 8, 8, 8);
        editText.setLayoutParams(editTextParams);
        editText.setHint(hint);
        editText.setHintTextColor(Color.LTGRAY);
        editText.setTextColor(Color.WHITE);
        editText.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL);
        editText.setTextSize(16);
        editText.setGravity(Gravity.CENTER);
        editText.setBackgroundColor(Color.parseColor("#5D6D7E"));
        editText.setPadding(12, 12, 12, 12);
        editText.setId(View.generateViewId());

        editText.setOnTouchListener((v, event) -> {
            if (event.getAction() == MotionEvent.ACTION_DOWN) {
                params.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL;
                mWindowManager.updateViewLayout(mFloatingView, params);
            }
            return false;
        });

        editText.setOnFocusChangeListener((v, hasFocus) -> {
            if (!hasFocus) {
                params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
                mWindowManager.updateViewLayout(mFloatingView, params);
            }
        });
        return editText;
    }

    // --- Business Logic ---

    private void updateAgentModeUI() {
        if (selectedAgentTextView == null) return;

        isCustomGroupSaleActive = false;
        isCustomCommissionSale = false;

        if (selectedMainAgentName == null) {
            selectedAgentTextView.setVisibility(View.GONE);
            commissionSelectorBar.setVisibility(View.GONE);
            yohoPriceSelector.setVisibility(View.VISIBLE);
            usdtInput.setHint("دولار");
            usdtInput.setEnabled(true);
            yohoInput.setEnabled(true);
            addBtn.setText("+ إضافة");
            subBtn.setText("- خصم");
            subBtn.setOnClickListener(v -> handleAddOrSubtract(false));
            subBtn.setEnabled(true);
            return;
        }

        selectedAgentTextView.setVisibility(View.VISIBLE);
        if (isAgentSaleMode) {
            selectedAgentTextView.setText("👤 بيع عبر: " + selectedMainAgentName);
            selectedAgentTextView.setBackgroundColor(Color.parseColor("#F39C12"));
            commissionSelectorBar.setVisibility(View.VISIBLE);
            yohoPriceSelector.setVisibility(View.GONE);
            usdtInput.setHint("عمولة يوهو");
            usdtInput.setEnabled(false);
            yohoInput.setEnabled(false);
            updateCommissionSelectionUI();
        } else {
            selectedAgentTextView.setText("👤 تعديل: " + selectedMainAgentName);
            selectedAgentTextView.setBackgroundColor(Color.parseColor("#3498DB"));
            commissionSelectorBar.setVisibility(View.GONE);
            yohoPriceSelector.setVisibility(View.VISIBLE);
            usdtInput.setHint("دولار");
            usdtInput.setEnabled(true);
            yohoInput.setEnabled(true);
            addBtn.setText("+ إضافة");
            subBtn.setText("- خصم");
            subBtn.setOnClickListener(v -> handleAddOrSubtract(false));
            subBtn.setEnabled(true);
        }
        resetInputs();
        updateYohoDisplay();
    }

    private void resetSelection() {
        selectedMainAgentName = null;
        updateAgentModeUI();
        resetInputs();
    }

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
            Toast.makeText(getApplicationContext(), "الرجاء إدخال قيمة موجبة صالحة", Toast.LENGTH_SHORT).show();
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
        saveTransactionRecord(type, aedAmount, usdtAmount, 0, "الحاسبة العائمة", "عملية من الحاسبة العائمة", message, beforeState);
        copyToClipboard(message);
        Toast.makeText(getApplicationContext(), isAdding ? "تمت الإضافة بنجاح" : "تم الخصم بنجاح", Toast.LENGTH_SHORT).show();
        resetInputs();
        sendUpdateBroadcast();
    }

    private void handleAgentLogic(boolean isAdding) {
        if (!isAgentSaleMode) {
            if (isAdding) fundAgentWithAedAndYoho();
            else withdrawAgentYoho();
            return;
        }

        if (isAdding) {
            if (isCustomGroupSaleActive) addMemberToGroupSale();
            else if (isCustomCommissionSale) performCustomCommissionSale();
            else performAgentSaleToMember();
        }
    }

    private void performAgentSaleToMember() {
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        if (aedAmount <= 0) {
            Toast.makeText(getApplicationContext(), "الرجاء إدخال قيمة", Toast.LENGTH_SHORT).show();
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
        String message = generateAgentSaleMessage(agent.name, yohoForMember, commissionForAgent, agent.yohoBalance);
        saveTransactionRecord("agent_sale", aedAmount, 0, commissionForAgent, "AGENT:" + selectedMainAgentName, "YOHO للعضو: " + yohoForMember, message, beforeState);
        copyToClipboard(message);
        Toast.makeText(getApplicationContext(), "تمت عملية البيع بنجاح", Toast.LENGTH_SHORT).show();
        resetInputs();
        sendUpdateBroadcast();
    }

    private void fundAgentWithAedAndYoho() {
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        double yohoAmount = parseDoubleSafe(yohoInput.getText().toString());
        if (aedAmount <= 0 && yohoAmount <= 0) {
            Toast.makeText(getApplicationContext(), "أدخل مبلغ للتمويل", Toast.LENGTH_SHORT).show();
            return;
        }
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;

        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.aedBalance += aedAmount;
        agent.yohoBalance += yohoAmount;
        saveAgentData(agent);
        String message = "تم تمويل الوكيل " + agent.name + " بـ " + aedAmount + " درهم و " + yohoAmount + " يوهو.";
        saveTransactionRecord("agent_fund", aedAmount, 0, yohoAmount, "AGENT:" + agent.name, "تمويل مباشر", message, beforeState);
        copyToClipboard(message);
        Toast.makeText(getApplicationContext(), "تم تمويل الوكيل", Toast.LENGTH_SHORT).show();
        resetInputs();
        sendUpdateBroadcast();
    }

    private void withdrawAgentYoho() {
        double yohoAmount = parseDoubleSafe(yohoInput.getText().toString());
        if (yohoAmount <= 0) {
            Toast.makeText(getApplicationContext(), "أدخل مبلغ للسحب", Toast.LENGTH_SHORT).show();
            return;
        }
        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;

        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        agent.yohoBalance -= yohoAmount;
        saveAgentData(agent);
        String message = generateAgentYohoMessage("subtract", agent.name, yohoAmount, agent.yohoBalance);
        saveTransactionRecord("withdraw_agent_yoho", 0, 0, yohoAmount, "AGENT:" + selectedMainAgentName, "سحب YOHO مباشر", message, beforeState);
        copyToClipboard(message);
        Toast.makeText(getApplicationContext(), "تم سحب YOHO", Toast.LENGTH_SHORT).show();
        resetInputs();
        sendUpdateBroadcast();
    }

    private Agent getAgentData(String agentName) {
        Set<String> agentsSet = preferences.getStringSet("shipping_agents", new HashSet<>());
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
        Set<String> agentsSet = preferences.getStringSet("shipping_agents", new HashSet<>());
        Set<String> newAgentsSet = new HashSet<>();
        for (String agentData : agentsSet) {
            if (!agentData.split("\\|")[0].equals(agent.name)) {
                newAgentsSet.add(agentData);
            }
        }
        newAgentsSet.add(agent.name + "|" + agent.yohoBalance + "|" + agent.aedBalance);
        preferences.edit().putStringSet("shipping_agents", newAgentsSet).apply();
    }

    private void saveTransactionRecord(String type, double amountAed, double amountUsdt, double amountYoho, String owner, String details, String whatsappMessage, String beforeState) {
        long timestamp = System.currentTimeMillis();
        String date = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH).format(Calendar.getInstance().getTime());
        String time = new SimpleDateFormat("HH:mm", Locale.ENGLISH).format(Calendar.getInstance().getTime());
        String record = timestamp + "||" + type + "||" + date + "||" + time + "||" + amountAed + "||" + amountUsdt + "||" + amountYoho + "||" + owner + "||" + details + "||MSG||" + whatsappMessage + "||BEFORE||" + beforeState;
        Set<String> records = preferences.getStringSet("transaction_records", new HashSet<>());
        Set<String> newRecords = new HashSet<>(records);
        newRecords.add(record);
        preferences.edit().putStringSet("transaction_records", newRecords).apply();
    }

    private void setupFormatting() {
        DecimalFormatSymbols symbols = new DecimalFormatSymbols(Locale.ENGLISH);
        decimalFormat = new DecimalFormat("#,##0.00", symbols);
        yohoDecimalFormat = new DecimalFormat("#,##0", symbols);
        whatsappDecimalFormat = new DecimalFormat("0.00", symbols);
    }

    private void setupTextWatchers() {
        TextWatcher smartWatcher = new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override
            public void afterTextChanged(Editable s) {
                if (isUpdating) return;
                View focusedView = mFloatingView.findFocus();
                if (!(focusedView instanceof EditText)) return;

                isUpdating = true;
                if (focusedView.getId() == aedInput.getId()) updateCalculationsFromAed(s.toString());
                else if (focusedView.getId() == usdtInput.getId()) updateCalculationsFromUsdt(s.toString());
                else if (focusedView.getId() == yohoInput.getId()) updateCalculationsFromYoho(s.toString());
                isUpdating = false;
            }
        };
        aedInput.addTextChangedListener(smartWatcher);
        usdtInput.addTextChangedListener(smartWatcher);
        yohoInput.addTextChangedListener(smartWatcher);
    }

    private void updateYohoDisplay() {
        if (yohoPriceSelector != null && yohoPriceSelector.getVisibility() == View.VISIBLE) {
            yohoPriceSelector.setText(yohoNames[currentYohoIndex] + " (اضغط للتغيير)");
        }

        if (aedInput != null && aedInput.getText().length() > 0) {
            isUpdating = true;
            updateCalculationsFromAed(aedInput.getText().toString());
            isUpdating = false;
        } else if (yohoInput != null && yohoInput.getText().length() > 0) {
            isUpdating = true;
            updateCalculationsFromYoho(yohoInput.getText().toString());
            isUpdating = false;
        }
    }

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
            if (isAgentSaleMode && selectedMainAgentName != null) {
                if (isCustomGroupSaleActive) {
                    double baseRate = agentCommissionPrices[3] / 100.0;
                    double memberYoho = aedAmount * baseRate;
                    yohoInput.setText(yohoDecimalFormat.format(memberYoho));
                    usdtInput.setText("");
                } else if (isCustomCommissionSale) {
                    double customerYoho = parseDoubleSafe(yohoInput.getText().toString());
                    double baseYoho = (aedAmount / 100.0) * CUSTOM_SALE_BASE_RATE_265;
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
        if (isAgentSaleMode && selectedMainAgentName != null) return;
        double usdtAmount = parseDoubleSafe(usdtStr);
        if (usdtAmount > 0) {
            double aedAmount = usdtAmount * USDT_TO_AED_RATE;
            aedInput.setText(decimalFormat.format(aedAmount));
        } else {
            aedInput.setText("");
            yohoInput.setText("");
        }
    }

    private void updateCalculationsFromYoho(String yohoStr) {
        if (isCustomCommissionSale) {
            updateCalculationsFromAed(aedInput.getText().toString());
            return;
        }
        if (isAgentSaleMode && selectedMainAgentName != null) return;

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

    private void resetInputs(){
        if(aedInput != null) aedInput.setText("");
        if(usdtInput != null) usdtInput.setText("");
        if(yohoInput != null) yohoInput.setText("");
    }

    private String formatToK(double value) {
        if (value < 1000 && value > -1000) return new DecimalFormat("0.#").format(value);
        if (Math.abs(value) >= 1_000_000) return new DecimalFormat("0.##M").format(value / 1_000_000.0);
        return new DecimalFormat("0.#K").format(value / 1000.0);
    }

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
        }
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

    private String generateAgentYohoMessage(String type, String fromAgent, double yohoAmount, double newBalance) {
        StringBuilder sb = new StringBuilder();
        sb.append("📃 تقرير العملية و المحفضة\n");
        if ("subtract".equals(type)) {
            sb.append("🟥 إلى يوهو : ").append(formatToK(newBalance)).append("\n");
            sb.append("___________________________________\n");
            sb.append("👤 عبر وكيل : ").append(fromAgent).append("\n");
            sb.append("🪫 خصم الى يوهو ").append(formatToK(yohoAmount)).append("\n");
        }
        return sb.toString();
    }

    private void copyToClipboard(String text) {
        ClipboardManager clipboard = (ClipboardManager) getSystemService(Context.CLIPBOARD_SERVICE);
        ClipData clip = ClipData.newPlainText("Transaction", text);
        if (clipboard != null) {
            clipboard.setPrimaryClip(clip);
            Toast.makeText(getApplicationContext(), "تم نسخ الرسالة!", Toast.LENGTH_SHORT).show();
        }
    }

    private void sendUpdateBroadcast() {
        Intent intent = new Intent(ACTION_UPDATE_UI);
        sendBroadcast(intent);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (mFloatingView != null) mWindowManager.removeView(mFloatingView);
        if (agentPopup != null) mWindowManager.removeView(agentPopup);
        if (commissionPopup != null) mWindowManager.removeView(commissionPopup);
    }

    private String formatRecordForDisplay(String record) {
        try {
            String[] parts = record.split("\\|\\|");
            String type = parts[1];
            String owner = parts[7];
            double aed = Double.parseDouble(parts[4]);
            double usdt = Double.parseDouble(parts[5]);
            double yoho = Double.parseDouble(parts[6]);

            String translatedType = translateType(type);
            String ownerDisplay;
            String valuesDisplay;

            if (owner.equals("الحاسبة العائمة")) {
                ownerDisplay = "محفظتي"; // MODIFIED
                // MODIFIED: Changed Locale to US for English numbers
                valuesDisplay = String.format(Locale.US, "درهم: %.2f, دولار: %.2f", aed, usdt);
            } else if (owner.startsWith("AGENT:")) {
                ownerDisplay = owner.substring(6);
                // MODIFIED: Changed Locale to US for English numbers
                valuesDisplay = String.format(Locale.US, "درهم: %.2f, يوهو: %.0f", aed, yoho);
            } else {
                ownerDisplay = owner;
                // MODIFIED: Changed Locale to US for English numbers
                valuesDisplay = String.format(Locale.US, "درهم: %.2f", aed);
            }

            return String.format("%s: %s\n%s", translatedType, ownerDisplay, valuesDisplay);

        } catch (Exception e) {
            return "سجل غير صالح";
        }
    }

    private String translateType(String type) {
        switch (type) {
            case "add": return "إضافة";
            case "subtract": return "خصم";
            case "agent_sale": return "عمولة الوكيل";
            case "agent_fund": return "تمويل وكيل";
            case "withdraw_agent_yoho": return "سحب يوهو";
            case "group_sale_final": return "بيع جماعي";
            case "custom_sale": return "بيع مخصص";
            case "agent_aed_transfer": return "تحويل درهم";
            case "reset": return "تصفير";
            case "reset_agent": return "تصفير وكيل";
            default: return type;
        }
    }

    private void undoRecord(String recordToUndo) {
        Set<String> records = preferences.getStringSet("transaction_records", new HashSet<>());
        if (!records.contains(recordToUndo)) {
            Toast.makeText(getApplicationContext(), "العملية قد تم التراجع عنها بالفعل", Toast.LENGTH_SHORT).show();
            return;
        }

        String[] parts = recordToUndo.split("\\|\\|BEFORE\\|\\|");
        if (parts.length < 2) {
            Toast.makeText(getApplicationContext(), "لا يمكن التراجع: بيانات غير كاملة", Toast.LENGTH_SHORT).show();
            return;
        }

        String owner = recordToUndo.split("\\|\\|")[7];
        String[] beforeState = parts[1].split("\\|");

        if (owner.startsWith("AGENT:")) {
            String agentName = owner.substring(6);
            Agent agent = getAgentData(agentName);
            if (agent != null && beforeState.length >= 2) {
                agent.yohoBalance = parseDoubleSafe(beforeState[0]);
                agent.aedBalance = parseDoubleSafe(beforeState[1]);
                saveAgentData(agent);
            }
        } else if (owner.equals("الحاسبة العائمة") && beforeState.length >= 2) {
            preferences.edit()
                    .putString("aed_wallet", beforeState[0])
                    .putString("usdt_wallet", beforeState[1])
                    .apply();
        }

        Set<String> newRecords = new HashSet<>(records);
        newRecords.remove(recordToUndo);
        preferences.edit().putStringSet("transaction_records", newRecords).apply();

        Toast.makeText(getApplicationContext(), "تم التراجع عن العملية", Toast.LENGTH_SHORT).show();
        sendUpdateBroadcast();
    }

    private void showCommissionPricesPopup() {
        if (commissionPopup != null) {
            mWindowManager.removeView(commissionPopup);
            commissionPopup = null;
            return;
        }

        commissionPopup = new LinearLayout(this);
        commissionPopup.setOrientation(LinearLayout.VERTICAL);
        commissionPopup.setBackgroundColor(Color.parseColor("#2C3E50"));
        commissionPopup.setPadding(8, 8, 8, 8);

        for (int i = 0; i < agentCommissionNames.length; i++) {
            final int index = i;
            TextView commissionView = new TextView(this);
            commissionView.setText(agentCommissionNames[i]);
            commissionView.setTextColor(Color.WHITE);
            commissionView.setPadding(20, 20, 20, 20);
            commissionView.setOnClickListener(v -> {
                currentAgentCommissionIndex = index;
                updateCommissionSelectionUI();
                mWindowManager.removeView(commissionPopup);
                commissionPopup = null;
            });
            commissionPopup.addView(commissionView);
        }

        WindowManager.LayoutParams popupParams = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                params.type,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT
        );
        popupParams.gravity = Gravity.TOP | Gravity.START;
        popupParams.x = params.x;
        popupParams.y = params.y + mFloatingView.getHeight();
        mWindowManager.addView(commissionPopup, popupParams);
    }

    private void updateCommissionSelectionUI() {
        commissionSelectorBar.setText(agentCommissionNames[currentAgentCommissionIndex]);
        isCustomGroupSaleActive = (currentAgentCommissionIndex == 3);
        isCustomCommissionSale = (currentAgentCommissionIndex == 4);

        resetInputs();
        usdtInput.setEnabled(false);
        aedInput.setEnabled(true);

        subBtn.setOnClickListener(v -> handleAddOrSubtract(false));

        if (isCustomGroupSaleActive) {
            aedInput.setHint("درهم للعضو");
            yohoInput.setHint("يوهو للعضو (محسوب)");
            yohoInput.setEnabled(false);
            usdtInput.setHint("العمولة النهائية");
            addBtn.setText("+ إضافة عضو");
            subBtn.setText("إنهاء وحساب");
            subBtn.setEnabled(true);
            subBtn.setOnClickListener(v -> performFinalGroupSaleCalculation());
            customMemberSales.clear();
            Toast.makeText(this, "وضع البيع الجماعي. أدخل مبلغ العضو ثم اضغط 'إضافة عضو'.", Toast.LENGTH_LONG).show();
        } else if (isCustomCommissionSale) {
            aedInput.setHint("درهم من العضو");
            yohoInput.setHint("يوهو للعضو (إدخال)");
            yohoInput.setEnabled(true);
            usdtInput.setHint("عمولة الوكيل (محسوبة)");
            addBtn.setText("تنفيذ البيع المخصص");
            subBtn.setEnabled(false);
        } else {
            aedInput.setHint("درهم");
            yohoInput.setHint("YOHO (محسوب)");
            yohoInput.setEnabled(false);
            usdtInput.setHint("عمولة يوهو (محسوبة)");
            addBtn.setText("+ إضافة");
            subBtn.setText("- خصم");
            subBtn.setEnabled(false);
        }
        updateCalculationsFromAed(aedInput.getText().toString());
    }

    private void addMemberToGroupSale() {
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        double baseRate = agentCommissionPrices[3] / 100.0;
        double yohoAmount = aedAmount * baseRate;

        if (aedAmount <= 0) {
            Toast.makeText(this, "الرجاء إدخال مبلغ الدرهم للعضو", Toast.LENGTH_SHORT).show();
            return;
        }

        customMemberSales.add(new double[]{aedAmount, yohoAmount});
        Toast.makeText(this, "تمت إضافة العضو. إجمالي الأعضاء: " + customMemberSales.size(), Toast.LENGTH_SHORT).show();

        resetInputs();
    }

    private void performFinalGroupSaleCalculation() {
        if (customMemberSales.isEmpty()) {
            Toast.makeText(this, "لم يتم إضافة أي أعضاء للبيع الجماعي", Toast.LENGTH_SHORT).show();
            return;
        }

        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;

        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;
        double totalAedCollected = 0;
        double totalYohoForMembers = 0;

        for (double[] sale : customMemberSales) {
            totalAedCollected += sale[0];
            totalYohoForMembers += sale[1];
        }

        double groupSaleRate = agentCommissionPrices[3] / 100.0;
        double totalYohoGenerated = totalAedCollected * groupSaleRate;
        double finalAgentCommission = totalYohoGenerated - totalYohoForMembers;

        agent.aedBalance += totalAedCollected;
        agent.yohoBalance += finalAgentCommission;
        saveAgentData(agent);

        StringBuilder msgBuilder = new StringBuilder();
        msgBuilder.append("📄 تقرير البيع الجماعي للوكيل: ").append(agent.name).append("\n");
        msgBuilder.append("___________________________________\n");
        msgBuilder.append("💰 إجمالي الدرهم المحصل: ").append(decimalFormat.format(totalAedCollected)).append("\n");
        msgBuilder.append("✨ إجمالي اليوهو المولد: ").append(yohoDecimalFormat.format(totalYohoGenerated)).append("\n");
        msgBuilder.append("👥 إجمالي اليوهو للأعضاء: ").append(yohoDecimalFormat.format(totalYohoForMembers)).append("\n");
        msgBuilder.append("🏆 عمولة الوكيل النهائية: ").append(yohoDecimalFormat.format(finalAgentCommission)).append("\n");
        msgBuilder.append("___________________________________\n");
        msgBuilder.append("🏦 رصيد الوكيل الجديد (يوهو): ").append(formatToK(agent.yohoBalance)).append("\n");

        String message = msgBuilder.toString();
        saveTransactionRecord("group_sale_final", totalAedCollected, 0, finalAgentCommission, "AGENT:" + agent.name, "أعضاء: " + customMemberSales.size(), message, beforeState);
        copyToClipboard(message);
        Toast.makeText(this, "تم حساب البيع الجماعي بنجاح!", Toast.LENGTH_LONG).show();

        customMemberSales.clear();
        resetInputs();
        updateCommissionSelectionUI();
        sendUpdateBroadcast();
    }

    private void performCustomCommissionSale() {
        double aedAmount = parseDoubleSafe(aedInput.getText().toString());
        double customerYoho = parseDoubleSafe(yohoInput.getText().toString());

        if (aedAmount <= 0 || customerYoho <= 0) {
            Toast.makeText(this, "أدخل الدرهم واليوهو للعميل", Toast.LENGTH_SHORT).show();
            return;
        }

        Agent agent = getAgentData(selectedMainAgentName);
        if (agent == null) return;

        String beforeState = agent.yohoBalance + "|" + agent.aedBalance;

        double baseYoho = (aedAmount / 100.0) * CUSTOM_SALE_BASE_RATE_260;
        double agentCommission = baseYoho - customerYoho;

        if (agentCommission < 0) {
            Toast.makeText(this, "خطأ: العمولة سالبة. تحقق من المدخلات.", Toast.LENGTH_SHORT).show();
            return;
        }

        agent.aedBalance += aedAmount;
        agent.yohoBalance += agentCommission;
        saveAgentData(agent);

        String message = generateAgentSaleMessage(agent.name, customerYoho, agentCommission, agent.yohoBalance);
        saveTransactionRecord("custom_sale", aedAmount, 0, agentCommission, "AGENT:" + agent.name, "YOHO للعضو: " + customerYoho, message, beforeState);
        copyToClipboard(message);
        Toast.makeText(this, "تمت عملية البيع المخصصة بنجاح", Toast.LENGTH_SHORT).show();
        resetInputs();
        sendUpdateBroadcast();
    }

    private void showAgentList() {
        if (agentPopup != null) {
            mWindowManager.removeView(agentPopup);
            agentPopup = null;
            return;
        }

        agentPopup = new LinearLayout(this);
        agentPopup.setOrientation(LinearLayout.VERTICAL);
        agentPopup.setBackgroundColor(Color.parseColor("#2C3E50"));
        agentPopup.setPadding(8, 8, 8, 8);

        Set<String> agentsSet = preferences.getStringSet("shipping_agents", new HashSet<>());
        if (agentsSet.isEmpty()) {
            TextView noAgentsText = new TextView(this);
            noAgentsText.setText("لا يوجد وكلاء");
            noAgentsText.setTextColor(Color.GRAY);
            noAgentsText.setPadding(20, 20, 20, 20);
            agentPopup.addView(noAgentsText);
        } else {
            List<String> agentNames = new ArrayList<>();
            for (String agentData : agentsSet) {
                agentNames.add(agentData.split("\\|")[0]);
            }
            Collections.sort(agentNames);
            for (String name : agentNames) {
                TextView agentView = new TextView(this);
                agentView.setText(name);
                agentView.setTextColor(Color.WHITE);
                agentView.setPadding(20, 20, 20, 20);
                agentView.setOnClickListener(v -> {
                    selectedMainAgentName = name;
                    updateAgentModeUI();
                    mWindowManager.removeView(agentPopup);
                    agentPopup = null;
                });
                agentPopup.addView(agentView);
            }
        }

        WindowManager.LayoutParams popupParams = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                params.type,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT
        );
        popupParams.gravity = Gravity.TOP | Gravity.START;
        popupParams.x = params.x;
        popupParams.y = params.y + mFloatingView.getHeight();
        mWindowManager.addView(agentPopup, popupParams);
    }
}
