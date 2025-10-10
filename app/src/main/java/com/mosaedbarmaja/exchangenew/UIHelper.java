package com.mosaedbarmaja.exchangenew;

import android.content.Context;
import android.graphics.Color;
import androidx.core.content.ContextCompat;

/**
 * فئة مساعدة لإدارة ألوان وأنماط واجهة المستخدم
 * UI Helper class for managing colors and styles
 */
public class UIHelper {

    private Context context;

    public UIHelper(Context context) {
        this.context = context;
    }

    // --- الألوان الأساسية / Background Colors ---
    public int getBackgroundDark() {
        return ContextCompat.getColor(context, R.color.background_dark);
    }

    public int getBackgroundCard() {
        return ContextCompat.getColor(context, R.color.background_card);
    }

    public int getBackgroundSurface() {
        return ContextCompat.getColor(context, R.color.background_surface);
    }

    // --- الألوان الأساسية للثيم / Theme Primary Colors ---
    public int getPrimaryGold() {
        return ContextCompat.getColor(context, R.color.primary_gold);
    }

    public int getPrimaryGoldDark() {
        return ContextCompat.getColor(context, R.color.primary_gold_dark);
    }

    public int getAccentBlue() {
        return ContextCompat.getColor(context, R.color.accent_blue);
    }

    public int getAccentPurple() {
        return ContextCompat.getColor(context, R.color.accent_purple);
    }

    // --- ألوان النصوص / Text Colors ---
    public int getTextPrimary() {
        return ContextCompat.getColor(context, R.color.text_primary);
    }

    public int getTextSecondary() {
        return ContextCompat.getColor(context, R.color.text_secondary);
    }

    public int getTextHint() {
        return ContextCompat.getColor(context, R.color.text_hint);
    }

    // --- ألوان العمليات / Operation Colors ---
    public int getSuccessGreen() {
        return ContextCompat.getColor(context, R.color.success_green);
    }

    public int getErrorRed() {
        return ContextCompat.getColor(context, R.color.error_red);
    }

    public int getWarningOrange() {
        return ContextCompat.getColor(context, R.color.warning_orange);
    }

    public int getInfoBlue() {
        return ContextCompat.getColor(context, R.color.info_blue);
    }

    // --- ألوان العملات / Currency Colors ---
    public int getAedColor() {
        return ContextCompat.getColor(context, R.color.aed_color);
    }

    public int getUsdtColor() {
        return ContextCompat.getColor(context, R.color.usdt_color);
    }

    public int getYohoColor() {
        return ContextCompat.getColor(context, R.color.yoho_color);
    }

    // --- ألوان الأزرار / Button Colors ---
    public int getButtonAdd() {
        return ContextCompat.getColor(context, R.color.button_add);
    }

    public int getButtonSubtract() {
        return ContextCompat.getColor(context, R.color.button_subtract);
    }

    public int getButtonNeutral() {
        return ContextCompat.getColor(context, R.color.button_neutral);
    }

    public int getButtonAgentSale() {
        return ContextCompat.getColor(context, R.color.button_agent_sale);
    }

    public int getButtonAgentAdjust() {
        return ContextCompat.getColor(context, R.color.button_agent_adjust);
    }

    // --- ألوان الحدود / Border Colors ---
    public int getBorderLight() {
        return ContextCompat.getColor(context, R.color.border_light);
    }

    public int getDivider() {
        return ContextCompat.getColor(context, R.color.divider);
    }

    // --- الألوان الشفافة / Overlay Colors ---
    public int getOverlayDark() {
        return ContextCompat.getColor(context, R.color.overlay_dark);
    }

    public int getOverlayLight() {
        return ContextCompat.getColor(context, R.color.overlay_light);
    }

    // --- الأحجام / Dimensions ---
    public float getTextSizeTitle() {
        return context.getResources().getDimension(R.dimen.text_size_title);
    }

    public float getTextSizeSubtitle() {
        return context.getResources().getDimension(R.dimen.text_size_subtitle);
    }

    public float getTextSizeBody() {
        return context.getResources().getDimension(R.dimen.text_size_body);
    }

    public float getTextSizeCaption() {
        return context.getResources().getDimension(R.dimen.text_size_caption);
    }

    public float getTextSizeLargeNumber() {
        return context.getResources().getDimension(R.dimen.text_size_large_number);
    }

