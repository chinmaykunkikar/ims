.class public final Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SrvStatusList"
.end annotation


# static fields
.field public static final SRVSTATUSINFO_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private srvStatusInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1259
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    .line 1308
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->cachedSize:I

    .line 1255
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1362
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1356
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    return-object v0
.end method


# virtual methods
.method public addSrvStatusInfo(Lorg/codeaurora/ims/ImsQmiIF$Info;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Info;

    .prologue
    .line 1276
    if-nez p1, :cond_0

    .line 1277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1279
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    .line 1282
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1

    .prologue
    .line 1291
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->clearSrvStatusInfo()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1292
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->cachedSize:I

    .line 1293
    return-object p0
.end method

.method public clearSrvStatusInfo()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1

    .prologue
    .line 1286
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    .line 1287
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1311
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->cachedSize:I

    if-gez v0, :cond_0

    .line 1313
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSerializedSize()I

    .line 1315
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1320
    const/4 v2, 0x0

    .line 1321
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1323
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$Info;
    const/4 v3, 0x2

    .line 1322
    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1325
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$Info;
    :cond_0
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->cachedSize:I

    .line 1326
    return v2
.end method

.method public getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1266
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    return-object v0
.end method

.method public getSrvStatusInfoCount()I
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSrvStatusInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1262
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1297
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
    .line 1330
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1334
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1335
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1339
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1340
    return-object p0

    .line 1337
    :sswitch_0
    return-object p0

    .line 1345
    :sswitch_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    .line 1346
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$Info;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1347
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->addSrvStatusInfo(Lorg/codeaurora/ims/ImsQmiIF$Info;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    goto :goto_0

    .line 1335
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public setSrvStatusInfo(ILorg/codeaurora/ims/ImsQmiIF$Info;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Info;

    .prologue
    .line 1269
    if-nez p2, :cond_0

    .line 1270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1272
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1273
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1304
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$Info;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1302
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$Info;
    :cond_0
    return-void
.end method
