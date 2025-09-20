.class public Lcom/mosaedbarmaja/exchangenew/RecordsActivity;
.super Landroid/app/Activity;
.source "RecordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;
    }
.end annotation


# instance fields
.field private allTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private btnCancelSelection:Landroid/widget/Button;

.field private btnDeleteSelected:Landroid/widget/Button;

.field private btnSelect:Landroid/widget/Button;

.field private btnSelectAll:Landroid/widget/Button;

.field private currentlyDisplayedTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private filterScrollView:Landroid/widget/HorizontalScrollView;

.field private isInSelectionMode:Z

.field private ownerKey:Ljava/lang/String;

.field private ownerName:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private recordsContainer:Landroid/widget/LinearLayout;

.field private searchInput:Landroid/widget/EditText;

.field private final selectedTransactions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private yohoDecimalFormat:Ljava/text/DecimalFormat;


# direct methods
.method public static synthetic $r8$lambda$4C9ogrIdBFuvez-u9Cdx5J8hjQ8(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->lambda$confirmRevertTransaction$8(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5MVLM4Jcvclb1un93UpFji5JbEc(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->lambda$createSearchAndFilterBar$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$81pyMf1YjI5qWh0H3Oac1AB5fcc(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->lambda$createSearchAndFilterBar$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9YgHcGyGShXvf23A5vXzGxIfoD8(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->lambda$confirmDelete$9(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CuAJHfrJyjnurq9KHJJnmeyPGSE(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->lambda$createSearchAndFilterBar$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LSJtEYfGU8HzZDl26YRDYfeuGHc(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->lambda$createRecordCard$6(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hDKU7Is5zpDhhU2uKCNet5n2f6g(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->lambda$createSearchAndFilterBar$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k2jABrY1eVCKGUrjaZj17UI4uZo(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->lambda$createHeader$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s41qNAmJRDRDnsr-xBZ1CH9Itgs(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->lambda$createRecordCard$5(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wHnUZqBvpv1xOk_0aBDU8a6-yaA(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->lambda$createRecordCard$7(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilterAndDisplayData(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->filterAndDisplayData(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->isInSelectionMode:Z

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    return-void
.end method

.method private confirmDelete(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 587
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u062a\u0623\u0643\u064a\u062f \u0627\u0644\u062d\u0630\u0641"

    .line 593
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 594
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Ljava/util/List;)V

    .line 595
    const-string p1, "\u0646\u0639\u0645\u060c \u062d\u0630\u0641"

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 597
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 588
    :cond_1
    :goto_0
    const-string p1, "\u0644\u0645 \u064a\u062a\u0645 \u062a\u062d\u062f\u064a\u062f \u0633\u062c\u0644\u0627\u062a \u0644\u062d\u0630\u0641\u0647\u0627"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private confirmRevertTransaction(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)V
    .locals 2

    .line 540
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u062a\u0623\u0643\u064a\u062f \u0627\u0644\u062a\u0631\u0627\u062c\u0639"

    .line 541
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0647\u0644 \u0623\u0646\u062a \u0645\u062a\u0623\u0643\u062f \u0645\u0646 \u0623\u0646\u0643 \u062a\u0631\u064a\u062f \u0627\u0644\u062a\u0631\u0627\u062c\u0639 \u0639\u0646 \u0647\u0630\u0647 \u0627\u0644\u0645\u0639\u0627\u0645\u0644\u0629\u061f \u0633\u062a\u062a\u0645 \u0627\u0633\u062a\u0639\u0627\u062f\u0629 \u0627\u0644\u0623\u0631\u0635\u062f\u0629 \u0625\u0644\u0649 \u0645\u0627 \u0643\u0627\u0646\u062a \u0639\u0644\u064a\u0647 \u0642\u0628\u0644\u0647\u0627."

    .line 542
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)V

    .line 543
    const-string p1, "\u0646\u0639\u0645\u060c \u062a\u0631\u0627\u062c\u0639"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v1, 0x0

    .line 544
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 545
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private createAmountRow(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 451
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":</b> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 454
    invoke-static {p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 458
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 p1, -0x1000000

    .line 459
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x5

    .line 460
    invoke-virtual {v0, p2, p1, p2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private createFilterButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;
    .locals 2

    .line 226
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 228
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, -0x1

    .line 229
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/16 p1, 0x28

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 231
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    const/high16 p2, 0x42480000    # 50.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    .line 232
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/16 v1, 0x64

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xf

    .line 236
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 237
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createHeader()Landroid/view/View;
    .locals 6

    .line 138
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 140
    const-string v2, "#2C3E50"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v2, 0x1e

    .line 141
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x10

    .line 142
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 145
    const-string v3, "\u2039 \u0631\u062c\u0648\u0639"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 146
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 147
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 148
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 149
    new-instance v4, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0633\u062c\u0644: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->ownerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41b00000    # 22.0f

    .line 155
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 156
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v3, 0x11

    .line 157
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createRecordCard(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)Landroid/view/View;
    .locals 14

    .line 339
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 340
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 342
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    const-string v2, "#A9CCE3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 344
    :cond_0
    iget-object v2, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->getCardBackgroundColor(Ljava/lang/String;)I

    move-result v2

    :goto_0
    const/high16 v3, 0x41c80000    # 25.0f

    const/4 v4, 0x0

    .line 345
    invoke-direct {p0, v2, v3, v4}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    .line 347
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    const/16 v7, 0x14

    .line 351
    invoke-virtual {v2, v6, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 352
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x1e

    .line 353
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 355
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 369
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 371
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 372
    iget-object v9, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->type:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->getTransactionTypeDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v9, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->type:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->getTransactionColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41900000    # 18.0f

    .line 374
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 375
    invoke-virtual {v8, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 376
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->date:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x800005

    .line 380
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    const v9, -0xbbbbbc

    .line 381
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v6, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 383
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 388
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x2

    invoke-direct {v4, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 389
    invoke-virtual {v4, v6, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 390
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    const-string v4, "#E0E0E0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 392
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 394
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 395
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 397
    iget-wide v10, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountAed:D

    const-wide/16 v12, 0x0

    cmpl-double v1, v10, v12

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->decimalFormat:Ljava/text/DecimalFormat;

    iget-wide v10, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountAed:D

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v4, "AED \ud83c\udde6\ud83c\uddea"

    invoke-direct {p0, v4, v1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createAmountRow(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    :cond_1
    iget-wide v10, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountUsdt:D

    cmpl-double v1, v10, v12

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->decimalFormat:Ljava/text/DecimalFormat;

    iget-wide v10, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountUsdt:D

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v4, "USDT \ud83d\udcb5"

    invoke-direct {p0, v4, v1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createAmountRow(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    :cond_2
    iget-wide v10, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountYoho:D

    cmpl-double v1, v10, v12

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    iget-wide v10, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountYoho:D

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v4, "YOHO \ud83e\ude99"

    invoke-direct {p0, v4, v1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createAmountRow(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    :cond_3
    iget-object v1, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->details:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 401
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "\u0627\u0644\u062a\u0641\u0627\u0635\u064a\u0644: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->details:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0xa

    .line 404
    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 405
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 411
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 412
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 413
    invoke-virtual {v2, v6, v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 414
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    iget-object v2, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->beforeState:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->beforeState:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 417
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 418
    const-string v4, "\u21aa \u062a\u0631\u0627\u062c\u0639"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const-string v4, "#F39C12"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 420
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 421
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 422
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 423
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    new-instance v4, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda8;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    :cond_5
    iget-object v2, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->whatsappMessage:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->whatsappMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 429
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 430
    const-string v4, "\u0645\u0634\u0627\u0631\u0643\u0629"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 431
    const-string v4, "#25D366"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 432
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 433
    new-instance v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda9;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createSearchAndFilterBar()Landroid/view/View;
    .locals 6

    .line 166
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xa

    const/16 v2, 0x14

    .line 168
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 170
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->searchInput:Landroid/widget/EditText;

    .line 171
    const-string v3, "\ud83d\udd0e \u0627\u0628\u062d\u062b \u0647\u0646\u0627..."

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->searchInput:Landroid/widget/EditText;

    const-string v3, "#F0F0F0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#E0E0E0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v5, 0x42480000    # 50.0f

    invoke-direct {p0, v3, v5, v4}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    .line 173
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->searchInput:Landroid/widget/EditText;

    const/16 v3, 0x28

    const/16 v4, 0x19

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 174
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->searchInput:Landroid/widget/EditText;

    new-instance v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$1;

    invoke-direct {v3, p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$1;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->filterScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x0

    .line 187
    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 188
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 197
    const-string v2, "\u062a\u062d\u062f\u064a\u062f"

    const-string v3, "#8E44AD"

    invoke-direct {p0, v2, v3}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createFilterButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnSelect:Landroid/widget/Button;

    .line 198
    new-instance v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const-string v2, "\u0625\u0644\u063a\u0627\u0621"

    const-string v3, "#7F8C8D"

    invoke-direct {p0, v2, v3}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createFilterButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnCancelSelection:Landroid/widget/Button;

    .line 201
    new-instance v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnCancelSelection:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    const-string v2, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0643\u0644"

    const-string v4, "#2980B9"

    invoke-direct {p0, v2, v4}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createFilterButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnSelectAll:Landroid/widget/Button;

    .line 205
    new-instance v4, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnSelectAll:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    const-string v2, "\u062d\u0630\u0641 \u0627\u0644\u0645\u062d\u062f\u062f (0)"

    const-string v4, "#E74C3C"

    invoke-direct {p0, v2, v4}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createFilterButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnDeleteSelected:Landroid/widget/Button;

    .line 209
    new-instance v4, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnDeleteSelected:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnSelect:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnCancelSelection:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnSelectAll:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnDeleteSelected:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 221
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 465
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 466
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 467
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 468
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    .line 470
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-object v0
.end method

.method private deleteTransactions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "transaction_records"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 602
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 603
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;

    .line 604
    iget-object v3, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->rawRecord:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 609
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u062a\u0645 \u062d\u0630\u0641 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u0633\u062c\u0644 \u0628\u0646\u062c\u0627\u062d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    .line 614
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->toggleSelectionMode(Z)V

    .line 615
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->loadAndDisplayRecords()V

    return-void
.end method

.method private displayRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->recordsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 321
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->currentlyDisplayedTransactions:Ljava/util/List;

    .line 323
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 325
    const-string v0, "\u0644\u0627 \u062a\u0648\u062c\u062f \u0633\u062c\u0644\u0627\u062a \u0644\u0639\u0631\u0636\u0647\u0627"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    .line 326
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 327
    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x41900000    # 18.0f

    .line 328
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 329
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->recordsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 333
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;

    .line 334
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->recordsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createRecordCard(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private filterAndDisplayData(Ljava/lang/String;)V
    .locals 4

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->allTransactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->allTransactions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;

    .line 311
    invoke-direct {p0, v1, v2}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->transactionMatchesQuery(Ljava/lang/String;Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->displayRecords(Ljava/util/List;)V

    return-void
.end method

.method private getCardBackgroundColor(Ljava/lang/String;)I
    .locals 2

    .line 509
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "fund_agent_yoho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "agent_custom_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "group_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "withdraw_agent_yoho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "agent_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "agent_fund"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "subtract"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 515
    const-string p1, "#FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 511
    :pswitch_0
    const-string p1, "#E8F5E9"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 513
    :pswitch_1
    const-string p1, "#FFEBEE"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7acce4ec -> :sswitch_7
        -0x46824c41 -> :sswitch_6
        -0x467caebf -> :sswitch_5
        0x178a1 -> :sswitch_4
        0x65b1fec -> :sswitch_3
        0x4c70ba07 -> :sswitch_2
        0x5742ae1b -> :sswitch_1
        0x7fdf7551 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getTransactionColor(Ljava/lang/String;)I
    .locals 2

    .line 496
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "fund_agent_yoho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "agent_custom_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "group_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "withdraw_agent_yoho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "agent_aed_transfer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "agent_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "agent_fund"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "subtract"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 504
    const-string p1, "#34495E"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 502
    :pswitch_0
    const-string p1, "#F39C12"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 498
    :pswitch_1
    const-string p1, "#27AE60"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 500
    :pswitch_2
    const-string p1, "#E74C3C"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7acce4ec -> :sswitch_9
        -0x46824c41 -> :sswitch_8
        -0x467caebf -> :sswitch_7
        -0x3375c07c -> :sswitch_6
        0x178a1 -> :sswitch_5
        0x65b1fec -> :sswitch_4
        0x6761d4f -> :sswitch_3
        0x4c70ba07 -> :sswitch_2
        0x5742ae1b -> :sswitch_1
        0x7fdf7551 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getTransactionTypeDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 480
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "fund_agent_yoho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "agent_custom_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "group_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "withdraw_agent_yoho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "agent_aed_transfer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "agent_sale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "agent_fund"

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

    .line 487
    :pswitch_0
    const-string p1, "\ud83e\ude99 \u062a\u0645\u0648\u064a\u0644 YOHO"

    return-object p1

    .line 485
    :pswitch_1
    const-string p1, "\u2728 \u0628\u064a\u0639 \u0645\u062e\u0635\u0635"

    return-object p1

    .line 486
    :pswitch_2
    const-string p1, "\ud83d\udc65 \u0628\u064a\u0639 \u062c\u0645\u0627\u0639\u064a"

    return-object p1

    .line 483
    :pswitch_3
    const-string p1, "\ud83d\udd01 \u062a\u0635\u0641\u064a\u0631"

    return-object p1

    .line 488
    :pswitch_4
    const-string p1, "\ud83d\udcb8 \u0633\u062d\u0628 YOHO"

    return-object p1

    .line 481
    :pswitch_5
    const-string p1, "\u2795 \u0625\u064a\u062f\u0627\u0639"

    return-object p1

    .line 489
    :pswitch_6
    const-string p1, "\u27a1 \u062a\u062d\u0648\u064a\u0644 AED"

    return-object p1

    .line 484
    :pswitch_7
    const-string p1, "\ud83d\udcc8 \u0628\u064a\u0639"

    return-object p1

    .line 490
    :pswitch_8
    const-string p1, "\ud83d\udcb0 \u062a\u0645\u0648\u064a\u0644 \u0648\u0643\u064a\u0644"

    return-object p1

    .line 482
    :pswitch_9
    const-string p1, "\u2796 \u062e\u0635\u0645"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7acce4ec -> :sswitch_9
        -0x46824c41 -> :sswitch_8
        -0x467caebf -> :sswitch_7
        -0x3375c07c -> :sswitch_6
        0x178a1 -> :sswitch_5
        0x65b1fec -> :sswitch_4
        0x6761d4f -> :sswitch_3
        0x4c70ba07 -> :sswitch_2
        0x5742ae1b -> :sswitch_1
        0x7fdf7551 -> :sswitch_0
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

.method private synthetic lambda$confirmDelete$9(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 595
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->deleteTransactions(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$confirmRevertTransaction$8(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 543
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->revertTransaction(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)V

    return-void
.end method

.method private synthetic lambda$createHeader$0(Landroid/view/View;)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$createRecordCard$5(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 2

    .line 356
    iget-boolean p3, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->isInSelectionMode:Z

    if-eqz p3, :cond_1

    .line 357
    iget-object p3, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    const/high16 v1, 0x41c80000    # 25.0f

    if-eqz p3, :cond_0

    .line 358
    iget-object p3, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 359
    iget-object p1, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->getCardBackgroundColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v1, v0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object p3, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    const-string p1, "#A9CCE3"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v1, v0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    .line 364
    :goto_0
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnDeleteSelected:Landroid/widget/Button;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u062d\u0630\u0641 \u0627\u0644\u0645\u062d\u062f\u062f ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createRecordCard$6(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/view/View;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->confirmRevertTransaction(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)V

    return-void
.end method

.method private synthetic lambda$createRecordCard$7(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;Landroid/view/View;)V
    .locals 0

    .line 433
    iget-object p1, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->whatsappMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->sendToWhatsApp(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createSearchAndFilterBar$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 198
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->toggleSelectionMode(Z)V

    return-void
.end method

.method private synthetic lambda$createSearchAndFilterBar$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 201
    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->toggleSelectionMode(Z)V

    return-void
.end method

.method private synthetic lambda$createSearchAndFilterBar$3(Landroid/view/View;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectAllDisplayed()V

    return-void
.end method

.method private synthetic lambda$createSearchAndFilterBar$4(Landroid/view/View;)V
    .locals 2

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u0647\u0644 \u0623\u0646\u062a \u0645\u062a\u0623\u0643\u062f \u0645\u0646 \u062d\u0630\u0641 \u0627\u0644\u0633\u062c\u0644\u0627\u062a \u0627\u0644\u0645\u062d\u062f\u062f\u0629 ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")\u061f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->confirmDelete(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private loadAndDisplayRecords()V
    .locals 6

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->allTransactions:Ljava/util/List;

    .line 272
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "transaction_records"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 275
    const-string v2, "\\|\\|"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 276
    array-length v3, v2

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 277
    new-instance v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;-><init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity-IA;)V

    .line 279
    :try_start_0
    iput-object v1, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->rawRecord:Ljava/lang/String;

    const/4 v1, 0x0

    .line 280
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->timestamp:J

    const/4 v1, 0x1

    .line 281
    aget-object v1, v2, v1

    iput-object v1, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->type:Ljava/lang/String;

    const/4 v1, 0x2

    .line 282
    aget-object v1, v2, v1

    iput-object v1, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->date:Ljava/lang/String;

    const/4 v1, 0x3

    .line 283
    aget-object v1, v2, v1

    iput-object v1, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->time:Ljava/lang/String;

    const/4 v1, 0x4

    .line 284
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountAed:D

    const/4 v1, 0x5

    .line 285
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountUsdt:D

    const/4 v1, 0x6

    .line 286
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountYoho:D

    const/4 v1, 0x7

    .line 287
    aget-object v1, v2, v1

    iput-object v1, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->owner:Ljava/lang/String;

    const/16 v1, 0x8

    .line 288
    aget-object v1, v2, v1

    iput-object v1, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->details:Ljava/lang/String;

    .line 289
    array-length v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const/16 v5, 0xa

    if-le v1, v5, :cond_1

    :try_start_1
    aget-object v1, v2, v5

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    iput-object v1, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->whatsappMessage:Ljava/lang/String;

    .line 290
    array-length v1, v2

    const/16 v5, 0xc

    if-le v1, v5, :cond_2

    aget-object v4, v2, v5

    :cond_2
    iput-object v4, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->beforeState:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->ownerKey:Ljava/lang/String;

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v3, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->owner:Ljava/lang/String;

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->ownerKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    :cond_3
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->allTransactions:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->allTransactions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 301
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->filterAndDisplayData(Ljava/lang/String;)V

    return-void
.end method

.method private revertTransaction(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 550
    const-string v2, "|"

    const-string v3, "shipping_agents"

    const-string v4, "transaction_records"

    const/4 v5, 0x1

    :try_start_0
    iget-object v6, v0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->owner:Ljava/lang/String;

    const-string v7, "MAIN_WALLET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const-string v8, "\\|"

    if-eqz v6, :cond_0

    .line 551
    :try_start_1
    iget-object v2, v0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->beforeState:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 552
    iget-object v3, v1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 553
    const-string v6, "aed_wallet"

    aget-object v7, v2, v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 554
    const-string v6, "usdt_wallet"

    aget-object v2, v2, v5

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 555
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 556
    :cond_0
    iget-object v6, v0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->owner:Ljava/lang/String;

    const-string v9, "AGENT:"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 557
    iget-object v6, v0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->owner:Ljava/lang/String;

    const/4 v9, 0x6

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 558
    iget-object v9, v0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->beforeState:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 559
    aget-object v10, v9, v7

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 560
    aget-object v9, v9, v5

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 562
    iget-object v9, v1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v9, v3, v14}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    .line 563
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 564
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 565
    invoke-virtual {v15, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v7

    aget-object v7, v16, v17

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 566
    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    move/from16 v7, v17

    goto :goto_0

    .line 569
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v2, v1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 573
    :cond_3
    :goto_1
    iget-object v2, v1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 574
    iget-object v0, v0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->rawRecord:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 575
    iget-object v0, v1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    const-string v0, "\u062a\u0645 \u0627\u0644\u062a\u0631\u0627\u062c\u0639 \u0639\u0646 \u0627\u0644\u0645\u0639\u0627\u0645\u0644\u0629 \u0628\u0646\u062c\u0627\u062d"

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 579
    invoke-direct {v1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->loadAndDisplayRecords()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0641\u0634\u0644 \u0627\u0644\u062a\u0631\u0627\u062c\u0639 \u0639\u0646 \u0627\u0644\u0645\u0639\u0627\u0645\u0644\u0629: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private selectAllDisplayed()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->currentlyDisplayedTransactions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->currentlyDisplayedTransactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 263
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->currentlyDisplayedTransactions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 266
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnDeleteSelected:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u062d\u0630\u0641 \u0627\u0644\u0645\u062d\u062f\u062f ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->filterAndDisplayData(Ljava/lang/String;)V

    return-void
.end method

.method private sendToWhatsApp(Ljava/lang/String;)V
    .locals 5

    .line 521
    const-string v0, "android.intent.extra.TEXT"

    const-string v1, "text/plain"

    const-string v2, "android.intent.action.SEND"

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v4, "com.whatsapp.w4b"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    invoke-virtual {p0, v3}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 528
    :catch_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v1, "com.whatsapp"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v3}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 534
    :catch_1
    const-string p1, "\u0644\u0645 \u064a\u062a\u0645 \u0627\u0644\u0639\u062b\u0648\u0631 \u0639\u0644\u0649 \u062a\u0637\u0628\u064a\u0642 \u0648\u0627\u062a\u0633\u0627\u0628"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 476
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setupFormatting()V
    .locals 3

    .line 99
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 100
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0.00"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->decimalFormat:Ljava/text/DecimalFormat;

    .line 101
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method private setupUI()V
    .locals 6

    .line 105
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x1

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 108
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createHeader()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->createSearchAndFilterBar()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    const/16 v5, 0xa

    .line 125
    invoke-virtual {v4, v2, v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 126
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->recordsContainer:Landroid/widget/LinearLayout;

    .line 129
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->recordsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v5, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 131
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->recordsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private toggleSelectionMode(Z)V
    .locals 4

    .line 242
    iput-boolean p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->isInSelectionMode:Z

    .line 243
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnSelect:Landroid/widget/Button;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnCancelSelection:Landroid/widget/Button;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnSelectAll:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnDeleteSelected:Landroid/widget/Button;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p1, :cond_4

    .line 249
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 251
    :cond_4
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->btnDeleteSelected:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u062d\u0630\u0641 \u0627\u0644\u0645\u062d\u062f\u062f ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->selectedTransactions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->filterAndDisplayData(Ljava/lang/String;)V

    return-void
.end method

.method private transactionMatchesQuery(Ljava/lang/String;Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)Z
    .locals 2

    .line 442
    iget-object v0, p2, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->getTransactionTypeDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->details:Ljava/lang/String;

    .line 443
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p2, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountAed:D

    .line 444
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p2, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->amountYoho:D

    .line 445
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->date:Ljava/lang/String;

    .line 446
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p2, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->time:Ljava/lang/String;

    .line 447
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->requestWindowFeature(I)Z

    .line 88
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "owner_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->ownerKey:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "owner_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->ownerName:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 90
    const-string p1, "\u0627\u0644\u0633\u062c\u0644\u0627\u062a"

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->ownerName:Ljava/lang/String;

    .line 92
    :cond_0
    const-string p1, "GoldExchangeApp"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->preferences:Landroid/content/SharedPreferences;

    .line 93
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->setupFormatting()V

    .line 94
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->setupUI()V

    .line 95
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity;->loadAndDisplayRecords()V

    return-void
.end method
