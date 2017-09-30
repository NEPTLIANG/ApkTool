.class Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;
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
    .line 385
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 422
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:I

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 445
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:I

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:I

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 435
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:I

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:Landroid/telephony/ServiceState;

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 410
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:I

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 397
    return-void
.end method
