.class public Lcom/mosaedbarmaja/exchangenew/ChartActivity;
.super Landroid/app/Activity;
.source "ChartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;,
        Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;,
        Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;
    }
.end annotation


# instance fields
.field private allTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private avgSaleText:Landroid/widget/TextView;

.field private barChartView:Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;

.field private currentFilter:Ljava/lang/String;

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private ownerKey:Ljava/lang/String;

.field private ownerName:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private totalAedInText:Landroid/widget/TextView;

.field private totalSalesCountText:Landroid/widget/TextView;

.field private totalYohoCommissionText:Landroid/widget/TextView;

.field private transactionListContainer:Landroid/widget/LinearLayout;

.field private yohoDecimalFormat:Ljava/text/DecimalFormat;


# direct methods
.method public static synthetic $r8$lambda$dULstnmEblHr_H_aSRbD-iEm5dg(Lcom/mosaedbarmaja/exchangenew/ChartActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->lambda$createFilterButton$1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uAj6kgaCBAfvlYTbXaaLbjcckxM(Lcom/mosaedbarmaja/exchangenew/ChartActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->lambda$createHeader$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdecimalFormat(Lcom/mosaedbarmaja/exchangenew/ChartActivity;)Ljava/text/DecimalFormat;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->decimalFormat:Ljava/text/DecimalFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyohoDecimalFormat(Lcom/mosaedbarmaja/exchangenew/ChartActivity;)Ljava/text/DecimalFormat;
    .locals 0

    iget-object p0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfilterTransactionList(Lcom/mosaedbarmaja/exchangenew/ChartActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->filterTransactionList(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string v0, "ALL"

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->currentFilter:Ljava/lang/String;

    return-void
.end method

.method private calculateAndDisplayChart()V
    .locals 11

    .line 369
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/16 v1, 0xc

    .line 370
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u064a\u0646\u0627\u064a\u0631"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u0641\u0628\u0631\u0627\u064a\u0631"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\u0645\u0627\u0631\u0633"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v6, "\u0623\u0628\u0631\u064a\u0644"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string v6, "\u0645\u0627\u064a\u0648"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string v6, "\u064a\u0648\u0646\u064a\u0648"

    aput-object v6, v1, v2

    const-string v2, "\u064a\u0648\u0644\u064a\u0648"

    const/4 v6, 0x6

    aput-object v2, v1, v6

    const/4 v2, 0x7

    const-string v7, "\u0623\u063a\u0633\u0637\u0633"

    aput-object v7, v1, v2

    const/16 v2, 0x8

    const-string v7, "\u0633\u0628\u062a\u0645\u0628\u0631"

    aput-object v7, v1, v2

    const/16 v2, 0x9

    const-string v7, "\u0623\u0643\u062a\u0648\u0628\u0631"

    aput-object v7, v1, v2

    const/16 v2, 0xa

    const-string v7, "\u0646\u0648\u0641\u0645\u0628\u0631"

    aput-object v7, v1, v2

    const/16 v2, 0xb

    const-string v7, "\u062f\u064a\u0633\u0645\u0628\u0631"

    aput-object v7, v1, v2

    .line 372
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 373
    :goto_0
    const-string v7, "%d-%02d"

    if-ge v3, v6, :cond_0

    .line 374
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 375
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, -0x1

    .line 376
    invoke-virtual {v2, v5, v7}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->allTransactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;

    .line 380
    iget-object v6, v3, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const-string v8, "sale"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 382
    iget-wide v8, v3, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->timestamp:J

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 383
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 384
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 385
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-wide v9, v3, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountAed:D

    double-to-float v3, v9

    add-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 390
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 393
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 394
    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 395
    new-instance v6, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;

    aget-object v5, v1, v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v6, v5, v3}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;-><init>(Ljava/lang/String;F)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 397
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 399
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->barChartView:Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;

    invoke-virtual {v0, v2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->setData(Ljava/util/List;)V

    return-void
.end method

.method private calculateAndDisplaySummaryStats()V
    .locals 13

    .line 347
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->allTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v7, v3

    move-wide v3, v5

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;

    .line 348
    iget-object v9, v8, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const-string v10, "sale"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v8, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const-string v11, "add"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v8, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const-string v11, "agent_fund"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 349
    :cond_1
    iget-wide v11, v8, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountAed:D

    add-double/2addr v1, v11

    .line 351
    :cond_2
    iget-object v9, v8, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    .line 353
    iget-wide v9, v8, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountYoho:D

    add-double/2addr v3, v9

    .line 354
    iget-wide v8, v8, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountAed:D

    add-double/2addr v5, v8

    goto :goto_0

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->totalAedInText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->totalYohoCommissionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->totalSalesCountText:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v7, :cond_4

    .line 362
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->avgSaleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->decimalFormat:Ljava/text/DecimalFormat;

    int-to-double v2, v7

    div-double/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 364
    :cond_4
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->avgSaleText:Landroid/widget/TextView;

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private createAmountRow(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 495
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 496
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

    .line 498
    invoke-static {p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 502
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 p1, -0x1000000

    .line 503
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x5

    .line 504
    invoke-virtual {v0, p2, p1, p2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private createChartSectionTitle(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 223
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x1000000

    .line 225
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 226
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 227
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 p1, 0xa

    const/16 v1, 0x1e

    .line 228
    invoke-virtual {v0, p1, v1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private createFilterButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 274
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 276
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 277
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->currentFilter:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->setFilterButtonState(Landroid/widget/Button;Z)V

    .line 278
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x64

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    .line 280
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 281
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    new-instance p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mosaedbarmaja/exchangenew/ChartActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private createHeader()Landroid/view/View;
    .locals 6

    .line 140
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    const-string v2, "#2C3E50"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v2, 0x1e

    .line 143
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x10

    .line 144
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 146
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 147
    const-string v3, "\u2039 \u0631\u062c\u0648\u0639"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 148
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 149
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 150
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 151
    new-instance v4, Lcom/mosaedbarmaja/exchangenew/ChartActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mosaedbarmaja/exchangenew/ChartActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0625\u062d\u0635\u0627\u0626\u064a\u0627\u062a: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->ownerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41b00000    # 22.0f

    .line 157
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 158
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v3, 0x11

    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 161
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createSearchAndFilterControls()Landroid/view/View;
    .locals 6

    .line 233
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 237
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 238
    const-string v2, "\ud83d\udd0e \u0627\u0628\u062d\u062b \u0641\u064a \u0627\u0644\u0633\u062c\u0644\u0627\u062a..."

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 239
    const-string v2, "#E0E0E0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    const/high16 v4, 0x42480000    # 50.0f

    invoke-direct {p0, v3, v4, v2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    const/16 v2, 0x28

    const/16 v4, 0x19

    .line 240
    invoke-virtual {v1, v2, v4, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 241
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    const/16 v4, 0x14

    const/4 v5, 0x0

    .line 242
    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 243
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$1;

    invoke-direct {v2, p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$1;-><init>(Lcom/mosaedbarmaja/exchangenew/ChartActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 258
    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 259
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 262
    const-string v3, "\u0627\u0644\u0643\u0644"

    const-string v4, "ALL"

    invoke-direct {p0, v3, v4}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createFilterButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    const-string v3, "\u0645\u0628\u064a\u0639\u0627\u062a"

    const-string v4, "SALE"

    invoke-direct {p0, v3, v4}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createFilterButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    const-string v3, "\u062a\u0645\u0648\u064a\u0644"

    const-string v4, "FUND"

    invoke-direct {p0, v3, v4}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createFilterButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    const-string v3, "\u0633\u062d\u0628/\u062a\u062d\u0648\u064a\u0644"

    const-string v4, "WITHDRAW"

    invoke-direct {p0, v3, v4}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createFilterButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 509
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 510
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 511
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 512
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    .line 514
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-object v0
.end method

.method private createSummaryCard(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)Landroid/view/View;
    .locals 7

    .line 195
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 197
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/high16 v2, 0x41c80000    # 25.0f

    const/4 v3, 0x0

    invoke-direct {p0, p3, v2, v3}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    .line 198
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {p3, v5, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0xa

    .line 199
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p3, 0x14

    .line 201
    invoke-virtual {v0, p3, p3, p3, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 p3, 0x11

    .line 202
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 204
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 206
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 207
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 208
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 209
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    const-string v4, "0"

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41b00000    # 22.0f

    .line 213
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 214
    invoke-virtual {p2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 215
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 216
    invoke-virtual {p2, v5, v2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 217
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createSummaryCards()Landroid/view/View;
    .locals 6

    .line 168
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 172
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->totalAedInText:Landroid/widget/TextView;

    .line 173
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->totalYohoCommissionText:Landroid/widget/TextView;

    .line 174
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->totalSalesCountText:Landroid/widget/TextView;

    .line 175
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->avgSaleText:Landroid/widget/TextView;

    .line 178
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 180
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->totalAedInText:Landroid/widget/TextView;

    const-string v4, "#27AE60"

    const-string v5, "\u0625\u062c\u0645\u0627\u0644\u064a \u0627\u0644\u0625\u064a\u062f\u0627\u0639\u0627\u062a (AED)"

    invoke-direct {p0, v5, v3, v4}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createSummaryCard(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->totalYohoCommissionText:Landroid/widget/TextView;

    const-string v4, "#E67E22"

    const-string v5, "\u0625\u062c\u0645\u0627\u0644\u064a \u0639\u0645\u0648\u0644\u0629 (YOHO)"

    invoke-direct {p0, v5, v3, v4}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createSummaryCard(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 187
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->totalSalesCountText:Landroid/widget/TextView;

    const-string v3, "#3498DB"

    const-string v4, "\u0639\u062f\u062f \u0627\u0644\u0645\u0628\u064a\u0639\u0627\u062a"

    invoke-direct {p0, v4, v2, v3}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createSummaryCard(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->avgSaleText:Landroid/widget/TextView;

    const-string v3, "#8E44AD"

    const-string v4, "\u0645\u062a\u0648\u0633\u0637 \u0642\u064a\u0645\u0629 \u0627\u0644\u0628\u064a\u0639 (AED)"

    invoke-direct {p0, v4, v2, v3}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createSummaryCard(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createTransactionCard(Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;)Landroid/view/View;
    .locals 11

    .line 440
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 441
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 442
    iget-object v2, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->getCardBackgroundColor(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x41c80000    # 25.0f

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    .line 443
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    const/16 v7, 0x14

    .line 447
    invoke-virtual {v2, v6, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 448
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x1e

    .line 449
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 451
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 452
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 454
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 455
    iget-object v9, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->getTransactionTypeDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v9, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->getTransactionColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41900000    # 18.0f

    .line 457
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 458
    invoke-virtual {v8, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 459
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 462
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->date:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x800005

    .line 463
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    const v8, -0xbbbbbc

    .line 464
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 465
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v6, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 466
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 471
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 472
    invoke-virtual {v4, v6, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 473
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    const-string v3, "#E0E0E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 475
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 480
    iget-wide v3, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountAed:D

    const-wide/16 v9, 0x0

    cmpl-double v1, v3, v9

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->decimalFormat:Ljava/text/DecimalFormat;

    iget-wide v3, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountAed:D

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v3, "AED \ud83c\udde6\ud83c\uddea"

    invoke-direct {p0, v3, v1}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createAmountRow(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 481
    :cond_0
    iget-wide v3, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountYoho:D

    cmpl-double v1, v3, v9

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    iget-wide v3, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountYoho:D

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v3, "YOHO \ud83e\ude99"

    invoke-direct {p0, v3, v1}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createAmountRow(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 482
    :cond_1
    iget-object v1, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->details:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 483
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0627\u0644\u062a\u0641\u0627\u0635\u064a\u0644: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->details:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0xa

    .line 486
    invoke-virtual {v1, v6, p1, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 487
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private filterTransactionList(Ljava/lang/String;)V
    .locals 8

    .line 403
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->transactionListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 404
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->allTransactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;

    .line 408
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->currentFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "SALE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_2

    :sswitch_1
    const-string v4, "FUND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_2

    :sswitch_2
    const-string v4, "ALL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_3
    const-string v4, "WITHDRAW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_6

    if-eq v3, v7, :cond_3

    if-eq v3, v5, :cond_2

    goto :goto_4

    .line 416
    :cond_2
    iget-object v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const-string v4, "withdraw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const-string v4, "transfer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const-string v4, "subtract"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    .line 413
    :cond_3
    iget-object v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const-string v4, "fund"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const-string v4, "add"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_3
    move v6, v7

    :cond_5
    move v7, v6

    goto :goto_4

    .line 410
    :cond_6
    iget-object v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const-string v4, "sale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    :goto_4
    if-eqz v7, :cond_0

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0, v2, v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->transactionMatchesQuery(Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    :cond_7
    iget-object v3, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->transactionListContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createTransactionCard(Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x96504f6 -> :sswitch_3
        0xfd81 -> :sswitch_2
        0x211ac5 -> :sswitch_1
        0x26b847 -> :sswitch_0
    .end sparse-switch
.end method

.method private getCardBackgroundColor(Ljava/lang/String;)I
    .locals 2

    .line 557
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

    .line 563
    const-string p1, "#FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 559
    :pswitch_0
    const-string p1, "#E8F5E9"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 561
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

    .line 544
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

    .line 552
    const-string p1, "#34495E"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 550
    :pswitch_0
    const-string p1, "#F39C12"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 546
    :pswitch_1
    const-string p1, "#27AE60"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 548
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

    .line 528
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

    .line 535
    :pswitch_0
    const-string p1, "\ud83e\ude99 \u062a\u0645\u0648\u064a\u0644 YOHO"

    return-object p1

    .line 533
    :pswitch_1
    const-string p1, "\u2728 \u0628\u064a\u0639 \u0645\u062e\u0635\u0635"

    return-object p1

    .line 534
    :pswitch_2
    const-string p1, "\ud83d\udc65 \u0628\u064a\u0639 \u062c\u0645\u0627\u0639\u064a"

    return-object p1

    .line 531
    :pswitch_3
    const-string p1, "\ud83d\udd01 \u062a\u0635\u0641\u064a\u0631"

    return-object p1

    .line 536
    :pswitch_4
    const-string p1, "\ud83d\udcb8 \u0633\u062d\u0628 YOHO"

    return-object p1

    .line 529
    :pswitch_5
    const-string p1, "\u2795 \u0625\u064a\u062f\u0627\u0639"

    return-object p1

    .line 537
    :pswitch_6
    const-string p1, "\u27a1 \u062a\u062d\u0648\u064a\u0644 AED"

    return-object p1

    .line 532
    :pswitch_7
    const-string p1, "\ud83d\udcc8 \u0628\u064a\u0639"

    return-object p1

    .line 538
    :pswitch_8
    const-string p1, "\ud83d\udcb0 \u062a\u0645\u0648\u064a\u0644 \u0648\u0643\u064a\u0644"

    return-object p1

    .line 530
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

.method private synthetic lambda$createFilterButton$1(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 283
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->currentFilter:Ljava/lang/String;

    .line 284
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->filterTransactionList(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 287
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 288
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 289
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 291
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->currentFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->setFilterButtonState(Landroid/widget/Button;Z)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$createHeader$0(Landroid/view/View;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->finish()V

    return-void
.end method

.method private loadAndDisplayData()V
    .locals 5

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->allTransactions:Ljava/util/List;

    .line 312
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "transaction_records"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    const-string v2, "\\|\\|"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 316
    array-length v2, v1

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 317
    new-instance v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;-><init>(Lcom/mosaedbarmaja/exchangenew/ChartActivity-IA;)V

    const/4 v3, 0x0

    .line 319
    :try_start_0
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->timestamp:J

    const/4 v3, 0x1

    .line 320
    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    const/4 v3, 0x2

    .line 321
    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->date:Ljava/lang/String;

    const/4 v3, 0x3

    .line 322
    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->time:Ljava/lang/String;

    const/4 v3, 0x4

    .line 323
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountAed:D

    const/4 v3, 0x6

    .line 324
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountYoho:D

    const/4 v3, 0x7

    .line 325
    aget-object v3, v1, v3

    const/16 v4, 0x8

    .line 326
    aget-object v1, v1, v4

    iput-object v1, v2, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->details:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->ownerKey:Ljava/lang/String;

    const-string v4, "ALL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->ownerKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->allTransactions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->allTransactions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 336
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->calculateAndDisplaySummaryStats()V

    .line 337
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->calculateAndDisplayChart()V

    .line 338
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->filterTransactionList(Ljava/lang/String;)V

    return-void
.end method

.method private setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 521
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setFilterButtonState(Landroid/widget/Button;Z)V
    .locals 2

    const/high16 v0, 0x42480000    # 50.0f

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 301
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 302
    const-string p2, "#2980B9"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    return-void

    :cond_0
    const p2, -0xbbbbbc

    .line 304
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 305
    const-string p2, "#BDBDBD"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v1, v0, p2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createShape(IFLjava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->setDrawableBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    return-void
.end method

.method private setupFormatting()V
    .locals 3

    .line 100
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 101
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0.00"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->decimalFormat:Ljava/text/DecimalFormat;

    .line 102
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->yohoDecimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method private setupUI()V
    .locals 8

    .line 106
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 108
    const-string v2, "#F4F6F9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 110
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x14

    .line 115
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 117
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createSummaryCards()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    const-string v5, "\u0645\u0644\u062e\u0635 \u0627\u0644\u0645\u0628\u064a\u0639\u0627\u062a \u0627\u0644\u0634\u0647\u0631\u064a (\u0622\u062e\u0631 6 \u0623\u0634\u0647\u0631)"

    invoke-direct {p0, v5}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createChartSectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v5, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;

    invoke-direct {v5, p0, p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;-><init>(Lcom/mosaedbarmaja/exchangenew/ChartActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->barChartView:Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;

    .line 121
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/16 v7, 0x258

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    .line 122
    invoke-virtual {v5, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 123
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->barChartView:Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;

    invoke-virtual {v4, v5}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v4, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->barChartView:Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    const-string v4, "\u062c\u0645\u064a\u0639 \u0627\u0644\u0645\u0639\u0627\u0645\u0644\u0627\u062a"

    invoke-direct {p0, v4}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createChartSectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->createSearchAndFilterControls()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->transactionListContainer:Landroid/widget/LinearLayout;

    .line 130
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->transactionListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private transactionMatchesQuery(Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;Ljava/lang/String;)Z
    .locals 2

    .line 431
    iget-object v0, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->getTransactionTypeDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->details:Ljava/lang/String;

    .line 432
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountAed:D

    .line 433
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->amountYoho:D

    .line 434
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->date:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->time:Ljava/lang/String;

    .line 436
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->requestWindowFeature(I)Z

    .line 84
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "owner_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->ownerKey:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "owner_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->ownerName:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 86
    const-string p1, "\u0627\u0644\u0625\u062d\u0635\u0627\u0626\u064a\u0627\u062a"

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->ownerName:Ljava/lang/String;

    .line 88
    :cond_0
    const-string p1, "GoldExchangeApp"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->preferences:Landroid/content/SharedPreferences;

    .line 89
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->setupFormatting()V

    .line 90
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->setupUI()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 96
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->loadAndDisplayData()V

    return-void
.end method
