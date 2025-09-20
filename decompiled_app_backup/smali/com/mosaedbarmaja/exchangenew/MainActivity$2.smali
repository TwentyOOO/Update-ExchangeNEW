.class Lcom/mosaedbarmaja/exchangenew/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mosaedbarmaja/exchangenew/MainActivity;->setupTextWatchers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;


# direct methods
.method constructor <init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetisUpdating(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-virtual {v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 250
    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 251
    :cond_1
    check-cast v0, Landroid/widget/EditText;

    .line 252
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fputisUpdating(Lcom/mosaedbarmaja/exchangenew/MainActivity;Z)V

    .line 254
    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetaedInput(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 255
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$mupdateCalculationsFromAed(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 256
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetusdtInput(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 257
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$mupdateCalculationsFromUsdt(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 258
    :cond_3
    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetyohoInput(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 259
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetisCustomCommissionSale(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetcurrentAgentCommissionIndex(Lcom/mosaedbarmaja/exchangenew/MainActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 261
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetaedInput(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$mparseDoubleSafe(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_6

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    const-wide v4, 0x410fbd0000000000L    # 260000.0

    mul-double/2addr v0, v4

    .line 264
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$mparseDoubleSafe(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double p1, v4, v2

    if-lez p1, :cond_4

    cmpg-double p1, v4, v0

    if-gtz p1, :cond_4

    sub-double/2addr v0, v4

    .line 267
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetusdtInput(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetyohoDecimalFormat(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Ljava/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 269
    :cond_4
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetusdtInput(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$mupdateCalculationsFromYoho(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)V

    .line 277
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fputisUpdating(Lcom/mosaedbarmaja/exchangenew/MainActivity;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
