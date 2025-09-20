.class public Lcom/mosaedbarmaja/exchangenew/FloatingViewService;
.super Landroid/app/Service;
.source "FloatingViewService.java"


# static fields
.field public static final ACTION_UPDATE_UI:Ljava/lang/String; = "com.mosaedbarmaja.exchangenew.UPDATE_UI"


# instance fields
.field private final AED_TO_USDT_RATE:D

.field private final CUSTOM_SALE_BASE_RATE_260:D

.field private final CUSTOM_SALE_BASE_RATE_265:D

.field private final USDT_TO_AED_RATE:D

.field private addBtn:Landroid/widget/Button;

.field private aedInput:Landroid/widget/EditText;

.field private final agentCommissionNames:[Ljava/lang/String;

.field private final agentCommissionPrices:[D

.field private final agentCommissionValues:[D

.field private agentPopup:Landroid/widget/LinearLayout;

.field private commissionPopup:Landroid/widget/LinearLayout;

.field private commissionSelectorBar:Landroid/widget/TextView;

.field private contentFrame:Landroid/widget/FrameLayout;

.field private currentAgentCommissionIndex:I

.field private currentYohoIndex:I

.field private customMemberSales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private isAgentSaleMode:Z

.field private isCustomCommissionSale:Z

.field private isCustomGroupSaleActive:Z

.field private isUpdating:Z

.field private mFloatingView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private preferences:Landroid/content/SharedPreferences;

.field private selectedAgentTextView:Landroid/widget/TextView;

.field private selectedMainAgentName:Ljava/lang/String;

.field private subBtn:Landroid/widget/Button;

.field private usdtInput:Landroid/widget/EditText;

.field private whatsappDecimalFormat:Ljava/text/DecimalFormat;

.field private yohoDecimalFormat:Ljava/text/DecimalFormat;

.field private yohoInput:Landroid/widget/EditText;

.field private final yohoNames:[Ljava/lang/String;

.field private yohoPriceSelector:Landroid/widget/TextView;

.field private final yohoPrices:[D


# direct methods
.method public static synthetic $r8$lambda$0eiTxy0ipQM2fGIE1DNkyejM8PQ(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createEditText$14(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$36pEhNzo-Dm389E440-cvEV4dXQ(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createRecordRow$11(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9PcTgvbXF7p1u_wbkLt1wf5QG0k(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createCalculatorLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9PnjO-IN60zwbvJYiD_wrSBzlyA(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createCalculatorLayout$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BO0SWS6dCDKsSwMWyso9YYzYD7w(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$updateCommissionSelectionUI$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GMPg0Yh3fK9Xj5flln6g1t64pDk(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createCalculatorLayout$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HiyUnoewGAIVuYg7dmcoJaufQDc(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createCalculatorLayout$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MpPc5PaVgtdvlgcr5v2xByIzJH4(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createRecordRow$12(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OyDySdmALien2hrEBje1n-TntfA(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createCalculatorLayout$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PWPYtSrdHtdTP6hcRjE7dWv1Lmw(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createRecordsLayout$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QlOKpYEh-Wvzh3Ei_cS2W3GNyfc(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$updateAgentModeUI$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QxGHGVS54crVnuK6EcVo8I8jr2U(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createCalculatorLayout$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R3tF_8dNBKZq5wLTBLTJ3tUQwDk(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$showCommissionPricesPopup$17(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TKn_fD4CqXJRcvOrRnn47PSVG34(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createRootView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WRoBHJIZ6D9w0dPtEWHKf2AxgRo(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$showAgentList$20(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dWtdsFlOtee8513xb_CfKnD5ZM0(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createEditText$13(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$syY-EVSqzQRNEVXC-uCwPcrABtY(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createCalculatorLayout$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tM8fePwIUvgBuZ7XtrM0CTUL4sI(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$updateAgentModeUI$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uc0lZC_AZoZqtlBdSczwfLdiCFo(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$updateCommissionSelectionUI$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xRLO6ihy5kAwz88jIn2ra_Q3Rk4(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->lambda$createCalculatorLayout$7(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaedInput(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetagentPopup(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcommissionPopup(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisUpdating(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isUpdating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingView(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mFloatingView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparams(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusdtInput(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyohoInput(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputagentPopup(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcommissionPopup(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisUpdating(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isUpdating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCalculationsFromAed(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateCalculationsFromAed(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCalculationsFromUsdt(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateCalculationsFromUsdt(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCalculationsFromYoho(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateCalculationsFromYoho(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isUpdating:Z

    const-wide v1, 0x3fd0d79435e50d79L    # 0.2631578947368421

    .line 61
    iput-wide v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->AED_TO_USDT_RATE:D

    const-wide v1, 0x400e666666666666L    # 3.8

    .line 62
    iput-wide v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->USDT_TO_AED_RATE:D

    const-wide v1, 0x41102ca000000000L    # 265000.0

    .line 63
    iput-wide v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->CUSTOM_SALE_BASE_RATE_265:D

    const-wide v1, 0x410fbd0000000000L    # 260000.0

    .line 64
    iput-wide v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->CUSTOM_SALE_BASE_RATE_260:D

    const/4 v1, 0x4

    .line 65
    new-array v2, v1, [D

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPrices:[D

    .line 66
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "\u0627\u0644\u062a\u0633\u0639\u064a\u0631\u0629 \u0627\u0644\u0627\u0648\u0644\u0649"

    aput-object v3, v2, v0

    const-string v3, "\u0627\u0644\u062a\u0633\u0639\u064a\u0631\u0629 \u0627\u0644\u062b\u0627\u0646\u064a\u0629"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "\u0627\u0644\u062a\u0633\u0639\u064a\u0631\u0629 \u0627\u0644\u062b\u0627\u0644\u062b\u0629"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "\u0627\u0644\u062a\u0633\u0639\u064a\u0631\u0629 \u0627\u0644\u0631\u0627\u0628\u0639\u0629"

    const/4 v6, 0x3

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoNames:[Ljava/lang/String;

    .line 67
    iput v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentYohoIndex:I

    const/4 v2, 0x0

    .line 74
    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    .line 75
    iput-boolean v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isAgentSaleMode:Z

    .line 76
    iput v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentAgentCommissionIndex:I

    const/4 v2, 0x5

    .line 77
    new-array v3, v2, [D

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionPrices:[D

    .line 78
    new-array v3, v2, [D

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionValues:[D

    .line 79
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u0639\u0645\u0648\u0644\u0629 6%"

    aput-object v3, v2, v0

    const-string v3, "\u0639\u0645\u0648\u0644\u0629 4%"

    aput-object v3, v2, v4

    const-string v3, "\u0639\u0645\u0648\u0644\u0629 2%"

    aput-object v3, v2, v5

    const-string v3, "\u062a\u0633\u0639\u0631\u0629 \u062c\u0645\u0627\u0639\u064a\u0629 6%"

    aput-object v3, v2, v6

    const-string v3, "\u062a\u0633\u0639\u0631\u0629 \u0645\u062e\u0635\u0635\u0629 6%"

    aput-object v3, v2, v1

    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionNames:[Ljava/lang/String;

    .line 80
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomGroupSaleActive:Z

    .line 81
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomCommissionSale:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->customMemberSales:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 8
        0x410e848000000000L    # 250000.0
        0x410f20c000000000L    # 255000.0
        0x410fbd0000000000L    # 260000.0
        0x41102ca000000000L    # 265000.0
    .end array-data

    :array_1
    .array-data 8
        0x410e848000000000L    # 250000.0
        0x410f20c000000000L    # 255000.0
        0x410fbd0000000000L    # 260000.0
        0x41102ca000000000L    # 265000.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x40cd4c0000000000L    # 15000.0
        0x40c3880000000000L    # 10000.0
        0x40b3880000000000L    # 5000.0
        0x0
        0x0
    .end array-data
.end method

.method private addMemberToGroupSale()V
    .locals 7

    .line 1063
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v0

    .line 1064
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionPrices:[D

    const/4 v3, 0x3

    aget-wide v3, v2, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    mul-double/2addr v3, v0

    const-wide/16 v5, 0x0

    cmpg-double v2, v0, v5

    const/4 v5, 0x0

    if-gtz v2, :cond_0

    .line 1068
    const-string v0, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0645\u0628\u0644\u063a \u0627\u0644\u062f\u0631\u0647\u0645 \u0644\u0644\u0639\u0636\u0648"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1072
    :cond_0
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->customMemberSales:Ljava/util/List;

    const/4 v6, 0x2

    new-array v6, v6, [D

    aput-wide v0, v6, v5

    const/4 v0, 0x1

    aput-wide v3, v6, v0

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u062a\u0645\u062a \u0625\u0636\u0627\u0641\u0629 \u0627\u0644\u0639\u0636\u0648. \u0625\u062c\u0645\u0627\u0644\u064a \u0627\u0644\u0623\u0639\u0636\u0627\u0621: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->customMemberSales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1075
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetInputs()V

    return-void
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 2

    .line 871
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 872
    const-string v1, "Transaction"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 875
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u062a\u0645 \u0646\u0633\u062e \u0627\u0644\u0631\u0633\u0627\u0644\u0629!"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private createActionButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;
    .locals 5

    .line 426
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 427
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x96

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x10

    .line 428
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 429
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 431
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 432
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 433
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-object v0
.end method

.method private createCalculatorLayout()Landroid/view/View;
    .locals 11

    .line 195
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    .line 199
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 201
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 203
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    new-instance v6, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda3;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 207
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 208
    const-string v7, "\u0627\u0644\u0648\u0643\u0644\u0627\u0621"

    invoke-direct {p0, v7}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createControlButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    .line 209
    new-instance v8, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda4;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const-string v8, "\u062a\u0628\u062f\u064a\u0644 \u0627\u0644\u0648\u0636\u0639"

    invoke-direct {p0, v8}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createControlButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v8

    .line 211
    new-instance v9, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda5;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const-string v9, "\u0627\u0644\u0633\u062c\u0644\u0627\u062a"

    invoke-direct {p0, v9}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createControlButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v9

    .line 216
    new-instance v10, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda6;

    invoke-direct {v10, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda6;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 222
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x10

    .line 223
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 224
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    .line 227
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v8, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 230
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 231
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    const-string v8, "#F39C12"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 232
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    new-instance v8, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda7;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPriceSelector:Landroid/widget/TextView;

    .line 236
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPriceSelector:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 238
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPriceSelector:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 239
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPriceSelector:Landroid/widget/TextView;

    new-instance v4, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda8;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 245
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPriceSelector:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 248
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 249
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 251
    const-string v4, "\u062f\u0631\u0647\u0645"

    invoke-direct {p0, v4}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createEditText(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    .line 252
    const-string v4, "\u062f\u0648\u0644\u0627\u0631"

    invoke-direct {p0, v4}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createEditText(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    .line 253
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    const-string v4, "YOHO"

    invoke-direct {p0, v4}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createEditText(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    .line 257
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 258
    invoke-virtual {v4, v6, v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 259
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 262
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 264
    const-string v4, "+ \u0625\u0636\u0627\u0641\u0629"

    const-string v5, "#4CAF50"

    invoke-direct {p0, v4, v5}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createActionButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->addBtn:Landroid/widget/Button;

    .line 265
    new-instance v5, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda9;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const-string v4, "- \u062e\u0635\u0645"

    const-string v5, "#F44336"

    invoke-direct {p0, v4, v5}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createActionButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    .line 267
    new-instance v5, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda10;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->addBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createControlButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 5

    .line 414
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 415
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v2, 0x4

    .line 416
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 417
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 419
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 420
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 421
    const-string p1, "#5D6D7E"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-object v0
.end method

.method private createEditText(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 5

    .line 438
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 439
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x8

    .line 440
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 441
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p1, -0x333334

    .line 443
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/4 p1, -0x1

    .line 444
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 p1, 0x2002

    .line 445
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 446
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 p1, 0x11

    .line 447
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 448
    const-string p1, "#5D6D7E"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/16 p1, 0xc

    .line 449
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 450
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setId(I)V

    .line 452
    new-instance p1, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda20;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 460
    new-instance p1, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda1;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object v0
.end method

.method private createRecordRow(Ljava/lang/String;)Landroid/view/View;
    .locals 6

    .line 341
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x8

    .line 343
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x10

    .line 344
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 346
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    .line 347
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 348
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 349
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->formatRecordForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 351
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 354
    const-string v4, "\u21aa\ufe0f"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 356
    new-instance v4, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda16;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 362
    const-string v5, "\ud83d\udcac"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 364
    new-instance v1, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda17;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createRecordsLayout()Landroid/view/View;
    .locals 9

    .line 284
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 287
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 288
    const-string v3, "\u0622\u062e\u0631 5 \u0639\u0645\u0644\u064a\u0627\u062a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 289
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 290
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x11

    .line 291
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x10

    const/4 v6, 0x0

    .line 292
    invoke-virtual {v2, v6, v5, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 293
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 296
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string v8, "transaction_records"

    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 300
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 301
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 302
    const-string v7, "\u0644\u0627 \u062a\u0648\u062c\u062f \u0633\u062c\u0644\u0627\u062a \u0644\u0639\u0631\u0636\u0647\u0627"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, -0x777778

    .line 303
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v4, 0x28

    .line 305
    invoke-virtual {v1, v6, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 306
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 308
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    new-instance v1, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 320
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x5

    if-lt v4, v8, :cond_1

    goto :goto_1

    .line 322
    :cond_1
    invoke-direct {p0, v7}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createRecordRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 327
    :cond_2
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 328
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    const-string v1, "\u0627\u0644\u0639\u0648\u062f\u0629 \u0625\u0644\u0649 \u0627\u0644\u0622\u0644\u0629 \u0627\u0644\u062d\u0627\u0633\u0628\u0629"

    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createControlButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 331
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x18

    .line 332
    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 333
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda13;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createRootView()Landroid/view/View;
    .locals 10

    .line 134
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x258

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 137
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 138
    const-string v2, "#2C3E50"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x41c00000    # 24.0f

    .line 139
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 140
    const-string v2, "#3498DB"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 144
    const-string v2, "title_bar_tag"

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x8

    const/16 v3, 0x10

    .line 145
    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 146
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 149
    const-string v6, "\u062d\u0627\u0633\u0628\u0629 \u064a\u0648\u0647\u0648"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 151
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    .line 153
    invoke-virtual {v6, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 154
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 157
    const-string v7, "X"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v7, 0x0

    .line 159
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 160
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x60

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x15

    .line 161
    invoke-virtual {v8, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v8, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda12;

    invoke-direct {v8, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda12;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 167
    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->setupDraggable(Landroid/view/View;)V

    .line 169
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->contentFrame:Landroid/widget/FrameLayout;

    .line 170
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v7, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private formatRecordForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 894
    :try_start_0
    const-string v0, "\\|\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 895
    aget-object v0, p1, v0

    const/4 v1, 0x7

    .line 896
    aget-object v1, p1, v1

    const/4 v2, 0x4

    .line 897
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x5

    .line 898
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x6

    .line 899
    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 901
    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->translateType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 905
    const-string v0, "\u0627\u0644\u062d\u0627\u0633\u0628\u0629 \u0627\u0644\u0639\u0627\u0626\u0645\u0629"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const-string v1, "\u0645\u062d\u0641\u0638\u062a\u064a"

    .line 908
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "\u062f\u0631\u0647\u0645: %.2f, \u062f\u0648\u0644\u0627\u0631: %.2f"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 909
    :cond_0
    const-string v0, "AGENT:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 912
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "\u062f\u0631\u0647\u0645: %.2f, \u064a\u0648\u0647\u0648: %.0f"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 916
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "\u062f\u0631\u0647\u0645: %.2f"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 919
    :goto_0
    const-string v2, "%s: %s\n%s"

    filled-new-array {p1, v1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 922
    :catch_0
    const-string p1, "\u0633\u062c\u0644 \u063a\u064a\u0631 \u0635\u0627\u0644\u062d"

    return-object p1
.end method

.method private formatToK(D)Ljava/lang/String;
    .locals 6

    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide v2, -0x3f70c00000000000L    # -1000.0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    .line 817
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 818
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##M"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    div-double/2addr p1, v4

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 819
    :cond_1
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.#K"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    div-double/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fundAgentWithAedAndYoho()V
    .locals 14

    .line 605
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v3

    .line 606
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmpg-double v2, v3, v0

    const/4 v13, 0x0

    if-gtz v2, :cond_0

    cmpg-double v0, v7, v0

    if-gtz v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u0623\u062f\u062e\u0644 \u0645\u0628\u0644\u063a \u0644\u0644\u062a\u0645\u0648\u064a\u0644"

    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/Agent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 614
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 615
    iget-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    .line 616
    iget-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    add-double/2addr v1, v7

    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    .line 617
    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/Agent;)V

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u062a\u0645 \u062a\u0645\u0648\u064a\u0644 \u0627\u0644\u0648\u0643\u064a\u0644 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0628\u0640 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u062f\u0631\u0647\u0645 \u0648 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u064a\u0648\u0647\u0648."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AGENT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u062a\u0645\u0648\u064a\u0644 \u0645\u0628\u0627\u0634\u0631"

    const-string v2, "agent_fund"

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-direct {p0, v11}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->copyToClipboard(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u062a\u0645 \u062a\u0645\u0648\u064a\u0644 \u0627\u0644\u0648\u0643\u064a\u0644"

    invoke-static {v0, v2, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 622
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetInputs()V

    .line 623
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->sendUpdateBroadcast()V

    return-void
.end method

.method private generateAgentSaleMessage(Ljava/lang/String;DDD)Ljava/lang/String;
    .locals 2

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ud83d\udcc3 \u062a\u0642\u0631\u064a\u0631 \u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0648 \u0627\u0644\u0645\u062d\u0641\u0636\u0629\n\ud83d\udfe9 \u0625\u0644\u0649 \u064a\u0648\u0647\u0648 : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 849
    invoke-direct {p0, p6, p7}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->formatToK(D)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, "\n___________________________________\n\ud83d\udc64 \u0639\u0628\u0631 \u0648\u0643\u064a\u0644 : "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p6, "\n\ud83d\udd0b \u0639\u0645\u0648\u0644\u0629 \u0627\u0644\u0649 \u064a\u0648\u0647\u0648 "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-direct {p0, p4, p5}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->formatToK(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "\n\n\ud83d\udc64 \u0625\u0644\u0649 \u0627\u0644\u0639\u0636\u0648:\n\ud83d\udcb5 \u0644\u0644\u0639\u0636\u0648 \u064a\u0648\u0647\u0648: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-direct {p0, p2, p3}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->formatToK(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateAgentYohoMessage(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;
    .locals 2

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ud83d\udcc3 \u062a\u0642\u0631\u064a\u0631 \u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0648 \u0627\u0644\u0645\u062d\u0641\u0636\u0629\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 861
    const-string v1, "subtract"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 862
    const-string p1, "\ud83d\udfe5 \u0625\u0644\u0649 \u064a\u0648\u0647\u0648 : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p5, p6}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->formatToK(D)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "\n___________________________________\n\ud83d\udc64 \u0639\u0628\u0631 \u0648\u0643\u064a\u0644 : "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n\ud83e\udeab \u062e\u0635\u0645 \u0627\u0644\u0649 \u064a\u0648\u0647\u0648 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-direct {p0, p3, p4}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->formatToK(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateWhatsappMessage(Ljava/lang/String;DDDDLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 823
    new-instance p10, Ljava/lang/StringBuilder;

    const-string v0, "\ud83d\udcc3 \u062a\u0642\u0631\u064a\u0631 \u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0648 \u0627\u0644\u0645\u062d\u0641\u0636\u0629\n"

    invoke-direct {p10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "subtract"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\n"

    const-string v2, "\n\ud83d\udcb5 \u0627\u0644\u062f\u0648\u0644\u0627\u0631 \u0627\u0644\u0623\u0645\u0631\u064a\u0643\u0649: "

    if-nez v0, :cond_1

    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 827
    :cond_0
    const-string p1, "\ud83d\udfe9 \u0627\u0644\u062f\u0648\u0644\u0623\u0631 \u0625\u0644\u0627\u0645\u0631\u064a\u0643\u0649 : "

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p8, p9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p8, "\n\ud83d\udfe9 \u0627\u0644\u062f\u0631\u0647\u0645 \u0625\u0644\u0627\u0645\u0627\u0631\u0627\u062a\u064a : "

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p6, p7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p6, "\n___________________________________\n\ud83d\udd0b \u062a\u0645 \u0627\u0636\u0627\u0641\u0629 \u0627\u0644\u0631\u0635\u064a\u062f\n\ud83d\udcb7 \u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a    : "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p4, p5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 835
    :cond_1
    const-string p1, "\ud83d\udfe5 \u0627\u0644\u062f\u0648\u0644\u0623\u0631 \u0625\u0644\u0627\u0645\u0631\u064a\u0643\u0649 : "

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p8, p9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p8, "\n\ud83d\udfe5 \u0627\u0644\u062f\u0631\u0647\u0645 \u0625\u0644\u0627\u0645\u0627\u0631\u0627\u062a\u064a : "

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p6, p7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p6, "\n___________________________________\n\ud83e\udeab \u062a\u0645 \u062e\u0635\u0645 \u0627\u0644\u0631\u0635\u064a\u062f\n\ud83d\udcb7 \u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a    : "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p4, p5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    :goto_0
    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/Agent;
    .locals 12

    .line 647
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "shipping_agents"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 648
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 649
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 650
    array-length v2, v1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 651
    array-length v0, v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    aget-object v0, v1, v4

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v8, v4

    goto :goto_1

    :cond_0
    move-wide v8, v2

    .line 652
    :goto_1
    array-length v0, v1

    const/4 v4, 0x2

    if-le v0, v4, :cond_1

    aget-object v0, v1, v4

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v2

    :cond_1
    move-wide v10, v2

    .line 653
    new-instance v6, Lcom/mosaedbarmaja/exchangenew/Agent;

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/mosaedbarmaja/exchangenew/Agent;-><init>(Ljava/lang/String;DD)V

    return-object v6

    :cond_2
    move-object v7, p1

    move-object p1, v7

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleAddOrSubtract(Z)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->handleAgentLogic(Z)V

    return-void

    .line 528
    :cond_0
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->handleMainWalletLogic(Z)V

    return-void
.end method

.method private handleAgentLogic(Z)V
    .locals 1

    .line 562
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isAgentSaleMode:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->fundAgentWithAedAndYoho()V

    return-void

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->withdrawAgentYoho()V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 569
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomGroupSaleActive:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->addMemberToGroupSale()V

    return-void

    .line 570
    :cond_2
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomCommissionSale:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->performCustomCommissionSale()V

    return-void

    .line 571
    :cond_3
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->performAgentSaleToMember()V

    :cond_4
    return-void
.end method

.method private handleMainWalletLogic(Z)V
    .locals 14

    .line 533
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmpg-double v0, v3, v0

    const/4 v13, 0x0

    if-gtz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0642\u064a\u0645\u0629 \u0645\u0648\u062c\u0628\u0629 \u0635\u0627\u0644\u062d\u0629"

    invoke-static {p1, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-wide v0, 0x3fd0d79435e50d79L    # 0.2631578947368421

    mul-double v5, v3, v0

    .line 540
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "aed_wallet"

    const-string v2, "0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v7

    .line 541
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "usdt_wallet"

    invoke-interface {v0, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v10

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz p1, :cond_1

    add-double/2addr v7, v3

    goto :goto_0

    :cond_1
    sub-double/2addr v7, v3

    :goto_0
    if-eqz p1, :cond_2

    add-double/2addr v10, v5

    goto :goto_1

    :cond_2
    sub-double/2addr v10, v5

    .line 547
    :goto_1
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 548
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 549
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_3

    .line 552
    const-string v0, "add"

    goto :goto_2

    :cond_3
    const-string v0, "subtract"

    :goto_2
    move-object v2, v0

    move-wide v9, v10

    const/4 v11, 0x0

    move-object v1, p0

    .line 553
    invoke-direct/range {v1 .. v11}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->generateWhatsappMessage(Ljava/lang/String;DDDDLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 554
    const-string v9, "\u0627\u0644\u062d\u0627\u0633\u0628\u0629 \u0627\u0644\u0639\u0627\u0626\u0645\u0629"

    const-string v10, "\u0639\u0645\u0644\u064a\u0629 \u0645\u0646 \u0627\u0644\u062d\u0627\u0633\u0628\u0629 \u0627\u0644\u0639\u0627\u0626\u0645\u0629"

    const-wide/16 v7, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0, v11}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->copyToClipboard(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_4

    const-string p1, "\u062a\u0645\u062a \u0627\u0644\u0625\u0636\u0627\u0641\u0629 \u0628\u0646\u062c\u0627\u062d"

    goto :goto_3

    :cond_4
    const-string p1, "\u062a\u0645 \u0627\u0644\u062e\u0635\u0645 \u0628\u0646\u062c\u0627\u062d"

    :goto_3
    invoke-static {v0, p1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 557
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetInputs()V

    .line 558
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->sendUpdateBroadcast()V

    return-void
.end method

.method private synthetic lambda$createCalculatorLayout$1(Landroid/view/View;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetSelection()V

    return-void
.end method

.method private synthetic lambda$createCalculatorLayout$2(Landroid/view/View;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->showAgentList()V

    return-void
.end method

.method private synthetic lambda$createCalculatorLayout$3(Landroid/view/View;)V
    .locals 0

    .line 212
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isAgentSaleMode:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isAgentSaleMode:Z

    .line 213
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateAgentModeUI()V

    return-void
.end method

.method private synthetic lambda$createCalculatorLayout$4(Landroid/view/View;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->showRecordsView()V

    return-void
.end method

.method private synthetic lambda$createCalculatorLayout$5(Landroid/view/View;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->showCommissionPricesPopup()V

    return-void
.end method

.method private synthetic lambda$createCalculatorLayout$6(Landroid/view/View;)V
    .locals 1

    .line 240
    iget p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentYohoIndex:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPrices:[D

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentYohoIndex:I

    .line 241
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateYohoDisplay()V

    return-void
.end method

.method private synthetic lambda$createCalculatorLayout$7(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 265
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->handleAddOrSubtract(Z)V

    return-void
.end method

.method private synthetic lambda$createCalculatorLayout$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 267
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->handleAddOrSubtract(Z)V

    return-void
.end method

.method private synthetic lambda$createEditText$13(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 453
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x20

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 455
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mFloatingView:Landroid/view/View;

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createEditText$14(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 462
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x8

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 463
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mFloatingView:Landroid/view/View;

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createRecordRow$11(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 357
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->undoRecord(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->showRecordsView()V

    return-void
.end method

.method private synthetic lambda$createRecordRow$12(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 365
    const-string p2, "\\|\\|MSG\\|\\|"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 366
    array-length p2, p1

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 367
    aget-object p1, p1, v0

    const-string p2, "\\|\\|BEFORE\\|\\|"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->copyToClipboard(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createRecordsLayout$10(Landroid/view/View;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->showCalculatorView()V

    return-void
.end method

.method static synthetic lambda$createRecordsLayout$9(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 311
    const-string v0, "\\|\\|"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 313
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private synthetic lambda$createRootView$0(Landroid/view/View;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->stopSelf()V

    return-void
.end method

.method private synthetic lambda$showAgentList$20(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    .line 1191
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateAgentModeUI()V

    .line 1192
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1193
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    return-void
.end method

.method private synthetic lambda$showCommissionPricesPopup$17(ILandroid/view/View;)V
    .locals 0

    .line 1000
    iput p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentAgentCommissionIndex:I

    .line 1001
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateCommissionSelectionUI()V

    .line 1002
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1003
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    return-void
.end method

.method private synthetic lambda$updateAgentModeUI$15(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 486
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->handleAddOrSubtract(Z)V

    return-void
.end method

.method private synthetic lambda$updateAgentModeUI$16(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 511
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->handleAddOrSubtract(Z)V

    return-void
.end method

.method private synthetic lambda$updateCommissionSelectionUI$18(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1030
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->handleAddOrSubtract(Z)V

    return-void
.end method

.method private synthetic lambda$updateCommissionSelectionUI$19(Landroid/view/View;)V
    .locals 0

    .line 1040
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->performFinalGroupSaleCalculation()V

    return-void
.end method

.method private parseDoubleSafe(Ljava/lang/String;)D
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 729
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    :try_start_0
    const-string v2, ","

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-wide v0
.end method

.method private performAgentSaleToMember()V
    .locals 19

    move-object/from16 v0, p0

    .line 576
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/16 v1, 0x0

    cmpg-double v3, v8, v1

    const/4 v12, 0x0

    if-gtz v3, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0642\u064a\u0645\u0629"

    invoke-static {v1, v2, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 581
    :cond_0
    iget-object v3, v0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/Agent;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 584
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v3, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 585
    iget-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    add-double/2addr v4, v8

    iput-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    .line 587
    iget-object v4, v0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionPrices:[D

    iget v5, v0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentAgentCommissionIndex:I

    aget-wide v6, v4, v5

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double v13, v6, v13

    mul-double/2addr v13, v8

    .line 589
    iget-object v4, v0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionValues:[D

    aget-wide v15, v4, v5

    cmpl-double v4, v6, v1

    if-lez v4, :cond_2

    div-double v1, v13, v6

    mul-double/2addr v1, v15

    :cond_2
    move-wide v4, v1

    .line 593
    iget-wide v1, v3, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    add-double/2addr v1, v4

    iput-wide v1, v3, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    .line 595
    invoke-direct {v0, v3}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/Agent;)V

    .line 596
    iget-object v1, v3, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    iget-wide v6, v3, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    move-wide v2, v13

    invoke-direct/range {v0 .. v7}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->generateAgentSaleMessage(Ljava/lang/String;DDD)Ljava/lang/String;

    move-result-object v10

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "AGENT:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "YOHO \u0644\u0644\u0639\u0636\u0648: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v17, v8

    move-object v9, v2

    move-wide/from16 v2, v17

    move-object v8, v1

    const-string v1, "agent_sale"

    move-wide v6, v4

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-direct {v0, v10}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->copyToClipboard(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u062a\u0645\u062a \u0639\u0645\u0644\u064a\u0629 \u0627\u0644\u0628\u064a\u0639 \u0628\u0646\u062c\u0627\u062d"

    invoke-static {v1, v2, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 600
    invoke-direct {v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetInputs()V

    .line 601
    invoke-direct {v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->sendUpdateBroadcast()V

    return-void
.end method

.method private performCustomCommissionSale()V
    .locals 15

    .line 1126
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v3

    .line 1127
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmpg-double v2, v3, v0

    const/4 v13, 0x0

    if-lez v2, :cond_3

    cmpg-double v2, v7, v0

    if-gtz v2, :cond_0

    goto/16 :goto_0

    .line 1134
    :cond_0
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/Agent;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 1137
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v2, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v9, v2, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double v5, v3, v5

    const-wide v9, 0x410fbd0000000000L    # 260000.0

    mul-double/2addr v5, v9

    sub-double v9, v5, v7

    cmpg-double v0, v9, v0

    if-gez v0, :cond_2

    .line 1143
    const-string v0, "\u062e\u0637\u0623: \u0627\u0644\u0639\u0645\u0648\u0644\u0629 \u0633\u0627\u0644\u0628\u0629. \u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u0645\u062f\u062e\u0644\u0627\u062a."

    invoke-static {p0, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1147
    :cond_2
    iget-wide v0, v2, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    add-double/2addr v0, v3

    iput-wide v0, v2, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    .line 1148
    iget-wide v0, v2, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    add-double/2addr v0, v9

    iput-wide v0, v2, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    .line 1149
    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/Agent;)V

    .line 1151
    iget-object v6, v2, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    iget-wide v11, v2, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->generateAgentSaleMessage(Ljava/lang/String;DDD)Ljava/lang/String;

    move-result-object v11

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AGENT:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "YOHO \u0644\u0644\u0639\u0636\u0648: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom_sale"

    const-wide/16 v5, 0x0

    move-wide v7, v9

    move-object v12, v14

    move-object v9, v0

    move-object v10, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-direct {p0, v11}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->copyToClipboard(Ljava/lang/String;)V

    .line 1154
    const-string v0, "\u062a\u0645\u062a \u0639\u0645\u0644\u064a\u0629 \u0627\u0644\u0628\u064a\u0639 \u0627\u0644\u0645\u062e\u0635\u0635\u0629 \u0628\u0646\u062c\u0627\u062d"

    invoke-static {p0, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1155
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetInputs()V

    .line 1156
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->sendUpdateBroadcast()V

    return-void

    :cond_3
    :goto_0
    move-object v1, p0

    .line 1130
    const-string v0, "\u0623\u062f\u062e\u0644 \u0627\u0644\u062f\u0631\u0647\u0645 \u0648\u0627\u0644\u064a\u0648\u0647\u0648 \u0644\u0644\u0639\u0645\u064a\u0644"

    invoke-static {p0, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private performFinalGroupSaleCalculation()V
    .locals 15

    .line 1079
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->customMemberSales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1080
    const-string v1, "\u0644\u0645 \u064a\u062a\u0645 \u0625\u0636\u0627\u0641\u0629 \u0623\u064a \u0623\u0639\u0636\u0627\u0621 \u0644\u0644\u0628\u064a\u0639 \u0627\u0644\u062c\u0645\u0627\u0639\u064a"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/Agent;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1087
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v1, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1091
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->customMemberSales:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v12, 0x1

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    .line 1092
    aget-wide v9, v8, v2

    add-double/2addr v4, v9

    .line 1093
    aget-wide v9, v8, v12

    add-double/2addr v6, v9

    goto :goto_0

    .line 1096
    :cond_2
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionPrices:[D

    const/4 v3, 0x3

    aget-wide v8, v2, v3

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v2

    mul-double/2addr v8, v4

    sub-double v2, v8, v6

    .line 1100
    iget-wide v13, v1, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    add-double/2addr v13, v4

    iput-wide v13, v1, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    .line 1101
    iget-wide v13, v1, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    add-double/2addr v13, v2

    iput-wide v13, v1, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    .line 1102
    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/Agent;)V

    .line 1104
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "\ud83d\udcc4 \u062a\u0642\u0631\u064a\u0631 \u0627\u0644\u0628\u064a\u0639 \u0627\u0644\u062c\u0645\u0627\u0639\u064a \u0644\u0644\u0648\u0643\u064a\u0644: "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1105
    iget-object v13, v1, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n___________________________________\n\ud83d\udcb0 \u0625\u062c\u0645\u0627\u0644\u064a \u0627\u0644\u062f\u0631\u0647\u0645 \u0627\u0644\u0645\u062d\u0635\u0644: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    iget-object v13, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v13, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n\u2728 \u0625\u062c\u0645\u0627\u0644\u064a \u0627\u0644\u064a\u0648\u0647\u0648 \u0627\u0644\u0645\u0648\u0644\u062f: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    iget-object v13, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v13, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\ud83d\udc65 \u0625\u062c\u0645\u0627\u0644\u064a \u0627\u0644\u064a\u0648\u0647\u0648 \u0644\u0644\u0623\u0639\u0636\u0627\u0621: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    iget-object v8, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\ud83c\udfc6 \u0639\u0645\u0648\u0644\u0629 \u0627\u0644\u0648\u0643\u064a\u0644 \u0627\u0644\u0646\u0647\u0627\u0626\u064a\u0629: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    iget-object v6, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v6, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n___________________________________\n\ud83c\udfe6 \u0631\u0635\u064a\u062f \u0627\u0644\u0648\u0643\u064a\u0644 \u0627\u0644\u062c\u062f\u064a\u062f (\u064a\u0648\u0647\u0648): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    iget-wide v6, v1, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    invoke-direct {p0, v6, v7}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->formatToK(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1115
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AGENT:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u0623\u0639\u0636\u0627\u0621: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->customMemberSales:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v1, "group_sale_final"

    move-wide v6, v2

    move-wide v2, v4

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-direct {p0, v10}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->copyToClipboard(Ljava/lang/String;)V

    .line 1117
    const-string v1, "\u062a\u0645 \u062d\u0633\u0627\u0628 \u0627\u0644\u0628\u064a\u0639 \u0627\u0644\u062c\u0645\u0627\u0639\u064a \u0628\u0646\u062c\u0627\u062d!"

    invoke-static {p0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1119
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->customMemberSales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1120
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetInputs()V

    .line 1121
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateCommissionSelectionUI()V

    .line 1122
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->sendUpdateBroadcast()V

    return-void
.end method

.method private resetInputs()V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private resetSelection()V
    .locals 1

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    .line 520
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateAgentModeUI()V

    .line 521
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetInputs()V

    return-void
.end method

.method private saveAgentData(Lcom/mosaedbarmaja/exchangenew/Agent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "shipping_agents"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 662
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 663
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 664
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p1, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 665
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p1, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p1, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 669
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 674
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 675
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "||MSG||"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 p2, p10

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "||BEFORE||"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 p2, p11

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 677
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    const-string p4, "transaction_records"

    invoke-interface {p2, p4, p3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 678
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 679
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p4, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private sendUpdateBroadcast()V
    .locals 2

    .line 880
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mosaedbarmaja.exchangenew.UPDATE_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setupDraggable(Landroid/view/View;)V
    .locals 1

    .line 380
    new-instance v0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$1;

    invoke-direct {v0, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$1;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setupFormatting()V
    .locals 3

    .line 684
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 685
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0.00"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->decimalFormat:Ljava/text/DecimalFormat;

    .line 686
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    .line 687
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method private setupTextWatchers()V
    .locals 2

    .line 691
    new-instance v0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;

    invoke-direct {v0, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$2;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    .line 707
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 708
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 709
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private showAgentList()V
    .locals 10

    .line 1160
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1162
    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    return-void

    .line 1166
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 1167
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1168
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    const-string v1, "#2C3E50"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1169
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1171
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "shipping_agents"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1172
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/16 v2, 0x14

    if-eqz v1, :cond_1

    .line 1173
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1174
    const-string v1, "\u0644\u0627 \u064a\u0648\u062c\u062f \u0648\u0643\u0644\u0627\u0621"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x777778

    .line 1175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1176
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1177
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1179
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1181
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1183
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1184
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1185
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1186
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 1187
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1188
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1189
    new-instance v4, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda0;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1199
    :cond_3
    :goto_2
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x8

    const/4 v9, -0x3

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x800033

    .line 1206
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1207
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1208
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mFloatingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1209
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showCalculatorView()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 181
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->contentFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createCalculatorLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->setupTextWatchers()V

    .line 183
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateYohoDisplay()V

    .line 184
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateAgentModeUI()V

    return-void
.end method

.method private showCommissionPricesPopup()V
    .locals 7

    .line 982
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 983
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 984
    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    return-void

    .line 988
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 989
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 990
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    const-string v1, "#2C3E50"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 991
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v0, 0x0

    .line 993
    :goto_0
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 995
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 996
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 997
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x14

    .line 998
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 999
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda2;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    :cond_1
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x8

    const/4 v6, -0x3

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x800033

    .line 1015
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1016
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1017
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mFloatingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1018
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showRecordsView()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 189
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->contentFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createRecordsLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private translateType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 927
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "withdraw_agent_yoho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "reset_agent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "agent_aed_transfer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "agent_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "agent_fund"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "group_sale_final"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "custom_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "subtract"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p1

    .line 936
    :pswitch_0
    const-string p1, "\u062a\u0635\u0641\u064a\u0631"

    return-object p1

    .line 932
    :pswitch_1
    const-string p1, "\u0633\u062d\u0628 \u064a\u0648\u0647\u0648"

    return-object p1

    .line 928
    :pswitch_2
    const-string p1, "\u0625\u0636\u0627\u0641\u0629"

    return-object p1

    .line 937
    :pswitch_3
    const-string p1, "\u062a\u0635\u0641\u064a\u0631 \u0648\u0643\u064a\u0644"

    return-object p1

    .line 935
    :pswitch_4
    const-string p1, "\u062a\u062d\u0648\u064a\u0644 \u062f\u0631\u0647\u0645"

    return-object p1

    .line 930
    :pswitch_5
    const-string p1, "\u0639\u0645\u0648\u0644\u0629 \u0627\u0644\u0648\u0643\u064a\u0644"

    return-object p1

    .line 931
    :pswitch_6
    const-string p1, "\u062a\u0645\u0648\u064a\u0644 \u0648\u0643\u064a\u0644"

    return-object p1

    .line 933
    :pswitch_7
    const-string p1, "\u0628\u064a\u0639 \u062c\u0645\u0627\u0639\u064a"

    return-object p1

    .line 934
    :pswitch_8
    const-string p1, "\u0628\u064a\u0639 \u0645\u062e\u0635\u0635"

    return-object p1

    .line 929
    :pswitch_9
    const-string p1, "\u062e\u0635\u0645"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7acce4ec -> :sswitch_9
        -0x69f393ab -> :sswitch_8
        -0x664c02c2 -> :sswitch_7
        -0x46824c41 -> :sswitch_6
        -0x467caebf -> :sswitch_5
        -0x3375c07c -> :sswitch_4
        -0x1aa3b3eb -> :sswitch_3
        0x178a1 -> :sswitch_2
        0x65b1fec -> :sswitch_1
        0x6761d4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private undoRecord(Ljava/lang/String;)V
    .locals 9

    .line 943
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "transaction_records"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 944
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0642\u062f \u062a\u0645 \u0627\u0644\u062a\u0631\u0627\u062c\u0639 \u0639\u0646\u0647\u0627 \u0628\u0627\u0644\u0641\u0639\u0644"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 949
    :cond_0
    const-string v1, "\\|\\|BEFORE\\|\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 950
    array-length v4, v1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 951
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u0644\u0627 \u064a\u0645\u0643\u0646 \u0627\u0644\u062a\u0631\u0627\u062c\u0639: \u0628\u064a\u0627\u0646\u0627\u062a \u063a\u064a\u0631 \u0643\u0627\u0645\u0644\u0629"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 955
    :cond_1
    const-string v4, "\\|\\|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    aget-object v4, v4, v6

    const/4 v6, 0x1

    .line 956
    aget-object v1, v1, v6

    const-string v7, "\\|"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 958
    const-string v7, "AGENT:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x6

    .line 959
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 960
    invoke-direct {p0, v4}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/Agent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 961
    array-length v7, v1

    if-lt v7, v5, :cond_3

    .line 962
    aget-object v5, v1, v3

    invoke-direct {p0, v5}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v4, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    .line 963
    aget-object v1, v1, v6

    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    .line 964
    invoke-direct {p0, v4}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/Agent;)V

    goto :goto_0

    .line 966
    :cond_2
    const-string v7, "\u0627\u0644\u062d\u0627\u0633\u0628\u0629 \u0627\u0644\u0639\u0627\u0626\u0645\u0629"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    array-length v4, v1

    if-lt v4, v5, :cond_3

    .line 967
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "aed_wallet"

    aget-object v7, v1, v3

    .line 968
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "usdt_wallet"

    aget-object v1, v1, v6

    .line 969
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 970
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 973
    :cond_3
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 974
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 975
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 977
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u062a\u0645 \u0627\u0644\u062a\u0631\u0627\u062c\u0639 \u0639\u0646 \u0627\u0644\u0639\u0645\u0644\u064a\u0629"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 978
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->sendUpdateBroadcast()V

    return-void
.end method

.method private updateAgentModeUI()V
    .locals 9

    .line 472
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 474
    iput-boolean v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomGroupSaleActive:Z

    .line 475
    iput-boolean v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomCommissionSale:Z

    .line 477
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    const-string v3, "- \u062e\u0635\u0645"

    const-string v4, "+ \u0625\u0636\u0627\u0641\u0629"

    const-string v5, "\u062f\u0648\u0644\u0627\u0631"

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-nez v2, :cond_1

    .line 478
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPriceSelector:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 484
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->addBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda14;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 491
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isAgentSaleMode:Z

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\ud83d\udc64 \u0628\u064a\u0639 \u0639\u0628\u0631: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    const-string v2, "#F39C12"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 495
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPriceSelector:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    const-string v2, "\u0639\u0645\u0648\u0644\u0629 \u064a\u0648\u0647\u0648"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 499
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 500
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateCommissionSelectionUI()V

    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "\ud83d\udc64 \u062a\u0639\u062f\u064a\u0644: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedAgentTextView:Landroid/widget/TextView;

    const-string v2, "#3498DB"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 504
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPriceSelector:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 508
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 509
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->addBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda15;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 514
    :goto_0
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetInputs()V

    .line 515
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateYohoDisplay()V

    return-void
.end method

.method private updateCalculationsFromAed(Ljava/lang/String;)V
    .locals 9

    .line 738
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    .line 739
    const-string v4, ""

    if-lez p1, :cond_4

    .line 740
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isAgentSaleMode:Z

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 741
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomGroupSaleActive:Z

    if-eqz p1, :cond_0

    .line 742
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionPrices:[D

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    div-double/2addr v2, v5

    mul-double/2addr v0, v2

    .line 744
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 746
    :cond_0
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomCommissionSale:Z

    if-eqz p1, :cond_1

    .line 747
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v0, v5

    const-wide v4, 0x41102ca000000000L    # 265000.0

    mul-double/2addr v0, v4

    sub-double/2addr v0, v2

    .line 750
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 752
    :cond_1
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionPrices:[D

    iget v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentAgentCommissionIndex:I

    aget-wide v7, p1, v4

    div-double v5, v7, v5

    mul-double/2addr v0, v5

    .line 754
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionValues:[D

    aget-wide v4, p1, v4

    cmpl-double p1, v7, v2

    if-lez p1, :cond_2

    div-double v2, v0, v7

    mul-double/2addr v2, v4

    .line 757
    :cond_2
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const-wide v2, 0x3fd0d79435e50d79L    # 0.2631578947368421

    mul-double/2addr v2, v0

    .line 762
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPrices:[D

    iget v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentYohoIndex:I

    aget-wide v2, p1, v2

    div-double/2addr v2, v5

    mul-double/2addr v0, v2

    .line 765
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 768
    :cond_4
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomCommissionSale:Z

    if-nez p1, :cond_5

    .line 770
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private updateCalculationsFromUsdt(Ljava/lang/String;)V
    .locals 4

    .line 776
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isAgentSaleMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 777
    :cond_0
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    const-wide v2, 0x400e666666666666L    # 3.8

    mul-double/2addr v0, v2

    .line 780
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 782
    :cond_1
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCalculationsFromYoho(Ljava/lang/String;)V
    .locals 7

    .line 788
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomCommissionSale:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateCalculationsFromAed(Ljava/lang/String;)V

    return-void

    .line 792
    :cond_0
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isAgentSaleMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-void

    .line 794
    :cond_1
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    .line 795
    const-string v4, ""

    if-lez p1, :cond_3

    .line 796
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPrices:[D

    iget v5, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentYohoIndex:I

    aget-wide v5, p1, v5

    cmpl-double p1, v5, v2

    if-lez p1, :cond_2

    div-double/2addr v0, v5

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 799
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 801
    :cond_2
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 805
    :cond_3
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCommissionSelectionUI()V
    .locals 4

    .line 1022
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionSelectorBar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentCommissionNames:[Ljava/lang/String;

    iget v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentAgentCommissionIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentAgentCommissionIndex:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomGroupSaleActive:Z

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 1024
    :goto_1
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomCommissionSale:Z

    .line 1026
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetInputs()V

    .line 1027
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1028
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1030
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda18;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomGroupSaleActive:Z

    if-eqz v0, :cond_2

    .line 1033
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    const-string v1, "\u062f\u0631\u0647\u0645 \u0644\u0644\u0639\u0636\u0648"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    const-string v1, "\u064a\u0648\u0647\u0648 \u0644\u0644\u0639\u0636\u0648 (\u0645\u062d\u0633\u0648\u0628)"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1036
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    const-string v1, "\u0627\u0644\u0639\u0645\u0648\u0644\u0629 \u0627\u0644\u0646\u0647\u0627\u0626\u064a\u0629"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1037
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->addBtn:Landroid/widget/Button;

    const-string v1, "+ \u0625\u0636\u0627\u0641\u0629 \u0639\u0636\u0648"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    const-string v1, "\u0625\u0646\u0647\u0627\u0621 \u0648\u062d\u0633\u0627\u0628"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1040
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService$$ExternalSyntheticLambda19;-><init>(Lcom/mosaedbarmaja/exchangenew/FloatingViewService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->customMemberSales:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1042
    const-string v0, "\u0648\u0636\u0639 \u0627\u0644\u0628\u064a\u0639 \u0627\u0644\u062c\u0645\u0627\u0639\u064a. \u0623\u062f\u062e\u0644 \u0645\u0628\u0644\u063a \u0627\u0644\u0639\u0636\u0648 \u062b\u0645 \u0627\u0636\u063a\u0637 \'\u0625\u0636\u0627\u0641\u0629 \u0639\u0636\u0648\'."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1043
    :cond_2
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isCustomCommissionSale:Z

    if-eqz v0, :cond_3

    .line 1044
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    const-string v1, "\u062f\u0631\u0647\u0645 \u0645\u0646 \u0627\u0644\u0639\u0636\u0648"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    const-string v1, "\u064a\u0648\u0647\u0648 \u0644\u0644\u0639\u0636\u0648 (\u0625\u062f\u062e\u0627\u0644)"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1047
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    const-string v1, "\u0639\u0645\u0648\u0644\u0629 \u0627\u0644\u0648\u0643\u064a\u0644 (\u0645\u062d\u0633\u0648\u0628\u0629)"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->addBtn:Landroid/widget/Button;

    const-string v1, "\u062a\u0646\u0641\u064a\u0630 \u0627\u0644\u0628\u064a\u0639 \u0627\u0644\u0645\u062e\u0635\u0635"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 1051
    :cond_3
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    const-string v1, "\u062f\u0631\u0647\u0645"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    const-string v1, "YOHO (\u0645\u062d\u0633\u0648\u0628)"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1054
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->usdtInput:Landroid/widget/EditText;

    const-string v1, "\u0639\u0645\u0648\u0644\u0629 \u064a\u0648\u0647\u0648 (\u0645\u062d\u0633\u0648\u0628\u0629)"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->addBtn:Landroid/widget/Button;

    const-string v1, "+ \u0625\u0636\u0627\u0641\u0629"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    const-string v1, "- \u062e\u0635\u0645"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->subBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1059
    :goto_2
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateCalculationsFromAed(Ljava/lang/String;)V

    return-void
.end method

.method private updateYohoDisplay()V
    .locals 4

    .line 713
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPriceSelector:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoPriceSelector:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoNames:[Ljava/lang/String;

    iget v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->currentYohoIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (\u0627\u0636\u063a\u0637 \u0644\u0644\u062a\u063a\u064a\u064a\u0631)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 718
    iput-boolean v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isUpdating:Z

    .line 719
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateCalculationsFromAed(Ljava/lang/String;)V

    .line 720
    iput-boolean v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isUpdating:Z

    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 722
    iput-boolean v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isUpdating:Z

    .line 723
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->updateCalculationsFromYoho(Ljava/lang/String;)V

    .line 724
    iput-boolean v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->isUpdating:Z

    :cond_2
    return-void
.end method

.method private withdrawAgentYoho()V
    .locals 14

    .line 627
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmpg-double v0, v4, v0

    const/4 v13, 0x0

    if-gtz v0, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u0623\u062f\u062e\u0644 \u0645\u0628\u0644\u063a \u0644\u0644\u0633\u062d\u0628"

    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/Agent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 635
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 636
    iget-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    sub-double/2addr v1, v4

    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    .line 637
    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/Agent;)V

    .line 638
    iget-object v3, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    iget-wide v6, v0, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    const-string v2, "subtract"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->generateAgentYohoMessage(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v11

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AGENT:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u0633\u062d\u0628 YOHO \u0645\u0628\u0627\u0634\u0631"

    const-string v2, "withdraw_agent_yoho"

    move-wide v7, v4

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-direct {p0, v11}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->copyToClipboard(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u062a\u0645 \u0633\u062d\u0628 YOHO"

    invoke-static {v0, v2, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 642
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->resetInputs()V

    .line 643
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->sendUpdateBroadcast()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 10

    .line 97
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 98
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->setupFormatting()V

    .line 99
    const-string v0, "GoldExchangeApp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->preferences:Landroid/content/SharedPreferences;

    .line 101
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->createRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mFloatingView:Landroid/view/View;

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 104
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x8

    const/4 v8, -0x3

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x7f6

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v3, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    .line 111
    :cond_0
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x8

    const/4 v9, -0x3

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7d2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v4, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 120
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 121
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 123
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mFloatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->showCalculatorView()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 886
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 887
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mFloatingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->agentPopup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->commissionPopup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method
