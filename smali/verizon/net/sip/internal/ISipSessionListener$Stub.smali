.class public abstract Lverizon/net/sip/internal/ISipSessionListener$Stub;
.super Landroid/os/Binder;
.source "ISipSessionListener.java"

# interfaces
.implements Lverizon/net/sip/internal/ISipSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/internal/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/internal/ISipSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "verizon.net.sip.internal.ISipSessionListener"

.field static final TRANSACTION_onCallBusy:I = 0x1

.field static final TRANSACTION_onCallEnded:I = 0x2

.field static final TRANSACTION_onCallEstablished:I = 0x3

.field static final TRANSACTION_onCallHeld:I = 0x4

.field static final TRANSACTION_onCallResumed:I = 0xd

.field static final TRANSACTION_onCalling:I = 0x5

.field static final TRANSACTION_onChangeRequest:I = 0xb

.field static final TRANSACTION_onChanged:I = 0x6

.field static final TRANSACTION_onConferenceEvent:I = 0x10

.field static final TRANSACTION_onError:I = 0x7

.field static final TRANSACTION_onOrientationChanged:I = 0x11

.field static final TRANSACTION_onReadyToCall:I = 0x8

.field static final TRANSACTION_onRinging:I = 0x9

.field static final TRANSACTION_onRingingBack:I = 0xa

.field static final TRANSACTION_onSipReceived:I = 0x12

.field static final TRANSACTION_onVideoAvailable:I = 0xc

.field static final TRANSACTION_onVideoHeld:I = 0xe

.field static final TRANSACTION_onVideoResumed:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p0, p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "verizon.net.sip.internal.ISipSessionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lverizon/net/sip/internal/ISipSessionListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lverizon/net/sip/internal/ISipSessionListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lverizon/net/sip/internal/ISipSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lverizon/net/sip/internal/ISipSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 45
    :sswitch_0
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v7

    .line 50
    :sswitch_1
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onCallBusy(Lverizon/net/sip/internal/ISipSession;)V

    .line 54
    return v7

    .line 58
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_2
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 61
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onCallEnded(Lverizon/net/sip/internal/ISipSession;)V

    .line 62
    return v7

    .line 66
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_3
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onCallEstablished(Lverizon/net/sip/internal/ISipSession;)V

    .line 70
    return v7

    .line 74
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_4
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 77
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onCallHeld(Lverizon/net/sip/internal/ISipSession;)V

    .line 78
    return v7

    .line 82
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_5
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 85
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onCalling(Lverizon/net/sip/internal/ISipSession;)V

    .line 86
    return v7

    .line 90
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_6
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 93
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onChanged(Lverizon/net/sip/internal/ISipSession;)V

    .line 94
    return v7

    .line 98
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_7
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 102
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v5}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onError(Lverizon/net/sip/internal/ISipSession;ILjava/lang/String;)V

    .line 106
    return v7

    .line 110
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    .end local v1    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 113
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onReadyToCall(Lverizon/net/sip/internal/ISipSession;)V

    .line 114
    return v7

    .line 118
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_9
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 122
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    sget-object v6, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 128
    :goto_0
    invoke-virtual {p0, v0, v2}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onRinging(Lverizon/net/sip/internal/ISipSession;Landroid/net/sip/SipProfile;)V

    .line 129
    return v7

    .line 126
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/net/sip/SipProfile;
    goto :goto_0

    .line 133
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    .end local v2    # "_arg1":Landroid/net/sip/SipProfile;
    :sswitch_a
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 136
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onRingingBack(Lverizon/net/sip/internal/ISipSession;)V

    .line 137
    return v7

    .line 141
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_b
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 145
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onChangeRequest(Lverizon/net/sip/internal/ISipSession;I)V

    .line 147
    return v7

    .line 151
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    .end local v1    # "_arg1":I
    :sswitch_c
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 154
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onVideoAvailable(Lverizon/net/sip/internal/ISipSession;)V

    .line 155
    return v7

    .line 159
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_d
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 162
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onCallResumed(Lverizon/net/sip/internal/ISipSession;)V

    .line 163
    return v7

    .line 167
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_e
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 170
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onVideoHeld(Lverizon/net/sip/internal/ISipSession;)V

    .line 171
    return v7

    .line 175
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_f
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 178
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onVideoResumed(Lverizon/net/sip/internal/ISipSession;)V

    .line 179
    return v7

    .line 183
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_10
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 187
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    sget-object v6, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;

    .line 195
    :goto_1
    invoke-virtual {p0, v0, v3, v4}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onConferenceEvent(Lverizon/net/sip/internal/ISipSession;Ljava/lang/String;Landroid/net/sip/SipProfile;)V

    .line 196
    return v7

    .line 193
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg2":Landroid/net/sip/SipProfile;
    goto :goto_1

    .line 200
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/net/sip/SipProfile;
    :sswitch_11
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 203
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p0, v0}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onOrientationChanged(Lverizon/net/sip/internal/ISipSession;)V

    .line 204
    return v7

    .line 208
    .end local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    :sswitch_12
    const-string/jumbo v6, "verizon.net.sip.internal.ISipSessionListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v0

    .line 212
    .restart local v0    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 213
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->onSipReceived(Lverizon/net/sip/internal/ISipSession;Ljava/lang/String;)V

    .line 214
    return v7

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
