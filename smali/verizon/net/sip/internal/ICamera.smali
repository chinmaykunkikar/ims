.class public interface abstract Lverizon/net/sip/internal/ICamera;
.super Ljava/lang/Object;
.source "ICamera.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/internal/ICamera$Stub;
    }
.end annotation


# virtual methods
.method public abstract setListener(Lverizon/net/sip/internal/ICameraListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSmoothZoom(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopSmoothZoom()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
