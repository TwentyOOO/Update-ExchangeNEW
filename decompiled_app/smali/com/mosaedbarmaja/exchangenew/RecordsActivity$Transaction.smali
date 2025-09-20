.class Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;
.super Ljava/lang/Object;
.source "RecordsActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mosaedbarmaja/exchangenew/RecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field amountAed:D

.field amountUsdt:D

.field amountYoho:D

.field beforeState:Ljava/lang/String;

.field date:Ljava/lang/String;

.field details:Ljava/lang/String;

.field owner:Ljava/lang/String;

.field rawRecord:Ljava/lang/String;

.field time:Ljava/lang/String;

.field timestamp:J

.field type:Ljava/lang/String;

.field whatsappMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mosaedbarmaja/exchangenew/RecordsActivity-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)I
    .locals 4

    .line 66
    iget-wide v0, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->timestamp:J

    iget-wide v2, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->timestamp:J

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

    .line 59
    check-cast p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;

    invoke-virtual {p0, p1}, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->compareTo(Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    check-cast p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;

    .line 74
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->rawRecord:Ljava/lang/String;

    iget-object p1, p1, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->rawRecord:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/RecordsActivity$Transaction;->rawRecord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
