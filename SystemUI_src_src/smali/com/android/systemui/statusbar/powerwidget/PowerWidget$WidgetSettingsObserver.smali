.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    .line 318
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 319
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 322
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$200(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 325
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "expanded_view_widget"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 330
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getAllObservedUris()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 331
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 333
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onChangeUri(Landroid/net/Uri;Z)V
    .locals 3
    .parameter "uri"
    .parameter "selfChange"

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$200(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 344
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$200(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 347
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "expanded_view_widget"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #calls: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateVisibility()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$300(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V

    .line 352
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->handleOnChangeUri(Landroid/net/Uri;)V

    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateWidget()V

    .line 356
    return-void
.end method

.method public unobserve()V
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$200(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 338
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 339
    return-void
.end method
