.class public final Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigMsg"
.end annotation


# static fields
.field public static final BOOLVALUE_FIELD_NUMBER:I = 0x2

.field public static final ERRORCAUSE_FIELD_NUMBER:I = 0x5

.field public static final INTVALUE_FIELD_NUMBER:I = 0x3

.field public static final ITEM_FIELD_NUMBER:I = 0x1

.field public static final STRINGVALUE_FIELD_NUMBER:I = 0x4


# instance fields
.field private boolValue_:Z

.field private cachedSize:I

.field private errorCause_:I

.field private hasBoolValue:Z

.field private hasErrorCause:Z

.field private hasIntValue:Z

.field private hasItem:Z

.field private hasStringValue:Z

.field private intValue_:I

.field private item_:I

.field private stringValue_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8289
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8294
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 8311
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 8328
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 8345
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 8362
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 8410
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 8289
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8494
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8488
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    .line 8377
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearItem()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8378
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearBoolValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8379
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearIntValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8380
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearStringValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8381
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearErrorCause()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8382
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 8383
    return-object p0
.end method

.method public clearBoolValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8320
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    .line 8321
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 8322
    return-object p0
.end method

.method public clearErrorCause()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8371
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    .line 8372
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 8373
    return-object p0
.end method

.method public clearIntValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8337
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    .line 8338
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 8339
    return-object p0
.end method

.method public clearItem()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8303
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    .line 8304
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 8305
    return-object p0
.end method

.method public clearStringValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    .line 8354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    .line 8355
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 8356
    return-object p0
.end method

.method public getBoolValue()Z
    .locals 1

    .prologue
    .line 8312
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8413
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 8415
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getSerializedSize()I

    .line 8417
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    return v0
.end method

.method public getErrorCause()I
    .locals 1

    .prologue
    .line 8364
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 8329
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    return v0
.end method

.method public getItem()I
    .locals 1

    .prologue
    .line 8296
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8422
    const/4 v0, 0x0

    .line 8423
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8425
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getItem()I

    move-result v1

    const/4 v2, 0x1

    .line 8424
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 8427
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8429
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v1

    const/4 v2, 0x2

    .line 8428
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8431
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8433
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v1

    const/4 v2, 0x3

    .line 8432
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8435
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8437
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 8436
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8439
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8441
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v1

    const/4 v2, 0x5

    .line 8440
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8443
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 8444
    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8346
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBoolValue()Z
    .locals 1

    .prologue
    .line 8313
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    return v0
.end method

.method public hasErrorCause()Z
    .locals 1

    .prologue
    .line 8363
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    return v0
.end method

.method public hasIntValue()Z
    .locals 1

    .prologue
    .line 8330
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    return v0
.end method

.method public hasItem()Z
    .locals 1

    .prologue
    .line 8295
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .prologue
    .line 8347
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8387
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
    .line 8448
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8452
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8453
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8457
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8458
    return-object p0

    .line 8455
    :sswitch_0
    return-object p0

    .line 8463
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8467
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8471
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8475
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8479
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8453
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 8315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    .line 8316
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 8317
    return-object p0
.end method

.method public setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    .line 8367
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 8368
    return-object p0
.end method

.method public setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    .line 8333
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 8334
    return-object p0
.end method

.method public setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    .line 8299
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 8300
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    .line 8350
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 8351
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
    .line 8393
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8394
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getItem()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8396
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8397
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 8399
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8400
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 8402
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8403
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8405
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8406
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8392
    :cond_4
    return-void
.end method
