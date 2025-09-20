.class Lcom/mosaedbarmaja/exchangenew/RecordsActivity$1;
.super Ljava/lang/Object;
.source "RecordsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createSearchAndFilterBar()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mosaedbarmaja/exchangenew/RecordsActivity;


# direct methods
.method constructor <init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$1;->this$0:Lcom/mosaedbarmaja/exchangenew/RecordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 179
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$1;->this$0:Lcom/mosaedbarmaja/exchangenew/RecordsActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->-$$Nest$mfilterAndDisplayData(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Ljava/lang/String;)V

    return-void
.end method
