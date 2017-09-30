.class public Lcom/android/systemui/statusbar/powerwidget/SettingsButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "SettingsButton.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 12
    const-string v0, "shortcutSettings"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private startActivity()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SettingsButton;->startActivity()V

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method protected toggleState()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SettingsButton;->startActivity()V

    .line 23
    return-void
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f020072

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    .line 18
    return-void
.end method
