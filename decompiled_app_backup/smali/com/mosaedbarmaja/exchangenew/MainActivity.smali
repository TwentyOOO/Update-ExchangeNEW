.class public Lcom/mosaedbarmaja/exchangenew/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;,
        Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_ITEM_MARKER:Ljava/lang/Object;

.field public static final AGENTS_PREFS_KEY:Ljava/lang/String; = "shipping_agents"

.field private static final CODE_DRAW_OVER_OTHER_APP_PERMISSION:I = 0x824

.field private static final KEY_COMMISSION_INDEX:Ljava/lang/String; = "commission_index"

.field private static final KEY_CURRENT_YOHO_INDEX:Ljava/lang/String; = "current_yoho_index"

.field private static final KEY_SELECTED_AGENT:Ljava/lang/String; = "selected_agent"

.field public static final OWNER_KEY_MAIN_WALLET:Ljava/lang/String; = "MAIN_WALLET"

.field private static final PREFS_NAME:Ljava/lang/String; = "GoldExchangeApp"

.field public static final RECORDS_PREFS_KEY:Ljava/lang/String; = "transaction_records"

.field private static final UPDATE_JSON_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/TwentyOOO/Update-ExchangeNEW/main/update.json"


# instance fields
.field private final AED_TO_USDT_RATE:D

.field private final CUSTOM_SALE_BASE_RATE_260:D

.field private final CUSTOM_SALE_BASE_RATE_265:D

.field private final USDT_TO_AED_RATE:D

.field private addBtn:Landroid/widget/Button;

.field private aedInput:Landroid/widget/EditText;

.field private aedValue:Landroid/widget/TextView;

.field private agentAedWalletDisplay:Landroid/widget/TextView;

.field private agentCommissionButton:Landroid/widget/Button;

