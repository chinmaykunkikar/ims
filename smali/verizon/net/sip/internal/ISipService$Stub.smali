.class public abstract Lverizon/net/sip/internal/ISipService$Stub;
.super Landroid/os/Binder;
.source "ISipService.java"

# interfaces
.implements Lverizon/net/sip/internal/ISipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/internal/ISipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/internal/ISipService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "verizon.net.sip.internal.ISipService"

.field static final TRANSACTION_createSipSession:I = 0x5

.field static final TRANSACTION_enableCallWaitingRules:I = 0xc

.field static final TRANSACTION_getRegisterResponse:I = 0xb

.field static final TRANSACTION_getSipSession:I = 0x6

.field static final TRANSACTION_isRegistered:I = 0x8

.field static final TRANSACTION_makeMediaCall:I = 0x7

.field static final TRANSACTION_mergeMediaCalls:I = 0x9

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_openSipDialog:I = 0xa

.field static final TRANSACTION_resetCallingListeneer:I = 0x4

.field static final TRANSACTION_setCallingListener:I = 0x3

.field static final TRANSACTION_setRegistrationListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "verizon.net.sip.internal.ISipService"

    invoke-virtual {p0, p0, v0}, Lverizon/net/sip/internal/ISipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipService;
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
    const-string/jumbo v1, "verizon.net.sip.internal.ISipService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lverizon/net/sip/internal/ISipService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lverizon/net/sip/internal/ISipService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lverizon/net/sip/internal/ISipService$Stub$Proxy;

    invoke-direct {v1, p0}, Lverizon/net/sip/internal/ISipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 21
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

    .line 193
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v20

    return v20

    .line 45
    :sswitch_0
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v20, 0x1

    return v20

    .line 50
    :sswitch_1
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_0

    .line 55
    sget-object v20, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lverizon/net/sip/internal/ISipRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipRegistrationListener;

    move-result-object v13

    .line 63
    .local v13, "_arg2":Lverizon/net/sip/internal/ISipRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 64
    .local v14, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v13, v14}, Lverizon/net/sip/internal/ISipService$Stub;->open(Ljava/lang/String;Landroid/app/PendingIntent;Lverizon/net/sip/internal/ISipRegistrationListener;I)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/16 v20, 0x1

    return v20

    .line 58
    .end local v13    # "_arg2":Lverizon/net/sip/internal/ISipRegistrationListener;
    .end local v14    # "_arg3":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg1":Landroid/app/PendingIntent;
    goto :goto_0

    .line 70
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_2
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lverizon/net/sip/internal/ISipRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipRegistrationListener;

    move-result-object v4

    .line 73
    .local v4, "_arg0":Lverizon/net/sip/internal/ISipRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lverizon/net/sip/internal/ISipService$Stub;->setRegistrationListener(Lverizon/net/sip/internal/ISipRegistrationListener;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/16 v20, 0x1

    return v20

    .line 79
    .end local v4    # "_arg0":Lverizon/net/sip/internal/ISipRegistrationListener;
    :sswitch_3
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSessionListener;

    move-result-object v6

    .line 82
    .local v6, "_arg0":Lverizon/net/sip/internal/ISipSessionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lverizon/net/sip/internal/ISipService$Stub;->setCallingListener(Lverizon/net/sip/internal/ISipSessionListener;)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/16 v20, 0x1

    return v20

    .line 88
    .end local v6    # "_arg0":Lverizon/net/sip/internal/ISipSessionListener;
    :sswitch_4
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSessionListener;

    move-result-object v6

    .line 91
    .restart local v6    # "_arg0":Lverizon/net/sip/internal/ISipSessionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lverizon/net/sip/internal/ISipService$Stub;->resetCallingListeneer(Lverizon/net/sip/internal/ISipSessionListener;)V

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/16 v20, 0x1

    return v20

    .line 97
    .end local v6    # "_arg0":Lverizon/net/sip/internal/ISipSessionListener;
    :sswitch_5
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipService$Stub;->createSipSession()Lverizon/net/sip/internal/ISipSession;

    move-result-object v17

    .line 99
    .local v17, "_result":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Lverizon/net/sip/internal/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 101
    const/16 v20, 0x1

    return v20

    .line 100
    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    .line 105
    .end local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    :sswitch_6
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lverizon/net/sip/internal/ISipService$Stub;->getSipSession(I)Lverizon/net/sip/internal/ISipSession;

    move-result-object v17

    .line 109
    .restart local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Lverizon/net/sip/internal/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 111
    const/16 v20, 0x1

    return v20

    .line 110
    :cond_2
    const/16 v20, 0x0

    goto :goto_2

    .line 115
    .end local v2    # "_arg0":I
    .end local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    :sswitch_7
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lverizon/net/sip/internal/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSessionListener;

    move-result-object v10

    .line 121
    .local v10, "_arg1":Lverizon/net/sip/internal/ISipSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 123
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 124
    .restart local v14    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v11, v14}, Lverizon/net/sip/internal/ISipService$Stub;->makeMediaCall(Ljava/lang/String;Lverizon/net/sip/internal/ISipSessionListener;II)Lverizon/net/sip/internal/ISipSession;

    move-result-object v17

    .line 125
    .restart local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Lverizon/net/sip/internal/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    :goto_3
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 127
    const/16 v20, 0x1

    return v20

    .line 126
    :cond_3
    const/16 v20, 0x0

    goto :goto_3

    .line 131
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Lverizon/net/sip/internal/ISipSessionListener;
    .end local v11    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    :sswitch_8
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lverizon/net/sip/internal/ISipService$Stub;->isRegistered(Ljava/lang/String;)Z

    move-result v18

    .line 135
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v18, :cond_4

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/16 v20, 0x1

    return v20

    .line 136
    :cond_4
    const/16 v20, 0x0

    goto :goto_4

    .line 141
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":Z
    :sswitch_9
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v5

    .line 145
    .local v5, "_arg0":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lverizon/net/sip/internal/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v9

    .line 147
    .local v9, "_arg1":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 148
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9, v11}, Lverizon/net/sip/internal/ISipService$Stub;->mergeMediaCalls(Lverizon/net/sip/internal/ISipSession;Lverizon/net/sip/internal/ISipSession;I)Lverizon/net/sip/internal/ISipSession;

    move-result-object v17

    .line 149
    .restart local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Lverizon/net/sip/internal/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    :goto_5
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 151
    const/16 v20, 0x1

    return v20

    .line 150
    :cond_5
    const/16 v20, 0x0

    goto :goto_5

    .line 155
    .end local v5    # "_arg0":Lverizon/net/sip/internal/ISipSession;
    .end local v9    # "_arg1":Lverizon/net/sip/internal/ISipSession;
    .end local v11    # "_arg2":I
    .end local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    :sswitch_a
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_6

    .line 160
    sget-object v20, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 166
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    .line 167
    .local v19, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v12

    .line 169
    .local v12, "_arg2":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lverizon/net/sip/internal/ISipRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/internal/ISipRegistrationListener;

    move-result-object v15

    .line 170
    .local v15, "_arg3":Lverizon/net/sip/internal/ISipRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v12, v15}, Lverizon/net/sip/internal/ISipService$Stub;->openSipDialog(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/util/Map;Lverizon/net/sip/internal/ISipRegistrationListener;)Lverizon/net/sip/internal/ISipSession;

    move-result-object v17

    .line 171
    .restart local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Lverizon/net/sip/internal/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    :goto_7
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 173
    const/16 v20, 0x1

    return v20

    .line 163
    .end local v12    # "_arg2":Ljava/util/Map;
    .end local v15    # "_arg3":Lverizon/net/sip/internal/ISipRegistrationListener;
    .end local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    .end local v19    # "cl":Ljava/lang/ClassLoader;
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_6

    .line 172
    .end local v8    # "_arg1":Landroid/app/PendingIntent;
    .restart local v12    # "_arg2":Ljava/util/Map;
    .restart local v15    # "_arg3":Lverizon/net/sip/internal/ISipRegistrationListener;
    .restart local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    .restart local v19    # "cl":Ljava/lang/ClassLoader;
    :cond_7
    const/16 v20, 0x0

    goto :goto_7

    .line 177
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/util/Map;
    .end local v15    # "_arg3":Lverizon/net/sip/internal/ISipRegistrationListener;
    .end local v17    # "_result":Lverizon/net/sip/internal/ISipSession;
    .end local v19    # "cl":Ljava/lang/ClassLoader;
    :sswitch_b
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lverizon/net/sip/internal/ISipService$Stub;->getRegisterResponse()Ljava/lang/String;

    move-result-object v16

    .line 179
    .local v16, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    const/16 v20, 0x1

    return v20

    .line 185
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v20, "verizon.net.sip.internal.ISipService"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_8

    const/4 v7, 0x1

    .line 188
    .local v7, "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lverizon/net/sip/internal/ISipService$Stub;->enableCallWaitingRules(Z)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/16 v20, 0x1

    return v20

    .line 187
    .end local v7    # "_arg0":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_8

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
