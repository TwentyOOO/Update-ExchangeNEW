.class public Lcom/mosaedbarmaja/exchangenew/QuickCalculatorSettingsActivity;
.super Landroid/app/Activity;
.source "QuickCalculatorSettingsActivity.java"


# direct methods
.method public static synthetic $r8$lambda$UGfgF3i0IAaNfuOa8J9bav7n1Jk(Lcom/mosaedbarmaja/exchangenew/QuickCalculatorSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/QuickCalculatorSettingsActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/QuickCalculatorSettingsActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u0627\u0644\u062d\u0627\u0633\u0628\u0629 \u0627\u0644\u0633\u0631\u064a\u0639\u0629"

    .line 14
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0633\u064a\u062a\u0645 \u0625\u0637\u0644\u0627\u0642 \u0647\u0630\u0647 \u0627\u0644\u0645\u064a\u0632\u0629 \u0642\u0631\u064a\u0628\u0627\u064b!\n\nStay tuned!"

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/mosaedbarmaja/exchangenew/QuickCalculatorSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mosaedbarmaja/exchangenew/QuickCalculatorSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mosaedbarmaja/exchangenew/QuickCalculatorSettingsActivity;)V

    .line 16
    const-string v1, "\u062d\u0633\u0646\u0627\u064b"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
