package com.mosaedbarmaja.exchangenew;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

/**
 * مساعد لإنشاء خلفيات مخصصة بسهولة
 * يمكن استخدامه مباشرة في MainActivity
 */
public class BackgroundHelper {

    /**
     * طريقة 1: إضافة Custom Background View كخلفية
     *
     * استخدام في onCreate():
     * LinearLayout mainLayout = findViewById(R.id.main_layout);
     * BackgroundHelper.setCustomBackground(this, mainLayout);
     */
    public static void setCustomBackground(Context context, LinearLayout mainLayout) {
        // إنشاء FrameLayout لحمل الخلفية والمحتوى
        FrameLayout container = new FrameLayout(context);

        // إضافة الخلفية المخصصة
        CustomBackgroundView backgroundView = new CustomBackgroundView(context);
        container.addView(backgroundView, new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT
        ));

        // نقل المحتوى الأصلي فوق الخلفية
        // (يتطلب تعديل في structure الـ XML)
    }

    /**
     * طريقة 2: إنشاء خلفية بتدرج بسيط (بدون Custom View)
     *
     * استخدام:
     * LinearLayout layout = findViewById(R.id.main_layout);
     * layout.setBackground(BackgroundHelper.createSimpleGradient());
     */
    public static Drawable createSimpleGradient() {
        GradientDrawable gradient = new GradientDrawable(
                GradientDrawable.Orientation.TOP_BOTTOM,
                new int[]{
                        android.graphics.Color.parseColor("#1a1d2e"),
                        android.graphics.Color.parseColor("#2c3e50")
                }
        );
        return gradient;
    }

    /**
     * طريقة 3: خلفية بتدرج + زوايا منحنية
     */
    public static Drawable createRoundedGradient(float cornerRadius) {
        GradientDrawable gradient = new GradientDrawable(
                GradientDrawable.Orientation.TL_BR,  // من أعلى يسار لأسفل يمين
                new int[]{
                        android.graphics.Color.parseColor("#1a1d2e"),
                        android.graphics.Color.parseColor("#242837"),
                        android.graphics.Color.parseColor("#2d3548")
                }
        );
        gradient.setCornerRadius(cornerRadius);
        return gradient;
    }

    /**
     * طريقة 4: خلفية متعددة الطبقات (Layered)
     */
    public static Drawable createLayeredBackground() {
        // الطبقة الأولى: تدرج أساسي
        GradientDrawable baseGradient = new GradientDrawable(
                GradientDrawable.Orientation.TOP_BOTTOM,
                new int[]{
                        android.graphics.Color.parseColor("#1a1d2e"),
                        android.graphics.Color.parseColor("#2c3e50")
                }
        );

        // الطبقة الثانية: تدرج شفاف للتأثير
        GradientDrawable overlayGradient = new GradientDrawable(
                GradientDrawable.Orientation.BOTTOM_TOP,
                new int[]{
                        android.graphics.Color.parseColor("#10FFFFFF"),
                        android.graphics.Color.parseColor("#00FFFFFF")
                }
        );

        // دمج الطبقات
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{
                baseGradient,
                overlayGradient
        });

        return layerDrawable;
    }

    /**
     * طريقة 5: خلفية بنمط خطوط قطرية
     */
    public static Drawable createStripedBackground() {
        GradientDrawable gradient = new GradientDrawable();
        gradient.setShape(GradientDrawable.RECTANGLE);
        gradient.setColor(android.graphics.Color.parseColor("#1a1d2e"));

        // يمكن إضافة حدود
        gradient.setStroke(2, android.graphics.Color.parseColor("#2d3548"));

        return gradient;
    }

    /**
     * طريقة 6: خلفية بظل داخلي
     */
    public static Drawable createShadowedBackground() {
        GradientDrawable background = new GradientDrawable();
        background.setColor(android.graphics.Color.parseColor("#1a1d2e"));
        background.setCornerRadius(16f);

        // إضافة ظل (يعمل على API 21+)
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.LOLLIPOP) {
            // الظل يضاف عبر elevation في View نفسه
        }

        return background;
    }
}
