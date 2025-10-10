// ════════════════════════════════════════════════════════════════════
// مثال تطبيقي: كيفية دمج الخلفية المخصصة في MainActivity
// ════════════════════════════════════════════════════════════════════

// في بداية onCreate() في MainActivity.java:

@Override
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    // ═══════════════════════════════════════════════════════════════
    // الطريقة السريعة (موصى بها للبداية)
    // ═══════════════════════════════════════════════════════════════

    // 1. إنشاء الـ Layout الرئيسي كالمعتاد
    ScrollView scrollView = createMainLayout();  // الكود الحالي

    // 2. تطبيق خلفية بتدرج بسيط
    scrollView.setBackground(BackgroundHelper.createSimpleGradient());

    // 3. تعيينه كمحتوى
    setContentView(scrollView);

    // باقي الكود...


    // ═══════════════════════════════════════════════════════════════
    // الطريقة المتقدمة (للرسومات المخصصة)
    // ═══════════════════════════════════════════════════════════════

    /*
    // 1. إنشاء Container
    FrameLayout container = new FrameLayout(this);

    // 2. إضافة الخلفية المخصصة
    CustomBackgroundView backgroundView = new CustomBackgroundView(this);
    container.addView(backgroundView, new FrameLayout.LayoutParams(
        FrameLayout.LayoutParams.MATCH_PARENT,
        FrameLayout.LayoutParams.MATCH_PARENT
    ));

    // 3. إنشاء الـ Layout الرئيسي
    ScrollView scrollView = createMainLayout();

    // 4. إضافة المحتوى فوق الخلفية
    container.addView(scrollView, new FrameLayout.LayoutParams(
        FrameLayout.LayoutParams.MATCH_PARENT,
        FrameLayout.LayoutParams.MATCH_PARENT
    ));

    // 5. تعيين الـ Container
    setContentView(container);
    */
}


// ════════════════════════════════════════════════════════════════════
// أمثلة إضافية - تطبيق خلفيات مختلفة على عناصر محددة
// ════════════════════════════════════════════════════════════════════

// مثال 1: تطبيق خلفية على الـ Card Views
private void applyCardBackgrounds() {
    // للبطاقات الموجودة
    LinearLayout walletSection = findViewById(R.id.wallet_section);
    if (walletSection != null) {
        walletSection.setBackground(BackgroundHelper.createRoundedGradient(16f));
    }
}

// مثال 2: خلفية متحركة/ديناميكية
private void applyAnimatedBackground() {
    CustomBackgroundView backgroundView = new CustomBackgroundView(this);

    // تفعيل Hardware Acceleration للأداء الأفضل
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB) {
        backgroundView.setLayerType(View.LAYER_TYPE_HARDWARE, null);
    }

    // استخدامها...
}

// مثال 3: تبديل الخلفيات ديناميكياً
private void switchBackground(View targetView, String style) {
    switch (style) {
        case "gradient":
            targetView.setBackground(BackgroundHelper.createSimpleGradient());
            break;
        case "layered":
            targetView.setBackground(BackgroundHelper.createLayeredBackground());
            break;
        case "rounded":
            targetView.setBackground(BackgroundHelper.createRoundedGradient(20f));
            break;
        default:
            targetView.setBackgroundColor(Color.parseColor("#1a1d2e"));
    }
}


// ════════════════════════════════════════════════════════════════════
// نصائح للأداء
// ════════════════════════════════════════════════════════════════════

/*
⚡ الأداء:
   - استخدم LAYER_TYPE_HARDWARE للرسومات المعقدة
   - تجنب الرسم المستمر (invalidate()) إلا عند الحاجة
   - استخدم الشفافية بحذر (#10FFFFFF بدلاً من #FFFFFF)

🎨 التصميم:
   - اختبر الخلفية مع جميع العناصر
   - تأكد من وضوح النصوص
   - استخدم التباين المناسب (Contrast)

📱 التوافق:
   - اختبر على Android 5.0+ (API 21)
   - بعض الميزات تحتاج Build.VERSION.SDK_INT checks
*/


// ════════════════════════════════════════════════════════════════════
// الخطوات التالية
// ════════════════════════════════════════════════════════════════════

/*
1. ✅ جرب BackgroundHelper.createSimpleGradient() أولاً
2. إذا أعجبك، جرب createLayeredBackground()
3. للتخصيص الكامل، استخدم CustomBackgroundView
4. عدّل الألوان والأشكال حسب احتياجك
5. اختبر الأداء على الجهاز

راجع ملف: HOW_TO_USE_CUSTOM_BACKGROUNDS.txt
للمزيد من التفاصيل والأمثلة!
*/
