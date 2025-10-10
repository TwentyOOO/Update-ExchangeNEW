// ════════════════════════════════════════════════════════════════════
// مثال كامل: تطبيق الخلفيات الزرقاء الحديدية في MainActivity
// ════════════════════════════════════════════════════════════════════

// في MainActivity.java:

import androidx.core.content.ContextCompat;

// ════════════════════════════════════════════════════════════════════
// الطريقة 1: تطبيق على شريط الأزرار العلوي
// ════════════════════════════════════════════════════════════════════

private LinearLayout createTopButtonsLayout() {
    LinearLayout layout = new LinearLayout(this);
    layout.setOrientation(LinearLayout.HORIZONTAL);

    layout.setLayoutParams(new LinearLayout.LayoutParams(
        ViewGroup.LayoutParams.MATCH_PARENT,
        135  // الارتفاع
    ));
    layout.setPadding(8, 4, 8, 4);

    // ✅✅✅ هنا: تطبيق الخلفية الزرقاء الحديدية ✅✅✅
    layout.setBackgroundResource(R.drawable.bg_steel_blue_gradient);

    // أو استخدم الخيارات الأخرى:
    // layout.setBackgroundResource(R.drawable.bg_steel_blue_overlay);    // بسيط
    // layout.setBackgroundResource(R.drawable.bg_steel_blue_premium);    // فاخر

    // إنشاء الأزرار (نفس الكود الحالي)
    LinearLayout chartBtn = createSimpleIconButton(
        R.drawable.ic_analytics, "تحليل", R.color.btn_analytics
    );
    chartBtn.setOnClickListener(v -> openChartActivity());

    LinearLayout agentsBtn = createSimpleIconButton(
        R.drawable.ic_local_shipping, "وكلاء", R.color.btn_agents
    );
    agentsBtn.setOnClickListener(this::showAgentPopupMenu);

    LinearLayout recordsBtn = createSimpleIconButton(
        R.drawable.ic_history, "السجلات", R.color.btn_records
    );
    recordsBtn.setOnClickListener(v -> openRecordsActivity());

    LinearLayout calcBtn = createSimpleIconButton(
        R.drawable.ic_analytics, "حاسبة", R.color.btn_calculator
    );
    calcBtn.setOnClickListener(v -> toggleQuickCalculator());

    LinearLayout resetBtn = createSimpleIconButton(
        R.drawable.ic_restart_alt, "تصفير", R.color.btn_reset
    );
    resetBtn.setOnClickListener(v -> handleReset());

    layout.addView(chartBtn);
    layout.addView(agentsBtn);
    layout.addView(recordsBtn);
    layout.addView(calcBtn);
    layout.addView(resetBtn);

    return layout;
}


// ════════════════════════════════════════════════════════════════════
// الطريقة 2: تطبيق على ScrollView الرئيسي
// ════════════════════════════════════════════════════════════════════

@Override
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    // إنشاء ScrollView الرئيسي
    ScrollView scrollView = new ScrollView(this);
    scrollView.setLayoutParams(new LinearLayout.LayoutParams(
        ViewGroup.LayoutParams.MATCH_PARENT,
        ViewGroup.LayoutParams.MATCH_PARENT
    ));
    scrollView.setFillViewport(true);

    // ✅✅✅ تطبيق الخلفية الزرقاء الفاخرة ✅✅✅
    scrollView.setBackgroundResource(R.drawable.bg_steel_blue_premium);

    // إنشاء الـ Layout الداخلي
    LinearLayout mainLayout = new LinearLayout(this);
    mainLayout.setOrientation(LinearLayout.VERTICAL);
    mainLayout.setLayoutParams(new LinearLayout.LayoutParams(
        ViewGroup.LayoutParams.MATCH_PARENT,
        ViewGroup.LayoutParams.WRAP_CONTENT
    ));
    mainLayout.setPadding(16, 16, 16, 16);

    // إضافة المحتوى...
    mainLayout.addView(createTopButtonsLayout());
    // ... باقي العناصر

    scrollView.addView(mainLayout);
    setContentView(scrollView);
}


// ════════════════════════════════════════════════════════════════════
// الطريقة 3: تطبيق على النافذة بالكامل
// ════════════════════════════════════════════════════════════════════

