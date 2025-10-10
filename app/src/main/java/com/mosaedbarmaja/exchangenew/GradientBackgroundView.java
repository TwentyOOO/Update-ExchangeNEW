package com.mosaedbarmaja.exchangenew;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;

/**
 * خلفية بتدرجات لونية متقدمة
 */
public class GradientBackgroundView extends View {

    private Paint gradientPaint;

    public GradientBackgroundView(Context context) {
        super(context);
        init();
    }

    public GradientBackgroundView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    private void init() {
        gradientPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        int width = getWidth();
        int height = getHeight();

        // ========== تدرج خطي من أعلى لأسفل ==========
        drawLinearGradient(canvas, width, height);

        // ========== تدرج دائري في المنتصف ==========
        drawRadialGradient(canvas, width, height);
    }

    /**
     * تدرج لوني خطي
     */
    private void drawLinearGradient(Canvas canvas, int width, int height) {
        LinearGradient linearGradient = new LinearGradient(
                0, 0,                    // نقطة البداية
                0, height,               // نقطة النهاية
                Color.parseColor("#1a1d2e"),  // اللون الأول
                Color.parseColor("#2c3e50"),  // اللون الثاني
                Shader.TileMode.CLAMP
        );

        gradientPaint.setShader(linearGradient);
        canvas.drawRect(0, 0, width, height, gradientPaint);
    }

    /**
     * تدرج دائري (Radial)
     */
    private void drawRadialGradient(Canvas canvas, int width, int height) {
        RadialGradient radialGradient = new RadialGradient(
                width * 0.5f,           // X center
                height * 0.3f,          // Y center
                300,                    // نصف القطر
                Color.parseColor("#30FFD700"),  // اللون المركزي (ذهبي شفاف)
                Color.parseColor("#00FFD700"),  // اللون الخارجي (شفاف تماماً)
                Shader.TileMode.CLAMP
        );

        Paint radialPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        radialPaint.setShader(radialGradient);
        canvas.drawCircle(width * 0.5f, height * 0.3f, 300, radialPaint);
    }

    /**
     * تدرج متعدد الألوان
     */
    private void drawMultiColorGradient(Canvas canvas, int width, int height) {
        int[] colors = {
                Color.parseColor("#1a1d2e"),
                Color.parseColor("#242837"),
                Color.parseColor("#2d3548"),
                Color.parseColor("#2c3e50")
        };

        float[] positions = {0.0f, 0.33f, 0.66f, 1.0f};

        LinearGradient multiGradient = new LinearGradient(
                0, 0, 0, height,
                colors,
                positions,
                Shader.TileMode.CLAMP
        );

        gradientPaint.setShader(multiGradient);
        canvas.drawRect(0, 0, width, height, gradientPaint);
    }
}
