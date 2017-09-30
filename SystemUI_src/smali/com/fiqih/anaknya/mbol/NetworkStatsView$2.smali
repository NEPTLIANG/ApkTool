.class Lcom/fiqih/anaknya/mbol/NetworkStatsView$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsView.java"


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
    .line 145
    iput-object p1, p0, Lcom/fiqih/anaknya/mbol/NetworkStatsView$2;->this$0:Lcom/fiqih/anaknya/mbol/NetworkStatsView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/NetworkStatsView$2;->this$0:Lcom/fiqih/anaknya/mbol/NetworkStatsView;

    iget-object v0, v0, Lcom/fiqih/anaknya/mbol/NetworkStatsView;->mSettingsObserver:Lcom/fiqih/anaknya/mbol/NetworkStatsView$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiqih/anaknya/mbol/NetworkStatsView$SettingsObserver;->onChange(Z)V

    .line 150
    return-void
.end method
