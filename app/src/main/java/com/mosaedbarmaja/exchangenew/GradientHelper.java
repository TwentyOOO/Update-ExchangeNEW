package com.mosaedbarmaja.exchangenew;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;

/**
 * فئة مساعدة لإنشاء تدرجات لونية وأشكال احترافية
 * Helper class for creating gradients and modern shapes
 */
public class GradientHelper {

    private Context context;

    public GradientHelper(Context context) {
        this.context = context;
    }

    /**
     * إنشاء تدرج لوني من لونين
     */
    public GradientDrawable createGradient(int startColor, int endColor, float cornerRadius) {
        GradientDrawable gradient = new GradientDrawable(
            GradientDrawable.Orientation.TL_BR,
            new int[]{startColor, endColor}
        );
        gradient.setCornerRadius(cornerRadius);
        return gradient;
    }

    /**
     * إنشاء تدرج لوني بثلاثة ألوان
     */
    public GradientDrawable createGradient(int startColor, int centerColor, int endColor, float cornerRadius) {
        GradientDrawable gradient = new GradientDrawable(
            GradientDrawable.Orientation.TL_BR,
            new int[]{startColor, centerColor, endColor}
        );
        gradient.setCornerRadius(cornerRadius);
        return gradient;
    }

    /**
     * بطاقة ذهبية متدرجة (للمحفظة الرئيسية)
     */
    public GradientDrawable createGoldCard() {
        return createGradient(
            Color.parseColor("#FFD700"),
            Color.parseColor("#FFC107"),
            Color.parseColor("#FF9800"),
            dpToPx(20)
        );
    }

    /**
     * بطاقة خضراء متدرجة (للدرهم AED)
     */
    public GradientDrawable createGreenCard() {
        return createGradient(
            Color.parseColor("#00D9A3"),
            Color.parseColor("#00B4D8"),
            dpToPx(20)
        );
    }

    /**
     * بطاقة زرقاء متدرجة (للدولار USDT)
     */
    public GradientDrawable createBlueCard() {
        return createGradient(
            Color.parseColor("#64B5F6"),
            Color.parseColor("#2196F3"),
            dpToPx(20)
        );
    }

    /**
     * بطاقة بنفسجية متدرجة (للـ YOHO)
     */
    public GradientDrawable createPurpleCard() {
        return createGradient(
            Color.parseColor("#9C27B0"),
            Color.parseColor("#E91E63"),
            dpToPx(20)
        );
    }

    /**
     * بطاقة برتقالية متدرجة (للوكلاء)
     */
    public GradientDrawable createOrangeCard() {
        return createGradient(
            Color.parseColor("#FF9800"),
            Color.parseColor("#FF5722"),
            dpToPx(20)
        );
    }

    /**
     * بطاقة داكنة مع ظل (للخلفيات)
     */
    public GradientDrawable createDarkCard() {
        GradientDrawable card = new GradientDrawable();
        card.setColor(Color.parseColor("#2A2A3E"));
        card.setCornerRadius(dpToPx(20));
        card.setStroke(dpToPx(1), Color.parseColor("#4A4A60"));
        return card;
    }

    /**
     * بطاقة مع ظل وارتفاع
     */
    public LayerDrawable createCardWithShadow(int cardColor, float cornerRadius) {
        // Shadow layer
        GradientDrawable shadow = new GradientDrawable();
        shadow.setColor(Color.parseColor("#40000000"));
        shadow.setCornerRadius(cornerRadius);

        // Card layer
        GradientDrawable card = new GradientDrawable();
        card.setColor(cardColor);
        card.setCornerRadius(cornerRadius);

        Drawable[] layers = {shadow, card};
        LayerDrawable layerDrawable = new LayerDrawable(layers);

        // Offset for shadow effect
        int offset = dpToPx(4);
        layerDrawable.setLayerInset(1, 0, 0, offset, offset);

        return layerDrawable;
    }

    /**
     * بطاقة متدرجة مع ظل
     */
    public LayerDrawable createGradientCardWithShadow(int startColor, int endColor, float cornerRadius) {
        // Shadow layer
        GradientDrawable shadow = new GradientDrawable();
        shadow.setColor(Color.parseColor("#40000000"));
        shadow.setCornerRadius(cornerRadius);

        // Gradient card layer
        GradientDrawable gradientCard = createGradient(startColor, endColor, cornerRadius);

        Drawable[] layers = {shadow, gradientCard};
        LayerDrawable layerDrawable = new LayerDrawable(layers);

        // Offset for shadow effect
        int offset = dpToPx(4);
        layerDrawable.setLayerInset(1, 0, 0, offset, offset);

        return layerDrawable;
    }

    /**
     * زر دائري مع تأثير Ripple
     */
    public GradientDrawable createRoundButton(int color, float cornerRadius) {
        GradientDrawable button = new GradientDrawable();
        button.setColor(color);
        button.setCornerRadius(cornerRadius);
        return button;
    }

    /**
     * حقل إدخال حديث مع حدود
     */
    public GradientDrawable createModernInputField() {
        GradientDrawable inputField = new GradientDrawable();
        inputField.setColor(Color.parseColor("#363650"));
        inputField.setCornerRadius(dpToPx(16));
        inputField.setStroke(dpToPx(2), Color.parseColor("#4A4A60"));
        return inputField;
    }

    /**
     * حقل إدخال نشط (عند التركيز)
     */
    public GradientDrawable createActiveInputField() {
        GradientDrawable inputField = new GradientDrawable();
        inputField.setColor(Color.parseColor("#363650"));
        inputField.setCornerRadius(dpToPx(16));
        inputField.setStroke(dpToPx(2), Color.parseColor("#FFD700"));
        return inputField;
    }

    /**
     * خلفية متدرجة للشاشة الرئيسية
     */
    public GradientDrawable createMainBackground() {
        return createGradient(
            Color.parseColor("#1a1a2e"),
            Color.parseColor("#16213e"),
            Color.parseColor("#0f3460"),
            0
        );
    }

    /**
     * تحويل dp إلى pixels
     */
    private int dpToPx(int dp) {
        float density = context.getResources().getDisplayMetrics().density;
        return Math.round(dp * density);
    }

    /**
     * إنشاء شارة (Badge) دائرية صغيرة
     */
    public GradientDrawable createBadge(int color) {
        GradientDrawable badge = new GradientDrawable();
        badge.setShape(GradientDrawable.OVAL);
        badge.setColor(color);
        return badge;
    }

    /**
     * إنشاء خط فاصل (Divider)
     */
    public GradientDrawable createDivider(int color, int height) {
        GradientDrawable divider = new GradientDrawable();
        divider.setColor(color);
        divider.setSize(-1, dpToPx(height));
        return divider;
    }
}
