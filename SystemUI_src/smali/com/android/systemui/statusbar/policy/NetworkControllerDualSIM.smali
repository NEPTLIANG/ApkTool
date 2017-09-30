.class public Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerDualSIM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;
    }
.end annotation


# instance fields
.field private mAirplaneMode:Z

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothTetherIconId:I

.field private mBluetoothTethered:Z

.field mCombinedSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionDataType2:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionPhoneSignal2:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDataActivity:I

.field mDataActivity2:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataDirectionIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataIconList:[I

.field mDataIconList2:[I

.field mDataNetType:I

.field mDataNetType2:I

.field mDataState:I

.field mDataState2:I

.field mDataTypeIconId:I

.field mDataTypeIconId2:I

.field mDataTypeIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataTypeIconViews2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mInetCondition:I

.field private mIsWimaxEnabled:Z

.field mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mLastCombinedSignalIconId:I

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataTypeIconId:I

.field mLastDataTypeIconId2:I

.field mLastLabel:Ljava/lang/String;

.field mLastPhoneSignalIconId:I

.field mLastPhoneSignalIconId2:I

.field mLastSignalLevel:I

.field mLastSignalLevel2:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field mMobileActivityIconId:I

.field mNetworkName:Ljava/lang/String;

.field mNetworkName2:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameDefault2:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mNetworkNameSeparator2:Ljava/lang/String;

.field final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhone2:Landroid/telephony/TelephonyManager2;

.field mPhoneSignalIconId:I

.field mPhoneSignalIconId2:I

.field mPhoneSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneSignalIconViews2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneState:I

.field mPhoneState2:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field mServiceState:Landroid/telephony/ServiceState;

.field mServiceState2:Landroid/telephony/ServiceState;

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalStrength2:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field mSimState2:Lcom/android/internal/telephony/IccCard$State;

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field mWimaxIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const v10, 0x7f08001b

    const v9, 0x10402de

    const/16 v8, 0x1e1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 190
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 76
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    .line 77
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneState:I

    .line 78
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneState2:I

    .line 79
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:I

    .line 80
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType2:I

    .line 81
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:I

    .line 82
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState2:I

    .line 83
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:I

    .line 84
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity2:I

    .line 89
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_3G:[I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 90
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_G:[I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    .line 123
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    .line 124
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivityIconId:I

    .line 125
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    .line 128
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    .line 129
    const v5, 0x1080538

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTetherIconId:I

    .line 133
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSupported:Z

    .line 134
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    .line 135
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    .line 136
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIdle:Z

    .line 137
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    .line 138
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSignal:I

    .line 139
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxState:I

    .line 140
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxExtraState:I

    .line 143
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    .line 146
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    .line 151
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconViews2:Ljava/util/ArrayList;

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconViews:Ljava/util/ArrayList;

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconViews:Ljava/util/ArrayList;

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconViews:Ljava/util/ArrayList;

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    .line 157
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconViews:Ljava/util/ArrayList;

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconViews2:Ljava/util/ArrayList;

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLabelViews:Ljava/util/ArrayList;

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalClusters:Ljava/util/ArrayList;

    .line 161
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:I

    .line 162
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId2:I

    .line 163
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:I

    .line 164
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    .line 165
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWimaxIconId:I

    .line 166
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedSignalIconId:I

    .line 167
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:I

    .line 168
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId2:I

    .line 169
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionOverlayIconId:I

    .line 170
    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastLabel:Ljava/lang/String;

    .line 172
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataAndWifiStacked:Z

    .line 385
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 450
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 194
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 197
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWifiIcons()V

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWimaxIcons()V

    .line 201
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone:Landroid/telephony/TelephonyManager;

    .line 202
    const-string v5, "phone2"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager2;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone2:Landroid/telephony/TelephonyManager2;

    .line 204
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 211
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone2:Landroid/telephony/TelephonyManager2;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v6, v8}, Landroid/telephony/TelephonyManager2;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 218
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator:Ljava/lang/String;

    .line 219
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault:Ljava/lang/String;

    .line 221
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:Ljava/lang/String;

    .line 223
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator2:Ljava/lang/String;

    .line 224
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault2:Ljava/lang/String;

    .line 226
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault2:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName2:Ljava/lang/String;

    .line 229
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 230
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 231
    .local v2, handler:Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 232
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 233
    .local v4, wifiMessenger:Landroid/os/Messenger;
    if-eqz v4, :cond_146

    .line 234
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 238
    :cond_146
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v5, "android.intent.action.SIM_STATE_CHANGED2"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSupported:Z

    .line 251
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSupported:Z

    if-eqz v5, :cond_19f

    .line 252
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    :cond_19f
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateAirplaneMode()V

    .line 261
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength2()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType2()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon2()V

    return-void
.end method

.method private getResourceName(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1513
    if-eqz p1, :cond_11

    .line 1514
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1516
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 1521
    :goto_c
    return-object v0

    .line 1517
    :catch_d
    move-exception v0

    .line 1518
    const-string v0, "(unknown)"

    goto :goto_c

    .line 1521
    :cond_11
    const-string v0, "(null)"

    goto :goto_c
.end method

.method private hasService()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 567
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_f

    .line 568
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_10

    .line 573
    :pswitch_e
    const/4 v0, 0x1

    .line 576
    :cond_f
    :pswitch_f
    return v0

    .line 568
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private hasService2()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 585
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState2:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_f

    .line 586
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState2:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_10

    .line 591
    :pswitch_e
    const/4 v0, 0x1

    .line 594
    :cond_f
    :pswitch_f
    return v0

    .line 586
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 8
    .parameter "info"

    .prologue
    .line 1108
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 1119
    .end local v3           #ssid:Ljava/lang/String;
    :goto_6
    return-object v3

    .line 1113
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1114
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1115
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_11

    .line 1116
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_6

    .line 1119
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_28
    const/4 v3, 0x0

    goto :goto_6
.end method

.method private isCdma()Z
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isCdma2()Z
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength2:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private updateAirplaneMode()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_13

    :goto_10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    .line 601
    return-void

    :cond_13
    move v0, v1

    .line 599
    goto :goto_10
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 1173
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    move-object v0, v1

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1177
    .local v0, info:Landroid/net/NetworkInfo;
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x1

    :goto_12
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    .line 1184
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_3e

    .line 1185
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    .line 1191
    :goto_23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType()V

    .line 1192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType2()V

    .line 1193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWimaxIcons()V

    .line 1194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon2()V

    .line 1195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon()V

    .line 1196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength()V

    .line 1197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength2()V

    .line 1198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWifiIcons()V

    .line 1199
    return-void

    :cond_3c
    move v1, v2

    .line 1177
    goto :goto_12

    .line 1187
    :cond_3e
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    goto :goto_23
.end method

.method private final updateDataIcon()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 864
    const/4 v0, 0x0

    .line 865
    .local v0, iconId:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data_sim"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3c

    .line 868
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 870
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_25

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_3a

    .line 871
    :cond_25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:I

    if-ne v1, v3, :cond_4c

    .line 872
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:I

    packed-switch v1, :pswitch_data_74

    .line 883
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    aget v0, v1, v4

    .line 886
    :goto_38
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:I

    .line 913
    :cond_3a
    :goto_3a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:I

    .line 915
    :cond_3c
    return-void

    .line 874
    :pswitch_3d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    aget v0, v1, v5

    .line 875
    goto :goto_38

    .line 877
    :pswitch_42
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    aget v0, v1, v3

    .line 878
    goto :goto_38

    .line 880
    :pswitch_47
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    aget v0, v1, v6

    .line 881
    goto :goto_38

    .line 888
    :cond_4c
    const/4 v0, 0x0

    goto :goto_3a

    .line 893
    :cond_4e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService()Z

    move-result v1

    if-eqz v1, :cond_71

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:I

    if-ne v1, v3, :cond_71

    .line 894
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:I

    packed-switch v1, :pswitch_data_7e

    .line 906
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    aget v0, v1, v4

    .line 907
    goto :goto_3a

    .line 896
    :pswitch_62
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    aget v0, v1, v5

    .line 897
    goto :goto_3a

    .line 899
    :pswitch_67
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    aget v0, v1, v3

    .line 900
    goto :goto_3a

    .line 902
    :pswitch_6c
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    aget v0, v1, v6

    .line 903
    goto :goto_3a

    .line 910
    :cond_71
    const/4 v0, 0x0

    goto :goto_3a

    .line 872
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_42
        :pswitch_47
    .end packed-switch

    .line 894
    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_62
        :pswitch_67
        :pswitch_6c
    .end packed-switch
.end method

.method private final updateDataIcon2()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 918
    const/4 v0, 0x0

    .line 919
    .local v0, iconId2:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data_sim"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_3c

    .line 922
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma2()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 924
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_25

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_3a

    .line 925
    :cond_25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService2()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState2:I

    if-ne v1, v3, :cond_4c

    .line 926
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity2:I

    packed-switch v1, :pswitch_data_74

    .line 937
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    aget v0, v1, v4

    .line 940
    :goto_38
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:I

    .line 968
    :cond_3a
    :goto_3a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:I

    .line 970
    :cond_3c
    return-void

    .line 928
    :pswitch_3d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    aget v0, v1, v5

    .line 929
    goto :goto_38

    .line 931
    :pswitch_42
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    aget v0, v1, v3

    .line 932
    goto :goto_38

    .line 934
    :pswitch_47
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    aget v0, v1, v6

    .line 935
    goto :goto_38

    .line 942
    :cond_4c
    const/4 v0, 0x0

    goto :goto_3a

    .line 947
    :cond_4e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService2()Z

    move-result v1

    if-eqz v1, :cond_71

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState2:I

    if-ne v1, v3, :cond_71

    .line 948
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity2:I

    packed-switch v1, :pswitch_data_7e

    .line 960
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    aget v0, v1, v4

    .line 961
    goto :goto_3a

    .line 950
    :pswitch_62
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    aget v0, v1, v5

    .line 951
    goto :goto_3a

    .line 953
    :pswitch_67
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    aget v0, v1, v3

    .line 954
    goto :goto_3a

    .line 956
    :pswitch_6c
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    aget v0, v1, v6

    .line 957
    goto :goto_3a

    .line 964
    :cond_71
    const/4 v0, 0x0

    goto :goto_3a

    .line 926
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_42
        :pswitch_47
    .end packed-switch

    .line 948
    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_62
        :pswitch_67
        :pswitch_6c
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .registers 6

    .prologue
    const v4, 0x7f08005a

    const v3, 0x7f080059

    const v2, 0x7f020140

    const v1, 0x7f02013b

    .line 695
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    if-eqz v0, :cond_3e

    .line 699
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    .line 700
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_H:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    .line 763
    :goto_25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdmaEri()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 765
    :cond_39
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_R:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 767
    :cond_3d
    return-void

    .line 704
    :cond_3e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:I

    packed-switch v0, :pswitch_data_c4

    .line 755
    :pswitch_43
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    .line 756
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_25

    .line 706
    :pswitch_52
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    .line 707
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_25

    .line 712
    :pswitch_61
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    .line 713
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_E:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_25

    .line 718
    :pswitch_73
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    .line 719
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_25

    .line 726
    :pswitch_82
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    .line 727
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_H:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_25

    .line 733
    :pswitch_91
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    .line 734
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_1X:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 735
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_25

    .line 743
    :pswitch_a3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    .line 744
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_25

    .line 749
    :pswitch_b3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    .line 750
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[I

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_25

    .line 704
    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_52
        :pswitch_61
        :pswitch_73
        :pswitch_91
        :pswitch_a3
        :pswitch_a3
        :pswitch_91
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_43
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
    .end packed-switch
.end method

.method private final updateDataNetType2()V
    .registers 6

    .prologue
    const v4, 0x7f080059

    const v3, 0x7f08005a

    const v2, 0x7f020140

    const v1, 0x7f02013b

    .line 770
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    if-eqz v0, :cond_3e

    .line 774
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    .line 775
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_H:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType2:Ljava/lang/String;

    .line 829
    :goto_25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma2()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdmaEri2()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone2:Landroid/telephony/TelephonyManager2;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager2;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 831
    :cond_39
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_R:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    .line 833
    :cond_3d
    return-void

    .line 779
    :cond_3e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType2:I

    packed-switch v0, :pswitch_data_b4

    .line 821
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    .line 822
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    .line 823
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType2:Ljava/lang/String;

    goto :goto_25

    .line 781
    :pswitch_52
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    .line 782
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType2:Ljava/lang/String;

    goto :goto_25

    .line 787
    :pswitch_61
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    .line 788
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_E:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType2:Ljava/lang/String;

    goto :goto_25

    .line 793
    :pswitch_73
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    .line 794
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType2:Ljava/lang/String;

    goto :goto_25

    .line 801
    :pswitch_82
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    .line 802
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_H:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType2:Ljava/lang/String;

    goto :goto_25

    .line 808
    :pswitch_91
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    .line 809
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_1X:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType2:Ljava/lang/String;

    goto :goto_25

    .line 815
    :pswitch_a3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    .line 816
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA2_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList2:[I

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType2:Ljava/lang/String;

    goto/16 :goto_25

    .line 779
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_52
        :pswitch_61
        :pswitch_73
        :pswitch_91
        :pswitch_a3
        :pswitch_a3
        :pswitch_91
        :pswitch_82
        :pswitch_82
        :pswitch_82
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 515
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 517
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 536
    :goto_12
    return-void

    .line 519
    :cond_13
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 520
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 522
    :cond_20
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 523
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 525
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 527
    :cond_3b
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 528
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 531
    :cond_48
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 534
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4d
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12
.end method

.method private final updateSimState2(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 539
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 541
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    .line 560
    :goto_12
    return-void

    .line 543
    :cond_13
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 544
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 546
    :cond_20
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 547
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 549
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 551
    :cond_3b
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 552
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 555
    :cond_48
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 558
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4d
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12
.end method

.method private final updateTelephonySignalStrength()V
    .registers 6

    .prologue
    const v4, 0x7f020131

    .line 604
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService()Z

    move-result v2

    if-nez v2, :cond_f

    .line 606
    const v2, 0x7f020135

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    .line 646
    :goto_e
    return-void

    .line 608
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v2, :cond_23

    .line 610
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    .line 611
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_e

    .line 616
    :cond_23
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .local v0, iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastSignalLevel:I

    .line 617
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 618
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdmaEri()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 619
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_1U:[I

    .line 631
    .local v1, iconList:[I
    :goto_39
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_45

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_72

    .line 632
    :cond_45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 633
    const/4 v0, 0x0

    .line 635
    :cond_4c
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    .line 640
    :goto_50
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 643
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    goto :goto_e

    .line 621
    .end local v1           #iconList:[I
    :cond_61
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1U:[I

    .restart local v1       #iconList:[I
    goto :goto_39

    .line 625
    .end local v1           #iconList:[I
    :cond_64
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 626
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_1U:[I

    .restart local v1       #iconList:[I
    goto :goto_39

    .line 628
    .end local v1           #iconList:[I
    :cond_6f
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1U:[I

    .restart local v1       #iconList:[I
    goto :goto_39

    .line 637
    :cond_72
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    goto :goto_50
.end method

.method private final updateTelephonySignalStrength2()V
    .registers 6

    .prologue
    const v4, 0x7f020132

    .line 649
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService2()Z

    move-result v2

    if-nez v2, :cond_f

    .line 651
    const v2, 0x7f020138

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    .line 692
    :goto_e
    return-void

    .line 653
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength2:Landroid/telephony/SignalStrength;

    if-nez v2, :cond_23

    .line 655
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    .line 656
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal2:Ljava/lang/String;

    goto :goto_e

    .line 661
    :cond_23
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .local v0, iconLevel2:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastSignalLevel2:I

    .line 663
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma2()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 664
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdmaEri2()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 665
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_2U:[I

    .line 677
    .local v1, iconList2:[I
    :goto_39
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_45

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState2:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_72

    .line 678
    :cond_45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService2()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 679
    const/4 v0, 0x0

    .line 681
    :cond_4c
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    .line 686
    :goto_50
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal2:Ljava/lang/String;

    .line 689
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    goto :goto_e

    .line 667
    .end local v1           #iconList2:[I
    :cond_61
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_2U:[I

    .restart local v1       #iconList2:[I
    goto :goto_39

    .line 671
    .end local v1           #iconList2:[I
    :cond_64
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone2:Landroid/telephony/TelephonyManager2;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager2;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 672
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_2U:[I

    .restart local v1       #iconList2:[I
    goto :goto_39

    .line 674
    .end local v1           #iconList2:[I
    :cond_6f
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_2U:[I

    .restart local v1       #iconList2:[I
    goto :goto_39

    .line 683
    :cond_72
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    goto :goto_50
.end method

.method private updateWifiIcons()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1093
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-eqz v1, :cond_1f

    .line 1094
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    .line 1095
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    .line 1105
    :goto_1e
    return-void

    .line 1098
    :cond_1f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_31

    .line 1099
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    .line 1103
    :goto_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_1e

    .line 1101
    :cond_31
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiEnabled:Z

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    aget v0, v1, v0

    :cond_3b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    goto :goto_25
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/16 v7, -0xc8

    const/4 v5, 0x0

    .line 1051
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1053
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_21

    :goto_1b
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiEnabled:Z

    .line 1089
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWifiIcons()V

    .line 1090
    return-void

    :cond_21
    move v4, v5

    .line 1053
    goto :goto_1b

    .line 1056
    :cond_23
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 1057
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1059
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    .line 1060
    .local v3, wasConnected:Z
    if-eqz v2, :cond_62

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_62

    :goto_3d
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    .line 1062
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-eqz v4, :cond_67

    if-nez v3, :cond_67

    .line 1064
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1065
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_55

    .line 1066
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1068
    :cond_55
    if-eqz v1, :cond_64

    .line 1069
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    .line 1079
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_5d
    :goto_5d
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    .line 1080
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiRssi:I

    goto :goto_1d

    :cond_62
    move v4, v5

    .line 1060
    goto :goto_3d

    .line 1071
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    :cond_64
    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    goto :goto_5d

    .line 1073
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_67
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-nez v4, :cond_5d

    .line 1074
    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    goto :goto_5d

    .line 1081
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #wasConnected:Z
    :cond_6e
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1082
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-eqz v4, :cond_1d

    .line 1083
    const-string v4, "newRssi"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiRssi:I

    .line 1084
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    goto :goto_1d
.end method

.method private updateWimaxIcons()V
    .registers 4

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_3c

    .line 1150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    if-eqz v0, :cond_2c

    .line 1151
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIdle:Z

    if-eqz v0, :cond_1f

    .line 1152
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    .line 1155
    :goto_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWimax:Ljava/lang/String;

    .line 1164
    :goto_1e
    return-void

    .line 1154
    :cond_1f
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    goto :goto_10

    .line 1158
    :cond_2c
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1e

    .line 1162
    :cond_3c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    goto :goto_1e
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1125
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, action:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    .line 1127
    .local v1, wasConnected:Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1128
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1130
    .local v2, wimaxStatus:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_23

    :goto_1a
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    .line 1144
    .end local v2           #wimaxStatus:I
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType()V

    .line 1145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWimaxIcons()V

    .line 1146
    return-void

    .restart local v2       #wimaxStatus:I
    :cond_23
    move v3, v4

    .line 1130
    goto :goto_1a

    .line 1132
    .end local v2           #wimaxStatus:I
    :cond_25
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1133
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSignal:I

    goto :goto_1c

    .line 1134
    :cond_36
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1135
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxState:I

    .line 1137
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxExtraState:I

    .line 1140
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_5e

    move v5, v3

    :goto_54
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    .line 1142
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_60

    :goto_5b
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIdle:Z

    goto :goto_1c

    :cond_5e
    move v5, v4

    .line 1140
    goto :goto_54

    :cond_60
    move v3, v4

    .line 1142
    goto :goto_5b
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;)V
    .registers 3
    .parameter "cluster"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;)V

    .line 298
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1419
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1422
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1423
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1424
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1425
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1427
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1429
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1430
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1431
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1432
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1433
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1434
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1435
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1436
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1439
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1441
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1442
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1443
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1450
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1451
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1452
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1454
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1456
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1460
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1461
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1462
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1463
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1464
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1465
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1466
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1467
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1472
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1474
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSupported:Z

    if-eqz v0, :cond_1b6

    .line 1475
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1477
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1478
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1479
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1486
    :cond_1b6
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1488
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1490
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1492
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1494
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1497
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1498
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1500
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1504
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1505
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1506
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    const-string v0, "  mLastLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1509
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    return-void
.end method

.method isCdmaEri()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 836
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_18

    .line 837
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 838
    .local v0, iconIndex:I
    if-eq v0, v2, :cond_18

    .line 839
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 840
    .local v1, iconMode:I
    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_18

    .line 846
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_17
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method isCdmaEri2()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 850
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState2:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_18

    .line 851
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState2:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 852
    .local v0, iconIndex2:I
    if-eq v0, v2, :cond_18

    .line 853
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState2:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 854
    .local v1, iconMode2:I
    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_18

    .line 860
    .end local v0           #iconIndex2:I
    .end local v1           #iconMode2:I
    :cond_17
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 343
    :cond_1d
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWifiState(Landroid/content/Intent;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 380
    :cond_23
    :goto_23
    return-void

    .line 345
    :cond_24
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 346
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateSimState(Landroid/content/Intent;)V

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon()V

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto :goto_23

    .line 349
    :cond_36
    const-string v1, "android.intent.action.SIM_STATE_CHANGED2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 350
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateSimState2(Landroid/content/Intent;)V

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon2()V

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto :goto_23

    .line 353
    :cond_48
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 354
    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "plmn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto :goto_23

    .line 359
    :cond_6f
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED.phone2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 360
    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "plmn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateNetworkName2(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto :goto_23

    .line 365
    :cond_96
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 367
    :cond_a6
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateConnectivity(Landroid/content/Intent;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto/16 :goto_23

    .line 369
    :cond_ae
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto/16 :goto_23

    .line 371
    :cond_bb
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateAirplaneMode()V

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto/16 :goto_23

    .line 374
    :cond_cb
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 377
    :cond_e3
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWimaxState(Landroid/content/Intent;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto/16 :goto_23
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;)V
    .registers 13
    .parameter "cluster"

    .prologue
    const/4 v1, 0x1

    .line 301
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 307
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    if-eqz v0, :cond_28

    .line 309
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_22
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setIsAirplaneMode(Z)V

    .line 331
    return-void

    .line 318
    :cond_28
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal2:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType2:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setMobileDataIndicators2(ZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method refreshViews()V
    .registers 10

    .prologue
    const v8, 0x7f080062

    const/4 v7, 0x4

    const/4 v2, 0x0

    .line 1204
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    .line 1208
    const-string v0, ""

    .line 1211
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-eqz v1, :cond_26e

    .line 1212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    if-nez v0, :cond_b6

    .line 1213
    const v0, 0x7f080074

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1214
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivityIconId:I

    .line 1233
    :goto_1a
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivityIconId:I

    .line 1234
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    .line 1235
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1238
    :goto_22
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    if-eqz v5, :cond_3c

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v3, 0x7f08001c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1240
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTetherIconId:I

    .line 1241
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v6, 0x7f080061

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1245
    :cond_3c
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    if-eqz v5, :cond_26a

    .line 1248
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1250
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal2:Ljava/lang/String;

    .line 1252
    const v5, 0x7f020135

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    .line 1253
    const v5, 0x7f020138

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    .line 1254
    const v5, 0x7f0200c1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:I

    .line 1257
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-nez v5, :cond_26a

    .line 1258
    const v0, 0x7f080073

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1259
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1260
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    move v4, v3

    move-object v3, v0

    .line 1284
    :goto_72
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    if-ne v0, v5, :cond_a0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId2:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    if-ne v0, v5, :cond_a0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:I

    if-ne v0, v5, :cond_a0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionOverlayIconId:I

    if-ne v0, v1, :cond_a0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    if-ne v0, v1, :cond_a0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWimaxIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    if-ne v0, v1, :cond_a0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    if-ne v0, v1, :cond_a0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId2:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    if-eq v0, v1, :cond_d8

    .line 1294
    :cond_a0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;

    .line 1295
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;)V

    goto :goto_a6

    .line 1216
    :cond_b6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    .line 1217
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    packed-switch v1, :pswitch_data_272

    goto/16 :goto_1a

    .line 1228
    :pswitch_bf
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivityIconId:I

    goto/16 :goto_1a

    .line 1219
    :pswitch_c3
    const v1, 0x7f0200ca

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivityIconId:I

    goto/16 :goto_1a

    .line 1222
    :pswitch_ca
    const v1, 0x7f0200cc

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivityIconId:I

    goto/16 :goto_1a

    .line 1225
    :pswitch_d1
    const v1, 0x7f0200cb

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivityIconId:I

    goto/16 :goto_1a

    .line 1300
    :cond_d8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    if-eq v0, v1, :cond_101

    .line 1301
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:I

    .line 1302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 1303
    :goto_e9
    if-ge v1, v5, :cond_101

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1305
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1306
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1303
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e9

    .line 1311
    :cond_101
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId2:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    if-eq v0, v1, :cond_12a

    .line 1312
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId2:I

    .line 1313
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconViews2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 1314
    :goto_112
    if-ge v1, v5, :cond_12a

    .line 1315
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconViews2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1316
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId2:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1317
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal2:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1314
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_112

    .line 1322
    :cond_12a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:I

    if-eq v0, v1, :cond_156

    .line 1323
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:I

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 1325
    :goto_13b
    if-ge v1, v5, :cond_156

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1327
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1328
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1329
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1325
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13b

    .line 1334
    :cond_156
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    if-eq v0, v1, :cond_18a

    .line 1335
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    .line 1336
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 1337
    :goto_167
    if-ge v1, v5, :cond_18a

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1339
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    if-nez v6, :cond_17c

    .line 1340
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1337
    :goto_178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_167

    .line 1342
    :cond_17c
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1343
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1344
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_178

    .line 1350
    :cond_18a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWimaxIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    if-eq v0, v1, :cond_1be

    .line 1351
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWimaxIconId:I

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 1353
    :goto_19b
    if-ge v1, v5, :cond_1be

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1355
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    if-nez v6, :cond_1b0

    .line 1356
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1353
    :goto_1ac
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19b

    .line 1358
    :cond_1b0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1359
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1360
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWimax:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1ac

    .line 1365
    :cond_1be
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedSignalIconId:I

    if-eq v0, v4, :cond_1e1

    .line 1366
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedSignalIconId:I

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 1368
    :goto_1cb
    if-ge v1, v5, :cond_1e1

    .line 1369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1370
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1371
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1368
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1cb

    .line 1376
    :cond_1e1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    if-eq v0, v1, :cond_215

    .line 1377
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:I

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 1379
    :goto_1f2
    if-ge v1, v4, :cond_215

    .line 1380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1381
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    if-nez v5, :cond_207

    .line 1382
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1379
    :goto_203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f2

    .line 1384
    :cond_207
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1385
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1386
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_203

    .line 1392
    :cond_215
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId2:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    if-eq v0, v1, :cond_249

    .line 1393
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId2:I

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconViews2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 1395
    :goto_226
    if-ge v1, v4, :cond_249

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconViews2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1397
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    if-nez v5, :cond_23b

    .line 1398
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1395
    :goto_237
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_226

    .line 1400
    :cond_23b
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1401
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId2:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1402
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType2:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_237

    .line 1408
    :cond_249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastLabel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_269

    .line 1409
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastLabel:Ljava/lang/String;

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1411
    :goto_259
    if-ge v2, v1, :cond_269

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1413
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    add-int/lit8 v2, v2, 0x1

    goto :goto_259

    .line 1416
    :cond_269
    return-void

    :cond_26a
    move v4, v3

    move-object v3, v0

    goto/16 :goto_72

    :cond_26e
    move v1, v2

    move v3, v2

    goto/16 :goto_22

    .line 1217
    :pswitch_data_272
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_c3
        :pswitch_ca
        :pswitch_d1
    .end packed-switch
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 8
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 979
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 980
    .local v0, something:Z
    if-eqz p3, :cond_e

    if-eqz p4, :cond_e

    .line 981
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const/4 v0, 0x1

    .line 984
    :cond_e
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 985
    if-eqz v0, :cond_19

    .line 986
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    :cond_19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const/4 v0, 0x1

    .line 991
    :cond_1d
    if-eqz v0, :cond_26

    .line 992
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:Ljava/lang/String;

    .line 996
    :goto_25
    return-void

    .line 994
    :cond_26
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:Ljava/lang/String;

    goto :goto_25
.end method

.method updateNetworkName2(ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 8
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    .local v1, str2:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1005
    .local v0, something2:Z
    if-eqz p3, :cond_e

    if-eqz p4, :cond_e

    .line 1006
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    const/4 v0, 0x1

    .line 1009
    :cond_e
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 1010
    if-eqz v0, :cond_19

    .line 1011
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    :cond_19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    const/4 v0, 0x1

    .line 1016
    :cond_1d
    if-eqz v0, :cond_26

    .line 1017
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName2:Ljava/lang/String;

    .line 1021
    :goto_25
    return-void

    .line 1019
    :cond_26
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault2:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName2:Ljava/lang/String;

    goto :goto_25
.end method
