.class Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;
.super Ljava/lang/Object;
.source "ChartActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mosaedbarmaja/exchangenew/ChartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field amountAed:D

.field amountYoho:D

.field date:Ljava/lang/String;

.field details:Ljava/lang/String;

.field owner:Ljava/lang/String;

.field time:Ljava/lang/String;

.field timestamp:J

.field type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mosaedbarmaja/exchangenew/ChartActivity-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;)I
    .locals 4

    .line 65
    iget-wide v0, p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->timestamp:J

    iget-wide v2, p0, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->timestamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 58
    check-cast p1, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;

    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;->compareTo(Lcom/mosaedbarmaja/exchangenew/ChartActivity$Transaction;)I

    move-result p1

    return p1
.end method
