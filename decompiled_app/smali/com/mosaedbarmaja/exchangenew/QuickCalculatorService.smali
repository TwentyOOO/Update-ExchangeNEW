.class public Lcom/mosaedbarmaja/exchangenew/QuickCalculatorService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "QuickCalculatorService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 11
    const-string p1, "\u0647\u0630\u0647 \u0627\u0644\u0645\u064a\u0632\u0629 \u0642\u064a\u062f \u0627\u0644\u062a\u0637\u0648\u064a\u0631 \u0648\u0633\u062a\u062a\u0648\u0641\u0631 \u0642\u0631\u064a\u0628\u0627\u064b!"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method
