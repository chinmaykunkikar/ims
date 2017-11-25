.class public Lorg/codeaurora/ims/ImsCallUtils;
.super Ljava/lang/Object;
.source "ImsCallUtils.java"


# static fields
.field public static final CONFIG_TYPE_INT:I = 0x1

.field public static final CONFIG_TYPE_INVALID:I = -0x1

.field public static final CONFIG_TYPE_STRING:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field public static final TH_1x:I = 0x3b

.field public static final TH_LTE1:I = 0x38

.field public static final TH_LTE2:I = 0x39

.field public static final TH_LTE3:I = 0x3a

.field public static final T_EPDG_1X:I = 0x40

.field public static final T_EPDG_LTE:I = 0x3e

.field public static final T_EPDG_WIFI:I = 0x3f

.field public static final VICE_SETTING_ENABLED:I = 0x41

.field public static final VOWT_A:I = 0x3c

.field public static final VOWT_B:I = 0x3d


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "ImsCallUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertCallTypeToVideoState(I)I
    .locals 1
    .param p0, "callType"    # I

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "videoState":I
    packed-switch p0, :pswitch_data_0

    .line 263
    :goto_0
    :pswitch_0
    return v0

    .line 247
    :pswitch_1
    const/4 v0, 0x0

    .line 248
    goto :goto_0

    .line 250
    :pswitch_2
    const/4 v0, 0x2

    .line 251
    goto :goto_0

    .line 253
    :pswitch_3
    const/4 v0, 0x1

    .line 254
    goto :goto_0

    .line 256
    :pswitch_4
    const/4 v0, 0x3

    .line 257
    goto :goto_0

    .line 260
    :pswitch_5
    const/4 v0, 0x4

    .line 261
    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static convertImsConfigToProto(I)I
    .locals 1
    .param p0, "config"    # I

    .prologue
    .line 441
    packed-switch p0, :pswitch_data_0

    .line 571
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 443
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 445
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 447
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 449
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 451
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 453
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 455
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 457
    :pswitch_8
    const/16 v0, 0x8

    return v0

    .line 459
    :pswitch_9
    const/16 v0, 0x9

    return v0

    .line 461
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 463
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 465
    :pswitch_c
    const/16 v0, 0xc

    return v0

    .line 467
    :pswitch_d
    const/16 v0, 0xd

    return v0

    .line 469
    :pswitch_e
    const/16 v0, 0xe

    return v0

    .line 471
    :pswitch_f
    const/16 v0, 0xf

    return v0

    .line 473
    :pswitch_10
    const/16 v0, 0x10

    return v0

    .line 475
    :pswitch_11
    const/16 v0, 0x11

    return v0

    .line 477
    :pswitch_12
    const/16 v0, 0x12

    return v0

    .line 479
    :pswitch_13
    const/16 v0, 0x13

    return v0

    .line 481
    :pswitch_14
    const/16 v0, 0x14

    return v0

    .line 483
    :pswitch_15
    const/16 v0, 0x15

    return v0

    .line 485
    :pswitch_16
    const/16 v0, 0x16

    return v0

    .line 487
    :pswitch_17
    const/16 v0, 0x17

    return v0

    .line 489
    :pswitch_18
    const/16 v0, 0x18

    return v0

    .line 491
    :pswitch_19
    const/16 v0, 0x19

    return v0

    .line 493
    :pswitch_1a
    const/16 v0, 0x1c

    return v0

    .line 495
    :pswitch_1b
    const/16 v0, 0x1d

    return v0

    .line 497
    :pswitch_1c
    const/16 v0, 0x22

    return v0

    .line 499
    :pswitch_1d
    const/16 v0, 0x1a

    return v0

    .line 501
    :pswitch_1e
    const/16 v0, 0x21

    return v0

    .line 503
    :pswitch_1f
    const/16 v0, 0x23

    return v0

    .line 505
    :pswitch_20
    const/16 v0, 0x24

    return v0

    .line 507
    :pswitch_21
    const/16 v0, 0x25

    return v0

    .line 509
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 511
    :pswitch_23
    const/16 v0, 0x27

    return v0

    .line 513
    :pswitch_24
    const/16 v0, 0x28

    return v0

    .line 515
    :pswitch_25
    const/16 v0, 0x29

    return v0

    .line 517
    :pswitch_26
    const/16 v0, 0x2a

    return v0

    .line 519
    :pswitch_27
    const/16 v0, 0x2b

    return v0

    .line 521
    :pswitch_28
    const/16 v0, 0x2c

    return v0

    .line 523
    :pswitch_29
    const/16 v0, 0x2d

    return v0

    .line 525
    :pswitch_2a
    const/16 v0, 0x2e

    return v0

    .line 527
    :pswitch_2b
    const/16 v0, 0x2f

    return v0

    .line 529
    :pswitch_2c
    const/16 v0, 0x30

    return v0

    .line 531
    :pswitch_2d
    const/16 v0, 0x31

    return v0

    .line 533
    :pswitch_2e
    const/16 v0, 0x32

    return v0

    .line 535
    :pswitch_2f
    const/16 v0, 0x33

    return v0

    .line 537
    :pswitch_30
    const/16 v0, 0x34

    return v0

    .line 539
    :pswitch_31
    const/16 v0, 0x35

    return v0

    .line 541
    :pswitch_32
    const/16 v0, 0x36

    return v0

    .line 543
    :pswitch_33
    const/16 v0, 0x37

    return v0

    .line 545
    :pswitch_34
    const/16 v0, 0x38

    return v0

    .line 547
    :pswitch_35
    const/16 v0, 0x39

    return v0

    .line 549
    :pswitch_36
    const/16 v0, 0x3a

    return v0

    .line 551
    :pswitch_37
    const/16 v0, 0x3b

    return v0

    .line 553
    :pswitch_38
    const/16 v0, 0x3c

    return v0

    .line 555
    :pswitch_39
    const/16 v0, 0x3d

    return v0

    .line 557
    :pswitch_3a
    const/16 v0, 0x3e

    return v0

    .line 559
    :pswitch_3b
    const/16 v0, 0x3f

    return v0

    .line 561
    :pswitch_3c
    const/16 v0, 0x40

    return v0

    .line 563
    :pswitch_3d
    const/16 v0, 0x41

    return v0

    .line 565
    :pswitch_3e
    const/16 v0, 0x42

    return v0

    .line 567
    :pswitch_3f
    const/16 v0, 0x43

    return v0

    .line 569
    :pswitch_40
    const/16 v0, 0x45

    return v0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1c
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
    .end packed-switch
