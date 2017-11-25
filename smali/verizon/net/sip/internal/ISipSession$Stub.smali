.class public abstract Lverizon/net/sip/internal/ISipSession$Stub;
.super Landroid/os/Binder;
.source "ISipSession.java"

# interfaces
.implements Lverizon/net/sip/internal/ISipSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/internal/ISipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/internal/ISipSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "verizon.net.sip.internal.ISipSession"

.field static final TRANSACTION_answerCall:I = 0x3

.field static final TRANSACTION_close:I = 0x17

.field static final TRANSACTION_continueVideo:I = 0x8

.field static final TRANSACTION_endCall:I = 0x4

.field static final TRANSACTION_getCallType:I = 0xa

.field static final TRANSACTION_getCamera:I = 0x15

.field static final TRANSACTION_getPeerProfile:I = 0xb

.field static final TRANSACTION_getState:I = 0x9

.field static final TRANSACTION_holdCall:I = 0x6

.field static final TRANSACTION_holdVideo:I = 0x7

.field static final TRANSACTION_makeCall:I = 0x2

.field static final TRANSACTION_removeLastParticipant:I = 0x18

.field static final TRANSACTION_resumeCall:I = 0x5

.field static final TRANSACTION_sendDtmf:I = 0x16

.field static final TRANSACTION_sendSIP:I = 0x1a

.field static final TRANSACTION_sendSessionModifyRequest:I = 0xc

.field static final TRANSACTION_sendSessionModifyResponse:I = 0xd

.field static final TRANSACTION_setCamera:I = 0x12

.field static final TRANSACTION_setCamera2:I = 0x13

.field static final TRANSACTION_setDisplay:I = 0x14

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setListener2:I = 0x19

.field static final TRANSACTION_setOrientation:I = 0x11

.field static final TRANSACTION_setupMediaPath:I = 0x1b

.field static final TRANSACTION_startAudio:I = 0xe

.field static final TRANSACTION_startMedia:I = 0x10

