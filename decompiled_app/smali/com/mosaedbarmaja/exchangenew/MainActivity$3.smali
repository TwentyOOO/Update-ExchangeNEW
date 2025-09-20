.class Lcom/mosaedbarmaja/exchangenew/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mosaedbarmaja/exchangenew/MainActivity;->showMemberGroupSaleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

.field final synthetic val$memberCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$membersContainer:Landroid/widget/LinearLayout;

.field final synthetic val$nameInputs:Ljava/util/List;

.field final synthetic val$yohoInputs:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$TISSj0kHJUMKNccRqINrHJPc2M8(Lcom/mosaedbarmaja/exchangenew/MainActivity$3;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->lambda$run$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1565
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    iput-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->val$yohoInputs:Ljava/util/List;

    iput-object p3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->val$memberCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->val$nameInputs:Ljava/util/List;

    iput-object p5, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->val$membersContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_0

    .line 1590
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1591
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1568
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->val$yohoInputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    const-string v2, "\u0627\u0644\u062d\u062f \u0627\u0644\u0623\u0642\u0635\u0649 10 \u0623\u0639\u0636\u0627\u0621"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1572
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1573
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1574
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x10

    .line 1575
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1576
    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1577
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1578
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1579
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u0627\u0633\u0645 \u0627\u0644\u0639\u0636\u0648 "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->val$memberCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 1581
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1582
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->val$nameInputs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    new-instance v2, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-direct {v2, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1584
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1585
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1586
    const-string v1, "\u0623\u062f\u062e\u0644 YOHO"

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2002

    .line 1587
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1588
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->val$yohoInputs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity$3;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1596
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1597
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1598
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->val$membersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1599
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;->val$memberCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1600
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
