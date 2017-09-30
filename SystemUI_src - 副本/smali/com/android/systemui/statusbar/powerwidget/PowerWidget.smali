.class public Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
.super Landroid/widget/LinearLayout;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$1;,
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;,
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field private mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 69
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    .line 85
    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    .line 93
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateButtonLayoutWidth()V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupWidget()V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateVisibility()V

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateButtonLayoutWidth()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateVisibility()V

    return-void
.end method

.method private setupBroadcastReceiver()V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    if-nez v0, :cond_c

    .line 271
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Lcom/android/systemui/statusbar/powerwidget/PowerWidget$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    .line 273
    :cond_c
    return-void
.end method

.method private updateButtonLayoutWidth()V
    .registers 3

    .prologue
    .line 277
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 278
    return-void
.end method

.method private updateVisibility()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "expanded_view_widget"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_18

    .line 284
    .local v0, displayPowerWidget:Z
    :goto_10
    if-nez v0, :cond_1a

    .line 285
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setVisibility(I)V

    .line 289
    :goto_17
    return-void

    .end local v0           #displayPowerWidget:Z
    :cond_18
    move v0, v1

    .line 282
    goto :goto_10

    .line 287
    .restart local v0       #displayPowerWidget:Z
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setVisibility(I)V

    goto :goto_17
.end method


# virtual methods
.method public orientationChanged(I)V
    .registers 6
    .parameter "rotation"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 361
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 362
    if-nez p1, :cond_15

    .line 381
    :cond_11
    :goto_11
    return-void

    .line 366
    :cond_12
    const/4 v1, 0x1

    if-eq p1, v1, :cond_11

    .line 371
    :cond_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 375
    const-string v1, "PowerWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientationChanged Rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateButtonLayoutWidth()V

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupWidget()V

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateWidget()V

    goto :goto_11
.end method

.method public setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 262
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    return-void
.end method

.method public setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 266
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 267
    return-void
.end method

