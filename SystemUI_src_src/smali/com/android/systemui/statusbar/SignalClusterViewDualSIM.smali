.class public Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;
.super Landroid/widget/LinearLayout;
.source "SignalClusterViewDualSIM.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;


# instance fields
.field private mIsAirplaneMode:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobile2:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileDescription2:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileStrengthId:I

.field private mMobileStrengthId2:I

.field mMobileType:Landroid/widget/ImageView;

.field mMobileType2:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeDescription2:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileTypeId2:I

.field private mMobileVisible:Z

.field private mMobileVisible2:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

.field mSpacer:Landroid/view/View;

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    .line 42
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiActivityId:I

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible2:Z

    .line 45
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileActivityId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId:I

    .line 46
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId2:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId2:I

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mIsAirplaneMode:Z

    .line 64
    return-void
.end method

.method private apply()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 147
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 186
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiStrengthId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiActivityId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId2:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileActivityId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId2:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeDescription2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileDescription2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mIsAirplaneMode:Z

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mSpacer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileActivity:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    if-nez v3, :cond_3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mSpacer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v0, v1

    .line 184
    goto :goto_3
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 75
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    .line 76
    const v0, 0x7f0e001f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifi:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiActivity:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    .line 79
    const v0, 0x7f0e0023

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileActivity:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile2:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType2:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mSpacer:Landroid/view/View;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->apply()V

    .line 87
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    .line 92
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifi:Landroid/widget/ImageView;

    .line 93
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiActivity:Landroid/widget/ImageView;

    .line 94
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    .line 95
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile:Landroid/widget/ImageView;

    .line 96
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileActivity:Landroid/widget/ImageView;

    .line 97
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType:Landroid/widget/ImageView;

    .line 98
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile2:Landroid/widget/ImageView;

    .line 99
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType2:Landroid/widget/ImageView;

    .line 100
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 101
    return-void
.end method

.method public setIsAirplaneMode(Z)V
    .locals 0
    .parameter "is"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mIsAirplaneMode:Z

    .line 143
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible:Z

    .line 116
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId:I

    .line 117
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileActivityId:I

    .line 118
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId:I

    .line 119
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileDescription:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeDescription:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->apply()V

    .line 123
    return-void
.end method

.method public setMobileDataIndicators2(ZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "strengthIcon2"
    .parameter "activityIcon"
    .parameter "typeIcon"
    .parameter "typeIcon2"
    .parameter "contentDescription"
    .parameter "contentDescription2"
    .parameter "typeContentDescription"
    .parameter "typeContentDescription2"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible2:Z

    .line 128
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId:I

    .line 129
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileActivityId:I

    .line 130
    iput p5, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId:I

    .line 131
    iput-object p7, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileDescription:Ljava/lang/String;

    .line 132
    iput-object p9, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeDescription:Ljava/lang/String;

    .line 133
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId2:I

    .line 134
    iput p6, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId2:I

    .line 135
    iput-object p8, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileDescription2:Ljava/lang/String;

    .line 136
    iput-object p10, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeDescription2:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->apply()V

    .line 139
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .locals 0
    .parameter "nc"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    .line 69
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    .line 106
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiStrengthId:I

    .line 107
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiActivityId:I

    .line 108
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiDescription:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->apply()V

    .line 111
    return-void
.end method
