.class Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;
.super Landroid/os/Handler;
.source "PowerButton.java"


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
    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    .line 112
    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-object v10, v10, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    if-eqz v10, :cond_73

    .line 113
    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    const v11, 0x7f0e001d

    iget-object v12, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-object v12, v12, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$000(Lcom/android/systemui/statusbar/powerwidget/PowerButton;ILjava/lang/String;)Z

    .line 115
    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-object v10, v10, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 116
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 117
    .local v5, res:Landroid/content/res/Resources;
    const v1, 0x7f0e0019

    .line 118
    .local v1, buttonLayer:I
    const v0, 0x7f0e001a

    .line 119
    .local v0, buttonIcon:I
    const v2, 0x7f0e001b

    .line 120
    .local v2, buttonState:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-object v10, v10, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    const v11, 0x7f0e001b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 126
    .local v4, indic:Landroid/widget/ImageView;
    if-eqz v4, :cond_3b

    .line 127
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :cond_3b
    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-object v11, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget v11, v11, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    invoke-static {v10, v0, v11}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;II)V

    .line 134
    const v6, -0xcc4a1b

    .line 135
    .local v6, sColorMaskBase:I
    const v10, 0x33b5e5

    const/high16 v11, -0x6000

    or-int v9, v10, v11

    .line 136
    .local v9, sColorMaskOn:I
    const v10, 0x33b5e5

    const/high16 v11, 0x3300

    or-int v8, v10, v11

    .line 137
    .local v8, sColorMaskOff:I
    const v10, 0x33b5e5

    const/high16 v11, 0x6000

    or-int v7, v10, v11

    .line 140
    .local v7, sColorMaskInter:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget v10, v10, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    packed-switch v10, :pswitch_data_96

    .line 150
    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    const v11, 0x7f020060

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$200()Landroid/graphics/PorterDuff$Mode;

    move-result-object v12

    invoke-virtual {v5, v11, v7, v12}, Landroid/content/res/Resources;->getDrawable(IILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v10, v2, v11}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$300(Lcom/android/systemui/statusbar/powerwidget/PowerButton;ILandroid/graphics/drawable/Drawable;)V

    .line 155
    .end local v0           #buttonIcon:I
    .end local v1           #buttonLayer:I
    .end local v2           #buttonState:I
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #indic:Landroid/widget/ImageView;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #sColorMaskBase:I
    .end local v7           #sColorMaskInter:I
    .end local v8           #sColorMaskOff:I
    .end local v9           #sColorMaskOn:I
    :cond_73
    :goto_73
    return-void

    .line 142
    .restart local v0       #buttonIcon:I
    .restart local v1       #buttonLayer:I
    .restart local v2       #buttonState:I
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #indic:Landroid/widget/ImageView;
    .restart local v5       #res:Landroid/content/res/Resources;
    .restart local v6       #sColorMaskBase:I
    .restart local v7       #sColorMaskInter:I
    .restart local v8       #sColorMaskOff:I
    .restart local v9       #sColorMaskOn:I
    :pswitch_74
    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    const v11, 0x7f020060

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$200()Landroid/graphics/PorterDuff$Mode;

    move-result-object v12

    invoke-virtual {v5, v11, v9, v12}, Landroid/content/res/Resources;->getDrawable(IILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v10, v2, v11}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$300(Lcom/android/systemui/statusbar/powerwidget/PowerButton;ILandroid/graphics/drawable/Drawable;)V

    goto :goto_73

    .line 146
    :pswitch_85
    iget-object v10, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    const v11, 0x7f020060

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$200()Landroid/graphics/PorterDuff$Mode;

    move-result-object v12

    invoke-virtual {v5, v11, v8, v12}, Landroid/content/res/Resources;->getDrawable(IILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v10, v2, v11}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$300(Lcom/android/systemui/statusbar/powerwidget/PowerButton;ILandroid/graphics/drawable/Drawable;)V

    goto :goto_73

    .line 140
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_74
        :pswitch_85
    .end packed-switch
.end method
