.class Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .parameter "v"

    .prologue
    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 262
    .local v3, type:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$400()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/statusbar/powerwidget/PowerButton;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 264
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->handleLongClick()Z

    move-result v2

    .line 269
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/statusbar/powerwidget/PowerButton;>;"
    :cond_35
    if-eqz v2, :cond_44

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$600()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 270
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$600()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 272
    :cond_44
    return v2
.end method
