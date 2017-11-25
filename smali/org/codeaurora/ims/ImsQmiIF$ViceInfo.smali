.class public final Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViceInfo"
.end annotation


# static fields
.field public static final VICE_INFO_URI_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasViceInfoUri:Z

.field private viceInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8502
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8507
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->viceInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 8539
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->cachedSize:I

    .line 8502
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8591
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8585
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    .locals 1

    .prologue
    .line 8522
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->clearViceInfoUri()Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;

    .line 8523
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->cachedSize:I

    .line 8524
    return-object p0
.end method

.method public clearViceInfoUri()Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    .locals 1

    .prologue
    .line 8516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->hasViceInfoUri:Z

    .line 8517
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->viceInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 8518
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8542
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 8544
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->getSerializedSize()I

    .line 8546
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8551
    const/4 v0, 0x0

    .line 8552
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->hasViceInfoUri()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8554
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->getViceInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x1

    .line 8553
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 8556
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->cachedSize:I

    .line 8557
    return v0
.end method

.method public getViceInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 8508
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->viceInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasViceInfoUri()Z
    .locals 1

    .prologue
    .line 8509
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->hasViceInfoUri:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8528
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
    .line 8561
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8565
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8566
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8570
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8571
    return-object p0

    .line 8568
    :sswitch_0
    return-object p0

    .line 8576
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->setViceInfoUri(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;

    goto :goto_0

    .line 8566
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setViceInfoUri(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 8511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->hasViceInfoUri:Z

    .line 8512
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->viceInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 8513
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
    .line 8534
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->hasViceInfoUri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8535
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->getViceInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 8533
    :cond_0
    return-void
.end method
