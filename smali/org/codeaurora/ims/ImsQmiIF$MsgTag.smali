.class public final Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MsgTag"
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x3

.field public static final TOKEN_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private error_:I

.field private hasError:Z

.field private hasId:Z

.field private hasToken:Z

.field private hasType:Z

.field private id_:I

.field private token_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 434
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 439
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->token_:I

    .line 456
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->type_:I

    .line 473
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->id_:I

    .line 490
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->error_:I

    .line 538
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->cachedSize:I

    .line 434
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 608
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->clearToken()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 506
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->clearType()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 507
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->clearId()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 508
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->clearError()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 509
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->cachedSize:I

    .line 510
    return-object p0
.end method

.method public clearError()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError:Z

    .line 500
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->error_:I

    .line 501
    return-object p0
.end method

.method public clearId()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId:Z

    .line 483
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->id_:I

    .line 484
    return-object p0
.end method

.method public clearToken()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken:Z

    .line 449
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->token_:I

    .line 450
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType:Z

    .line 466
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->type_:I

    .line 467
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->cachedSize:I

    if-gez v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getSerializedSize()I

    .line 545
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->cachedSize:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->error_:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->id_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v1

    const/4 v2, 0x1

    .line 552
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 555
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v1

    const/4 v2, 0x2

    .line 556
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v1

    const/4 v2, 0x3

    .line 560
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 565
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v1

    const/4 v2, 0x4

    .line 564
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :cond_3
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->cachedSize:I

    .line 568
    return v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->token_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->type_:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 514
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken:Z

    if-nez v0, :cond_0

    return v1

    .line 515
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType:Z

    if-nez v0, :cond_1

    return v1

    .line 516
    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId:Z

    if-nez v0, :cond_2

    return v1

    .line 517
    :cond_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError:Z

    if-nez v0, :cond_3

    return v1

    .line 518
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 577
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 581
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    return-object p0

    .line 579
    :sswitch_0
    return-object p0

    .line 587
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setToken(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    goto :goto_0

    .line 591
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    goto :goto_0

    .line 595
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setId(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    goto :goto_0

    .line 599
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setError(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    goto :goto_0

    .line 577
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setError(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError:Z

    .line 495
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->error_:I

    .line 496
    return-object p0
.end method

.method public setId(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId:Z

    .line 478
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->id_:I

    .line 479
    return-object p0
.end method

.method public setToken(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken:Z

    .line 444
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->token_:I

    .line 445
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType:Z

    .line 461
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->type_:I

    .line 462
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 527
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 530
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 533
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 523
    :cond_3
    return-void
.end method
