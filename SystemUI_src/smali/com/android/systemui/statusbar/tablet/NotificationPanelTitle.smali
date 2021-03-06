.class public Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;
.super Landroid/widget/RelativeLayout;
.source "NotificationPanelTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 66
    if-ne p1, p0, :cond_7

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    .line 69
    :cond_7
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter "child"
    .parameter "event"

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 74
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 75
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 78
    const/4 v1, 0x1

    .line 80
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_44

    .line 61
    :cond_9
    :goto_9
    return v3

    .line 43
    :pswitch_a
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_9

    .line 46
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 47
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 48
    .local v1, y:I
    if-lez v0, :cond_29

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->getWidth()I

    move-result v4

    if-ge v0, v4, :cond_29

    if-lez v1, :cond_29

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_29

    move v2, v3

    :cond_29
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_9

    .line 51
    .end local v0           #x:I
    .end local v1           #y:I
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 52
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->playSoundEffect(I)V

    .line 53
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_9

    .line 58
    :pswitch_3f
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_9

    .line 41
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_a
        :pswitch_2d
        :pswitch_e
        :pswitch_3f
    .end packed-switch
.end method

.method public setPanel(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    .line 37
    return-void
.end method