@Override
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    // ✅ تطبيق الخلفية على النافذة الرئيسية
    getWindow().setBackgroundDrawableResource(R.drawable.bg_steel_blue_premium);

    // أو على الـ Root View
    // View rootView = findViewById(android.R.id.content);
    // rootView.setBackgroundResource(R.drawable.bg_steel_blue_premium);

    // باقي الكود...
}


// ════════════════════════════════════════════════════════════════════
// الطريقة 4: استخدام ContextCompat (الأفضل للتوافق)
// ════════════════════════════════════════════════════════════════════

private void applyBackgroundWithCompat(View view) {
    // استخدام ContextCompat للتوافق مع جميع إصدارات Android
    view.setBackground(
        ContextCompat.getDrawable(this, R.drawable.bg_steel_blue_gradient)
    );
}


// ════════════════════════════════════════════════════════════════════
// الطريقة 5: تبديل الخلفيات ديناميكياً
// ════════════════════════════════════════════════════════════════════

private void switchBackground(View targetView, String backgroundType) {
    switch (backgroundType) {
        case "simple":
            targetView.setBackgroundResource(R.drawable.bg_steel_blue_overlay);
            Toast.makeText(this, "خلفية بسيطة", Toast.LENGTH_SHORT).show();
            break;

        case "gradient":
            targetView.setBackgroundResource(R.drawable.bg_steel_blue_gradient);
            Toast.makeText(this, "خلفية متدرجة", Toast.LENGTH_SHORT).show();
            break;

        case "premium":
            targetView.setBackgroundResource(R.drawable.bg_steel_blue_premium);
            Toast.makeText(this, "خلفية فاخرة", Toast.LENGTH_SHORT).show();
            break;

        default:
            // استخدام لون صلب كـ fallback
            targetView.setBackgroundColor(
                ContextCompat.getColor(this, R.color.steel_blue_dark)
            );
            break;
    }
}


// ════════════════════════════════════════════════════════════════════
// الطريقة 6: تطبيق على Card/Section معين
// ════════════════════════════════════════════════════════════════════

private LinearLayout createStyledCard(String title, String content) {
    LinearLayout card = new LinearLayout(this);
    card.setOrientation(LinearLayout.VERTICAL);
    card.setPadding(20, 20, 20, 20);

    LinearLayout.LayoutParams cardParams = new LinearLayout.LayoutParams(
        ViewGroup.LayoutParams.MATCH_PARENT,
        ViewGroup.LayoutParams.WRAP_CONTENT
    );
    cardParams.setMargins(16, 8, 16, 8);
    card.setLayoutParams(cardParams);

    // ✅ تطبيق خلفية على الـ Card
    card.setBackgroundResource(R.drawable.bg_steel_blue_gradient);

    // إضافة ظل (API 21+)
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
        card.setElevation(8f);
    }

    // إضافة المحتوى...
    TextView titleView = new TextView(this);
    titleView.setText(title);
    titleView.setTextColor(Color.WHITE);
    titleView.setTextSize(18);
    titleView.setTypeface(null, Typeface.BOLD);
    card.addView(titleView);

    return card;
}


// ════════════════════════════════════════════════════════════════════
// الطريقة 7: تحسين الأداء مع Hardware Acceleration
// ════════════════════════════════════════════════════════════════════

private void applyBackgroundWithOptimization(View view) {
    // تطبيق الخلفية
    view.setBackgroundResource(R.drawable.bg_steel_blue_premium);

    // تفعيل Hardware Acceleration للأداء الأفضل
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB) {
        view.setLayerType(View.LAYER_TYPE_HARDWARE, null);
    }
}


// ════════════════════════════════════════════════════════════════════
// الطريقة 8: تطبيق من خلال Theme (في styles.xml/themes.xml)
// ════════════════════════════════════════════════════════════════════

