.class Lcom/fiqih/anaknya/mbol/Traffic$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fiqih/anaknya/mbol/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fiqih/anaknya/mbol/Traffic;


# direct methods
.method constructor <init>(Lcom/fiqih/anaknya/mbol/Traffic;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fiqih/anaknya/mbol/Traffic$SettingsObserver;->this$0:Lcom/fiqih/anaknya/mbol/Traffic;

    .line 34
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 35
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/Traffic$SettingsObserver;->this$0:Lcom/fiqih/anaknya/mbol/Traffic;

    #getter for: Lcom/fiqih/anaknya/mbol/Traffic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/fiqih/anaknya/mbol/Traffic;->access$000(Lcom/fiqih/anaknya/mbol/Traffic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_traffic"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    const-string v1, "status_bar_network_traffic_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/Traffic$SettingsObserver;->this$0:Lcom/fiqih/anaknya/mbol/Traffic;

    #calls: Lcom/fiqih/anaknya/mbol/Traffic;->updateSettings()V
    invoke-static {v1}, Lcom/fiqih/anaknya/mbol/Traffic;->access$100(Lcom/fiqih/anaknya/mbol/Traffic;)V

    .line 46
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/Traffic$SettingsObserver;->this$0:Lcom/fiqih/anaknya/mbol/Traffic;

    #calls: Lcom/fiqih/anaknya/mbol/Traffic;->updateSettings()V
    invoke-static {v0}, Lcom/fiqih/anaknya/mbol/Traffic;->access$100(Lcom/fiqih/anaknya/mbol/Traffic;)V

    .line 51
    return-void
.end method
