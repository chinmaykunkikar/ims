.class public final Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParticipantStatusInfo"
.end annotation


# static fields
.field public static final CALLID_FIELD_NUMBER:I = 0x1

.field public static final ISECT_FIELD_NUMBER:I = 0x5

.field public static final OPERATION_FIELD_NUMBER:I = 0x2

.field public static final PARTICIPANTURI_FIELD_NUMBER:I = 0x4

.field public static final SIPSTATUS_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private callId_:I

.field private hasCallId:Z

.field private hasIsEct:Z

.field private hasOperation:Z

.field private hasParticipantUri:Z

.field private hasSipStatus:Z

.field private isEct_:Z

.field private operation_:I

.field private participantUri_:Ljava/lang/String;

.field private sipStatus_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9650
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9655
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    .line 9672
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    .line 9689
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    .line 9706
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    .line 9723
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    .line 9771
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    .line 9650
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9855
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9849
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    .line 9738
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearCallId()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 9739
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearOperation()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 9740
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearSipStatus()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 9741
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearParticipantUri()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 9742
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearIsEct()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 9743
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    .line 9744
    return-object p0
.end method

.method public clearCallId()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9664
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId:Z

    .line 9665
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    .line 9666
    return-object p0
.end method

.method public clearIsEct()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9732
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct:Z

    .line 9733
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    .line 9734
    return-object p0
.end method

.method public clearOperation()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9681
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation:Z

    .line 9682
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    .line 9683
    return-object p0
.end method

.method public clearParticipantUri()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    .line 9715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri:Z

    .line 9716
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    .line 9717
    return-object p0
.end method

.method public clearSipStatus()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9698
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus:Z

    .line 9699
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    .line 9700
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9774
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 9776
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSerializedSize()I

    .line 9778
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 9656
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    return v0
.end method

.method public getIsEct()Z
    .locals 1

    .prologue
    .line 9724
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    return v0
.end method

.method public getOperation()I
    .locals 1

    .prologue
    .line 9674
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    return v0
.end method

.method public getParticipantUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9707
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9783
    const/4 v0, 0x0

    .line 9784
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9786
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getCallId()I

    move-result v1

    const/4 v2, 0x1

    .line 9785
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 9788
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9790
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getOperation()I

    move-result v1

    const/4 v2, 0x2

    .line 9789
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9792
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9794
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSipStatus()I

    move-result v1

    const/4 v2, 0x3

    .line 9793
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9796
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9798
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getParticipantUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 9797
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9800
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9802
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getIsEct()Z

    move-result v1

    const/4 v2, 0x5

    .line 9801
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9804
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    .line 9805
    return v0
.end method

.method public getSipStatus()I
    .locals 1

    .prologue
    .line 9690
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    return v0
.end method

.method public hasCallId()Z
    .locals 1

    .prologue
    .line 9657
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId:Z

    return v0
.end method

.method public hasIsEct()Z
    .locals 1

    .prologue
    .line 9725
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct:Z

    return v0
.end method

.method public hasOperation()Z
    .locals 1

    .prologue
    .line 9673
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation:Z

    return v0
.end method

.method public hasParticipantUri()Z
    .locals 1

    .prologue
    .line 9708
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri:Z

    return v0
.end method

.method public hasSipStatus()Z
    .locals 1

    .prologue
    .line 9691
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9748
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
    .line 9809
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9813
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9814
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9818
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9819
    return-object p0

    .line 9816
    :sswitch_0
    return-object p0

    .line 9824
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    .line 9828
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setOperation(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    .line 9832
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setSipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    .line 9836
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setParticipantUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    .line 9840
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setIsEct(Z)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    .line 9814
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId:Z

    .line 9660
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    .line 9661
    return-object p0
.end method

.method public setIsEct(Z)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 9727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct:Z

    .line 9728
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    .line 9729
    return-object p0
.end method

.method public setOperation(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation:Z

    .line 9677
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    .line 9678
    return-object p0
.end method

.method public setParticipantUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri:Z

    .line 9711
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    .line 9712
    return-object p0
.end method

.method public setSipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus:Z

    .line 9694
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    .line 9695
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
    .line 9754
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9755
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getCallId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9757
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9758
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getOperation()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9760
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9761
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSipStatus()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9763
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9764
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getParticipantUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9766
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9767
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getIsEct()Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 9753
    :cond_4
    return-void
.end method
