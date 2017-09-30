.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

.field final synthetic val$N:I

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;ILjava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2225
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;->val$N:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v11, 0x0

    .line 2230
    const/16 v0, 0xa

    .line 2231
    .local v0, ROW_DELAY_DECREMENT:I
    const/16 v2, 0x8c

    .line 2232
    .local v2, currentDelay:I
    const/4 v5, 0x0

    .line 2237
    .local v5, totalDelay:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setViewRemoval(Z)V

    .line 2239
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;)V

    iput-object v10, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 2248
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;->val$N:I

    if-lez v9, :cond_58

    .line 2249
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2250
    .local v4, sampleView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 2251
    .local v8, width:I
    mul-int/lit8 v7, v8, 0x8

    .line 2252
    .local v7, velocity:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2253
    .local v6, v:Landroid/view/View;
    move-object v1, v6

    .line 2254
    .local v1, _v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1$2;

    invoke-direct {v10, p0, v1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;Landroid/view/View;I)V

    int-to-long v11, v5

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2260
    const/16 v9, 0x32

    add-int/lit8 v10, v2, -0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2261
    add-int/2addr v5, v2

    .line 2262
    goto :goto_32

    .line 2269
    .end local v1           #_v:Landroid/view/View;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #sampleView:Landroid/view/View;
    .end local v6           #v:Landroid/view/View;
    .end local v7           #velocity:I
    .end local v8           #width:I
    :cond_58
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1$3;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;)V

    add-int/lit16 v11, v5, 0xe1

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2274
    return-void
.end method
