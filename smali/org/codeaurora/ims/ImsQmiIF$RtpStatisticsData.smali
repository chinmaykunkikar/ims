.class public final Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RtpStatisticsData"
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private count_:I

.field private hasCount:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8066
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8071
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->count_:I

    .line 8103
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->cachedSize:I

    .line 8066
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8155
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8149
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 1

    .prologue
    .line 8086
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->clearCount()Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    .line 8087
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->cachedSize:I

    .line 8088
    return-object p0
.end method

.method public clearCount()Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8080
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount:Z

    .line 8081
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->count_:I

    .line 8082
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8106
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->cachedSize:I

    if-gez v0, :cond_0

    .line 8108
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getSerializedSize()I

    .line 8110
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->cachedSize:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 8072
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->count_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8115
    const/4 v0, 0x0

    .line 8116
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8118
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getCount()I

    move-result v1

    const/4 v2, 0x1

    .line 8117
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 8120
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->cachedSize:I

    .line 8121
    return v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 8073
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8092
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
    .line 8125
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8130
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8134
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8135
    return-object p0

    .line 8132
    :sswitch_0
    return-object p0

    .line 8140
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->setCount(I)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    goto :goto_0

    .line 8130
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public setCount(I)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount:Z

    .line 8076
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->count_:I

    .line 8077
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
    .line 8098
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8099
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 8097
    :cond_0
    return-void
.end method
