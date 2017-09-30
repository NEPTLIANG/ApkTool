.class Lcom/fiqih/anaknya/mbol/Traffic$3;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fiqih/anaknya/mbol/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fiqih/anaknya/mbol/Traffic;


# direct methods
.method constructor <init>(Lcom/fiqih/anaknya/mbol/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/fiqih/anaknya/mbol/Traffic$3;->this$0:Lcom/fiqih/anaknya/mbol/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/Traffic$3;->this$0:Lcom/fiqih/anaknya/mbol/Traffic;

    iget-object v0, v0, Lcom/fiqih/anaknya/mbol/Traffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    return-void
.end method
