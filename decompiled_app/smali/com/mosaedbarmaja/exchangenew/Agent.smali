.class public Lcom/mosaedbarmaja/exchangenew/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# instance fields
.field aedBalance:D

.field name:Ljava/lang/String;

.field yohoBalance:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/Agent;->name:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lcom/mosaedbarmaja/exchangenew/Agent;->yohoBalance:D

    .line 11
    iput-wide p4, p0, Lcom/mosaedbarmaja/exchangenew/Agent;->aedBalance:D

    return-void
.end method