/*
في ملف res/values/themes.xml:

<style name="AppTheme.SteelBlue" parent="Theme.AppCompat.NoActionBar">
    <item name="android:windowBackground">@drawable/bg_steel_blue_premium</item>
    <item name="colorPrimary">@color/steel_blue_dark</item>
    <item name="colorPrimaryDark">@color/steel_blue_darker</item>
</style>

ثم في AndroidManifest.xml:
<activity
    android:name=".MainActivity"
    android:theme="@style/AppTheme.SteelBlue">
</activity>
*/


// ════════════════════════════════════════════════════════════════════
// الطريقة 9: تطبيق مع Animation (انتقال سلس)
// ════════════════════════════════════════════════════════════════════

private void changeBackgroundWithAnimation(final View view, final int newBackgroundRes) {
    // Fade out
    view.animate()
        .alpha(0f)
        .setDuration(200)
        .withEndAction(new Runnable() {
            @Override
            public void run() {
                // تغيير الخلفية
                view.setBackgroundResource(newBackgroundRes);

                // Fade in
                view.animate()
                    .alpha(1f)
                    .setDuration(200)
                    .start();
            }
        })
        .start();
}


// ════════════════════════════════════════════════════════════════════
// مثال كامل: دمج كل شيء في onCreate()
// ════════════════════════════════════════════════════════════════════

@Override
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    // 1. تطبيق خلفية على النافذة
    getWindow().setBackgroundDrawableResource(R.drawable.bg_steel_blue_premium);

    // 2. إنشاء ScrollView
    ScrollView scrollView = new ScrollView(this);
    scrollView.setLayoutParams(new LinearLayout.LayoutParams(
        ViewGroup.LayoutParams.MATCH_PARENT,
        ViewGroup.LayoutParams.MATCH_PARENT
    ));
    scrollView.setFillViewport(true);

    // 3. إنشاء الـ Layout الرئيسي
    LinearLayout mainLayout = new LinearLayout(this);
    mainLayout.setOrientation(LinearLayout.VERTICAL);
    mainLayout.setLayoutParams(new LinearLayout.LayoutParams(
        ViewGroup.LayoutParams.MATCH_PARENT,
        ViewGroup.LayoutParams.WRAP_CONTENT
    ));
    mainLayout.setPadding(16, 16, 16, 16);

    // 4. إضافة شريط الأزرار بخلفية مخصصة
    LinearLayout topButtons = createTopButtonsLayout();
    // الخلفية تم تطبيقها داخل createTopButtonsLayout()
    mainLayout.addView(topButtons);

    // 5. إضافة باقي المحتوى...

    // 6. تطبيق Hardware Acceleration
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB) {
        scrollView.setLayerType(View.LAYER_TYPE_HARDWARE, null);
    }

    scrollView.addView(mainLayout);
    setContentView(scrollView);
}


// ════════════════════════════════════════════════════════════════════
// نصائح إضافية
// ════════════════════════════════════════════════════════════════════

/*
✅ استخدم bg_steel_blue_gradient للشريط العلوي
✅ استخدم bg_steel_blue_premium للخلفية الرئيسية
✅ استخدم bg_steel_blue_overlay للعناصر البسيطة

💡 للتحكم في الشفافية:
   - blue_overlay_ultra (2%)  - شفاف جداً
   - blue_overlay_light (4%)  - خفيف
   - blue_overlay_medium (8%) - متوسط ⭐ الأفضل
   - blue_overlay_strong (12%) - قوي
   - blue_overlay_heavy (16%) - واضح

🔧 لتحسين الأداء:
   - استخدم setLayerType(LAYER_TYPE_HARDWARE, null)
   - تجنب الـ overdraw الزائد
   - اختبر على أجهزة متعددة

📱 للتوافق:
   - استخدم ContextCompat.getDrawable()
   - تحقق من Build.VERSION.SDK_INT
   - اختبر على Android 5.0+
*/


// ════════════════════════════════════════════════════════════════════
// الخلاصة - الكود الموصى به
// ════════════════════════════════════════════════════════════════════

/*
الأبسط والأفضل للاستخدام المباشر:

1. في createTopButtonsLayout():
   layout.setBackgroundResource(R.drawable.bg_steel_blue_gradient);

2. في onCreate() للشاشة الرئيسية:
   getWindow().setBackgroundDrawableResource(R.drawable.bg_steel_blue_premium);

هذا كل شيء! 🎉
*/
