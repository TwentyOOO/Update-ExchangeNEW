.class Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;
.super Ljava/lang/Object;
.source "FloatingViewService.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->setupTextWatchers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;


# direct methods
.method constructor <init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 691
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-static {v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->-$$Nest$fgetisUpdating(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-static {v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->-$$Nest$fgetmFloatingView(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 698
    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->-$$Nest$fputisUpdating(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Z)V

    .line 701
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-static {v2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->-$$Nest$fgetaedInput(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->-$$Nest$mupdateCalculationsFromAed(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;)V

    goto :goto_1

    .line 702
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-static {v2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->-$$Nest$fgetusdtInput(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->-$$Nest$mupdateCalculationsFromUsdt(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;)V

    goto :goto_1

    .line 703
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-static {v1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->-$$Nest$fgetyohoInput(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->-$$Nest$mupdateCalculationsFromYoho(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;)V

    .line 704
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;->this$0:Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->-$$Nest$fputisUpdating(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Z)V

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
