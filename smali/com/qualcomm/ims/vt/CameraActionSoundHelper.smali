.class public Lcom/qualcomm/ims/vt/CameraActionSoundHelper;
.super Ljava/lang/Object;
.source "CameraActionSoundHelper.java"


# instance fields
.field mActionSound:Landroid/media/MediaActionSound;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    const-string/jumbo v0, "Ctor: Context is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    const v1, 0x7f030006

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    const-string/jumbo v0, "close: Releasing resources"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 58
    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    const-string/jumbo v0, "onRecordingStarted:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 72
    return-void
.end method

.method public onRecordingStopped()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    const-string/jumbo v0, "onRecordingStopped:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 86
    return-void
.end method

.method public open()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 45
    return-void

    .line 48
    :cond_0
    const-string/jumbo v0, "open: Loading media files."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 50
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 43
    return-void
.end method
