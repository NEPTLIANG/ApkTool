.class public Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "BrightnessButton.java"


# static fields
.field private static final BACKLIGHTS:[I

.field private static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoBrightness:Z

.field private mAutoBrightnessSupported:Z

.field private mBacklightValues:[I

.field private mCurrentBacklightIndex:I

.field private mCurrentBrightness:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    .line 46
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 48
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void

    .line 41
    :array_2e
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1et 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightnessSupported:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    .line 65
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    .line 72
    const-string v0, "toggleBrightness"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    .line 73
    return-void

    .line 67
    nop

    :array_18
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private updateSettings()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 163
    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 174
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    const/16 v6, 0x1e

    aput v6, v5, v3

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, modes:[Ljava/lang/String;
    if-eqz v1, :cond_19

    array-length v5, v1

    if-nez v5, :cond_35

    .line 180
    :cond_19
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_6e

    iput-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    .line 190
    :cond_21
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4f

    :goto_29
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    .line 192
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-eqz v3, :cond_51

    .line 193
    iput v7, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    .line 204
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateState()V

    .line 205
    return-void

    .line 184
    :cond_35
    array-length v5, v1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    .line 185
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3b
    array-length v5, v1

    if-ge v0, v5, :cond_21

    .line 186
    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    aget-object v6, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .end local v0           #i:I
    :cond_4f
    move v3, v4

    .line 190
    goto :goto_29

    .line 195
    :cond_51
    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    .line 197
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5a
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_31

    .line 198
    iget v3, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_6a

    .line 199
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    goto :goto_31

    .line 197
    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 180
    nop

    :array_6e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick()Z
    .registers 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    const/4 v1, 0x1

    return v1
.end method

.method protected onChangeUri(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 152
    const-string v1, "screen_brightness"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    .line 160
    :goto_1c
    return-void

    .line 154
    :cond_1d
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 155
    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_30

    :goto_2d
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    goto :goto_1c

    :cond_30
    move v1, v2

    goto :goto_2d

    .line 158
    :cond_32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateSettings()V

    goto :goto_1c
.end method

.method protected setupButton(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    if-eqz v1, :cond_1d

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightnessSupported:Z

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateSettings()V

    .line 84
    .end local v0           #context:Landroid/content/Context;
    :cond_1d
    return-void
.end method

.method protected toggleState()V
    .registers 8

    .prologue
    .line 106
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 108
    .local v3, power:Landroid/os/IPowerManager;
    if-eqz v3, :cond_3b

    .line 109
    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 110
    .local v4, resolver:Landroid/content/ContentResolver;
    iget v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    .line 111
    iget v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_28

    .line 112
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    .line 114
    :cond_28
    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    iget v6, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    aget v0, v5, v6

    .line 115
    .local v0, backlightIndex:I
    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    aget v1, v5, v0

    .line 116
    .local v1, brightness:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_3c

    .line 117
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    .end local v0           #backlightIndex:I
    .end local v1           #brightness:I
    .end local v3           #power:Landroid/os/IPowerManager;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :cond_3b
    :goto_3b
    return-void

    .line 120
    .restart local v0       #backlightIndex:I
    .restart local v1       #brightness:I
    .restart local v3       #power:Landroid/os/IPowerManager;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    :cond_3c
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightnessSupported:Z

    if-eqz v5, :cond_46

    .line 121
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    :cond_46
    invoke-interface {v3, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 125
    const-string v5, "screen_brightness"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_3b

    .line 128
    .end local v0           #backlightIndex:I
    .end local v1           #brightness:I
    .end local v3           #power:Landroid/os/IPowerManager;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :catch_4f
    move-exception v2

    .line 129
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "BrightnessButton"

    const-string v6, "toggleState()"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method

.method protected updateState()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-eqz v0, :cond_d

    .line 89
    const v0, 0x7f020063

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    .line 90
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 101
    :goto_c
    return-void

    .line 91
    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1c

    .line 92
    const v0, 0x7f020065

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    goto :goto_c

    .line 94
    :cond_1c
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_2b

    .line 95
    const v0, 0x7f020064

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    .line 96
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    goto :goto_c

    .line 98
    :cond_2b
    const v0, 0x7f020066

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    .line 99
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    goto :goto_c
.end method
