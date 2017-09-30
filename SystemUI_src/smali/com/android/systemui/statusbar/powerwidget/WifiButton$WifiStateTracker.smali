.class final Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;
.super Lcom/android/systemui/statusbar/powerwidget/StateTracker;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/WifiButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/powerwidget/WifiButton$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .registers 2
    .parameter "wifiState"

    .prologue
    .line 81
    packed-switch p0, :pswitch_data_e

    .line 91
    const/4 v0, 0x6

    :goto_4
    return v0

    .line 83
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 85
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 87
    :pswitch_9
    const/4 v0, 0x4

    goto :goto_4

    .line 89
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 81
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 24
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 26
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_13

    .line 27
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 29
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x6

    goto :goto_12
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 74
    :goto_c
    return-void

    .line 70
    :cond_d
    const-string v2, "wifi_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 72
    .local v1, wifiState:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v0

    .line 73
    .local v0, widgetState:I
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_c
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 35
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 37
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_12

    .line 38
    const-string v1, "WifiButton"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_11
    return-void

    .line 46
    :cond_12
    new-instance v1, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11
.end method