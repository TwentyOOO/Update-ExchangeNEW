.class Lcom/mosaedbarmaja/exchangenew/MainActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mosaedbarmaja/exchangenew/MainActivity;->downloadAndInstallApk(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

.field final synthetic val$downloadId:J

.field final synthetic val$downloadManager:Landroid/app/DownloadManager;


# direct methods
.method constructor <init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;JLandroid/app/DownloadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2103
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    iput-wide p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;->val$downloadId:J

    iput-object p4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;->val$downloadManager:Landroid/app/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 2105
    const-string p1, "UpdateInstaller"

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2106
    iget-wide v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;->val$downloadId:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_1

    .line 2107
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-virtual {p2, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p2, 0x1

    .line 2110
    :try_start_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;->val$downloadManager:Landroid/app/DownloadManager;

    iget-wide v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;->val$downloadId:J

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2112
    const-string v0, "\u0641\u0634\u0644 \u0627\u0644\u062a\u062d\u0645\u064a\u0644\u060c \u0627\u0644\u0640 URI \u0641\u0627\u0631\u063a."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    const-string v1, "\u0641\u0634\u0644 \u0627\u0644\u062a\u062d\u0645\u064a\u0644. \u062d\u0627\u0648\u0644 \u0645\u0631\u0629 \u0623\u062e\u0631\u0649."

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 2117
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2118
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10000001

    .line 2119
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2120
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-virtual {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2123
    const-string v1, "\u062e\u0637\u0623 \u0623\u062b\u0646\u0627\u0621 \u062a\u062b\u0628\u064a\u062a APK"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2124
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    const-string v0, "\u0641\u0634\u0644 \u062a\u062b\u0628\u064a\u062a \u0627\u0644\u062a\u062d\u062f\u064a\u062b."

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
