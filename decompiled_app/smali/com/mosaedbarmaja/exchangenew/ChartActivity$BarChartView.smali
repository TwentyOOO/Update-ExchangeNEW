.class public Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;
.super Landroid/view/View;
.source "ChartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mosaedbarmaja/exchangenew/ChartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BarChartView"
.end annotation


# instance fields
.field private axisPaint:Landroid/graphics/Paint;

.field private barPaint:Landroid/graphics/Paint;

.field private dataPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private maxValue:F

.field private textPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/mosaedbarmaja/exchangenew/ChartActivity;

.field private valuePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/mosaedbarmaja/exchangenew/ChartActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 573
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->this$0:Lcom/mosaedbarmaja/exchangenew/ChartActivity;

    .line 574
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 571
    iput p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->maxValue:F

    .line 575
    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 579
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->barPaint:Landroid/graphics/Paint;

    .line 581
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->axisPaint:Landroid/graphics/Paint;

    const v2, -0x333334

    .line 582
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 583
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->axisPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 585
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    .line 586
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 587
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 588
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 590
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->valuePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 591
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 592
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->valuePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 593
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->valuePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 594
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->valuePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 615
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 616
    iget-object v1, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->dataPoints:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 623
    :cond_0
    invoke-virtual {v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->getHeight()I

    move-result v1

    add-int/lit8 v7, v1, -0x78

    .line 624
    invoke-virtual {v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->getWidth()I

    move-result v2

    add-int/lit8 v8, v2, -0x50

    const/16 v9, 0x28

    int-to-float v2, v9

    add-int/lit8 v1, v1, -0x50

    int-to-float v3, v1

    .line 626
    iget-object v6, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->axisPaint:Landroid/graphics/Paint;

    move v5, v3

    move v3, v2

    move v4, v2

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 627
    invoke-virtual {v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v9

    int-to-float v4, v1

    iget-object v6, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->axisPaint:Landroid/graphics/Paint;

    move v3, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v3, v8

    .line 629
    iget-object v4, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->dataPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v3

    sub-float v6, v3, v4

    .line 632
    const-string v8, "#3498DB"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v8, "#E74C3C"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v8, "#2ECC71"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v8, "#F1C40F"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v8, "#9B59B6"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v8, "#1ABC9C"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    filled-new-array/range {v9 .. v14}, [I

    move-result-object v8

    const/4 v9, 0x0

    .line 634
    :goto_0
    iget-object v10, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->dataPoints:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 635
    iget-object v10, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->dataPoints:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;

    .line 636
    iget-object v11, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->barPaint:Landroid/graphics/Paint;

    rem-int/lit8 v12, v9, 0x6

    aget v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget v11, v10, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;->value:F

    iget v12, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->maxValue:F

    div-float/2addr v11, v12

    int-to-float v12, v7

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v13, v11, v12

    if-gez v13, :cond_1

    .line 639
    iget v13, v10, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;->value:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    move v11, v12

    :cond_1
    int-to-float v12, v9

    mul-float/2addr v12, v3

    add-float/2addr v12, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v4, v13

    add-float/2addr v12, v14

    sub-float v14, v5, v11

    add-float v15, v12, v6

    move/from16 v16, v13

    .line 646
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v12, v14, v15, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 647
    iget-object v15, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->barPaint:Landroid/graphics/Paint;

    move/from16 v17, v2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v13, v2, v2, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v11, v2

    if-lez v2, :cond_2

    .line 651
    iget-object v2, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->this$0:Lcom/mosaedbarmaja/exchangenew/ChartActivity;

    invoke-static {v2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->-$$Nest$fgetyohoDecimalFormat(Lcom/mosaedbarmaja/exchangenew/ChartActivity;)Ljava/text/DecimalFormat;

    move-result-object v2

    iget v11, v10, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;->value:F

    move v13, v3

    move v15, v4

    float-to-double v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    div-float v3, v6, v16

    add-float/2addr v3, v12

    const/high16 v4, 0x41c80000    # 25.0f

    add-float/2addr v14, v4

    iget-object v4, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    move v13, v3

    move v15, v4

    .line 654
    :goto_1
    iget-object v2, v10, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;->label:Ljava/lang/String;

    div-float v3, v6, v16

    add-float/2addr v12, v3

    add-float v3, v5, v17

    iget-object v4, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    move v3, v13

    move v4, v15

    move/from16 v2, v17

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    move-object/from16 v1, p1

    .line 617
    invoke-virtual {v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, v0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->textPaint:Landroid/graphics/Paint;

    const-string v5, "\u0644\u0627 \u062a\u0648\u062c\u062f \u0628\u064a\u0627\u0646\u0627\u062a \u0644\u0639\u0631\u0636\u0647\u0627"

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->dataPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 663
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x50

    int-to-float v1, v1

    .line 664
    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->dataPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/16 v2, 0x28

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    if-ltz v0, :cond_0

    .line 668
    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->dataPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 669
    iget-object p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->dataPoints:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;

    .line 670
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->this$0:Lcom/mosaedbarmaja/exchangenew/ChartActivity;

    invoke-static {v2}, Lcom/mosaedbarmaja/exchangenew/ChartActivity;->-$$Nest$fgetdecimalFormat(Lcom/mosaedbarmaja/exchangenew/ChartActivity;)Ljava/text/DecimalFormat;

    move-result-object v2

    iget p1, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;->value:F

    float-to-double v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " AED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1

    .line 674
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;",
            ">;)V"
        }
    .end annotation

    .line 598
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->dataPoints:Ljava/util/List;

    const/4 v0, 0x0

    .line 599
    iput v0, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->maxValue:F

    if-eqz p1, :cond_1

    .line 601
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;

    .line 602
    iget v2, v1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;->value:F

    iget v3, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->maxValue:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 603
    iget v1, v1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;->value:F

    iput v1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->maxValue:F

    goto :goto_0

    .line 607
    :cond_1
    iget p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->maxValue:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->maxValue:F

    .line 608
    :cond_2
    iget p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->maxValue:F

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->maxValue:F

    .line 610
    invoke-virtual {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$BarChartView;->invalidate()V

    return-void
.end method
