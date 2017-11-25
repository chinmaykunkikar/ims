.class public final Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MwiMessageDetails"
.end annotation


# static fields
.field public static final DATE_FIELD_NUMBER:I = 0x4

.field public static final FROMADDRESS_FIELD_NUMBER:I = 0x2

.field public static final MESSAGEID_FIELD_NUMBER:I = 0x6

.field public static final MESSAGETYPE_FIELD_NUMBER:I = 0x7

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5

.field public static final SUBJECT_FIELD_NUMBER:I = 0x3

.field public static final TOADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private date_:Ljava/lang/String;

.field private fromAddress_:Ljava/lang/String;

.field private hasDate:Z

.field private hasFromAddress:Z

.field private hasMessageId:Z

.field private hasMessageType:Z

.field private hasPriority:Z

.field private hasSubject:Z

.field private hasToAddress:Z

.field private messageId_:Ljava/lang/String;

.field private messageType_:I

.field private priority_:I

.field private subject_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 7410
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7415
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7432
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7449
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7466
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7483
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7500
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7517
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7573
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7410
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7673
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7667
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7532
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearToAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7533
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearFromAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7534
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearSubject()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7535
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearDate()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7536
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearPriority()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7537
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearMessageId()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7538
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7539
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7540
    return-object p0
.end method

.method public clearDate()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    .line 7476
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7477
    return-object p0
.end method

.method public clearFromAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    .line 7442
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7443
    return-object p0
.end method

.method public clearMessageId()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    .line 7510
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7511
    return-object p0
.end method

.method public clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    .line 7527
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7528
    return-object p0
.end method

.method public clearPriority()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    .line 7493
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7494
    return-object p0
.end method

.method public clearSubject()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    .line 7459
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7460
    return-object p0
.end method

.method public clearToAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    .line 7425
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7426
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7576
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 7578
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSerializedSize()I

    .line 7580
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7467
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7433
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7501
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 7519
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 7485
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7585
    const/4 v0, 0x0

    .line 7586
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7588
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 7587
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 7590
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7592
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 7591
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7594
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7596
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 7595
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7598
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7600
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 7599
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7602
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7604
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v1

    const/4 v2, 0x5

    .line 7603
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7606
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7608
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 7607
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7610
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7612
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v1

    const/4 v2, 0x7

    .line 7611
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7614
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7615
    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7450
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7416
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDate()Z
    .locals 1

    .prologue
    .line 7468
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    return v0
.end method

.method public hasFromAddress()Z
    .locals 1

    .prologue
    .line 7434
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 7502
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 7518
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 7484
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 7451
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    return v0
.end method

.method public hasToAddress()Z
    .locals 1

    .prologue
    .line 7417
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7544
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
    .line 7619
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7623
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7624
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7628
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7629
    return-object p0

    .line 7626
    :sswitch_0
    return-object p0

    .line 7634
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setToAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7638
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setFromAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7642
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setSubject(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7646
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setDate(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7650
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setPriority(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7654
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setMessageId(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7658
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7624
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setDate(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    .line 7471
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7472
    return-object p0
.end method

.method public setFromAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    .line 7437
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7438
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    .line 7505
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7506
    return-object p0
.end method

.method public setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    .line 7522
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7523
    return-object p0
.end method

.method public setPriority(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    .line 7488
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7489
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    .line 7454
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7455
    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    .line 7420
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7421
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
    .line 7550
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7551
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7553
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7554
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7556
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7557
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7559
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7560
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7562
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7563
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7565
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7566
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7568
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7569
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7549
    :cond_6
    return-void
.end method
