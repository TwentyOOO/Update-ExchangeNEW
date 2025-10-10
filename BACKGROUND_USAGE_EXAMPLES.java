package com.mosaedbarmaja.exchangenew;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import java.util.Calendar;

/**
 * 🎨 أمثلة عملية لاستخدام الخلفيات المزخرفة
 * Practical Examples for Using Pattern Backgrounds
 * 
 * هذا ملف للمرجع فقط - انسخ الكود الذي تحتاجه!
 * This is a reference file - copy the code you need!
 */
public class BACKGROUND_USAGE_EXAMPLES {

    // ═══════════════════════════════════════════════════════════
    // 1️⃣ مثال بسيط: تطبيق خلفية واحدة
    // Simple Example: Apply one background
    // ═══════════════════════════════════════════════════════════
    
    public void example1_SimpleUsage(AppCompatActivity activity) {
        // الطريقة 1: باستخدام Helper (موصى به)
        LinearLayout mainLayout = activity.findViewById(R.id.main_layout);
        PatternBackgroundHelper.applyPremiumPattern(mainLayout);
        
        // الطريقة 2: مباشرة
        mainLayout.setBackgroundResource(R.drawable.bg_premium_pattern);
    }

    // ═══════════════════════════════════════════════════════════
    // 2️⃣ مثال: تطبيق خلفيات مختلفة على شاشات مختلفة
    // Example: Different backgrounds for different screens
    // ═══════════════════════════════════════════════════════════
    
    // MainActivity - الشاشة الرئيسية
    public static class ExampleMainActivity extends AppCompatActivity {
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);
            
