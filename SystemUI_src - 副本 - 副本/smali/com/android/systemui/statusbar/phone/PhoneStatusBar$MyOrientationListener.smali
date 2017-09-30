.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyOrientationListener;
.super Landroid/view/WindowOrientationListener;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 245
    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    .line 246
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .registers 3
    .parameter "rotation"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$100()I

    move-result v0

    if-eq p1, v0, :cond_13

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyOrientationListener;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->orientationChanged(I)V

    .line 253
    :cond_13
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$102(I)I

    .line 254
    return-void
.end method
