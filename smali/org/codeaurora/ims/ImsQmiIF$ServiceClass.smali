.class public final Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceClass"
.end annotation


# static fields
.field public static final SERVICE_CLASS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasServiceClass:Z

.field private serviceClass_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5016
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5021
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    .line 5053
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    .line 5016
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5105
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5099
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1

    .prologue
    .line 5036
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5037
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    .line 5038
    return-object p0
.end method

.method public clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5030
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass:Z

    .line 5031
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    .line 5032
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5056
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    if-gez v0, :cond_0

    .line 5058
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getSerializedSize()I

    .line 5060
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5065
    const/4 v0, 0x0

    .line 5066
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5068
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v1

    const/4 v2, 0x1

    .line 5067
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5070
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    .line 5071
    return v0
.end method

.method public getServiceClass()I
    .locals 1

    .prologue
    .line 5022
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    return v0
.end method

.method public hasServiceClass()Z
    .locals 1

    .prologue
    .line 5023
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5042
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
    .line 5075
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5079
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5080
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5084
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5085
    return-object p0

    .line 5082
    :sswitch_0
    return-object p0

    .line 5090
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    goto :goto_0

    .line 5080
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass:Z

    .line 5026
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    .line 5027
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
    .line 5048
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5049
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5047
    :cond_0
    return-void
.end method
