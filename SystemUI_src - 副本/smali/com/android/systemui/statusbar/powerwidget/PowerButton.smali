.class public abstract Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.super Ljava/lang/Object;
.source "PowerButton.java"


# static fields
.field private static final BUTTONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/statusbar/powerwidget/PowerButton;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final BUTTONS_LOADED:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/powerwidget/PowerButton;",
            ">;"
        }
    .end annotation
.end field

.field private static GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

.field private static GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

.field private static final MASK_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field protected mIcon:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mState:I

.field protected mText:Ljava/lang/String;

.field protected mType:Ljava/lang/String;

.field protected mView:Landroid/view/View;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 64
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->MASK_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    .line 69
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifi"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/WifiButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleGPS"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/GPSButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBluetooth"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBrightness"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSound"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMobileData"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAutoRotate"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "shortcutSettings"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SettingsButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "shortcutDualMode"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/DualModeButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAPN"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/ApnButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    .line 103
    sput-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 106
    sput-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    .line 100
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    .line 258
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/powerwidget/PowerButton;ILjava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateTextView(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateImageView(II)V

    return-void
.end method

.method static synthetic access$200()Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->MASK_MODE:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/powerwidget/PowerButton;ILandroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateImageView(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/View$OnClickListener;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600()Landroid/view/View$OnLongClickListener;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public static getAllBroadcastIntentFilters()Landroid/content/IntentFilter;
    .registers 9

    .prologue
    .line 337
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v2, filter:Landroid/content/IntentFilter;
    sget-object v8, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v8

    .line 340
    :try_start_8
    sget-object v7, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 341
    .local v1, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    .line 344
    .local v6, tmp:Landroid/content/IntentFilter;
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    .line 345
    .local v5, num:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_27
    if-ge v3, v5, :cond_12

    .line 346
    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 348
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 352
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v3           #i:I
    .end local v5           #num:I
    .end local v6           #tmp:Landroid/content/IntentFilter;
    :cond_39
    monitor-exit v8

    .line 355
    return-object v2

    .line 352
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_3b
    move-exception v7

    monitor-exit v8
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v7
.end method

.method public static getAllObservedUris()Ljava/util/List;
    .registers 8
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
    .line 360
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v5, uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v7, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v7

    .line 363
    :try_start_8
    sget-object v6, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 364
    .local v0, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v3

    .line 366
    .local v3, tmp:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 367
    .local v4, uri:Landroid/net/Uri;
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 368
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 372
    .end local v0           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tmp:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    .end local v4           #uri:Landroid/net/Uri;
    :catchall_3c
    move-exception v6

    monitor-exit v7
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_3c

    throw v6

    :cond_3f
    :try_start_3f
    monitor-exit v7
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    .line 374
    return-object v5
.end method

.method public static handleOnChangeUri(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 392
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 393
    :try_start_3
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 394
    .local v0, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 395
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->onChangeUri(Landroid/net/Uri;)V

    goto :goto_d

    .line 398
    .end local v0           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    .line 399
    return-void
.end method

.method public static handleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, action:Ljava/lang/String;
    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v4

    .line 382
    :try_start_7
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 384
    .local v1, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 385
    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_11

    .line 388
    .end local v1           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2e
    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    .line 389
    return-void
.end method

.method public static loadButton(Ljava/lang/String;Landroid/view/View;)Z
    .registers 8
    .parameter "key"
    .parameter "view"

    .prologue
    .line 278
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    if-eqz p1, :cond_57

    .line 279
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 280
    :try_start_d
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 282
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 295
    :goto_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_54

    .line 296
    const/4 v2, 0x1

    .line 298
    :goto_22
    return v2

    .line 286
    :cond_23
    :try_start_23
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 288
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 290
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_54
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_3a

    goto :goto_20

    .line 291
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :catch_3a
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/Exception;
    :try_start_3b
    const-string v2, "PowerButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading button: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 295
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_54

    throw v2

    .line 298
    :cond_57
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public static setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 1
    .parameter "listener"

    .prologue
    .line 402
    sput-object p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 403
    return-void
.end method

.method public static setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 1
    .parameter "listener"

    .prologue
    .line 406
    sput-object p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    .line 407
    return-void
.end method

.method public static unloadAllButtons()V
    .registers 4

    .prologue
    .line 315
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 317
    :try_start_3
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 318
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    goto :goto_d

    .line 323
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2

    .line 322
    :cond_21
    :try_start_21
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 323
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_1e

    .line 324
    return-void
.end method

.method public static updateAllButtons()V
    .registers 4

    .prologue
    .line 327
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 329
    :try_start_3
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 330
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->update()V

    goto :goto_d

    .line 332
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2

    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 333
    return-void
.end method

.method private updateImageView(II)V
    .registers 5
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 200
    .local v0, imageIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_12

    .line 201
    const/4 v1, -0x1

    if-ne p2, v1, :cond_13

    .line 202
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_12
    :goto_12
    return-void

    .line 204
    :cond_13
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_12
.end method

.method private updateImageView(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "id"
    .parameter "resDraw"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 211
    .local v0, imageIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_15

    if-eqz p2, :cond_15

    .line 212
    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :cond_15
    return-void
.end method

.method private updateTextView(ILjava/lang/String;)Z
    .registers 7
    .parameter "id"
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 236
    :cond_7
    :goto_7
    return v2

    .line 221
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 222
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_7

    .line 223
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 225
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    packed-switch v2, :pswitch_data_3e

    .line 230
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    :goto_2d
    const/4 v2, 0x1

    goto :goto_7

    .line 227
    :pswitch_2f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2d

    .line 225
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .prologue
    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    return-object v0
.end method

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
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected abstract handleLongClick()Z
.end method

.method protected onChangeUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 175
    return-void
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 170
    return-void
.end method

.method protected setupButton(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 192
    :cond_1b
    return-void
.end method

.method protected abstract toggleState()V
.end method

.method protected update()V
    .registers 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateState()V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateView()V

    .line 165
    return-void
.end method

.method protected abstract updateState()V
.end method

.method protected updateView()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    return-void
.end method
