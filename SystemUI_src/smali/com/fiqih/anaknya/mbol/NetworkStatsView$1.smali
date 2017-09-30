.class Lcom/fiqih/anaknya/mbol/NetworkStatsView$1;
.super Ljava/lang/Object;
.source "NetworkStatsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fiqih/anaknya/mbol/NetworkStatsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fiqih/anaknya/mbol/NetworkStatsView;


# direct methods
.method constructor <init>(Lcom/fiqih/anaknya/mbol/NetworkStatsView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fiqih/anaknya/mbol/NetworkStatsView$1;->this$0:Lcom/fiqih/anaknya/mbol/NetworkStatsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/NetworkStatsView$1;->this$0:Lcom/fiqih/anaknya/mbol/NetworkStatsView;

    #getter for: Lcom/fiqih/anaknya/mbol/NetworkStatsView;->mActivated:Z
    invoke-static {v0}, Lcom/fiqih/anaknya/mbol/NetworkStatsView;->access$000(Lcom/fiqih/anaknya/mbol/NetworkStatsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/NetworkStatsView$1;->this$0:Lcom/fiqih/anaknya/mbol/NetworkStatsView;

    #getter for: Lcom/fiqih/anaknya/mbol/NetworkStatsView;->mAttached:Z
    invoke-static {v0}, Lcom/fiqih/anaknya/mbol/NetworkStatsView;->access$100(Lcom/fiqih/anaknya/mbol/NetworkStatsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/NetworkStatsView$1;->this$0:Lcom/fiqih/anaknya/mbol/NetworkStatsView;

    #calls: Lcom/fiqih/anaknya/mbol/NetworkStatsView;->updateStats()V
    invoke-static {v0}, Lcom/fiqih/anaknya/mbol/NetworkStatsView;->access$200(Lcom/fiqih/anaknya/mbol/NetworkStatsView;)V

    .line 76
    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/NetworkStatsView$1;->this$0:Lcom/fiqih/anaknya/mbol/NetworkStatsView;

    invoke-virtual {v0}, Lcom/fiqih/anaknya/mbol/NetworkStatsView;->invalidate()V

    .line 78
    :cond_0
    return-void
.end method
