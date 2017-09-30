.class public Lcom/android/systemui/statusbar/powerwidget/WifiButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/WifiButton$1;,
        Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;
    }
.end annotation


# static fields
.field private static final sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;-><init>(Lcom/android/systemui/statusbar/powerwidget/WifiButton$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleWifi"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method protected toggleState()V
    .locals 4

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v3, 0x7f0200d8

    const v2, 0x7f0200d7

    .line 100
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    goto :goto_0

    .line 106
    :pswitch_2
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    goto :goto_0

    .line 114
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    goto :goto_0

    .line 117
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
