.class public final Lorg/codeaurora/ims/ImsQmiIF$Hold;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hold"
.end annotation


# static fields
.field public static final CALLID_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private callId_:I

.field private hasCallId:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7872
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7877
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->callId_:I

    .line 7909
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->cachedSize:I

    .line 7872
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7961
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7955
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 1

    .prologue
    .line 7892
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->clearCallId()Lorg/codeaurora/ims/ImsQmiIF$Hold;

    .line 7893
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->cachedSize:I

    .line 7894
    return-object p0
.end method

.method public clearCallId()Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7886
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->hasCallId:Z

    .line 7887
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->callId_:I

    .line 7888
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7912
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->cachedSize:I

    if-gez v0, :cond_0

    .line 7914
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->getSerializedSize()I

    .line 7916
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->cachedSize:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 7878
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->callId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7921
    const/4 v0, 0x0

    .line 7922
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->hasCallId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7924
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->getCallId()I

    move-result v1

    const/4 v2, 0x1

    .line 7923
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 7926
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->cachedSize:I

    .line 7927
    return v0
.end method

.method public hasCallId()Z
    .locals 1

    .prologue
    .line 7879
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->hasCallId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7898
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
    .line 7931
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7935
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7936
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7940
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7941
    return-object p0

    .line 7938
    :sswitch_0
    return-object p0

    .line 7946
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    goto :goto_0

    .line 7936
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->hasCallId:Z

    .line 7882
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->callId_:I

    .line 7883
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
    .line 7904
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->hasCallId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7905
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->getCallId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 7903
    :cond_0
    return-void
.end method
