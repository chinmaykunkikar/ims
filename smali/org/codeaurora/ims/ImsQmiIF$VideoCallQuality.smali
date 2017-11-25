.class public final Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCallQuality"
.end annotation


# static fields
.field public static final QUALITY_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasQuality:Z

.field private quality_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7100
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7105
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->quality_:I

    .line 7137
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->cachedSize:I

    .line 7100
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7189
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7183
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 1

    .prologue
    .line 7120
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->clearQuality()Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    .line 7121
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->cachedSize:I

    .line 7122
    return-object p0
.end method

.method public clearQuality()Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7114
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality:Z

    .line 7115
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->quality_:I

    .line 7116
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7140
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->cachedSize:I

    if-gez v0, :cond_0

    .line 7142
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->getSerializedSize()I

    .line 7144
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->cachedSize:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 7107
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->quality_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7149
    const/4 v0, 0x0

    .line 7150
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7152
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->getQuality()I

    move-result v1

    const/4 v2, 0x1

    .line 7151
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 7154
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->cachedSize:I

    .line 7155
    return v0
.end method

.method public hasQuality()Z
    .locals 1

    .prologue
    .line 7106
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7126
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
    .line 7159
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7163
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7164
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7168
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7169
    return-object p0

    .line 7166
    :sswitch_0
    return-object p0

    .line 7174
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->setQuality(I)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    goto :goto_0

    .line 7164
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setQuality(I)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality:Z

    .line 7110
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->quality_:I

    .line 7111
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
    .line 7132
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7133
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->getQuality()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7131
    :cond_0
    return-void
.end method