            // تطبيق النمط الفاخر على الشاشة الرئيسية
            LinearLayout mainLayout = findViewById(R.id.main_layout);
            PatternBackgroundHelper.applyPremiumPattern(mainLayout);
        }
    }
    
    // ChatActivity - شاشة الدردشة
    public static class ExampleChatActivity extends AppCompatActivity {
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_chat);
            
            // تطبيق نمط واتساب على شاشة الدردشة
            LinearLayout chatLayout = findViewById(R.id.chat_layout);
            PatternBackgroundHelper.applyWhatsAppPattern(chatLayout);
        }
    }
    
    // SettingsActivity - شاشة الإعدادات
    public static class ExampleSettingsActivity extends AppCompatActivity {
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_settings);
            
            // تطبيق الخطوط القطرية على الإعدادات
            LinearLayout settingsLayout = findViewById(R.id.settings_layout);
            PatternBackgroundHelper.applyPattern(
                settingsLayout,
                PatternBackgroundHelper.PatternType.DIAGONAL_LINES
            );
        }
    }

    // ═══════════════════════════════════════════════════════════
    // 3️⃣ مثال: تطبيق ديناميكي حسب الوقت
    // Example: Dynamic background based on time
    // ═══════════════════════════════════════════════════════════
    
    public static class ExampleDynamicBackgroundActivity extends AppCompatActivity {
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);
            
            LinearLayout mainLayout = findViewById(R.id.main_layout);
            applyTimeBasedBackground(mainLayout);
        }
        
        private void applyTimeBasedBackground(LinearLayout layout) {
            Calendar calendar = Calendar.getInstance();
            int hour = calendar.get(Calendar.HOUR_OF_DAY);
            
            if (hour >= 6 && hour < 12) {
                // صباحاً (6 صباحاً - 12 ظهراً): نمط ناعم
                PatternBackgroundHelper.applyPattern(
                    layout,
                    PatternBackgroundHelper.PatternType.GRADIENT_WAVES
                );
            } else if (hour >= 12 && hour < 18) {
                // ظهراً (12 ظهراً - 6 مساءً): نمط نشط
                PatternBackgroundHelper.applyPattern(
                    layout,
                    PatternBackgroundHelper.PatternType.DOTS_PATTERN
                );
            } else if (hour >= 18 && hour < 22) {
                // مساءً (6 مساءً - 10 مساءً): نمط فاخر
                PatternBackgroundHelper.applyPremiumPattern(layout);
            } else {
                // ليلاً (10 مساءً - 6 صباحاً): نمط هادئ
                PatternBackgroundHelper.applyPattern(
                    layout,
                    PatternBackgroundHelper.PatternType.WHATSAPP_STYLE
                );
            }
        }
    }

    // ═══════════════════════════════════════════════════════════
    // 4️⃣ مثال: تطبيق حسب حالة المستخدم
    // Example: Background based on user state
    // ═══════════════════════════════════════════════════════════
    
    public static class ExampleUserStateActivity extends AppCompatActivity {
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);
            
            LinearLayout mainLayout = findViewById(R.id.main_layout);
            
            // مثال: حسب نوع المستخدم
            String userType = getUserType(); // دالة افتراضية
            
            switch (userType) {
                case "premium":
                    // مستخدم مميز: نمط فاخر
                    PatternBackgroundHelper.applyPremiumPattern(mainLayout);
                    break;
                case "standard":
                    // مستخدم عادي: نمط موجات
                    PatternBackgroundHelper.applyPattern(
                        mainLayout,
                        PatternBackgroundHelper.PatternType.GRADIENT_WAVES
                    );
                    break;
                case "free":
                    // مستخدم مجاني: نمط بسيط
                    PatternBackgroundHelper.applyWhatsAppPattern(mainLayout);
                    break;
                default:
                    // افتراضي
                    PatternBackgroundHelper.applyPremiumPattern(mainLayout);
            }
        }
        
        private String getUserType() {
            // هنا تضع كود الحصول على نوع المستخدم
            return "premium"; // مثال
        }
    }

    // ═══════════════════════════════════════════════════════════
    // 5️⃣ مثال: تطبيق على كامل الشاشة
    // Example: Apply to entire screen (full window)
    // ═══════════════════════════════════════════════════════════
    
    public static class ExampleFullScreenActivity extends AppCompatActivity {
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            
            // تطبيق قبل setContentView للحصول على كامل الشاشة
            getWindow().setBackgroundDrawableResource(R.drawable.bg_premium_pattern);
            
            setContentView(R.layout.activity_main);
            
            // أو بعد setContentView
            View rootView = findViewById(android.R.id.content);
            PatternBackgroundHelper.applyPremiumToActivity(this, rootView);
        }
    }

    // ═══════════════════════════════════════════════════════════
    // 6️⃣ مثال: تبديل الخلفية بزر
    // Example: Switch background with button
    // ═══════════════════════════════════════════════════════════
    
    public static class ExampleSwitchableBackgroundActivity extends AppCompatActivity {
        private LinearLayout mainLayout;
        private int currentPatternIndex = 0;
        private PatternBackgroundHelper.PatternType[] patterns = {
            PatternBackgroundHelper.PatternType.PREMIUM_PATTERN,
            PatternBackgroundHelper.PatternType.WHATSAPP_STYLE,
            PatternBackgroundHelper.PatternType.GRADIENT_WAVES,
            PatternBackgroundHelper.PatternType.DOTS_PATTERN,
            PatternBackgroundHelper.PatternType.DIAGONAL_LINES
        };
        
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);
            
            mainLayout = findViewById(R.id.main_layout);
            
            // زر تغيير الخلفية
            findViewById(R.id.change_background_button).setOnClickListener(v -> {
                switchToNextPattern();
            });
            
            // تطبيق الخلفية الأولى
            PatternBackgroundHelper.applyPremiumPattern(mainLayout);
        }
        
        private void switchToNextPattern() {
            currentPatternIndex = (currentPatternIndex + 1) % patterns.length;
            PatternBackgroundHelper.applyPattern(mainLayout, patterns[currentPatternIndex]);
        }
    }

    // ═══════════════════════════════════════════════════════════
    // 7️⃣ مثال: تطبيق على Fragment
    // Example: Apply to Fragment
    // ═══════════════════════════════════════════════════════════
    
    public static class ExampleFragment extends androidx.fragment.app.Fragment {
        @Override
        public View onCreateView(
            android.view.LayoutInflater inflater,
            android.view.ViewGroup container,
            Bundle savedInstanceState
        ) {
            View view = inflater.inflate(R.layout.fragment_example, container, false);
            
            // تطبيق الخلفية على الـ Fragment
            LinearLayout fragmentLayout = view.findViewById(R.id.fragment_layout);
            PatternBackgroundHelper.applyPattern(
                fragmentLayout,
                PatternBackgroundHelper.PatternType.GRADIENT_WAVES
            );
            
            return view;
        }
    }

    // ═══════════════════════════════════════════════════════════
    // 8️⃣ مثال: تطبيق مع حفظ التفضيلات
    // Example: Apply with saved preferences
    // ═══════════════════════════════════════════════════════════
    
    public static class ExamplePreferencesActivity extends AppCompatActivity {
        private static final String PREFS_NAME = "BackgroundPrefs";
        private static final String KEY_PATTERN = "selected_pattern";
        
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);
            
            LinearLayout mainLayout = findViewById(R.id.main_layout);
            
            // قراءة التفضيل المحفوظ
            String savedPattern = getSharedPreferences(PREFS_NAME, MODE_PRIVATE)
                .getString(KEY_PATTERN, "PREMIUM_PATTERN");
            
            // تطبيق الخلفية المحفوظة
            PatternBackgroundHelper.PatternType patternType = 
                PatternBackgroundHelper.PatternType.valueOf(savedPattern);
            PatternBackgroundHelper.applyPattern(mainLayout, patternType);
        }
        
        // دالة لحفظ التفضيل
        private void savePatternPreference(PatternBackgroundHelper.PatternType pattern) {
            getSharedPreferences(PREFS_NAME, MODE_PRIVATE)
                .edit()
                .putString(KEY_PATTERN, pattern.name())
                .apply();
        }
    }

    // ═══════════════════════════════════════════════════════════
    // 9️⃣ مثال: تطبيق مع تأثير الانتقال (Fade)
    // Example: Apply with fade transition
    // ═══════════════════════════════════════════════════════════
    
    public static class ExampleAnimatedBackgroundActivity extends AppCompatActivity {
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);
            
            LinearLayout mainLayout = findViewById(R.id.main_layout);
            
            // تطبيق مع تأثير التلاشي
            applyPatternWithFade(mainLayout, 
                PatternBackgroundHelper.PatternType.PREMIUM_PATTERN);
        }
        
        private void applyPatternWithFade(
            LinearLayout layout, 
            PatternBackgroundHelper.PatternType pattern
        ) {
            // إخفاء تدريجي
            layout.animate()
                .alpha(0f)
                .setDuration(200)
                .withEndAction(() -> {
                    // تطبيق الخلفية الجديدة
                    PatternBackgroundHelper.applyPattern(layout, pattern);
                    // إظهار تدريجي
                    layout.animate()
                        .alpha(1f)
                        .setDuration(200)
                        .start();
                })
                .start();
        }
    }

    // ═══════════════════════════════════════════════════════════
    // 🔟 مثال: تطبيق حسب اللغة أو الموضوع
    // Example: Apply based on locale or theme
    // ═══════════════════════════════════════════════════════════
    
    public static class ExampleThemeBasedActivity extends AppCompatActivity {
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);
            
            LinearLayout mainLayout = findViewById(R.id.main_layout);
            
            // حسب الوضع الليلي/النهاري
            boolean isDarkMode = isDarkModeEnabled();
            
            if (isDarkMode) {
                // الوضع الليلي: خلفية داكنة
                PatternBackgroundHelper.applyPattern(
                    mainLayout,
                    PatternBackgroundHelper.PatternType.PREMIUM_PATTERN
                );
            } else {
                // الوضع النهاري: خلفية أفتح
                PatternBackgroundHelper.applyPattern(
                    mainLayout,
                    PatternBackgroundHelper.PatternType.GRADIENT_WAVES
                );
            }
        }
        
        private boolean isDarkModeEnabled() {
            // فحص الوضع الليلي
            int nightModeFlags = getResources().getConfiguration().uiMode 
                & android.content.res.Configuration.UI_MODE_NIGHT_MASK;
            return nightModeFlags == android.content.res.Configuration.UI_MODE_NIGHT_YES;
        }
    }

    // ═══════════════════════════════════════════════════════════
    // 📝 ملاحظات مهمة / Important Notes
    // ═══════════════════════════════════════════════════════════
    
    /*
     * ✅ أفضل الممارسات:
     * 
     * 1. استخدم PatternBackgroundHelper بدلاً من setBackgroundResource
     *    للحصول على كود أنظف وأسهل في الصيانة
     * 
     * 2. طبّق الخلفية في onCreate() بعد setContentView()
     * 
     * 3. لا تطبق خلفيات مختلفة على عناصر صغيرة داخل نفس الشاشة
     * 
     * 4. اختبر المظهر على أجهزة مختلفة
     * 
     * 5. تأكد من أن النصوص مقروءة فوق الخلفية
     * 
     * ⚠️ تجنب:
     * 
     * 1. تطبيق خلفيات متعددة على نفس العنصر
     * 2. تغيير الخلفية بشكل متكرر (يؤثر على الأداء)
     * 3. استخدام خلفيات مختلفة جداً في نفس التطبيق
     */
}