.field private final agentCommissionNames:[Ljava/lang/String;

.field private agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

.field private final agentCommissionPrices:[D

.field private final agentCommissionValues:[D

.field private agentListPopupWindow:Landroid/widget/ListPopupWindow;

.field private agentWalletLayout:Landroid/widget/LinearLayout;

.field private agentYohoWalletDisplay:Landroid/widget/TextView;

.field private currentAgentCommissionIndex:I

.field private currentCustomRate:D

.field private currentYohoIndex:I

.field private final customMemberSales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private isActivityActive:Z

.field private isAgentSaleMode:Z

.field private isCustomCommissionSale:Z

.field private isCustomGroupSaleActive:Z

.field private isQuickCalculatorEnabled:Z

.field private isTransferToMemberMode:Z

.field private isUpdating:Z

.field private preferences:Landroid/content/SharedPreferences;

.field private selectedAgentTextView:Landroid/widget/TextView;

.field private selectedMainAgentName:Ljava/lang/String;

.field private subBtn:Landroid/widget/Button;

.field private updateReceiver:Landroid/content/BroadcastReceiver;

.field private usdtIconView:Landroid/widget/ImageView;

.field private usdtInput:Landroid/widget/EditText;

.field private usdtValue:Landroid/widget/TextView;

.field private whatsappDecimalFormat:Ljava/text/DecimalFormat;

.field private yohoDecimalFormat:Ljava/text/DecimalFormat;

.field private yohoInput:Landroid/widget/EditText;

.field private final yohoNames:[Ljava/lang/String;

.field private yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

.field private yohoPriceSelector:Landroid/widget/TextView;

.field private final yohoPrices:[D


# direct methods
.method public static synthetic $r8$lambda$2-zLN9XULn10PfVq1X28CU7jEy4(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showAgentCommissionPrices$19(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3rJ6Dn3nxDc_1QUTa8oUgNwE1P8(Lcom/mosaedbarmaja/exchangenew/MainActivity;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showDeleteAgentDialog$27([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5M-v9hBUI8gKSO_BmtQkZK7J3ZI(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showMemberGroupSaleDialog$21(Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5kpugfM1LHq7O185Gg5Fz_T0Ilk(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createBubbleControlButtons$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6yF7horhdJyPOLZi-e4u-QRP9GA(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createEditableBalanceView$12(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7B0LY8WECfz-VQbULQlksEmqmRU(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/EditText;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createAgentWalletLayout$7(Landroid/widget/EditText;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7GHKotLIViJYrX4mTTvIlZZLrBs(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createTopButtonsLayout$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7V-HKZLk64Um2d1k5l47WvGOIN0(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$handleReset$29(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7esUHLYciuECiizXIvOjva5L4z4(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showMemberGroupSaleDialog$22(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8C9CQ0PNAqRBKzLfyXLFlHi9nyU(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showAgentPopupMenu$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$GlewzyR18Ba7WYfDmejddDMbi8I(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->showAgentPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KDd8yqXPKuEdPBZaaWqWZmAzeHg(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createAgentWalletLayout$6(Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KERez88qSjdoqHxciyI2CMfOqqc(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$checkForUpdate$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$MUhTvvtP5Etwcs_GbWHUgJkcPcQ(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createAgentWalletLayout$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O4HGeK7HG_gbIfOmr9q_5gG4ws0(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showYohoPrices$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$OfXAFoI_ZqY4B15AHmVoy953oyU(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$resetMainWallet$30(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OgygGsFfN0WinnUTLikHj4PHU8k(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createTopButtonsLayout$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TT7jG8zYDDVfdX-zKmhsSTEslXE(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createTopButtonsLayout$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UxDrIUHEvUJ1dFVAj_ykliwQjQc(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createOldStyleActionButtons$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X1my-O-dqD7Ec9c-Lcy4kd9VKfc(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createTopButtonsLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X5vkhk6JVmAqcNmaJV_igkDjEuo(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/TextView;Landroid/widget/EditText;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createEditableBalanceView$10(Landroid/widget/TextView;Landroid/widget/EditText;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZ6OEWQXFr-GPt-OJWtspsSx9f0(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createEditableBalanceView$11(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZCHVKbXBALUjTJgXWh2iwDFB9pI(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createAgentWalletLayout$8(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_MOy4Qpma-a3QL5cbpKnIzo9m9k(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showUpdateDialog$33(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_zFNVxqJE6Fb-3X3cBIdJzqrxZo(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createSelectedAgentTextView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bR0rsC1dcwda_3bnNyE0TzRvfoQ(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$confirmDeleteAgent$28(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eLivbIi4waBzhiY_1IHab9jn5Pk(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createOldStyleActionButtons$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$if5QxH_mgu5nBNng45RQKuodXWc(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showYohoPrices$17(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jLgB6XoGJ7GGaZyS-ucTs2AQzEU(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$checkForUpdate$31(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPDy0WXl_IoZkWEqU_mb6E4JlIY(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->showAgentCommissionPrices(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mX9AYaJMSz1ngyk_vUIs8LfH3uw(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->showYohoPrices(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nJ8YYtfAFgs7Krb-_gH-xZQ_X0c(Lcom/mosaedbarmaja/exchangenew/MainActivity;Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showAgentPopupMenu$23(Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pXa9Baxkh-RKYjyxbrcF3d567cQ(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showAddAgentDialog$25(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPUfelPp6mNWyM313tcTe6cxSFs(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createTopButtonsLayout$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xZ0102vhmDgG_gXJZbcE-lF9RgU(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$showAgentCommissionPrices$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$zyJz03faZ_B7l73aWFjM3J0conI(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->lambda$createBubbleControlButtons$15(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaedInput(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetagentListPopupWindow(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/ListPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAgentCommissionIndex(Lcom/mosaedbarmaja/exchangenew/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisCustomCommissionSale(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisUpdating(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isUpdating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetusdtInput(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyohoDecimalFormat(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Ljava/text/DecimalFormat;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyohoInput(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisUpdating(Lcom/mosaedbarmaja/exchangenew/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isUpdating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mparseDoubleSafe(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mshowAddAgentDialog(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->showAddAgentDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDeleteAgentDialog(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->showDeleteAgentDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAgentBalanceDisplay(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCalculationsFromAed(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateCalculationsFromAed(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCalculationsFromUsdt(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateCalculationsFromUsdt(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCalculationsFromYoho(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateCalculationsFromYoho(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWalletDisplay(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateWalletDisplay()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->ACTION_ITEM_MARKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isActivityActive:Z

    .line 82
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isQuickCalculatorEnabled:Z

    const-wide v1, 0x3fd0d79435e50d79L    # 0.2631578947368421

    .line 84
    iput-wide v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->AED_TO_USDT_RATE:D

    const-wide v1, 0x400e666666666666L    # 3.8

    .line 85
    iput-wide v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->USDT_TO_AED_RATE:D

    const-wide v1, 0x41102ca000000000L    # 265000.0

    .line 86
    iput-wide v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->CUSTOM_SALE_BASE_RATE_265:D

    const-wide v3, 0x410fbd0000000000L    # 260000.0

    .line 87
    iput-wide v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->CUSTOM_SALE_BASE_RATE_260:D

    const/4 v3, 0x4

    .line 110
    new-array v4, v3, [D

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPrices:[D

    .line 111
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "\u0627\u0644\u062a\u0633\u0639\u064a\u0631\u0629 \u0627\u0644\u0627\u0648\u0644\u0649"

    aput-object v5, v4, v0

    const-string v5, "\u0627\u0644\u062a\u0633\u0639\u064a\u0631\u0629 \u0627\u0644\u062b\u0627\u0646\u064a\u0629"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "\u0627\u0644\u062a\u0633\u0639\u064a\u0631\u0629 \u0627\u0644\u062b\u0627\u0644\u062b\u0629"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "\u0627\u0644\u062a\u0633\u0639\u064a\u0631\u0629 \u0627\u0644\u0631\u0627\u0628\u0639\u0629"

    const/4 v8, 0x3

    aput-object v5, v4, v8

    iput-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoNames:[Ljava/lang/String;

    .line 112
    iput v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentYohoIndex:I

    const/4 v4, 0x6

    .line 114
    new-array v5, v4, [D

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPrices:[D

    .line 115
    new-array v5, v4, [D

    fill-array-data v5, :array_2

    iput-object v5, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionValues:[D

    .line 116
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "\u062a\u0633\u0639\u064a\u0631\u0629 265"

    aput-object v5, v4, v0

    const-string v5, "\u062a\u0633\u0639\u064a\u0631\u0629 260"

    aput-object v5, v4, v6

    const-string v5, "\u062a\u0633\u0639\u064a\u0631\u0629 255"

    aput-object v5, v4, v7

    const-string v5, "\u062a\u0633\u0639\u064a\u0631\u0629 \u062c\u0645\u0627\u0639\u064a\u0629 265"

    aput-object v5, v4, v8

    const-string v5, "\u062a\u0633\u0639\u064a\u0631\u0629 \u0645\u062e\u0635\u0635\u0629 265"

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "\u062a\u0633\u0639\u064a\u0631\u0629 \u0645\u062e\u0635\u0635\u0629 260"

    aput-object v5, v4, v3

    iput-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionNames:[Ljava/lang/String;

    const/4 v3, -0x1

    .line 117
    iput v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    .line 119
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isUpdating:Z

    const/4 v3, 0x0

    .line 120
    iput-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    .line 121
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isTransferToMemberMode:Z

    .line 122
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomGroupSaleActive:Z

    .line 123
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    .line 124
    iput-wide v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentCustomRate:D

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->customMemberSales:Ljava/util/List;

    .line 126
    iput-boolean v6, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isAgentSaleMode:Z

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
        0x410e848000000000L    # 250000.0
        0x410e848000000000L    # 250000.0
        0x41102ca000000000L    # 265000.0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x40cd4c0000000000L    # 15000.0
        0x40c3880000000000L    # 10000.0
        0x40b3880000000000L    # 5000.0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private addToMainWalletSilently(D)V
    .locals 14

    const-wide v0, 0x3fd0d79435e50d79L    # 0.2631578947368421

    mul-double v6, p1, v0

    .line 1170
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "aed_wallet"

    const-string v2, "0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v3

    .line 1171
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "usdt_wallet"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v8

    add-double v10, v3, p1

    add-double v12, v8, v6

    .line 1174
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1175
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1176
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1179
    const-string v11, "\u062a\u062d\u0648\u064a\u0644 \u062f\u0627\u062e\u0644\u064a"

    const-string v12, ""

    const-string v3, "add_silent"

    const-wide/16 v8, 0x0

    const-string v10, "MAIN_WALLET"

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v13}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateWalletDisplay()V

    return-void
.end method

.method private checkForUpdate()V
    .locals 2

    .line 2010
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2038
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkPermissionAndStartService()V
    .locals 3

    .line 760
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x824

    .line 763
    invoke-virtual {p0, v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->startFloatingService()V

    return-void
.end method

.method private cleanupPopupWindows()V
    .locals 2

    .line 1421
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1422
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1423
    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1

    .line 1426
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1427
    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    .line 1429
    :cond_1
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_2

    .line 1430
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1431
    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    :cond_2
    return-void
.end method

.method private confirmDeleteAgent(Ljava/lang/String;)V
    .locals 3

    .line 1770
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u062a\u0623\u0643\u064a\u062f \u0627\u0644\u062d\u0630\u0641"

    .line 1771
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0647\u0644 \u0623\u0646\u062a \u0645\u062a\u0623\u0643\u062f \u0623\u0646\u0643 \u062a\u0631\u064a\u062f \u062d\u0630\u0641 \u0627\u0644\u0648\u0643\u064a\u0644 \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\u061f \u0644\u0627 \u064a\u0645\u0643\u0646 \u0627\u0644\u062a\u0631\u0627\u062c\u0639 \u0639\u0646 \u0647\u0630\u0627 \u0627\u0644\u0625\u062c\u0631\u0627\u0621."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1772
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda32;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)V

    .line 1773
    const-string p1, "\u062d\u0630\u0641"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v1, 0x0

    .line 1787
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1788
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private createAgentWalletLayout()Landroid/widget/LinearLayout;
    .locals 14

    .line 436
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentWalletLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 437
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 438
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentWalletLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentWalletLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x5

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 441
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0xa

    .line 442
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 443
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x11

    .line 445
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 446
    const-string v9, "#2C3E50"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v9, 0x14

    .line 447
    invoke-virtual {v7, v9, v4, v9, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 448
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    new-instance v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v7}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 468
    :try_start_0
    sget v10, Lcom/mosaedbarmaja/exchangenew/R$drawable;->yoho_icon:I

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :catch_0
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x30

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 470
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 471
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentYohoWalletDisplay:Landroid/widget/TextView;

    .line 475
    const-string v10, "YOHO: 0"

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentYohoWalletDisplay:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentYohoWalletDisplay:Landroid/widget/TextView;

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 478
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentYohoWalletDisplay:Landroid/widget/TextView;

    const-string v13, "yoho_text"

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentYohoWalletDisplay:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 481
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 482
    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setTextSize(F)V

    .line 483
    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v13, 0x0

    .line 484
    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 485
    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 486
    invoke-virtual {v0, v9, v4, v9, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    const/16 v13, 0x3002

    .line 487
    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 488
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v2, 0x6

    .line 489
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 490
    const-string v2, "yoho_editor"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 491
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 500
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 509
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentWalletLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 511
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 512
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 513
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 514
    const-string v2, "#16A085"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 515
    invoke-virtual {v0, v9, v4, v9, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 516
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 520
    :try_start_1
    sget v2, Lcom/mosaedbarmaja/exchangenew/R$drawable;->aed_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 521
    :catch_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 522
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 523
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 526
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentAedWalletDisplay:Landroid/widget/TextView;

    .line 527
    const-string v2, "0.00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentAedWalletDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentAedWalletDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 530
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentAedWalletDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 531
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentWalletLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 532
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentWalletLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private createBubbleControlButtons()Landroid/widget/LinearLayout;
    .locals 9

    .line 731
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 732
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 733
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x28

    const/16 v3, 0xa

    .line 734
    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 736
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 737
    const-string v4, "\u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u0622\u0644\u0629 \u0627\u0644\u062d\u0627\u0633\u0628\u0629 \u0627\u0644\u0639\u0627\u0626\u0645\u0629"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 738
    const-string v4, "#1ABC9C"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v4, -0x1

    .line 739
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 740
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x96

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 741
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 742
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    new-instance v5, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v5, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda18;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 746
    const-string v8, "\u0625\u064a\u0642\u0627\u0641 \u0627\u0644\u0622\u0644\u0629 \u0627\u0644\u062d\u0627\u0633\u0628\u0629 \u0627\u0644\u0639\u0627\u0626\u0645\u0629"

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 747
    const-string v8, "#95A5A6"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 748
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 749
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 750
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 751
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 755
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createCurrencyIcon(I)Landroid/widget/ImageView;
    .locals 3

    .line 636
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 637
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :catch_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x30

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 639
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 640
    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 641
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createEditableBalanceView(Ljava/lang/String;)Landroid/view/View;
    .locals 7

    .line 646
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 647
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 648
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x11

    .line 649
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 650
    const-string v4, "#F8F8F8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v4, 0xa

    const/16 v5, 0xf

    .line 651
    invoke-virtual {v1, v4, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 652
    const-string v6, "AED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 653
    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedValue:Landroid/widget/TextView;

    goto :goto_0

    .line 655
    :cond_0
    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtValue:Landroid/widget/TextView;

    .line 657
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 659
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 660
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 661
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 662
    const-string v2, "#E0F7FA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 663
    invoke-virtual {v6, v4, v5, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    const/16 v2, 0x3002

    .line 664
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v2, 0x8

    .line 665
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v2, 0x6

    .line 666
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 667
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 669
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, v1, v6, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda34;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/TextView;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0, p1, v6, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda35;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 687
    new-instance p1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda36;

    invoke-direct {p1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda36;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v6, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object v0
.end method

.method private createMaterialIconButton(ILjava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 6

    .line 394
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 395
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 396
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0xa

    .line 397
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 398
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 399
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {p3, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 401
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 403
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 404
    :try_start_0
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :catch_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v5, p1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 406
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x40

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 412
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 413
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, 0x5

    .line 414
    invoke-virtual {p1, v4, p2, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 415
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createOldStyleActionButtons()Landroid/widget/LinearLayout;
    .locals 6

    .line 701
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 702
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 703
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x14

    .line 704
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 706
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x96

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 707
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 709
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->addBtn:Landroid/widget/Button;

    .line 710
    const-string v3, "+ \u0625\u0636\u0627\u0641\u0629"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->addBtn:Landroid/widget/Button;

    const-string v3, "#4CAF50"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 712
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->addBtn:Landroid/widget/Button;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 713
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->addBtn:Landroid/widget/Button;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 714
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->addBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->addBtn:Landroid/widget/Button;

    new-instance v5, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v5, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->subBtn:Landroid/widget/Button;

    .line 718
    const-string v5, "- \u062e\u0635\u0645"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->subBtn:Landroid/widget/Button;

    const-string v5, "#F44336"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 720
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->subBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 721
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->subBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 722
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->subBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->subBtn:Landroid/widget/Button;

    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda16;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->addBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 726
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->subBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createOldStyleEditText(Ljava/lang/String;IZ)Landroid/widget/EditText;
    .locals 2

    .line 536
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 537
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 538
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 p1, 0x2002

    .line 539
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    int-to-float p1, p2

    .line 540
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 p1, 0x11

    .line 541
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 542
    const-string p1, "#F0F0F0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/16 p1, 0x14

    .line 543
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/EditText;->setPadding(IIII)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 545
    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-object v0
.end method

.method private createOldStyleInputLayout()Landroid/widget/LinearLayout;
    .locals 10

    .line 551
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 552
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 553
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xa

    .line 554
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 556
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 557
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 558
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x5

    .line 559
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 560
    sget v7, Lcom/mosaedbarmaja/exchangenew/R$drawable;->aed_icon:I

    invoke-direct {p0, v7}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createCurrencyIcon(I)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 561
    const-string v7, "0.00"

    const/16 v8, 0x12

    invoke-direct {p0, v7, v8, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createOldStyleEditText(Ljava/lang/String;IZ)Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    .line 562
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 564
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 565
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 566
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    invoke-virtual {v9, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 568
    sget v3, Lcom/mosaedbarmaja/exchangenew/R$drawable;->usdt_icon:I

    invoke-direct {p0, v3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createCurrencyIcon(I)Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtIconView:Landroid/widget/ImageView;

    .line 569
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    invoke-direct {p0, v7, v8, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createOldStyleEditText(Ljava/lang/String;IZ)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    .line 571
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 573
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 574
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createOldStyleWalletLayout()Landroid/widget/LinearLayout;
    .locals 8

    .line 611
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 612
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 613
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xa

    .line 614
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 616
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 617
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 618
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x5

    .line 619
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 620
    sget v7, Lcom/mosaedbarmaja/exchangenew/R$drawable;->aed_icon:I

    invoke-direct {p0, v7}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createCurrencyIcon(I)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 621
    const-string v7, "AED"

    invoke-direct {p0, v7}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createEditableBalanceView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 624
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 625
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 626
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 628
    sget v1, Lcom/mosaedbarmaja/exchangenew/R$drawable;->usdt_icon:I

    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createCurrencyIcon(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 629
    const-string v1, "USDT"

    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createEditableBalanceView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 630
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createOldStyleYohoControls()Landroid/widget/LinearLayout;
    .locals 8

    .line 579
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 580
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 581
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 582
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    const/16 v7, 0x1e

    .line 583
    invoke-virtual {v3, v6, v7, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 584
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    .line 586
    const-string v6, "\u0627\u062e\u062a\u0631 \u0633\u0639\u0631 YOHO"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 588
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    const-string v6, "#FFBF00"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 589
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 590
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    const-string v3, "#F0F0F0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 591
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 592
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v1, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    new-instance v5, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v5, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda26;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    .line 595
    const-string v5, "\u0633\u0639\u0631 \u0627\u0644\u0639\u0645\u064a\u0644"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 597
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 598
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    const-string v5, "#F39C12"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 599
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 600
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0xa

    .line 601
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 602
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 604
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda27;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createSelectedAgentTextView()Landroid/widget/TextView;
    .locals 4

    .line 422
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    .line 423
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 424
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 426
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    const/16 v2, 0x14

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 427
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    const/16 v2, 0xa

    .line 429
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 430
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private createTitleSection()Landroid/widget/LinearLayout;
    .locals 7

    .line 333
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 334
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x28

    const/4 v3, 0x0

    .line 335
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 336
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x1000000

    .line 337
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 339
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 340
    const-string v4, "\u062d\u0627\u0633\u0628\u0629 \u0627\u0644\u0649 \u064a\u0648\u0647\u0648"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x42000000    # 32.0f

    .line 341
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 342
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    .line 343
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x0

    .line 344
    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 345
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 347
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 348
    const-string v6, "\u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a \u21cc \u0627\u0644\u062f\u0648\u0644\u0627\u0631 \u0623\u0645\u0631\u064a\u0643\u0649"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41c00000    # 24.0f

    .line 349
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 350
    const-string v6, "#FFBF00"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 352
    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v1, 0xa

    .line 353
    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 354
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createTopButtonsLayout()Landroid/widget/LinearLayout;
    .locals 8

    .line 359
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 360
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 361
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x96

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    sget v1, Lcom/mosaedbarmaja/exchangenew/R$drawable;->ic_analytics:I

    const-string v2, "\u062a\u062d\u0644\u064a\u0644"

    const-string v3, "#27AE60"

    invoke-direct {p0, v1, v2, v3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createMaterialIconButton(ILjava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 364
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    sget v2, Lcom/mosaedbarmaja/exchangenew/R$drawable;->ic_local_shipping:I

    const-string v3, "\u0648\u0643\u0644\u0627\u0621"

    const-string v4, "#F39C12"

    invoke-direct {p0, v2, v3, v4}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createMaterialIconButton(ILjava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 367
    new-instance v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 375
    sget v3, Lcom/mosaedbarmaja/exchangenew/R$drawable;->ic_history:I

    const-string v4, "\u0627\u0644\u0633\u062c\u0644\u0627\u062a"

    const-string v5, "#3498DB"

    invoke-direct {p0, v3, v4, v5}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createMaterialIconButton(ILjava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 376
    new-instance v4, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    sget v4, Lcom/mosaedbarmaja/exchangenew/R$drawable;->ic_restart_alt:I

    const-string v5, "\u062a\u0635\u0641\u064a\u0631"

    const-string v6, "#FF6B6B"

    invoke-direct {p0, v4, v5, v6}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createMaterialIconButton(ILjava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 379
    new-instance v5, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    sget v5, Lcom/mosaedbarmaja/exchangenew/R$drawable;->ic_analytics:I

    const-string v6, "\u0627\u0644\u062d\u0627\u0633\u0628\u0629 \u0627\u0644\u0633\u0631\u064a\u0639\u0629"

    const-string v7, "#9C27B0"

    invoke-direct {p0, v5, v6, v7}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createMaterialIconButton(ILjava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 382
    new-instance v6, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private dismissAllPopups()V
    .locals 1

    .line 1436
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1442
    :cond_1
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1443
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method private downloadAndInstallApk(Ljava/lang/String;)V
    .locals 3

    .line 2086
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 2087
    const-string p1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 2088
    const-string p1, "\u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u062a\u062d\u062f\u064a\u062b"

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 2089
    const-string p1, "\u062c\u0627\u0631\u064a \u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0625\u0635\u062f\u0627\u0631 \u0627\u0644\u062c\u062f\u064a\u062f..."

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    .line 2090
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 2093
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v2, "app-update.apk"

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 2095
    const-string v1, "\u0628\u062f\u0623 \u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u062a\u062d\u062f\u064a\u062b..."

    invoke-static {p0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2096
    const-string p1, "download"

    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    if-nez p1, :cond_0

    .line 2098
    const-string p1, "\u0641\u0634\u0644 \u0628\u062f\u0621 \u0627\u0644\u062a\u062d\u0645\u064a\u0644."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2101
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 2103
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$4;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;JLandroid/app/DownloadManager;)V

    .line 2130
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    .line 2132
    invoke-virtual {p0, v2, p1, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 2134
    :cond_1
    invoke-virtual {p0, v2, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private formatToK(D)Ljava/lang/String;
    .locals 4

    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide v2, -0x3f70c00000000000L    # -1000.0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    .line 1219
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1221
    :cond_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.#K"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    div-double/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fundAgentWithAedAndYoho()V
    .locals 13

    .line 1001
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v3

    .line 1002
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmpg-double v2, v3, v0

    if-gtz v2, :cond_0

    cmpg-double v0, v7, v0

    if-gtz v0, :cond_0

    .line 1004
    const-string v0, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0645\u0628\u0644\u063a \u0628\u0627\u0644\u062f\u0631\u0647\u0645 \u0627\u0644\u0625\u0645\u0627\u0631\u0627\u062a\u064a \u0623\u0648 YOHO"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1009
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1010
    iget-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    .line 1011
    iget-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    add-double/2addr v1, v7

    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 1012
    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;)V

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AGENT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u062a\u0645\u0648\u064a\u0644 \u0645\u0628\u0627\u0634\u0631"

    const-string v11, ""

    const-string v2, "agent_fund"

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u062a\u0645 \u0625\u064a\u062f\u0627\u0639 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a \u0648 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " YOHO \u0644\u0644\u0648\u0643\u064a\u0644"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1015
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    .line 1016
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetInputs()V

    return-void
.end method

.method private generateAgentCustomSaleMessage(Ljava/lang/String;DDDD)Ljava/lang/String;
    .locals 0

    .line 1247
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Custom sale performed by "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateAgentSaleMessage(Ljava/lang/String;DDD)Ljava/lang/String;
    .locals 2

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ud83d\udcc3 \u062a\u0642\u0631\u064a\u0631 \u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0648 \u0627\u0644\u0645\u062d\u0641\u0636\u0629\n\ud83d\udfe9 \u0625\u0644\u0649 \u064a\u0648\u0647\u0648 : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1237
    invoke-direct {p0, p6, p7}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->formatToK(D)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, "\n___________________________________\n\ud83d\udc64 \u0639\u0628\u0631 \u0648\u0643\u064a\u0644 : "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p6, "\n\ud83d\udd0b \u0639\u0645\u0648\u0644\u0629 \u0627\u0644\u0649 \u064a\u0648\u0647\u0648 "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-direct {p0, p4, p5}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->formatToK(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "\n\n\ud83d\udc64 \u0625\u0644\u0649 \u0627\u0644\u0639\u0636\u0648:\n\ud83d\udcb5 \u0644\u0644\u0639\u0636\u0648 \u064a\u0648\u0647\u0648: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-direct {p0, p2, p3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->formatToK(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateAgentYohoMessage(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;
    .locals 1

    .line 1225
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\ud83d\udcc3 \u062a\u0642\u0631\u064a\u0631 \u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0648 \u0627\u0644\u0645\u062d\u0641\u0636\u0629\n\ud83d\udfe5 \u0625\u0644\u0649 \u064a\u0648\u0647\u0648 : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1227
    invoke-direct {p0, p5, p6}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->formatToK(D)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, "\n___________________________________\n\ud83d\udc64 \u0639\u0628\u0631 \u0648\u0643\u064a\u0644 : "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p5, "\n\ud83e\udeab \u062e\u0635\u0645 \u0627\u0644\u0649 \u064a\u0648\u0647\u0648 "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-direct {p0, p3, p4}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->formatToK(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateGroupSaleMessage(Ljava/lang/String;Ljava/util/List;DD)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[D>;DD)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1251
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\ud83d\udcc3 \u062a\u0642\u0631\u064a\u0631 \u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0648 \u0627\u0644\u0645\u062d\u0641\u0636\u0629\n\ud83d\udfe9 \u0625\u0644\u0649 \u064a\u0648\u0647\u0648 : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1253
    invoke-direct {p0, p5, p6}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->formatToK(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\n___________________________________\n\ud83d\udd0b \u0628\u064a\u0639 \u062c\u0645\u0627\u0639\u064a \ud83e\uddd1\u200d\ud83e\uddd1\u200d\ud83e\uddd2\u200d\ud83e\uddd2\n"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x1

    move p4, p3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [D

    .line 1258
    const-string p6, "\ud83d\udfe1 "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0639\u0636\u0648 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%-10s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, ": "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    aget-wide v0, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->formatToK(D)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, "\n"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p4, p3

    goto :goto_0

    .line 1261
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateWhatsappMessage(Ljava/lang/String;DDDDLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1186
    new-instance p10, Ljava/lang/StringBuilder;

    const-string v0, "\ud83d\udcc3 \u062a\u0642\u0631\u064a\u0631 \u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0648 \u0627\u0644\u0645\u062d\u0641\u0636\u0629\n"

    invoke-direct {p10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "subtract"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "\n"

    const-string v0, "\n\ud83d\udcb5 \u0627\u0644\u062f\u0648\u0644\u0627\u0631 \u0627\u0644\u0623\u0645\u0631\u064a\u0643\u0649: "

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 1206
    :pswitch_0
    const-string v1, "\u2b1c \u0627\u0644\u062f\u0648\u0644\u0623\u0631 \u0625\u0644\u0627\u0645\u0631\u064a\u0643\u0649 : "

    invoke-virtual {p10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p8, p9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    const-string p9, "\n\u2b1c \u0627\u0644\u062f\u0631\u0647\u0645 \u0625\u0644\u0627\u0645\u0627\u0631\u0627\u062a\u064a : "

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    iget-object p8, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p8, p6, p7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p10, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, "\n___________________________________\n\ud83e\udeab \u062a\u0645 \u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u062a\u0639\u064a\u064a\u0646 \ud83d\udd01\n\ud83d\udcb7 \u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a    : "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    iget-object p6, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p6, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2, p4, p5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1190
    :pswitch_1
    const-string v1, "\ud83d\udfe9 \u0627\u0644\u062f\u0648\u0644\u0623\u0631 \u0625\u0644\u0627\u0645\u0631\u064a\u0643\u0649 : "

    invoke-virtual {p10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p8, p9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    const-string p9, "\n\ud83d\udfe9 \u0627\u0644\u062f\u0631\u0647\u0645 \u0625\u0644\u0627\u0645\u0627\u0631\u0627\u062a\u064a : "

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    iget-object p8, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p8, p6, p7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p10, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, "\n___________________________________\n\ud83d\udd0b \u062a\u0645 \u0627\u0636\u0627\u0641\u0629 \u0627\u0644\u0631\u0635\u064a\u062f\n\ud83d\udcb7 \u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a    : "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    iget-object p6, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p6, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2, p4, p5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1198
    :pswitch_2
    const-string v1, "\ud83d\udfe5 \u0627\u0644\u062f\u0648\u0644\u0623\u0631 \u0625\u0644\u0627\u0645\u0631\u064a\u0643\u0649 : "

    invoke-virtual {p10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p8, p9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    const-string p9, "\n\ud83d\udfe5 \u0627\u0644\u062f\u0631\u0647\u0645 \u0625\u0644\u0627\u0645\u0627\u0631\u0627\u062a\u064a : "

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    iget-object p8, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p8, p6, p7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p10, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, "\n___________________________________\n\ud83e\udeab \u062a\u0645 \u062e\u0635\u0645 \u0627\u0644\u0631\u0635\u064a\u062f\n\ud83d\udcb7 \u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a    : "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    iget-object p6, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p6, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2, p4, p5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    :goto_1
    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7acce4ec -> :sswitch_2
        0x178a1 -> :sswitch_1
        0x6761d4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;
    .locals 12

    .line 1792
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "shipping_agents"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1793
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1794
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1795
    array-length v2, v1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1796
    array-length v0, v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    aget-object v0, v1, v4

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v8, v4

    goto :goto_1

    :cond_0
    move-wide v8, v2

    .line 1797
    :goto_1
    array-length v0, v1

    const/4 v4, 0x2

    if-le v0, v4, :cond_1

    aget-object v0, v1, v4

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v2

    :cond_1
    move-wide v10, v2

    .line 1798
    new-instance v6, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;-><init>(Ljava/lang/String;DD)V

    return-object v6

    :cond_2
    move-object v7, p1

    move-object p1, v7

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCurrentVersionCode()I
    .locals 3

    const/4 v0, 0x0

    .line 2002
    :try_start_0
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2003
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private handleAddOrSubtract(Z)V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 897
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->handleAgentLogic(Z)V

    return-void

    .line 899
    :cond_0
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->handleMainWalletLogic(Z)V

    return-void
.end method

.method private handleAgentLogic(Z)V
    .locals 1

    .line 979
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isTransferToMemberMode:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 981
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomGroupSaleActive:Z

    if-eqz p1, :cond_0

    .line 982
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->performFinalGroupSaleCalculation()V

    return-void

    .line 983
    :cond_0
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    if-eqz p1, :cond_1

    .line 984
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->performCustomCommissionSale()V

    return-void

    .line 986
    :cond_1
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->performAgentSaleToMember()V

    return-void

    .line 989
    :cond_2
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->performAgentStockTransfer()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 993
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->fundAgentWithAedAndYoho()V

    return-void

    .line 995
    :cond_4
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->withdrawAgentYoho()V

    return-void
.end method

.method private handleAgentYohoManualEdit(Ljava/lang/String;)V
    .locals 12

    .line 1893
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1894
    :cond_0
    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 1896
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1897
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1898
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    return-void

    .line 1902
    :cond_2
    iget-wide v3, v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 1903
    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 1904
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v5, v3

    goto :goto_1

    .line 1905
    :cond_3
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1906
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1907
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v5

    sub-double v5, v3, v5

    goto :goto_1

    .line 1909
    :cond_4
    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_1

    .line 1912
    :cond_5
    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v5

    .line 1914
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "|"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1915
    iput-wide v5, v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 1916
    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;)V

    .line 1917
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "\u062a\u0639\u062f\u064a\u0644 \u064a\u062f\u0648\u064a. \u0642\u062f\u064a\u0645: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", \u062c\u062f\u064a\u062f: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sub-double v6, v5, v3

    .line 1918
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AGENT:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    const-string v1, "agent_yoho_edit"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    .line 1920
    const-string v1, "\u062a\u0645 \u062a\u062d\u062f\u064a\u062b \u0631\u0635\u064a\u062f YOHO"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private handleMainWalletLogic(Z)V
    .locals 14

    .line 904
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmpg-double v0, v3, v0

    const/4 v13, 0x0

    if-gtz v0, :cond_0

    .line 906
    const-string p1, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0642\u064a\u0645\u0629 \u0645\u0648\u062c\u0628\u0629 \u0635\u0627\u0644\u062d\u0629"

    invoke-static {p0, p1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-wide v0, 0x3fd0d79435e50d79L    # 0.2631578947368421

    mul-double v5, v3, v0

    .line 910
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "aed_wallet"

    const-string v2, "0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v7

    .line 911
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "usdt_wallet"

    invoke-interface {v0, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v10

    .line 912
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

    .line 915
    :goto_1
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 916
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 917
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 918
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_3

    .line 919
    const-string v0, "add"

    goto :goto_2

    :cond_3
    const-string v0, "subtract"

    :goto_2
    move-object v2, v0

    move-wide v9, v10

    const/4 v11, 0x0

    move-object v1, p0

    .line 920
    invoke-direct/range {v1 .. v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->generateWhatsappMessage(Ljava/lang/String;DDDDLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 921
    const-string v9, "MAIN_WALLET"

    const-string v10, "Main Wallet Transaction"

    const-wide/16 v7, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-direct {p0, v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->shareToWhatsApp(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 923
    const-string p1, "\u062a\u0645\u062a \u0627\u0644\u0625\u0636\u0627\u0641\u0629 \u0628\u0646\u062c\u0627\u062d"

    goto :goto_3

    :cond_4
    const-string p1, "\u062a\u0645 \u0627\u0644\u062e\u0635\u0645 \u0628\u0646\u062c\u0627\u062d"

    :goto_3
    invoke-static {p0, p1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 924
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateWalletDisplay()V

    return-void
.end method

.method private handleReset()V
    .locals 3

    .line 1841
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1842
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0625\u0639\u0627\u062f\u0629 \u062a\u0639\u064a\u064a\u0646 \u0627\u0644\u0631\u0635\u064a\u062f \u0644\u0640 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1843
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0647\u0644 \u0623\u0646\u062a \u0645\u062a\u0623\u0643\u062f \u0623\u0646\u0643 \u062a\u0631\u064a\u062f \u0625\u0639\u0627\u062f\u0629 \u062a\u0639\u064a\u064a\u0646 \u0627\u0644\u0623\u0631\u0635\u062f\u0629 (YOHO \u0648\u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a) \u0644\u0640 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u061f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1844
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    .line 1845
    const-string v2, "\u0646\u0639\u0645\u060c \u0625\u0639\u0627\u062f\u0629 \u062a\u0639\u064a\u064a\u0646"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v2, 0x0

    .line 1849
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1850
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 1852
    :cond_0
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetMainWallet()V

    return-void
.end method

.method private handleWalletManualEdit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 928
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 929
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    invoke-direct {v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateWalletDisplay()V

    return-void

    .line 934
    :cond_0
    const-string v3, "AED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ", \u062c\u062f\u064a\u062f: "

    const-string v5, "\u062a\u0639\u062f\u064a\u0644 \u064a\u062f\u0648\u064a. \u0642\u062f\u064a\u0645: "

    const-string v6, "|"

    const-string v7, "-"

    const-string v8, "+"

    const-string v10, "usdt_wallet"

    const-string v11, "0.0"

    const-string v12, "aed_wallet"

    if-eqz v3, :cond_3

    .line 935
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v13

    .line 936
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v10

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v9

    .line 938
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 939
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v1

    add-double/2addr v1, v13

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 940
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 941
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v1

    sub-double v1, v13, v1

    goto :goto_0

    .line 943
    :cond_2
    invoke-direct {v0, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v1

    :goto_0
    const-wide v7, 0x3fd0d79435e50d79L    # 0.2631578947368421

    mul-double/2addr v7, v1

    .line 946
    iget-object v11, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 947
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 948
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v3, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 949
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sub-double/2addr v1, v13

    sub-double v4, v7, v9

    .line 952
    const-string v8, "MAIN_WALLET"

    const-string v10, ""

    move-object v9, v3

    move-wide v2, v1

    const-string v1, "wallet_aed_edit"

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    move-object v3, v10

    .line 953
    const-string v9, "USDT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 954
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v9

    .line 955
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v13

    .line 957
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 958
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v1

    add-double/2addr v1, v13

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 959
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 960
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v1

    sub-double v1, v13, v1

    goto :goto_1

    .line 962
    :cond_5
    invoke-direct {v0, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v1

    :goto_1
    const-wide v7, 0x400e666666666666L    # 3.8

    mul-double/2addr v7, v1

    .line 965
    iget-object v11, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 966
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 967
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v3, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 968
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sub-double/2addr v7, v9

    sub-double v4, v1, v13

    move-object v9, v3

    move-wide v2, v7

    .line 971
    const-string v8, "MAIN_WALLET"

    const-string v10, ""

    const-string v1, "wallet_usdt_edit"

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :cond_6
    :goto_2
    invoke-direct {v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateWalletDisplay()V

    .line 974
    const-string v1, "\u062a\u0645 \u062a\u062d\u062f\u064a\u062b \u0627\u0644\u0631\u0635\u064a\u062f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private isAccessibilityServiceEnabled()Z
    .locals 4

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/mosaedbarmaja/exchangenew/QuickCalculatorService;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2065
    :try_start_0
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    .line 2064
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2073
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    .line 2072
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2076
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method private synthetic lambda$checkForUpdate$31(Ljava/lang/String;)V
    .locals 0

    .line 2032
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->showUpdateDialog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$checkForUpdate$32()V
    .locals 4

    .line 2012
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://raw.githubusercontent.com/TwentyOOO/Update-ExchangeNEW/main/update.json"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 2014
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 2016
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2019
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2020
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2022
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 2023
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2025
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2026
    const-string v0, "latestVersionCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2027
    const-string v2, "apkUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2029
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getCurrentVersionCode()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 2032
    new-instance v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda33;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 2036
    const-string v1, "UpdateChecker"

    const-string v2, "Error checking for update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic lambda$confirmDeleteAgent$28(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1774
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    const-string v0, "shipping_agents"

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 1775
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 1776
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1777
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1778
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1781
    :cond_1
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1782
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u062a\u0645 \u062d\u0630\u0641 \u0627\u0644\u0648\u0643\u064a\u0644 "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 1783
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1784
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetSelection()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createAgentWalletLayout$6(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 3

    .line 450
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    const-string p2, "yoho_editor"

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 452
    const-string v0, "yoho_text"

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 453
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 455
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 456
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 458
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    iget-wide v1, p1, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 461
    :cond_2
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 462
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    .line 463
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$createAgentWalletLayout$7(Landroid/widget/EditText;Landroid/view/View;Z)V
    .locals 0

    if-nez p3, :cond_0

    .line 495
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->handleAgentYohoManualEdit(Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 496
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentYohoWalletDisplay:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createAgentWalletLayout$8(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    .line 502
    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 503
    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 504
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private synthetic lambda$createAgentWalletLayout$9(Landroid/view/View;)V
    .locals 0

    .line 517
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->transferAgentAedToMainWallet()V

    return-void
.end method

.method private synthetic lambda$createBubbleControlButtons$15(Landroid/view/View;)V
    .locals 0

    .line 743
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->checkPermissionAndStartService()V

    return-void
.end method

.method private synthetic lambda$createBubbleControlButtons$16(Landroid/view/View;)V
    .locals 1

    .line 752
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private synthetic lambda$createEditableBalanceView$10(Landroid/widget/TextView;Landroid/widget/EditText;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const/16 p4, 0x8

    .line 670
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 671
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 672
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string p4, "AED"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "aed_wallet"

    goto :goto_0

    :cond_0
    const-string p3, "usdt_wallet"

    :goto_0
    const-string p4, "0.0"

    invoke-interface {p1, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 673
    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 674
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 675
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 676
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p3, 0x1

    .line 677
    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private synthetic lambda$createEditableBalanceView$11(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/view/View;Z)V
    .locals 0

    if-nez p5, :cond_0

    .line 682
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->handleWalletManualEdit(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 683
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 p1, 0x0

    .line 684
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createEditableBalanceView$12(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    .line 689
    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 690
    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 691
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private synthetic lambda$createOldStyleActionButtons$13(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 715
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->handleAddOrSubtract(Z)V

    return-void
.end method

.method private synthetic lambda$createOldStyleActionButtons$14(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 723
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->handleAddOrSubtract(Z)V

    return-void
.end method

.method private synthetic lambda$createSelectedAgentTextView$5(Landroid/view/View;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetSelection()V

    return-void
.end method

.method private synthetic lambda$createTopButtonsLayout$0(Landroid/view/View;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->openChartActivity()V

    return-void
.end method

.method private synthetic lambda$createTopButtonsLayout$1(Landroid/view/View;)Z
    .locals 2

    .line 369
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isAgentSaleMode:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isAgentSaleMode:Z

    if-nez v0, :cond_0

    .line 370
    const-string v0, "#F39C12"

    goto :goto_0

    :cond_0
    const-string v0, "#3498DB"

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 371
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isAgentSaleMode:Z

    if-eqz p1, :cond_1

    const-string p1, "\u0648\u0636\u0639 \u0628\u064a\u0639 \u0627\u0644\u0648\u0643\u064a\u0644"

    goto :goto_1

    :cond_1
    const-string p1, "\u0648\u0636\u0639 \u062a\u0639\u062f\u064a\u0644 \u0627\u0644\u0648\u0643\u064a\u0644"

    :goto_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createTopButtonsLayout$2(Landroid/view/View;)V
    .locals 0

    .line 376
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->openRecordsActivity()V

    return-void
.end method

.method private synthetic lambda$createTopButtonsLayout$3(Landroid/view/View;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->handleReset()V

    return-void
.end method

.method private synthetic lambda$createTopButtonsLayout$4(Landroid/view/View;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->toggleQuickCalculator()V

    return-void
.end method

.method private synthetic lambda$handleReset$29(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1846
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetAgentBalance(Ljava/lang/String;)V

    .line 1847
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetSelection()V

    return-void
.end method

.method private synthetic lambda$resetMainWallet$30(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 1861
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string p2, "aed_wallet"

    const-string v0, "0.0"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v3

    .line 1862
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "usdt_wallet"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v5

    .line 1863
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1864
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1865
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1866
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1867
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 1868
    const-string v2, "reset"

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->generateWhatsappMessage(Ljava/lang/String;DDDDLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1869
    const-string v9, "MAIN_WALLET"

    const-string v10, "\u0625\u0639\u0627\u062f\u0629 \u062a\u0639\u064a\u064a\u0646 \u0627\u0644\u0645\u062d\u0641\u0638\u0629 \u0627\u0644\u0631\u0626\u064a\u0633\u064a\u0629"

    const-string v2, "reset"

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateWalletDisplay()V

    .line 1871
    invoke-direct {p0, v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->shareToWhatsApp(Ljava/lang/String;)V

    .line 1872
    const-string p1, "\u062a\u0645\u062a \u0625\u0639\u0627\u062f\u0629 \u062a\u0639\u064a\u064a\u0646 \u0627\u0644\u0645\u062d\u0641\u0638\u0629"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showAddAgentDialog$25(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1727
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1728
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1729
    const-string p1, "\u0644\u0627 \u064a\u0645\u0643\u0646 \u0623\u0646 \u064a\u0643\u0648\u0646 \u0627\u0633\u0645 \u0627\u0644\u0648\u0643\u064a\u0644 \u0641\u0627\u0631\u063a\u064b\u0627"

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1732
    :cond_0
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "shipping_agents"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 1733
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1734
    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1735
    const-string p1, "\u0647\u0630\u0627 \u0627\u0644\u0648\u0643\u064a\u0644 \u0645\u0648\u062c\u0648\u062f \u0628\u0627\u0644\u0641\u0639\u0644"

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1739
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1740
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "|0.0|0.0"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1741
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1742
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u062a\u0645\u062a \u0625\u0636\u0627\u0641\u0629 \u0627\u0644\u0648\u0643\u064a\u0644 "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$showAddAgentDialog$26(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1744
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private synthetic lambda$showAgentCommissionPrices$19(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1516
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isActivityActive:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 1517
    iput-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomGroupSaleActive:Z

    .line 1518
    iput-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    .line 1519
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->customMemberSales:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1520
    iput p3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    const/4 p1, 0x3

    const/4 p2, 0x1

    if-ne p3, p1, :cond_0

    .line 1522
    iput-boolean p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomGroupSaleActive:Z

    .line 1523
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->showMemberGroupSaleDialog()V

    goto :goto_1

    :cond_0
    const/4 p1, 0x4

    if-eq p3, p1, :cond_1

    const/4 p4, 0x5

    if-ne p3, p4, :cond_3

    .line 1525
    :cond_1
    iput-boolean p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    if-ne p3, p1, :cond_2

    const-wide p1, 0x41102ca000000000L    # 265000.0

    goto :goto_0

    :cond_2
    const-wide p1, 0x410fbd0000000000L    # 260000.0

    .line 1526
    :goto_0
    iput-wide p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentCustomRate:D

    .line 1528
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateYohoDisplay()V

    .line 1530
    :cond_4
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->dismissAllPopups()V

    return-void
.end method

.method private synthetic lambda$showAgentCommissionPrices$20()V
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1536
    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showAgentPopupMenu$23(Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1662
    iget-boolean p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isActivityActive:Z

    if-eqz p2, :cond_0

    .line 1663
    invoke-virtual {p1, p4}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 1664
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 1665
    check-cast p1, Ljava/lang/String;

    iget-boolean p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isAgentSaleMode:Z

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->setupAgentMode(Ljava/lang/String;Z)V

    .line 1668
    :cond_0
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->dismissAllPopups()V

    return-void
.end method

.method private synthetic lambda$showAgentPopupMenu$24()V
    .locals 1

    .line 1673
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1674
    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showDeleteAgentDialog$27([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1763
    aget-object p1, p1, p3

    check-cast p1, Ljava/lang/String;

    .line 1764
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->confirmDeleteAgent(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showMemberGroupSaleDialog$21(Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1607
    iget-object p3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->customMemberSales:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x0

    move p4, p3

    .line 1608
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p4, v0, :cond_2

    .line 1609
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1610
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1611
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1612
    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 1614
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "\u0639\u0636\u0648 "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, p4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->customMemberSales:Ljava/util/List;

    const/4 v6, 0x2

    new-array v6, v6, [D

    aput-wide v4, v6, p3

    aput-wide v2, v6, v1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1619
    :cond_2
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->customMemberSales:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1620
    iput-boolean v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomGroupSaleActive:Z

    .line 1621
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateYohoDisplay()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$showMemberGroupSaleDialog$22(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1625
    iput-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomGroupSaleActive:Z

    .line 1626
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateYohoDisplay()V

    return-void
.end method

.method private synthetic lambda$showUpdateDialog$33(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2045
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->downloadAndInstallApk(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showYohoPrices$17(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1466
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isActivityActive:Z

    if-eqz p1, :cond_0

    .line 1467
    iput p3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentYohoIndex:I

    .line 1468
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateYohoDisplay()V

    .line 1470
    :cond_0
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->dismissAllPopups()V

    return-void
.end method

.method private synthetic lambda$showYohoPrices$18()V
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1476
    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    :cond_0
    return-void
.end method

.method private openChartActivity()V
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->openChartActivity(Ljava/lang/String;)V

    return-void
.end method

.method private openChartActivity(Ljava/lang/String;)V
    .locals 3

    .line 1708
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mosaedbarmaja/exchangenew/ChartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AGENT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "ALL"

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 1710
    :cond_1
    const-string p1, "\u062c\u0645\u064a\u0639 \u0627\u0644\u0633\u062c\u0644\u0627\u062a"

    .line 1711
    :goto_1
    const-string v2, "owner_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1712
    const-string v1, "owner_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1713
    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openRecordsActivity()V
    .locals 1

    .line 1691
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->openRecordsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private openRecordsActivity(Ljava/lang/String;)V
    .locals 3

    .line 1699
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 1700
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AGENT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "ALL"

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 1701
    :cond_1
    const-string p1, "\u062c\u0645\u064a\u0639 \u0627\u0644\u0633\u062c\u0644\u0627\u062a"

    .line 1702
    :goto_1
    const-string v2, "owner_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1703
    const-string v1, "owner_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1704
    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private parseDoubleSafe(Ljava/lang/String;)D
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 790
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 792
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

    .line 1020
    iget v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    const/4 v2, -0x1

    const/4 v12, 0x0

    if-ne v1, v2, :cond_0

    .line 1021
    const-string v1, "\u0627\u0644\u0631\u062c\u0627\u0621 \u062a\u062d\u062f\u064a\u062f \u0633\u0639\u0631 \u0627\u0644\u0639\u0645\u064a\u0644 \u0623\u0648\u0644\u0627\u064b"

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1024
    :cond_0
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/16 v1, 0x0

    cmpg-double v3, v8, v1

    if-gtz v3, :cond_1

    .line 1026
    const-string v1, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0642\u064a\u0645\u0629"

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1029
    :cond_1
    iget-object v3, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    .line 1031
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1032
    iget-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    add-double/2addr v4, v8

    iput-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    .line 1033
    iget-object v4, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPrices:[D

    iget v5, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    aget-wide v6, v4, v5

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double v13, v6, v13

    mul-double/2addr v13, v8

    .line 1035
    iget-object v4, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionValues:[D

    aget-wide v15, v4, v5

    cmpl-double v4, v6, v1

    if-lez v4, :cond_3

    div-double v1, v13, v6

    mul-double/2addr v1, v15

    :cond_3
    move-wide v4, v1

    .line 1038
    iget-wide v1, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    add-double/2addr v1, v4

    iput-wide v1, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 1039
    invoke-direct {v0, v3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;)V

    .line 1040
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    iget-wide v6, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    move-wide v2, v13

    invoke-direct/range {v0 .. v7}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->generateAgentSaleMessage(Ljava/lang/String;DDD)Ljava/lang/String;

    move-result-object v10

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "AGENT:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

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

    invoke-direct/range {v0 .. v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-direct {v0, v10}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->shareToWhatsApp(Ljava/lang/String;)V

    .line 1043
    const-string v1, "\u062a\u0645\u062a \u0639\u0645\u0644\u064a\u0629 \u0627\u0644\u0628\u064a\u0639 \u0628\u0646\u062c\u0627\u062d"

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1044
    invoke-direct {v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    .line 1045
    invoke-direct {v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetInputs()V

    return-void
.end method

.method private performAgentStockTransfer()V
    .locals 14

    .line 1129
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmpg-double v0, v3, v0

    const/4 v13, 0x0

    if-gtz v0, :cond_0

    .line 1131
    const-string v0, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0642\u064a\u0645\u0629"

    invoke-static {p0, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPrices:[D

    iget v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentYohoIndex:I

    aget-wide v1, v0, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v5

    mul-double v7, v3, v1

    .line 1136
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1138
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1139
    iget-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    sub-double/2addr v1, v7

    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 1140
    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;)V

    move-wide v8, v7

    .line 1141
    iget-object v7, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    iget-wide v10, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    const-string v6, "transfer"

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->generateAgentYohoMessage(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v11

    move-object v1, v5

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AGENT:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "\u062a\u062d\u0648\u064a\u0644 \u0645\u0646 \u0645\u062e\u0632\u0648\u0646 \u0627\u0644\u0648\u0643\u064a\u0644"

    const-string v2, "agent_transfer_stock"

    const-wide/16 v5, 0x0

    move-wide v7, v8

    move-object v9, v0

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-direct {p0, v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->shareToWhatsApp(Ljava/lang/String;)V

    .line 1144
    const-string v0, "\u062a\u0645 \u062a\u062d\u0648\u064a\u0644 \u0627\u0644\u0631\u0635\u064a\u062f \u0645\u0646 \u0627\u0644\u0648\u0643\u064a\u0644"

    invoke-static {p0, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1145
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    .line 1146
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetInputs()V

    return-void
.end method

.method private performCustomCommissionSale()V
    .locals 13

    .line 1049
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v3

    .line 1050
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmpg-double v2, v3, v5

    const/4 v7, 0x1

    if-gtz v2, :cond_0

    .line 1052
    const-string v0, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0645\u0628\u0644\u063a \u0627\u0644\u062f\u0631\u0647\u0645 \u0627\u0644\u0625\u0645\u0627\u0631\u0627\u062a\u064a"

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v8, v3, v8

    .line 1055
    iget-wide v10, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentCustomRate:D

    mul-double/2addr v8, v10

    .line 1057
    iget v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    const/4 v10, 0x5

    const-string v11, "\u062e\u0637\u0623: \u0645\u0628\u0644\u063a YOHO \u0627\u0644\u0645\u062f\u062e\u0644 \u0623\u0643\u0628\u0631 \u0645\u0646 \u0627\u0644\u0642\u064a\u0645\u0629 \u0627\u0644\u0623\u0633\u0627\u0633\u064a\u0629"

    if-ne v2, v10, :cond_2

    cmpg-double v2, v0, v5

    if-gtz v2, :cond_1

    .line 1059
    const-string v0, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0645\u0628\u0644\u063a YOHO \u0644\u0644\u0639\u0645\u064a\u0644"

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    cmpl-double v2, v0, v8

    if-lez v2, :cond_4

    .line 1063
    invoke-static {p0, v11, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    cmpg-double v2, v0, v5

    if-gtz v2, :cond_3

    move-wide v0, v8

    :cond_3
    cmpl-double v2, v0, v8

    if-lez v2, :cond_4

    .line 1071
    invoke-static {p0, v11, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    move-wide v5, v0

    sub-double v7, v8, v5

    .line 1076
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 1078
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v9, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1079
    iget-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    .line 1080
    iget-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    add-double/2addr v1, v7

    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 1081
    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;)V

    .line 1082
    iget-object v2, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->name:Ljava/lang/String;

    iget-wide v9, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->generateAgentCustomSaleMessage(Ljava/lang/String;DDDD)Ljava/lang/String;

    move-result-object v11

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AGENT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u0628\u064a\u0639 \u0645\u062e\u0635\u0635. YOHO \u0627\u0644\u0639\u0645\u064a\u0644: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v2, "agent_custom_sale"

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-direct {p0, v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->shareToWhatsApp(Ljava/lang/String;)V

    .line 1085
    const-string v0, "\u062a\u0645\u062a \u0639\u0645\u0644\u064a\u0629 \u0627\u0644\u0628\u064a\u0639 \u0627\u0644\u0645\u062e\u0635\u0635 \u0628\u0646\u062c\u0627\u062d"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1086
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetSelection()V

    return-void
.end method

.method private performFinalGroupSaleCalculation()V
    .locals 17

    move-object/from16 v0, p0

    .line 1090
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->customMemberSales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    .line 1091
    const-string v1, "\u0644\u0645 \u064a\u062a\u0645 \u062a\u062d\u062f\u064a\u062f \u062d\u0635\u0635 YOHO \u0644\u0644\u0623\u0639\u0636\u0627\u0621."

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1094
    :cond_0
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/16 v1, 0x0

    cmpg-double v3, v7, v1

    if-gtz v3, :cond_1

    .line 1096
    const-string v1, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0627\u0644\u0645\u0628\u0644\u063a \u0627\u0644\u0625\u062c\u0645\u0627\u0644\u064a \u0628\u0627\u0644\u062f\u0631\u0647\u0645 \u0627\u0644\u0625\u0645\u0627\u0631\u0627\u062a\u064a"

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1099
    :cond_1
    iget-object v3, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPrices:[D

    const/4 v4, 0x3

    aget-wide v4, v3, v4

    cmpg-double v3, v4, v1

    if-gtz v3, :cond_2

    const-wide v4, 0x41102ca000000000L    # 265000.0

    :cond_2
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v9

    mul-double/2addr v4, v7

    .line 1105
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v3, "\u062a\u0645 \u0627\u0644\u062a\u0648\u0632\u064a\u0639: "

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1106
    iget-object v3, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->customMemberSales:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v10, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v13, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 1107
    aget-wide v14, v6, v13

    add-double/2addr v10, v14

    .line 1108
    const-string v14, "\u0639\u0636\u0648="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide v15, v1

    aget-wide v1, v6, v13

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v1, v15

    goto :goto_0

    :cond_3
    move-wide v15, v1

    sub-double v1, v4, v10

    cmpg-double v3, v1, v15

    if-gez v3, :cond_4

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u062e\u0637\u0623: \u0625\u062c\u0645\u0627\u0644\u064a YOHO \u0644\u0644\u0623\u0639\u0636\u0627\u0621 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") \u0623\u0643\u0628\u0631 \u0645\u0646 \u0627\u0644\u0625\u062c\u0645\u0627\u0644\u064a ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1115
    :cond_4
    iget-object v3, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    .line 1117
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1118
    iget-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    add-double/2addr v4, v7

    iput-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    .line 1119
    iget-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    add-double/2addr v4, v1

    iput-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 1120
    invoke-direct {v0, v3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;)V

    move-wide v4, v1

    .line 1121
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    iget-object v2, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->customMemberSales:Ljava/util/List;

    iget-wide v13, v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    move-wide v3, v4

    move-wide v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->generateGroupSaleMessage(Ljava/lang/String;Ljava/util/List;DD)Ljava/lang/String;

    move-result-object v10

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AGENT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-wide v4, v3

    move-wide v2, v7

    move-object v8, v1

    const-string v1, "group_sale"

    move-wide v6, v4

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-direct {v0, v10}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->shareToWhatsApp(Ljava/lang/String;)V

    .line 1124
    const-string v1, "\u062a\u0645\u062a \u0627\u0644\u0645\u0639\u0627\u0645\u0644\u0629 \u0628\u0646\u062c\u0627\u062d"

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1125
    invoke-direct {v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetSelection()V

    return-void
.end method

.method private resetAgentBalance(Ljava/lang/String;)V
    .locals 13

    .line 1879
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1881
    iget-wide v7, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 1882
    iget-wide v3, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    .line 1883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v1, 0x0

    .line 1884
    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 1885
    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    .line 1886
    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;)V

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u062a\u0645\u062a \u0625\u0639\u0627\u062f\u0629 \u062a\u0639\u064a\u064a\u0646 \u0623\u0631\u0635\u062f\u0629 \u0627\u0644\u0648\u0643\u064a\u0644 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1888
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AGENT:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u0625\u0639\u0627\u062f\u0629 \u062a\u0639\u064a\u064a\u0646 \u0631\u0635\u064a\u062f \u0627\u0644\u0648\u0643\u064a\u0644"

    const-string v11, ""

    const-string v2, "reset_agent"

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetInputs()V
    .locals 2

    .line 1360
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private resetMainWallet()V
    .locals 3

    .line 1857
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0625\u0639\u0627\u062f\u0629 \u062a\u0639\u064a\u064a\u0646 \u0627\u0644\u0645\u062d\u0641\u0638\u0629 \u0627\u0644\u0631\u0626\u064a\u0633\u064a\u0629"

    .line 1858
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0647\u0644 \u0623\u0646\u062a \u0645\u062a\u0623\u0643\u062f \u0623\u0646\u0643 \u062a\u0631\u064a\u062f \u0625\u0639\u0627\u062f\u0629 \u062a\u0639\u064a\u064a\u0646 \u0627\u0644\u0645\u062d\u0641\u0638\u0629 \u0628\u0627\u0644\u0643\u0627\u0645\u0644\u061f"

    .line 1859
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    .line 1860
    const-string v2, "\u0646\u0639\u0645"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v2, 0x0

    .line 1874
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1875
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private resetSelection()V
    .locals 3

    const/4 v0, 0x0

    .line 1366
    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1367
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isTransferToMemberMode:Z

    const/4 v1, -0x1

    .line 1368
    iput v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    .line 1369
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomGroupSaleActive:Z

    .line 1370
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    .line 1371
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->customMemberSales:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1372
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1373
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentWalletLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1374
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1375
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1377
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1378
    :try_start_0
    sget v2, Lcom/mosaedbarmaja/exchangenew/R$drawable;->usdt_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    const-string v2, "0.00"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1381
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1383
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetInputs()V

    .line 1384
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateYohoDisplay()V

    return-void
.end method

.method private saveAgentData(Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "shipping_agents"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1807
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1808
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

    .line 1809
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p1, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1810
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1813
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p1, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p1, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1814
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1266
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

    .line 1267
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

    .line 1268
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

    .line 1269
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    const-string p4, "transaction_records"

    invoke-interface {p2, p4, p3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 1270
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1271
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1272
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p4, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setupAgentMode(Ljava/lang/String;Z)V
    .locals 2

    .line 1388
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    .line 1389
    iput-boolean p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isTransferToMemberMode:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1391
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ud83d\udc64 \u0628\u064a\u0639 \u0639\u0628\u0631 \u0627\u0644\u0648\u0643\u064a\u0644: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1392
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    const-string v0, "#F39C12"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1393
    iput p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    .line 1395
    :try_start_0
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtIconView:Landroid/widget/ImageView;

    sget v0, Lcom/mosaedbarmaja/exchangenew/R$drawable;->yoho_icon:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :catch_0
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    const-string v0, "\u0627\u0644\u0639\u0645\u0648\u0644\u0629"

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1397
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1398
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1401
    :cond_0
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ud83d\udc64 \u062a\u0639\u062f\u064a\u0644 \u0627\u0644\u0648\u0643\u064a\u0644: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    const-string v0, "#3498DB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 p2, -0x1

    .line 1403
    iput p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    .line 1405
    :try_start_1
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtIconView:Landroid/widget/ImageView;

    sget v0, Lcom/mosaedbarmaja/exchangenew/R$drawable;->usdt_icon:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1406
    :catch_1
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    const-string v0, "0.00"

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1407
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1409
    :goto_0
    iget-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedAgentTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1410
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateYohoDisplay()V

    .line 1411
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    return-void
.end method

.method private setupFormatting()V
    .locals 3

    .line 232
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 233
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0.00"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    .line 234
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    .line 235
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->whatsappDecimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method private setupTextWatchers()V
    .locals 2

    .line 239
    new-instance v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$2;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    .line 280
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 282
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private setupUI()V
    .locals 9

    .line 288
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x1

    .line 290
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v3, 0x0

    .line 291
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 293
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createTitleSection()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createTopButtonsLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 297
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 298
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x14

    .line 299
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 301
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createSelectedAgentTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createAgentWalletLayout()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createOldStyleInputLayout()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createOldStyleYohoControls()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    const-string v7, "YOHO"

    const/16 v8, 0x16

    invoke-direct {p0, v7, v8, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createOldStyleEditText(Ljava/lang/String;IZ)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    .line 307
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    const/16 v7, 0x1e

    .line 308
    invoke-virtual {v1, v2, v2, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 309
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 313
    const-string v2, "\u0627\u0644\u0645\u062d\u0641\u0638\u0629 (\u0627\u0646\u0642\u0631 \u0639\u0644\u0649 \u0627\u0644\u0631\u0635\u064a\u062f \u0644\u0644\u062a\u0639\u062f\u064a\u0644)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41900000    # 18.0f

    .line 314
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v2, -0x1000000

    .line 315
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    .line 316
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0xa

    .line 317
    invoke-virtual {v1, v3, v6, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 318
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 320
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createOldStyleWalletLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createBubbleControlButtons()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->createOldStyleActionButtons()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 325
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private setupUpdateReceiver()V
    .locals 1

    .line 222
    new-instance v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$1;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private shareToWhatsApp(Ljava/lang/String;)V
    .locals 2

    .line 1277
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1278
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1279
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1280
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    const-string v1, "com.whatsapp.w4b"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1285
    :catch_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1286
    const-string v1, "Transaction"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1289
    const-string p1, "\u062a\u0645 \u0646\u0633\u062e \u0627\u0644\u0631\u0633\u0627\u0644\u0629! (WhatsApp Business \u063a\u064a\u0631 \u0645\u062b\u0628\u062a)"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private showAddAgentDialog()V
    .locals 5

    .line 1717
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1718
    const-string v1, "\u0625\u0636\u0627\u0641\u0629 \u0648\u0643\u064a\u0644 \u062c\u062f\u064a\u062f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1719
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1720
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1721
    const-string v2, "\u0627\u0633\u0645 \u0627\u0644\u0648\u0643\u064a\u0644"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1722
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x32

    const/16 v4, 0x14

    .line 1723
    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1724
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1725
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1726
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda30;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/widget/EditText;)V

    const-string v1, "\u0625\u0636\u0627\u0641\u0629"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1744
    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda31;-><init>()V

    const-string v2, "\u0625\u0644\u063a\u0627\u0621"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1745
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAgentCommissionPrices(Landroid/view/View;)V
    .locals 4

    .line 1493
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isActivityActive:Z

    if-nez v0, :cond_0

    return-void

    .line 1495
    :cond_0
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isTransferToMemberMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1496
    const-string p1, "\u0627\u0644\u0631\u062c\u0627\u0621 \u062a\u062d\u062f\u064a\u062f \u0648\u0636\u0639 \u0628\u064a\u0639 \u0627\u0644\u0648\u0643\u064a\u0644 \u0623\u0648\u0644\u0627\u064b"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1501
    :cond_1
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1502
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void

    .line 1507
    :cond_2
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->dismissAllPopups()V

    .line 1511
    :try_start_0
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    .line 1512
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionNames:[Ljava/lang/String;

    const v3, 0x1090003

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1513
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1514
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1515
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1534
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda22;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1541
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1542
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1543
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 1544
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10800b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1545
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1547
    const-string v0, "PopupError"

    const-string v2, "Error showing agent commission popup"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1548
    const-string p1, "\u062d\u062f\u062b \u062e\u0637\u0623 \u0641\u064a \u0639\u0631\u0636 \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u0639\u0645\u0648\u0644\u0627\u062a"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showAgentPopupMenu(Landroid/view/View;)V
    .locals 5

    .line 1633
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isActivityActive:Z

    if-nez v0, :cond_0

    return-void

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1637
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void

    .line 1642
    :cond_1
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->dismissAllPopups()V

    const/4 v0, 0x0

    .line 1646
    :try_start_0
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    .line 1649
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "shipping_agents"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 1650
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1651
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1652
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1654
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1655
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1656
    sget-object v2, Lcom/mosaedbarmaja/exchangenew/MainActivity;->ACTION_ITEM_MARKER:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;

    invoke-direct {v2, p0, p0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 1658
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1659
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1661
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v3, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda21;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1672
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda23;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1679
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1680
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1681
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 1682
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1683
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1685
    const-string v1, "PopupError"

    const-string v2, "Error showing agent list popup"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1686
    const-string p1, "\u062d\u062f\u062b \u062e\u0637\u0623 \u0641\u064a \u0639\u0631\u0636 \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u0648\u0643\u0644\u0627\u0621"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showDeleteAgentDialog()V
    .locals 5

    .line 1749
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "shipping_agents"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1750
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1751
    const-string v0, "\u0644\u0627 \u064a\u0648\u062c\u062f \u0648\u0643\u0644\u0627\u0621 \u0644\u062d\u0630\u0641\u0647\u0645"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1754
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1755
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1756
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1758
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1759
    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 1760
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0627\u062e\u062a\u0631 \u0627\u0644\u0648\u0643\u064a\u0644 \u0627\u0644\u0645\u0631\u0627\u062f \u062d\u0630\u0641\u0647"

    .line 1761
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda25;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;[Ljava/lang/CharSequence;)V

    .line 1762
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1766
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showMemberGroupSaleDialog()V
    .locals 10

    .line 1553
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1554
    const-string v1, "\u062a\u0648\u0632\u064a\u0639 YOHO \u0639\u0644\u0649 \u0627\u0644\u0623\u0639\u0636\u0627\u0621"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1555
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1556
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x1e

    const/16 v4, 0x14

    .line 1557
    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1558
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1559
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1560
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1561
    invoke-virtual {v3, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1562
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1563
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1565
    new-instance v4, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/mosaedbarmaja/exchangenew/MainActivity$3;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 1603
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1604
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1605
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1606
    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, v6, v8}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda28;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/util/List;Ljava/util/List;)V

    const-string v2, "\u062a\u0623\u0643\u064a\u062f"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1624
    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda29;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    const-string v2, "\u0625\u0644\u063a\u0627\u0621"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1628
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1629
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showUpdateDialog(Ljava/lang/String;)V
    .locals 2

    .line 2042
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u062a\u062d\u062f\u064a\u062b \u062c\u062f\u064a\u062f \u0645\u062a\u0648\u0641\u0631"

    .line 2043
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u064a\u0648\u062c\u062f \u0625\u0635\u062f\u0627\u0631 \u062c\u062f\u064a\u062f \u0645\u0646 \u0627\u0644\u062a\u0637\u0628\u064a\u0642\u060c \u0647\u0644 \u062a\u0631\u063a\u0628 \u0641\u064a \u062a\u062d\u0645\u064a\u0644\u0647 \u0627\u0644\u0622\u0646\u061f"

    .line 2044
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda24;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Ljava/lang/String;)V

    .line 2045
    const-string p1, "\u062a\u062d\u062f\u064a\u062b \u0627\u0644\u0622\u0646"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0644\u0627\u062d\u0642\u0627\u064b"

    const/4 v1, 0x0

    .line 2046
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 2047
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2048
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showYohoPrices(Landroid/view/View;)V
    .locals 3

    .line 1448
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isActivityActive:Z

    if-nez v0, :cond_0

    return-void

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void

    .line 1457
    :cond_1
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->dismissAllPopups()V

    .line 1461
    :try_start_0
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    .line 1462
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoNames:[Ljava/lang/String;

    const v2, 0x1090003

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1463
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1464
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1465
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1474
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1481
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1482
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1483
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 1484
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1485
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPricePopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1487
    const-string v0, "PopupError"

    const-string v1, "Error showing yoho prices popup"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1488
    const-string p1, "\u062d\u062f\u062b \u062e\u0637\u0623 \u0641\u064a \u0639\u0631\u0636 \u0627\u0644\u0642\u0627\u0626\u0645\u0629"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startFloatingService()V
    .locals 2

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mosaedbarmaja/exchangenew/FloatingViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private toggleQuickCalculator()V
    .locals 3

    .line 2053
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0627\u0644\u062d\u0627\u0633\u0628\u0629 \u0627\u0644\u0633\u0631\u064a\u0639\u0629"

    .line 2054
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0633\u064a\u062a\u0645 \u0625\u0637\u0644\u0627\u0642 \u0647\u0630\u0647 \u0627\u0644\u0645\u064a\u0632\u0629 \u0642\u0631\u064a\u0628\u0627\u064b!\n\nStay tuned!"

    .line 2055
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u062d\u0633\u0646\u0627\u064b"

    const/4 v2, 0x0

    .line 2056
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2057
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private transferAgentAedToMainWallet()V
    .locals 15

    .line 1818
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 1819
    :cond_0
    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1820
    iget-wide v1, v11, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    goto/16 :goto_0

    .line 1824
    :cond_1
    iget-wide v1, v11, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    .line 1825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v11, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v11, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1826
    iput-wide v3, v11, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    .line 1827
    invoke-direct {p0, v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;)V

    .line 1828
    invoke-direct {p0, v1, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->addToMainWalletSilently(D)V

    const-wide v3, 0x3fd0d79435e50d79L    # 0.2631578947368421

    mul-double v4, v1, v3

    .line 1829
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "aed_wallet"

    .line 1830
    const-string v7, "0.0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "usdt_wallet"

    .line 1831
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "\u062a\u062d\u0648\u064a\u0644 \u0645\u0646 "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v11, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->name:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-wide v2, v1

    .line 1829
    const-string v1, "add"

    move-wide v13, v8

    move-wide v8, v6

    move-wide v6, v13

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->generateWhatsappMessage(Ljava/lang/String;DDDDLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1833
    invoke-direct {p0, v10}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->shareToWhatsApp(Ljava/lang/String;)V

    .line 1834
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "AGENT:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u062a\u062d\u0648\u064a\u0644 \u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a \u0625\u0644\u0649 \u0627\u0644\u0645\u062d\u0641\u0638\u0629 \u0627\u0644\u0631\u0626\u064a\u0633\u064a\u0629"

    const-string v1, "agent_aed_transfer"

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u062a\u0645 \u062a\u062d\u0648\u064a\u0644 "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a \u0625\u0644\u0649 \u0627\u0644\u0645\u062d\u0641\u0638\u0629 \u0627\u0644\u0631\u0626\u064a\u0633\u064a\u0629"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1836
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    .line 1837
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateWalletDisplay()V

    return-void

    .line 1821
    :cond_2
    :goto_0
    const-string v1, "\u0644\u0627 \u064a\u0648\u062c\u062f \u0631\u0635\u064a\u062f \u062f\u0631\u0647\u0645 \u0625\u0645\u0627\u0631\u0627\u062a\u064a \u0644\u062a\u062d\u0648\u064a\u0644\u0647"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateAgentBalanceDisplay()V
    .locals 5

    .line 1340
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1341
    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1343
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentYohoWalletDisplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    iget-wide v3, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1344
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentAedWalletDisplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    iget-wide v3, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    iget-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentYohoWalletDisplay:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1347
    :cond_0
    iget-wide v0, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    cmpl-double v0, v0, v3

    if-lez v0, :cond_1

    .line 1348
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentYohoWalletDisplay:Landroid/widget/TextView;

    const-string v1, "#4CAF50"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1350
    :cond_1
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentYohoWalletDisplay:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1352
    :goto_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentWalletLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void

    .line 1355
    :cond_3
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentWalletLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateCalculationsFromAed(Ljava/lang/String;)V
    .locals 9

    .line 799
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    .line 800
    const-string v4, ""

    if-lez p1, :cond_8

    .line 801
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isTransferToMemberMode:Z

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    if-eqz p1, :cond_7

    .line 802
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomGroupSaleActive:Z

    if-eqz p1, :cond_1

    .line 803
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPrices:[D

    const/4 v4, 0x3

    aget-wide v7, p1, v4

    div-double/2addr v7, v5

    mul-double/2addr v0, v7

    .line 806
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->customMemberSales:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x1

    .line 807
    aget-wide v5, v4, v5

    add-double/2addr v2, v5

    goto :goto_0

    :cond_0
    sub-double/2addr v0, v2

    .line 810
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 811
    :cond_1
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    if-eqz p1, :cond_5

    div-double/2addr v0, v5

    .line 812
    iget-wide v5, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentCustomRate:D

    mul-double/2addr v0, v5

    .line 813
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v5

    .line 814
    iget p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    const/4 v7, 0x5

    if-ne p1, v7, :cond_4

    cmpl-double p1, v5, v2

    if-lez p1, :cond_3

    sub-double/2addr v0, v5

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_2

    .line 818
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 820
    :cond_2
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 823
    :cond_3
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    sub-double/2addr v0, v5

    .line 827
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 830
    :cond_5
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionPrices:[D

    iget v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    aget-wide v7, p1, v4

    div-double v5, v7, v5

    mul-double/2addr v0, v5

    .line 832
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionValues:[D

    aget-wide v4, p1, v4

    cmpl-double p1, v7, v2

    if-lez p1, :cond_6

    div-double v2, v0, v7

    mul-double/2addr v2, v4

    .line 835
    :cond_6
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    const-wide v2, 0x3fd0d79435e50d79L    # 0.2631578947368421

    mul-double/2addr v2, v0

    .line 840
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPrices:[D

    iget v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentYohoIndex:I

    aget-wide v2, p1, v2

    div-double/2addr v2, v5

    mul-double/2addr v0, v2

    .line 843
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 846
    :cond_8
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    if-nez p1, :cond_9

    .line 848
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method private updateCalculationsFromUsdt(Ljava/lang/String;)V
    .locals 4

    .line 854
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isTransferToMemberMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 855
    :cond_0
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    const-wide v2, 0x400e666666666666L    # 3.8

    mul-double/2addr v0, v2

    .line 858
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 860
    :cond_1
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCalculationsFromYoho(Ljava/lang/String;)V
    .locals 7

    .line 865
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    if-eqz v0, :cond_1

    .line 866
    iget p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateCalculationsFromAed(Ljava/lang/String;)V

    return-void

    .line 874
    :cond_1
    iget-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomGroupSaleActive:Z

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 877
    :cond_2
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    .line 878
    const-string v4, ""

    if-lez p1, :cond_4

    .line 879
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPrices:[D

    iget v5, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentYohoIndex:I

    aget-wide v5, p1, v5

    cmpl-double p1, v5, v2

    if-lez p1, :cond_3

    div-double/2addr v0, v5

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 882
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 884
    :cond_3
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 888
    :cond_4
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDisplayAfterStateRestore()V
    .locals 1

    .line 212
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateYohoDisplay()V

    .line 213
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateWalletDisplay()V

    .line 214
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    :cond_0
    return-void
.end method

.method private updateWalletDisplay()V
    .locals 8

    .line 1331
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "aed_wallet"

    const-string v2, "0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v0

    .line 1332
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "usdt_wallet"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v2

    .line 1333
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedValue:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1334
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtValue:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedValue:Landroid/widget/TextView;

    const-wide/16 v5, 0x0

    cmpg-double v0, v0, v5

    const/high16 v1, -0x10000

    const-string v7, "#FFBF00"

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1336
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->usdtValue:Landroid/widget/TextView;

    cmpg-double v2, v2, v5

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateYohoDisplay()V
    .locals 5

    const/4 v0, 0x0

    .line 1297
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    .line 1298
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1299
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1300
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    const-string v3, "YOHO"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1301
    iget-boolean v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isTransferToMemberMode:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    .line 1302
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1303
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1304
    iget-boolean v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomGroupSaleActive:Z

    if-eqz v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    const-string v3, "\u0633\u0639\u0631 \u0645\u062c\u0645\u0648\u0639\u0629 \u0645\u062e\u0635\u0635"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    const-string v3, "\u062a\u0648\u0632\u064a\u0639 \u0645\u062e\u0635\u0635"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1308
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1

    .line 1309
    :cond_0
    iget v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 1313
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionNames:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1315
    :cond_2
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    const-string v3, "\u0627\u062e\u062a\u0631 \u0633\u0639\u0631 \u0627\u0644\u0639\u0645\u064a\u0644"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1310
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isCustomCommissionSale:Z

    .line 1311
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionNames:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1318
    :cond_4
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoPriceSelector:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1319
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->agentCommissionButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1323
    :goto_1
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1324
    iput-boolean v2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isUpdating:Z

    .line 1325
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->aedInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateCalculationsFromAed(Ljava/lang/String;)V

    .line 1326
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isUpdating:Z

    :cond_5
    return-void
.end method

.method private withdrawAgentYoho()V
    .locals 14

    .line 1150
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->yohoInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->parseDoubleSafe(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmpg-double v0, v4, v0

    const/4 v13, 0x0

    if-gtz v0, :cond_0

    .line 1152
    const-string v0, "\u0627\u0644\u0631\u062c\u0627\u0621 \u0625\u062f\u062e\u0627\u0644 \u0645\u0628\u0644\u063a YOHO \u0644\u0644\u0633\u062d\u0628"

    invoke-static {p0, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getAgentData(Ljava/lang/String;)Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1157
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1158
    iget-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    sub-double/2addr v1, v4

    iput-wide v1, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 1159
    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveAgentData(Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;)V

    .line 1160
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    iget-wide v6, v0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    const-string v2, "subtract"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->generateAgentYohoMessage(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v11

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AGENT:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u0633\u062d\u0628 YOHO \u0645\u0628\u0627\u0634\u0631"

    const-string v2, "withdraw_agent_yoho"

    move-wide v7, v4

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->saveTransactionRecord(Ljava/lang/String;DDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-direct {p0, v11}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->shareToWhatsApp(Ljava/lang/String;)V

    .line 1163
    const-string v0, "\u062a\u0645 \u0633\u062d\u0628 YOHO \u0645\u0646 \u0627\u0644\u0648\u0643\u064a\u0644"

    invoke-static {p0, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1164
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    .line 1165
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->resetInputs()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x824

    if-ne p1, v0, :cond_1

    .line 777
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 778
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->startFloatingService()V

    return-void

    .line 780
    :cond_0
    const-string p1, "\u0644\u0645 \u064a\u062a\u0645 \u0645\u0646\u062d \u0627\u0644\u0625\u0630\u0646\u060c \u0644\u0627 \u064a\u0645\u0643\u0646 \u0639\u0631\u0636 \u0627\u0644\u0641\u0642\u0627\u0639\u0629."

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 784
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 145
    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->requestWindowFeature(I)Z

    .line 146
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 148
    const-string p1, "GoldExchangeApp"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->preferences:Landroid/content/SharedPreferences;

    .line 150
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->setupFormatting()V

    .line 151
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->setupUI()V

    .line 152
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->setupTextWatchers()V

    .line 154
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateWalletDisplay()V

    .line 155
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateYohoDisplay()V

    .line 157
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->setupUpdateReceiver()V

    .line 159
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->checkForUpdate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->cleanupPopupWindows()V

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isActivityActive:Z

    .line 181
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->dismissAllPopups()V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 204
    const-string v0, "selected_agent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    .line 205
    const-string v0, "current_yoho_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentYohoIndex:I

    .line 206
    const-string v0, "commission_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    .line 207
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateDisplayAfterStateRestore()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->isActivityActive:Z

    .line 167
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateWalletDisplay()V

    .line 168
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateAgentBalanceDisplay()V

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mosaedbarmaja.exchangenew.UPDATE_UI"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->updateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    const-string v0, "selected_agent"

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->selectedMainAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "current_yoho_index"

    iget v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentYohoIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v0, "commission_index"

    iget v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity;->currentAgentCommissionIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
