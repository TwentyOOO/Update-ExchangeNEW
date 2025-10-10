package com.mosaedbarmaja.exchangenew;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

/**
 * Custom View للرسم على الخلفية
 * يمكنك تخصيص الرسومات حسب احتياجك
 */
public class CustomBackgroundView extends View {

    private Paint paint;
    private Paint circlePaint;
    private Paint linePaint;
    private Path wavePath;

    public CustomBackgroundView(Context context) {
        super(context);
        init();
    }

    public CustomBackgroundView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    private void init() {
        // Paint للخلفية الرئيسية
        paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(Color.parseColor("#1a1d2e"));

        // Paint للدوائر الزخرفية
        circlePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        circlePaint.setStyle(Paint.Style.FILL);
        circlePaint.setColor(Color.parseColor("#10FFFFFF")); // شفاف

        // Paint للخطوط والأشكال
        linePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        linePaint.setStyle(Paint.Style.STROKE);
        linePaint.setStrokeWidth(2f);
        linePaint.setColor(Color.parseColor("#20FFFFFF"));

        // Path للموجات
        wavePath = new Path();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        int width = getWidth();
        int height = getHeight();

        // ========== 1. الخلفية الأساسية ==========
        canvas.drawColor(Color.parseColor("#1a1d2e"));

        // ========== 2. دوائر زخرفية في الخلفية ==========
        drawDecorativeCircles(canvas, width, height);

        // ========== 3. موجات في الأعلى ==========
        drawTopWaves(canvas, width);

        // ========== 4. شبكة نقاط خفيفة ==========
        drawDotGrid(canvas, width, height);

        // ========== 5. خطوط قطرية خفيفة ==========
        drawDiagonalLines(canvas, width, height);
    }

    /**
     * رسم دوائر زخرفية شفافة
     */
    private void drawDecorativeCircles(Canvas canvas, int width, int height) {
        // دائرة كبيرة في الأعلى يمين
        circlePaint.setColor(Color.parseColor("#10FFFFFF"));
        canvas.drawCircle(width * 0.8f, height * 0.15f, 150, circlePaint);

        // دائرة متوسطة في الأسفل يسار
        circlePaint.setColor(Color.parseColor("#08FFFFFF"));
        canvas.drawCircle(width * 0.2f, height * 0.85f, 100, circlePaint);

        // دائرة صغيرة في المنتصف
        circlePaint.setColor(Color.parseColor("#05FFFFFF"));
        canvas.drawCircle(width * 0.5f, height * 0.5f, 80, circlePaint);
    }

    /**
     * رسم موجات في الأعلى
     */
    private void drawTopWaves(Canvas canvas, int width) {
        wavePath.reset();
        wavePath.moveTo(0, 100);

        // إنشاء موجة منحنية
        for (int i = 0; i <= width; i += 100) {
            wavePath.quadTo(i + 50, 50, i + 100, 100);
        }

        wavePath.lineTo(width, 0);
        wavePath.lineTo(0, 0);
        wavePath.close();

        Paint wavePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        wavePaint.setStyle(Paint.Style.FILL);
        wavePaint.setColor(Color.parseColor("#15FFFFFF"));
        canvas.drawPath(wavePath, wavePaint);
    }

    /**
     * رسم شبكة نقاط خفيفة
     */
    private void drawDotGrid(Canvas canvas, int width, int height) {
        Paint dotPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        dotPaint.setStyle(Paint.Style.FILL);
        dotPaint.setColor(Color.parseColor("#0AFFFFFF"));

        int spacing = 50;
        for (int x = spacing; x < width; x += spacing) {
            for (int y = spacing; y < height; y += spacing) {
                canvas.drawCircle(x, y, 2, dotPaint);
            }
        }
    }

    /**
     * رسم خطوط قطرية خفيفة
     */
    private void drawDiagonalLines(Canvas canvas, int width, int height) {
        linePaint.setStrokeWidth(1f);
        linePaint.setColor(Color.parseColor("#08FFFFFF"));

        int spacing = 100;
        for (int i = -height; i < width; i += spacing) {
            canvas.drawLine(i, 0, i + height, height, linePaint);
        }
    }

    /**
     * رسم أشكال هندسية مخصصة
     */
    public void drawCustomShapes(Canvas canvas, int width, int height) {
        // مثلث في الزاوية
        Path trianglePath = new Path();
        trianglePath.moveTo(0, 0);
        trianglePath.lineTo(200, 0);
        trianglePath.lineTo(0, 200);
        trianglePath.close();

        Paint trianglePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        trianglePaint.setStyle(Paint.Style.FILL);
        trianglePaint.setColor(Color.parseColor("#10FFD700"));
        canvas.drawPath(trianglePath, trianglePaint);

        // مستطيل مستدير في الأسفل
        RectF rect = new RectF(width - 250, height - 150, width - 50, height - 50);
        Paint rectPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        rectPaint.setStyle(Paint.Style.FILL);
        rectPaint.setColor(Color.parseColor("#0F3498DB"));
        canvas.drawRoundRect(rect, 20, 20, rectPaint);
    }
}
