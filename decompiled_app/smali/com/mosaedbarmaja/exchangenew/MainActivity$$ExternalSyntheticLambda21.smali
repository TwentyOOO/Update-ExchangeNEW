.class public final synthetic Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

.field public final synthetic f$1:Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/mosaedbarmaja/exchangenew/MainActivity;Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda21;->f$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    iput-object p2, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda21;->f$1:Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda21;->f$0:Lcom/mosaedbarmaja/exchangenew/MainActivity;

    iget-object v1, p0, Lcom/mosaedbarmaja/exchangenew/MainActivity$$ExternalSyntheticLambda21;->f$1:Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/mosaedbarmaja/exchangenew/MainActivity;->$r8$lambda$nJ8YYtfAFgs7Krb-_gH-xZQ_X0c(Lcom/mosaedbarmaja/exchangenew/MainActivity;Lcom/mosaedbarmaja/exchangenew/MainActivity$MenuAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
