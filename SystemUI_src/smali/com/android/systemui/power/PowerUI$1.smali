.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x64

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10e

    .line 116
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v2, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 117
    .local v2, oldBatteryLevel:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "level"

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 118
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 119
    .local v3, oldBatteryStatus:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "status"

    invoke-virtual {p2, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 121
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 122
    .local v6, oldPlugType:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "plugged"

    invoke-virtual {p2, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 123
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v5, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 124
    .local v5, oldInvalidCharger:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "invalid_charger"

    invoke-virtual {p2, v11, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 126
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v10, :cond_8a

    move v8, v9

    .line 127
    .local v8, plugged:Z
    :goto_4f
    if-eqz v6, :cond_52

    move v7, v9

    .line 129
    .local v7, oldPlugged:Z
    :cond_52
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v10, v2}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v4

    .line 130
    .local v4, oldBucket:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v11, v11, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v1

    .line 144
    .local v1, bucket:I
    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "S899t"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    .line 145
    if-nez v8, :cond_8c

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/4 v11, 0x2

    if-ge v10, v11, :cond_8c

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq v10, v9, :cond_8c

    .line 148
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9}, Lcom/android/systemui/power/PowerUI;->access$100(Lcom/android/systemui/power/PowerUI;)V

    .line 150
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->playLowBatterySound()V

    .line 194
    .end local v1           #bucket:I
    .end local v2           #oldBatteryLevel:I
    .end local v3           #oldBatteryStatus:I
    .end local v4           #oldBucket:I
    .end local v5           #oldInvalidCharger:I
    .end local v6           #oldPlugType:I
    .end local v7           #oldPlugged:Z
    .end local v8           #plugged:Z
    :cond_89
    :goto_89
    return-void

    .restart local v2       #oldBatteryLevel:I
    .restart local v3       #oldBatteryStatus:I
    .restart local v5       #oldInvalidCharger:I
    .restart local v6       #oldPlugType:I
    :cond_8a
    move v8, v7

    .line 126
    goto :goto_4f

    .line 152
    .restart local v1       #bucket:I
    .restart local v4       #oldBucket:I
    .restart local v7       #oldPlugged:Z
    .restart local v8       #plugged:Z
    :cond_8c
    if-nez v8, :cond_94

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-le v10, v9, :cond_99

    .line 153
    :cond_94
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->dismissShutdownDelayDialog()V

    .line 157
    :cond_99
    if-nez v5, :cond_ae

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-eqz v10, :cond_ae

    .line 158
    const-string v9, "PowerUI"

    const-string v10, "showing invalid charger warning"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->showInvalidChargerDialog()V

    goto :goto_89

    .line 161
    :cond_ae
    if-eqz v5, :cond_ee

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-nez v10, :cond_ee

    .line 162
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->dismissInvalidChargerDialog()V

    .line 169
    :cond_bb
    if-eq v2, v12, :cond_d1

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-ne v10, v12, :cond_d1

    if-eqz v8, :cond_d1

    .line 171
    const-string v10, "PowerUI"

    const-string v11, "Play charge full sound"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->playLowBatterySound()V

    .line 176
    :cond_d1
    if-nez v8, :cond_f5

    if-lt v1, v4, :cond_d7

    if-eqz v7, :cond_f5

    :cond_d7
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq v10, v9, :cond_f5

    if-gez v1, :cond_f5

    .line 180
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 183
    if-ne v1, v4, :cond_e8

    if-eqz v7, :cond_89

    .line 184
    :cond_e8
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->playLowBatterySound()V

    goto :goto_89

    .line 163
    :cond_ee
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_bb

    goto :goto_89

    .line 186
    :cond_f5
    if-nez v8, :cond_fb

    if-le v1, v4, :cond_101

    if-lez v1, :cond_101

    .line 187
    :cond_fb
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto :goto_89

    .line 188
    :cond_101
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v9, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_89

    .line 189
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_89

    .line 192
    .end local v1           #bucket:I
    .end local v2           #oldBatteryLevel:I
    .end local v3           #oldBatteryStatus:I
    .end local v4           #oldBucket:I
    .end local v5           #oldInvalidCharger:I
    .end local v6           #oldPlugType:I
    .end local v7           #oldPlugged:Z
    .end local v8           #plugged:Z
    :cond_10e
    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_89
.end method
