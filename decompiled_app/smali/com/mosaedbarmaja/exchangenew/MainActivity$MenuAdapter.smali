.class Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mosaedbarmaja/exchangenew/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_ACTIONS:I = 0x1

.field private static final TYPE_AGENT:I


# instance fields
.field final synthetic this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$OQkgpui_dHvVyxIuz05Gp1AtEy8(Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->lambda$getView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VCBB-aKDsRiPz9qz3zqxJ6XD1x0(Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->lambda$getView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1928
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    const/4 p1, 0x0

    .line 1929
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private synthetic lambda$getView$0(Landroid/view/View;)V
    .locals 0

    .line 1967
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$mshowAddAgentDialog(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    .line 1969
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetagentListPopupWindow(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/ListPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetagentListPopupWindow(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1970
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetagentListPopupWindow(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getView$1(Landroid/view/View;)V
    .locals 0

    .line 1984
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$mshowDeleteAgentDialog(Lcom/mosaedbarmaja/exchangenew/MainActivity;)V

    .line 1986
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetagentListPopupWindow(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/ListPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetagentListPopupWindow(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1987
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->this$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    invoke-static {p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->-$$Nest$fgetagentListPopupWindow(Lcom/mosaedbarmaja/exchangenew/MainActivity;)Landroid/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    .line 1934
    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1945
    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 1948
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x1090003

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x1020014

    .line 1950
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 1951
    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_1
    if-nez p2, :cond_2

    .line 1954
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1955
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x11

    .line 1956
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 p2, 0xa

    .line 1957
    invoke-virtual {p1, v1, p2, v1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1959
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1960
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x64

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1961
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1962
    :try_start_0
    sget v0, Lcom/mosaedbarmaja/exchangenew/R$drawable;->person_add_24:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    :catch_0
    const-string v0, "#4CAF50"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v0, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v0, 0x14

    .line 1964
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1965
    const-string v4, "#E0E0E0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1966
    new-instance v5, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;)V

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1973
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1975
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1976
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1977
    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1978
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    :try_start_1
    sget p2, Lcom/mosaedbarmaja/exchangenew/R$drawable;->person_remove_24:I

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1980
    :catch_1
    const-string p2, "#F44336"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, p2, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1981
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1982
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1983
    new-instance p2, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1990
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
