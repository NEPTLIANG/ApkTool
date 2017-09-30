.class Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerDualSIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength2()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 487
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity2:I

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon2()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 510
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState2:I

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType2:I

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType2()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon2()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 500
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-static {}, Landroid/telephony/TelephonyManager2;->getDefault()Landroid/telephony/TelephonyManager2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager2;->getNetworkType()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType2:I

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState2:Landroid/telephony/ServiceState;

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength2()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType2()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon2()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 475
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-static {}, Landroid/telephony/TelephonyManager2;->getDefault()Landroid/telephony/TelephonyManager2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager2;->getNetworkType()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType2:I

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength2:Landroid/telephony/SignalStrength;

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength2()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType2()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 462
    return-void
.end method
