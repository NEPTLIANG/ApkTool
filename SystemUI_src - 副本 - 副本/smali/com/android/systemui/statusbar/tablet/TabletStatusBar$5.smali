.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;
.super Landroid/content/BroadcastReceiver;
.source "TabletStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .registers 2
    .parameter

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 1874
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1875
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1877
    :cond_15
    const/4 v1, 0x0

    .line 1878
    .local v1, excludeRecents:Z
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1879
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1880
    .local v2, reason:Ljava/lang/String;
    if-eqz v2, :cond_2c

    .line 1881
    const-string v3, "recentapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1884
    .end local v2           #reason:Ljava/lang/String;
    :cond_2c
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1889
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 1890
    const/4 v1, 0x1

    .line 1892
    :cond_3e
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V

    .line 1894
    .end local v1           #excludeRecents:Z
    :cond_43
    return-void
.end method
