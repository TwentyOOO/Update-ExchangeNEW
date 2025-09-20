.class Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mosaedbarmaja/exchangenew/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Agent"
.end annotation


# instance fields
.field aedBalance:D

.field name:Ljava/lang/String;

.field yohoBalance:D


# direct methods
.method constructor <init>(Ljava/lang/String;DD)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->name:Ljava/lang/String;

    .line 136
    iput-wide p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->yohoBalance:D

    .line 137
    iput-wide p4, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$Agent;->aedBalance:D

    return-void
.end method
