.class Lcom/mosaedbarmaja/exchangenew/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mosaedbarmaja/exchangenew/MainActivity;->setupUpdateReceiver()V
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

    .line 222
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$1;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$1;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$mupdateWalletDisplay(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    .line 226
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$1;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$mupdateAgentBalanceDisplay(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    return-void
.end method
