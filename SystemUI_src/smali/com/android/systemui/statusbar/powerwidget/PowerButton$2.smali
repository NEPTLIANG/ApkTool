.class Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 239
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 242
    .local v3, type:Ljava/lang/String;
    const/4 v1, 0x0

    .line 244
    .local v1, hideOnChange:Z
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$400()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/statusbar/powerwidget/PowerButton;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->toggleState()V

    .line 252
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/statusbar/powerwidget/PowerButton;>;"
    :cond_34
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$500()Landroid/view/View$OnClickListener;

    move-result-object v4

    if-eqz v4, :cond_49

    const-string v4, "shortcut"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 253
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$500()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 255
    :cond_49
    return-void
.end method
