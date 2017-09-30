.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Landroid/widget/FrameLayout;
.source "PhoneStatusBarView.java"


# instance fields
.field mButtonBounds:Landroid/graphics/Rect;

.field mCapturingEvents:Z

.field mEndAlpha:I

.field mEndTime:J

.field mNightMode:Z

.field mNotificationIcons:Landroid/view/ViewGroup;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mStartAlpha:I

.field mStatusIcons:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    .line 47
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mButtonBounds:Landroid/graphics/Rect;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    .line 55
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCurAlpha()I

    move-result v0

    .line 109
    .local v0, alpha:I
    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 112
    :cond_d
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    if-eq v0, v1, :cond_14

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    .line 115
    :cond_14
    return-void
.end method

.method getCurAlpha()I
    .registers 8

    .prologue
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 87
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 88
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 90
    :goto_c
    return v2

    :cond_d
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x190

    div-long/2addr v3, v5

    long-to-int v3, v3

    sub-int/2addr v2, v3

    goto :goto_c
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onBarViewAttached()V

    .line 68
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 74
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_33

    const/4 v0, 0x1

    .line 76
    .local v0, nightMode:Z
    :goto_12
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    if-eq v2, v0, :cond_32

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCurAlpha()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    .line 79
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    if-eqz v2, :cond_24

    const/16 v1, 0x80

    :cond_24
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x190

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    .line 83
    :cond_32
    return-void

    .end local v0           #nightMode:Z
    :cond_33
    move v0, v1

    .line 74
    goto :goto_12
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 61
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 62
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1e

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 155
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    move v0, v1

    .line 160
    :cond_1d
    :goto_1d
    return v0

    .line 159
    :cond_1e
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1d
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 102
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 103
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter "child"
    .parameter "event"

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 170
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 171
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 173
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 174
    const/4 v1, 0x1

    .line 176
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 98
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    if-nez v0, :cond_6

    .line 143
    const/4 v0, 0x0

    .line 148
    :goto_5
    return v0

    .line 145
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_11

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    :cond_11
    const/4 v0, 0x1

    goto :goto_5
.end method
