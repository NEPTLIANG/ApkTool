.class public Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$1;,
        Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$BluetoothStateTracker;
    }
.end annotation


# static fields
.field private static final sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$BluetoothStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$BluetoothStateTracker;-><init>(Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleBluetooth"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method protected toggleState()V
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v3, 0x7f020062

    const v2, 0x7f020061

    .line 85
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 86
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    goto :goto_0

    .line 91
    :pswitch_2
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    goto :goto_0

    .line 99
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->sBluetoothState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    goto :goto_0

    .line 102
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