.field static final TRANSACTION_startVideo:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "verizon.net.sip.internal.ISipSession"

    invoke-virtual {p0, p0, v0}, Lverizon/net/sip/internal/ISipSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;
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
    const-string/jumbo v1, "verizon.net.sip.internal.ISipSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lverizon/net/sip/internal/ISipSession;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lverizon/net/sip/internal/ISipSession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lverizon/net/sip/internal/ISipSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lverizon/net/sip/internal/ISipSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 24
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 314
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v23

    return v23

    .line 45
    :sswitch_0
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v23, 0x1

    return v23

    .line 50
    :sswitch_1
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSessionListener;

    move-result-object v7

    .line 54
    .local v7, "_arg0":Lverizon/net/sip/internal/ISipSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_0

    const/4 v13, 0x1

    .line 55
    .local v13, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Lverizon/net/sip/internal/ISipSession$Stub;->setListener(Lverizon/net/sip/internal/ISipSessionListener;Z)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/16 v23, 0x1

    return v23

    .line 54
    .end local v13    # "_arg1":Z
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 61
    .end local v7    # "_arg0":Lverizon/net/sip/internal/ISipSessionListener;
    :sswitch_2
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 67
    .local v9, "_arg1":I
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    .line 68
    .local v22, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v15

    .line 70
    .local v15, "_arg2":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 71
    .local v16, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v9, v15, v1}, Lverizon/net/sip/internal/ISipSession$Stub;->makeCall(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Z

    move-result v20

    .line 72
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v20, :cond_1

    const/16 v23, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/16 v23, 0x1

    return v23

    .line 73
    :cond_1
    const/16 v23, 0x0

    goto :goto_1

    .line 78
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v15    # "_arg2":Ljava/util/Map;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v20    # "_result":Z
    .end local v22    # "cl":Ljava/lang/ClassLoader;
    :sswitch_3
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 83
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lverizon/net/sip/internal/ISipSession$Stub;->answerCall(II)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/16 v23, 0x1

    return v23

    .line 89
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_4
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 94
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lverizon/net/sip/internal/ISipSession$Stub;->endCall(II)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/16 v23, 0x1

    return v23

    .line 100
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_5
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lverizon/net/sip/internal/ISipSession$Stub;->resumeCall(I)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/16 v23, 0x1

    return v23

    .line 109
    .end local v3    # "_arg0":I
    :sswitch_6
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lverizon/net/sip/internal/ISipSession$Stub;->holdCall(I)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/16 v23, 0x1

    return v23

    .line 118
    .end local v3    # "_arg0":I
    :sswitch_7
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->holdVideo()V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/16 v23, 0x1

    return v23

    .line 125
    :sswitch_8
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->continueVideo()V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/16 v23, 0x1

    return v23

    .line 132
    :sswitch_9
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->getState()I

    move-result v17

    .line 134
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/16 v23, 0x1

    return v23

    .line 140
    .end local v17    # "_result":I
    :sswitch_a
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->getCallType()I

    move-result v17

    .line 142
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/16 v23, 0x1

    return v23

    .line 148
    .end local v17    # "_result":I
    :sswitch_b
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->getPeerProfile()[Landroid/net/sip/SipProfile;

    move-result-object v21

    .line 150
    .local v21, "_result":[Landroid/net/sip/SipProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/16 v23, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 152
    const/16 v23, 0x1

    return v23

    .line 156
    .end local v21    # "_result":[Landroid/net/sip/SipProfile;
    :sswitch_c
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 161
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lverizon/net/sip/internal/ISipSession$Stub;->sendSessionModifyRequest(II)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/16 v23, 0x1

    return v23

    .line 167
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_d
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 171
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 172
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lverizon/net/sip/internal/ISipSession$Stub;->sendSessionModifyResponse(II)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/16 v23, 0x1

    return v23

    .line 178
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_e
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->startAudio()V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/16 v23, 0x1

    return v23

    .line 185
    :sswitch_f
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->startVideo()V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/16 v23, 0x1

    return v23

    .line 192
    :sswitch_10
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->startMedia()V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/16 v23, 0x1

    return v23

    .line 199
    :sswitch_11
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lverizon/net/sip/internal/ISipSession$Stub;->setOrientation(I)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/16 v23, 0x1

    return v23

    .line 208
    .end local v3    # "_arg0":I
    :sswitch_12
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 211
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lverizon/net/sip/internal/ISipSession$Stub;->setCamera(I)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/16 v23, 0x1

    return v23

    .line 217
    .end local v3    # "_arg0":I
    :sswitch_13
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 220
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lverizon/net/sip/internal/ISipSession$Stub;->setCamera2(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/16 v23, 0x1

    return v23

    .line 226
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_2

    .line 229
    sget-object v23, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 234
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lverizon/net/sip/internal/ISipSession$Stub;->setDisplay(Landroid/view/Surface;)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/16 v23, 0x1

    return v23

    .line 232
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/view/Surface;
    goto :goto_2

    .line 240
    .end local v4    # "_arg0":Landroid/view/Surface;
    :sswitch_15
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->getCamera()Lverizon/net/sip/internal/ICamera;

    move-result-object v19

    .line 242
    .local v19, "_result":Lverizon/net/sip/internal/ICamera;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Lverizon/net/sip/internal/ICamera;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_3
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 244
    const/16 v23, 0x1

    return v23

    .line 243
    :cond_3
    const/16 v23, 0x0

    goto :goto_3

    .line 248
    .end local v19    # "_result":Lverizon/net/sip/internal/ICamera;
    :sswitch_16
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 252
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_4

    .line 253
    sget-object v23, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Message;

    .line 258
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lverizon/net/sip/internal/ISipSession$Stub;->sendDtmf(ILandroid/os/Message;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/16 v23, 0x1

    return v23

    .line 256
    :cond_4
    const/4 v10, 0x0

    .local v10, "_arg1":Landroid/os/Message;
    goto :goto_4

    .line 264
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Landroid/os/Message;
    :sswitch_17
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->close()V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/16 v23, 0x1

    return v23

    .line 271
    :sswitch_18
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lverizon/net/sip/internal/ISipSession$Stub;->removeLastParticipant(I)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/16 v23, 0x1

    return v23

    .line 280
    .end local v3    # "_arg0":I
    :sswitch_19
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipSession$Stub;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    .line 283
    .restart local v22    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v6

    .line 285
    .local v6, "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSessionListener;

    move-result-object v12

    .line 286
    .local v12, "_arg1":Lverizon/net/sip/internal/ISipSessionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lverizon/net/sip/internal/ISipSession$Stub;->setListener2(Ljava/util/Map;Lverizon/net/sip/internal/ISipSessionListener;)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    const/16 v23, 0x1

    return v23

    .line 292
    .end local v6    # "_arg0":Ljava/util/Map;
    .end local v12    # "_arg1":Lverizon/net/sip/internal/ISipSessionListener;
    .end local v22    # "cl":Ljava/lang/ClassLoader;
    :sswitch_1a
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 296
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 299
    .local v14, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11, v14}, Lverizon/net/sip/internal/ISipSession$Stub;->sendSIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 300
    .local v18, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    const/16 v23, 0x1

    return v23

    .line 306
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v23, "verizon.net.sip.internal.ISipSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lverizon/net/sip/internal/ISipSession$Stub;->setupMediaPath([Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/16 v23, 0x1

    return v23

    .line 41
    nop

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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
