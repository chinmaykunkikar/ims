.class public interface abstract Lverizon/net/sip/internal/ISipService;
.super Ljava/lang/Object;
.source "ISipService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/internal/ISipService$Stub;
    }
.end annotation


# virtual methods
.method public abstract createSipSession()Lverizon/net/sip/internal/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableCallWaitingRules(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRegisterResponse()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSipSession(I)Lverizon/net/sip/internal/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isRegistered(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract makeMediaCall(Ljava/lang/String;Lverizon/net/sip/internal/ISipSessionListener;II)Lverizon/net/sip/internal/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract mergeMediaCalls(Lverizon/net/sip/internal/ISipSession;Lverizon/net/sip/internal/ISipSession;I)Lverizon/net/sip/internal/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;Landroid/app/PendingIntent;Lverizon/net/sip/internal/ISipRegistrationListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openSipDialog(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/util/Map;Lverizon/net/sip/internal/ISipRegistrationListener;)Lverizon/net/sip/internal/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resetCallingListeneer(Lverizon/net/sip/internal/ISipSessionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallingListener(Lverizon/net/sip/internal/ISipSessionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRegistrationListener(Lverizon/net/sip/internal/ISipRegistrationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