    // --- المسافات / Margins ---
    public int getMarginNormal() {
        return (int) context.getResources().getDimension(R.dimen.margin_normal);
    }

    public int getMarginLarge() {
        return (int) context.getResources().getDimension(R.dimen.margin_large);
    }

    public int getMarginSmall() {
        return (int) context.getResources().getDimension(R.dimen.margin_small);
    }

    // --- Padding ---
    public int getPaddingNormal() {
        return (int) context.getResources().getDimension(R.dimen.padding_normal);
    }

    public int getPaddingLarge() {
        return (int) context.getResources().getDimension(R.dimen.padding_large);
    }

    public int getPaddingSmall() {
        return (int) context.getResources().getDimension(R.dimen.padding_small);
    }

    // --- أنصاف الأقطار / Corner Radius ---
    public int getCornerRadiusMedium() {
        return (int) context.getResources().getDimension(R.dimen.corner_radius_medium);
    }

    public int getCornerRadiusLarge() {
        return (int) context.getResources().getDimension(R.dimen.corner_radius_large);
    }

    // --- ارتفاع البطاقات / Card Elevation ---
    public int getCardElevationNormal() {
        return (int) context.getResources().getDimension(R.dimen.card_elevation_normal);
    }

    // --- الأيقونات Emoji للعملات / Currency Emoji Icons ---
    public String getAedEmoji() {
        return "💵";
    }

    public String getUsdtEmoji() {
        return "💲";
    }

    public String getYohoEmoji() {
        return "💰";
    }

    public String getWalletEmoji() {
        return "🏦";
    }

    public String getAgentEmoji() {
        return "👤";
    }

    public String getAddEmoji() {
        return "➕";
    }

    public String getSubtractEmoji() {
        return "➖";
    }

    public String getChartEmoji() {
        return "📊";
    }

    public String getRecordsEmoji() {
        return "📜";
    }

    public String getCalculatorEmoji() {
        return "🧮";
    }

    public String getRefreshEmoji() {
        return "🔄";
    }

    // --- ألوان إضافية مفقودة / Additional Missing Colors ---
    public int getDarkBg() {
        return ContextCompat.getColor(context, R.color.dark_bg);
    }

    public int getGrayLight() {
        return ContextCompat.getColor(context, R.color.gray_light);
    }

    public int getGrayBorder() {
        return ContextCompat.getColor(context, R.color.gray_border);
    }

    public int getGrayInactive() {
        return ContextCompat.getColor(context, R.color.gray_inactive);
    }

    public int getGrayText() {
        return ContextCompat.getColor(context, R.color.gray_text);
    }

    public int getGrayButton() {
        return ContextCompat.getColor(context, R.color.gray_button);
    }

    public int getWhatsAppGreen() {
        return ContextCompat.getColor(context, R.color.whatsapp_green);
    }

    public int getChartBlue() {
        return ContextCompat.getColor(context, R.color.chart_blue);
    }

    public int getSelectionBlue() {
        return ContextCompat.getColor(context, R.color.selection_blue);
    }

    public int getBackgroundLight() {
        return ContextCompat.getColor(context, R.color.background_light);
    }

    // --- أحجام نصوص موحدة / Unified Text Sizes ---
    public static final int TEXT_SIZE_HUGE = 24;
    public static final int TEXT_SIZE_XLARGE = 22;
    public static final int TEXT_SIZE_LARGE = 20;
    public static final int TEXT_SIZE_MEDIUM = 18;
    public static final int TEXT_SIZE_NORMAL = 16;
    public static final int TEXT_SIZE_SMALL = 14;
    public static final int TEXT_SIZE_TINY = 12;

    // --- مسافات موحدة / Unified Spacing ---
    public static final int SPACING_TINY = 4;
    public static final int SPACING_SMALL = 8;
    public static final int SPACING_MEDIUM = 16;
    public static final int SPACING_LARGE = 24;
    public static final int SPACING_XLARGE = 32;
    public static final int SPACING_XXLARGE = 48;

    // --- دالة مساعدة parseDoubleSafe ---
    public static double parseDoubleSafe(String value) {
        if (value == null || value.trim().isEmpty()) {
            return 0.0;
        }
        try {
            return Double.parseDouble(value.trim());
        } catch (NumberFormatException e) {
            return 0.0;
        }
    }
}
