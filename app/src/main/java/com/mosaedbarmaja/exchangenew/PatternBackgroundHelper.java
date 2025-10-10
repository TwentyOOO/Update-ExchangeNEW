package com.mosaedbarmaja.exchangenew;

import android.content.Context;
import android.view.View;
import androidx.core.content.ContextCompat;

/**
 * مساعد تطبيق الخلفيات المزخرفة
 * Background Pattern Helper - Apply decorated backgrounds easily
 */
public class PatternBackgroundHelper {

    /**
     * أنواع الخلفيات المتوفرة
     */
    public enum PatternType {
        PREMIUM_PATTERN,    // النمط الفاخر - الأفضل
        WHATSAPP_STYLE,     // نمط WhatsApp الكلاسيكي
        GRADIENT_WAVES,     // موجات متدرجة
        DOTS_PATTERN,       // نقاط منتشرة
        DIAGONAL_LINES      // خطوط قطرية
    }

    /**
     * تطبيق خلفية مزخرفة على أي View
     * 
     * @param view العنصر المراد تطبيق الخلفية عليه
     * @param patternType نوع النمط المطلوب
     */
    public static void applyPattern(View view, PatternType patternType) {
        if (view == null) return;
        
        Context context = view.getContext();
        int drawableId = getDrawableId(patternType);
        
        if (drawableId != 0) {
            view.setBackground(ContextCompat.getDrawable(context, drawableId));
        }
    }

    /**
     * تطبيق النمط الفاخر (الافتراضي) - الموصى به
     * 
     * @param view العنصر المراد تطبيق الخلفية عليه
     */
    public static void applyPremiumPattern(View view) {
        applyPattern(view, PatternType.PREMIUM_PATTERN);
    }

    /**
     * تطبيق نمط WhatsApp الكلاسيكي
     * 
     * @param view العنصر المراد تطبيق الخلفية عليه
     */
    public static void applyWhatsAppPattern(View view) {
        applyPattern(view, PatternType.WHATSAPP_STYLE);
    }

    /**
     * الحصول على معرّف الـ drawable حسب النوع
     */
    private static int getDrawableId(PatternType patternType) {
        switch (patternType) {
            case PREMIUM_PATTERN:
                return R.drawable.bg_premium_pattern;
            case WHATSAPP_STYLE:
                return R.drawable.bg_pattern_whatsapp;
            case GRADIENT_WAVES:
                return R.drawable.bg_gradient_waves;
            case DOTS_PATTERN:
                return R.drawable.bg_dots_pattern;
            case DIAGONAL_LINES:
                return R.drawable.bg_diagonal_lines;
            default:
                return R.drawable.bg_premium_pattern;
        }
    }

    /**
     * تطبيق خلفية على كامل النشاط (Activity)
     * 
     * @param context سياق النشاط
     * @param rootView العنصر الجذر للشاشة (مثل: findViewById(android.R.id.content))
     * @param patternType نوع النمط
     */
    public static void applyToActivity(Context context, View rootView, PatternType patternType) {
        if (rootView == null) return;
        applyPattern(rootView, patternType);
    }

    /**
     * تطبيق النمط الفاخر على كامل النشاط
     * 
     * @param context سياق النشاط
     * @param rootView العنصر الجذر
     */
    public static void applyPremiumToActivity(Context context, View rootView) {
        applyToActivity(context, rootView, PatternType.PREMIUM_PATTERN);
    }
}

