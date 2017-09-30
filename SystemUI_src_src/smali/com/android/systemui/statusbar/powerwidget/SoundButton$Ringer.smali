.class Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
.super Ljava/lang/Object;
.source "SoundButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/SoundButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ringer"
.end annotation


# instance fields
.field final mDoHapticFeedback:Z

.field final mRingerMode:I

.field final mVibrateInSilent:Z

.field final mVibrateSetting:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V
    .locals 0
    .parameter
    .parameter "vibrateInSilent"
    .parameter "vibrateSetting"
    .parameter "ringerMode"
    .parameter "doHapticFeedback"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    .line 212
    iput p3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    .line 213
    iput p4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    .line 214
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mDoHapticFeedback:Z

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v2

    .line 233
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 237
    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 243
    .local v0, r:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    iget v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    if-nez v3, :cond_2

    iget v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    if-ne v3, v4, :cond_2

    move v2, v1

    .line 244
    goto :goto_0

    .line 245
    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method execute()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 219
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "vibrate_in_silent"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateInSilent:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->access$000(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/media/AudioManager;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mVibrateSetting:I

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->access$000(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/media/AudioManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mRingerMode:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 223
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->mDoHapticFeedback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mHapticFeedbackEnabled:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->this$0:Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->access$200(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/os/Vibrator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 226
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 219
    goto :goto_0
.end method
