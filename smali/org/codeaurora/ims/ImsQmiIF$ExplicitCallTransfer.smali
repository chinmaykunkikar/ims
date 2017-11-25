.class public final Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExplicitCallTransfer"
.end annotation


# static fields
.field public static final CALLID_FIELD_NUMBER:I = 0x1

.field public static final ECTTYPE_FIELD_NUMBER:I = 0x2

.field public static final TARGETADDRESS_FIELD_NUMBER:I = 0x3

.field public static final TARGETCALLID_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private callId_:I

.field private ectType_:I

.field private hasCallId:Z

.field private hasEctType:Z

.field private hasTargetAddress:Z

.field private hasTargetCallId:Z

.field private targetAddress_:Ljava/lang/String;

.field private targetCallId_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8972
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8977
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->callId_:I

    .line 8994
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->ectType_:I

    .line 9011
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetAddress_:Ljava/lang/String;

    .line 9028
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetCallId_:I

    .line 9072
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->cachedSize:I

    .line 8972
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9148
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9142
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1

    .prologue
    .line 9043
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->clearCallId()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9044
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->clearEctType()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9045
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->clearTargetAddress()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9046
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->clearTargetCallId()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9047
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->cachedSize:I

    .line 9048
    return-object p0
.end method

.method public clearCallId()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8986
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasCallId:Z

    .line 8987
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->callId_:I

    .line 8988
    return-object p0
.end method

.method public clearEctType()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9003
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasEctType:Z

    .line 9004
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->ectType_:I

    .line 9005
    return-object p0
.end method

.method public clearTargetAddress()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1

    .prologue
    .line 9020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetAddress:Z

    .line 9021
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetAddress_:Ljava/lang/String;

    .line 9022
    return-object p0
.end method

.method public clearTargetCallId()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9037
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetCallId:Z

    .line 9038
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetCallId_:I

    .line 9039
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9075
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->cachedSize:I

    if-gez v0, :cond_0

    .line 9077
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getSerializedSize()I

    .line 9079
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->cachedSize:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 8978
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->callId_:I

    return v0
.end method

.method public getEctType()I
    .locals 1

    .prologue
    .line 8996
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->ectType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9084
    const/4 v0, 0x0

    .line 9085
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasCallId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9087
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getCallId()I

    move-result v1

    const/4 v2, 0x1

    .line 9086
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 9089
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasEctType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9091
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getEctType()I

    move-result v1

    const/4 v2, 0x2

    .line 9090
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9093
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetAddress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9095
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getTargetAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 9094
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9097
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetCallId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9099
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getTargetCallId()I

    move-result v1

    const/4 v2, 0x4

    .line 9098
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9101
    :cond_3
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->cachedSize:I

    .line 9102
    return v0
.end method

.method public getTargetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9012
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCallId()I
    .locals 1

    .prologue
    .line 9029
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetCallId_:I

    return v0
.end method

.method public hasCallId()Z
    .locals 1

    .prologue
    .line 8979
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasCallId:Z

    return v0
.end method

.method public hasEctType()Z
    .locals 1

    .prologue
    .line 8995
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasEctType:Z

    return v0
.end method

.method public hasTargetAddress()Z
    .locals 1

    .prologue
    .line 9013
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetAddress:Z

    return v0
.end method

.method public hasTargetCallId()Z
    .locals 1

    .prologue
    .line 9030
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetCallId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9052
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
    .line 9106
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9111
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9115
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9116
    return-object p0

    .line 9113
    :sswitch_0
    return-object p0

    .line 9121
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    goto :goto_0

    .line 9125
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setEctType(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    goto :goto_0

    .line 9129
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setTargetAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    goto :goto_0

    .line 9133
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setTargetCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    goto :goto_0

    .line 9111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasCallId:Z

    .line 8982
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->callId_:I

    .line 8983
    return-object p0
.end method

.method public setEctType(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasEctType:Z

    .line 8999
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->ectType_:I

    .line 9000
    return-object p0
.end method

.method public setTargetAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetAddress:Z

    .line 9016
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetAddress_:Ljava/lang/String;

    .line 9017
    return-object p0
.end method

.method public setTargetCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetCallId:Z

    .line 9033
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetCallId_:I

    .line 9034
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
    .line 9058
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasCallId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9059
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getCallId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9061
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasEctType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9062
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getEctType()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9064
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9065
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getTargetAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9067
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetCallId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9068
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getTargetCallId()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9057
    :cond_3
    return-void
.end method