.end method

.method public static convertImsErrorToUiError(I)I
    .locals 2
    .param p0, "error"    # I

    .prologue
    const/16 v1, 0x32

    .line 301
    sget v0, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    if-ne p0, v0, :cond_0

    .line 302
    const/4 v0, 0x4

    return v0

    .line 303
    :cond_0
    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    if-ne p0, v0, :cond_2

    .line 304
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 305
    :cond_2
    if-ne p0, v1, :cond_3

    .line 306
    return v1

    .line 308
    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method public static convertToInternalCallType(I)I
    .locals 4
    .param p0, "imsCallProfileCallType"    # I

    .prologue
    .line 267
    const/16 v0, 0xa

    .line 268
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_0

    .line 287
    :pswitch_0
    sget-object v1, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "convertToInternalCallType invalid calltype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    return v0

    .line 271
    :pswitch_1
    const/4 v0, 0x0

    .line 272
    goto :goto_0

    .line 275
    :pswitch_2
    const/4 v0, 0x3

    .line 276
    goto :goto_0

    .line 278
    :pswitch_3
    const/4 v0, 0x4

    .line 279
    goto :goto_0

    .line 281
    :pswitch_4
    const/4 v0, 0x1

    .line 282
    goto :goto_0

    .line 284
    :pswitch_5
    const/4 v0, 0x2

    .line 285
    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static convertToVideoProfile(II)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "callType"    # I
    .param p1, "callQuality"    # I

    .prologue
    .line 294
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 295
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    .line 294
    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 297
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "callType":I
    packed-switch p0, :pswitch_data_0

    .line 240
    :goto_0
    return v0

    .line 225
    :pswitch_0
    const/4 v0, 0x0

    .line 226
    goto :goto_0

    .line 228
    :pswitch_1
    const/4 v0, 0x2

    .line 229
    goto :goto_0

    .line 231
    :pswitch_2
    const/4 v0, 0x1

    .line 232
    goto :goto_0

    .line 234
    :pswitch_3
    const/4 v0, 0x3

    .line 235
    goto :goto_0

    .line 237
    :pswitch_4
    const/4 v0, 0x4

    .line 238
    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getUiErrorCode(I)I
    .locals 1
    .param p0, "imsErrorCode"    # I

    .prologue
    .line 341
    const/4 v0, 0x1

    .line 342
    .local v0, "status":I
    sparse-switch p0, :sswitch_data_0

    .line 360
    const/4 v0, 0x2

    .line 362
    :goto_0
    return v0

    .line 345
    :sswitch_0
    const/4 v0, 0x1

    .line 346
    goto :goto_0

    .line 348
    :sswitch_1
    const/4 v0, 0x4

    .line 349
    goto :goto_0

    .line 351
    :sswitch_2
    const/4 v0, 0x5

    .line 352
    goto :goto_0

    .line 354
    :sswitch_3
    const/4 v0, 0x3

    .line 355
    goto :goto_0

    .line 357
    :sswitch_4
    const/16 v0, 0x32

    .line 358
    goto :goto_0

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
        0x10 -> :sswitch_0
        0x1b -> :sswitch_3
        0x1c -> :sswitch_2
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getUiErrorCode(Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 332
    const/4 v1, 0x2

    .line 333
    .local v1, "status":I
    instance-of v2, p0, Lorg/codeaurora/ims/ImsRilException;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 334
    check-cast v0, Lorg/codeaurora/ims/ImsRilException;

    .line 335
    .local v0, "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(I)I

    move-result v1

    .line 337
    .end local v0    # "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    :cond_0
    return v1
.end method

.method public static hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 3
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v0, 0x0

    .line 317
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 318
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 317
    :cond_0
    return v0
.end method

.method public static isActive(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 3
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v0, 0x0

    .line 576
    if-eqz p0, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 6
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 152
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 153
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 154
    .local v4, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 156
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v5, :cond_0

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_2

    .line 158
    :cond_0
    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    .line 156
    if-eqz v5, :cond_2

    .line 159
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    .line 160
    .local v2, "dialingAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v5

    if-eqz v5, :cond_3

    .end local v2    # "dialingAvpRetry":Z
    :goto_1
    return v2

    .line 159
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "dialingAvpRetry":Z
    goto :goto_0

    .line 156
    .end local v2    # "dialingAvpRetry":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "dialingAvpRetry":Z
    goto :goto_0

    .line 160
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 7
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v5, 0x0

    .line 168
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 169
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 170
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 171
    .local v3, "nextCallType":I
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 173
    .local v2, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    if-nez v1, :cond_1

    .line 174
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_1

    .line 175
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 173
    if-eqz v6, :cond_1

    .line 176
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v6, :cond_0

    const/4 v4, 0x1

    .line 177
    .local v4, "upgradeAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v6

    if-eqz v6, :cond_2

    .end local v4    # "upgradeAvpRetry":Z
    :goto_1
    return v4

    .line 176
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "upgradeAvpRetry":Z
    goto :goto_0

    .line 173
    .end local v4    # "upgradeAvpRetry":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "upgradeAvpRetry":Z
    goto :goto_0

    :cond_2
    move v4, v5

    .line 177
    goto :goto_1
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .prologue
    .line 615
    const-string/jumbo v1, "persist.radio.atel.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "property":Ljava/lang/String;
    const-string/jumbo v1, "405854"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isConfigRequestValid(II)Z
    .locals 2
    .param p0, "item"    # I
    .param p1, "requestType"    # I

    .prologue
    .line 366
    const/4 v0, -0x1

    .line 367
    .local v0, "configType":I
    packed-switch p0, :pswitch_data_0

    .line 437
    :goto_0
    :pswitch_0
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 373
    :pswitch_1
    const/4 v0, 0x2

    .line 374
    goto :goto_0

    .line 434
    :pswitch_2
    const/4 v0, 0x1

    .line 435
    goto :goto_0

    .line 437
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static isIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 3
    .param p0, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_0

    .line 203
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIncomingVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 4
    .param p0, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v2

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v2

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 195
    goto :goto_0

    :cond_2
    move v0, v1

    .line 193
    goto :goto_0
.end method

.method public static isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 3
    .param p0, "details"    # Lorg/codeaurora/ims/CallDetails;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-eq v2, v0, :cond_0

    .line 210
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 211
    goto :goto_0

    :cond_1
    move v0, v1

    .line 210
    goto :goto_0
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 3
    .param p0, "callType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 96
    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 97
    if-ne p0, v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    .line 99
    if-eqz p0, :cond_0

    .line 100
    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isVideoCall(I)Z
    .locals 2
    .param p0, "callType"    # I

    .prologue
    const/4 v0, 0x1

    .line 85
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 86
    if-ne p0, v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 88
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 89
    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 90
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .locals 2
    .param p0, "callType"    # I

    .prologue
    const/4 v0, 0x1

    .line 184
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 185
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1
    .param p0, "callType"    # I

    .prologue
    .line 218
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 7
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 109
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 110
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 111
    .local v5, "nextCallType":I
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 113
    .local v4, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_1

    .line 115
    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 113
    if-eqz v6, :cond_1

    .line 116
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_0

    const/4 v3, 0x1

    .line 117
    .local v3, "isHoldingPaused":Z
    :goto_0
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_3

    .line 119
    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 117
    if-eqz v6, :cond_3

    .line 120
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_2

    const/4 v2, 0x1

    .line 121
    .local v2, "isActivePaused":Z
    :goto_1
    if-nez v3, :cond_4

    .end local v2    # "isActivePaused":Z
    :goto_2
    return v2

    .line 116
    .end local v3    # "isHoldingPaused":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isHoldingPaused":Z
    goto :goto_0

    .line 113
    .end local v3    # "isHoldingPaused":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isHoldingPaused":Z
    goto :goto_0

    .line 120
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isActivePaused":Z
    goto :goto_1

    .line 117
    .end local v2    # "isActivePaused":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isActivePaused":Z
    goto :goto_1

    .line 121
    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public static isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 6
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 136
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 137
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 138
    .local v3, "nextCallType":I
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 140
    .local v2, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_0

    .line 142
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    .line 140
    if-eqz v5, :cond_0

    .line 143
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v5, :cond_0

    const/4 v4, 0x1

    .line 140
    :cond_0
    return v4
.end method

.method public static toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 1
    .param p0, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .prologue
    .line 599
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 607
    const/4 v0, 0x0

    return v0

    .line 601
    :pswitch_0
    const/16 v0, 0x4b1

    return v0

    .line 603
    :pswitch_1
    const/16 v0, 0x4b2

    return v0

    .line 605
    :pswitch_2
    const/16 v0, 0x4b3

    return v0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 1
    .param p0, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .prologue
    .line 583
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 591
    const/4 v0, -0x1

    return v0

    .line 585
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 587
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 589
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
