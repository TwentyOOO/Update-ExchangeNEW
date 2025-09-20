.class Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;
.super Ljava/lang/Object;
.source "ChartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mosaedbarmaja/exchangenew/ChartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChartDataPoint"
.end annotation


# instance fields
.field label:Ljava/lang/String;

.field value:F


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;->label:Ljava/lang/String;

    .line 75
    iput p2, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$ChartDataPoint;->value:F

    return-void
.end method