.method public setupSettingsObserver(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    if-nez v0, :cond_b

    .line 257
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    .line 259
    :cond_b
    return-void
.end method

.method public setupWidget()V
    .registers 28

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->removeAllViews()V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2b

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->unobserve()V

    .line 116
    :cond_2b
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->unloadAllButtons()V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d1

    .line 132
    const-string v23, "PowerWidget"

    const-string v24, "Setting up widget ORIENTATION_LANDSCAPE"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v13, "toggleWifi|toggleBluetooth|toggleGPS|toggleBrightness|shortcutDualMode|toggleSound|toggleAutoRotate|shortcutSettings"

    .line 134
    .local v13, buttons:Ljava/lang/String;
    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setTag(Ljava/lang/Object;)V

    .line 143
    :goto_60
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 144
    .local v18, ll:Landroid/widget/LinearLayout;
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 145
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 146
    const/16 v23, 0x0

    const/16 v24, 0x8

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 148
    const/4 v10, 0x0

    .line 149
    .local v10, buttonCount:I
    const-string v23, "\\|"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, arr$:[Ljava/lang/String;
    array-length v0, v5

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_a4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_104

    aget-object v8, v5, v16

    .line 152
    .local v8, button:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030005

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 154
    .local v12, buttonView:Landroid/view/View;
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v23

    if-eqz v23, :cond_e9

    .line 156
    sget-object v23, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    add-int/lit8 v10, v10, 0x1

    .line 149
    :goto_ce
    add-int/lit8 v16, v16, 0x1

    goto :goto_a4

    .line 136
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #button:Ljava/lang/String;
    .end local v10           #buttonCount:I
    .end local v12           #buttonView:Landroid/view/View;
    .end local v13           #buttons:Ljava/lang/String;
    .end local v16           #i$:I
    .end local v17           #len$:I
    .end local v18           #ll:Landroid/widget/LinearLayout;
    :cond_d1
    const-string v23, "PowerWidget"

    const-string v24, "Setting up widget ORIENTATION_PORTRAIT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v13, "toggleWifi|toggleBluetooth|toggleGPS|toggleBrightness"

    .line 138
    .restart local v13       #buttons:Ljava/lang/String;
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_60

    .line 159
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v8       #button:Ljava/lang/String;
    .restart local v10       #buttonCount:I
    .restart local v12       #buttonView:Landroid/view/View;
    .restart local v16       #i$:I
    .restart local v17       #len$:I
    .restart local v18       #ll:Landroid/widget/LinearLayout;
    :cond_e9
    const-string v23, "PowerWidget"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error setting up button: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 182
    .end local v8           #button:Ljava/lang/String;
    .end local v12           #buttonView:Landroid/view/View;
    :cond_104
    sget-object v23, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c4

    .line 186
    const-string v14, "shortcutDualMode|toggleSound|toggleAutoRotate|shortcutSettings"

    .line 188
    .local v14, buttons2:Ljava/lang/String;
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 189
    .local v19, ll2:Landroid/widget/LinearLayout;
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 191
    const/16 v23, 0x0

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 193
    const/4 v11, 0x0

    .line 194
    .local v11, buttonCount2:I
    const-string v23, "\\|"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_171
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b9

    aget-object v9, v5, v16

    .line 198
    .local v9, button2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030005

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 200
    .restart local v12       #buttonView:Landroid/view/View;
    invoke-static {v9, v12}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v23

    if-eqz v23, :cond_19e

    .line 202
    sget-object v23, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    add-int/lit8 v11, v11, 0x1

    .line 194
    :goto_19b
    add-int/lit8 v16, v16, 0x1

    goto :goto_171

    .line 205
    :cond_19e
    const-string v23, "PowerWidget"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error setting up button2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19b

    .line 209
    .end local v9           #button2:Ljava/lang/String;
    .end local v12           #buttonView:Landroid/view/View;
    :cond_1b9
    sget-object v23, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    .end local v11           #buttonCount2:I
    .end local v14           #buttons2:Ljava/lang/String;
    .end local v19           #ll2:Landroid/widget/LinearLayout;
    :cond_1c4
    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 214
    .local v20, ll3:Landroid/widget/LinearLayout;
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 215
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 216
    const/16 v23, 0x0

    const/16 v24, 0xa

    const/16 v25, 0x0

    const/16 v26, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 218
    const-string v6, "toggleMobileData"

    .line 219
    .local v6, btn1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030006

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 220
    .local v21, view1:Landroid/view/View;
    move-object/from16 v0, v21

    invoke-static {v6, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v23

    if-eqz v23, :cond_284

    .line 222
    sget-object v23, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    :goto_220
    const-string v7, "toggleAPN"

    .line 228
    .local v7, btn2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030006

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 229
    .local v22, view2:Landroid/view/View;
    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v23

    if-eqz v23, :cond_29f

    .line 231
    sget-object v23, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :goto_246
    sget-object v23, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupBroadcastReceiver()V

    .line 240
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getAllBroadcastIntentFilters()Landroid/content/IntentFilter;

    move-result-object v15

    .line 242
    .local v15, filter:Landroid/content/IntentFilter;
    const-string v23, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    move-object/from16 v23, v0

    if-eqz v23, :cond_283

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->observe()V

    .line 249
    :cond_283
    return-void

    .line 224
    .end local v7           #btn2:Ljava/lang/String;
    .end local v15           #filter:Landroid/content/IntentFilter;
    .end local v22           #view2:Landroid/view/View;
    :cond_284
    const-string v23, "PowerWidget"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error setting up button: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_220

    .line 233
    .restart local v7       #btn2:Ljava/lang/String;
    .restart local v22       #view2:Landroid/view/View;
    :cond_29f
    const-string v23, "PowerWidget"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error setting up button: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_246
.end method

.method public updateWidget()V
    .registers 1

    .prologue
    .line 252
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateAllButtons()V

    .line 253
    return-void
.end method
