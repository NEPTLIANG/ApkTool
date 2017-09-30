.class public Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "MobileDataButton.java"


# static fields
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

.field public static STATE_CHANGE_REQUEST:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->OBSERVED_URIS:Ljava/util/List;

    .line 25
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleMobileData"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 113
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 115
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private static final isCardAbsent(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 129
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 131
    .local v0, tm1:Landroid/telephony/TelephonyManager;
    const-string v2, "phone2"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager2;

    .line 134
    .local v1, tm2:Landroid/telephony/TelephonyManager2;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager2;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    return-object v0
.end method

.method protected getObservedUris()Ljava/util/List;
    .locals 1
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
    .line 104
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->isCardAbsent(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->getDataState(Landroid/content/Context;)Z

    move-result v2

    .line 74
    .local v2, enabled:Z
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 76
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method protected updateState()V
    .locals 9

    .prologue
    const v8, 0x7f08007a

    const v7, 0x7f020068

    const v6, 0x7f020067

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 36
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->isCardAbsent(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    .line 40
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 41
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    .line 58
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    if-eqz v1, :cond_2

    .line 46
    iput v7, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    .line 47
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 48
    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;->getDataState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    iput v7, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    .line 51
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 52
    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_3
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    .line 55
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 56
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    goto :goto_0
.end method
