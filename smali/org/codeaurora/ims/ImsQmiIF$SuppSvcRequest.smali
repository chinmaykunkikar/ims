.class public final Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuppSvcRequest"
.end annotation


# static fields
.field public static final CBNUMLISTTYPE_FIELD_NUMBER:I = 0x3

.field public static final FACILITYTYPE_FIELD_NUMBER:I = 0x2

.field public static final OPERATIONTYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private cbNumListType_:Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

.field private facilityType_:I

.field private hasCbNumListType:Z

.field private hasFacilityType:Z

.field private hasOperationType:Z

.field private operationType_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6738
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6743
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->operationType_:I

    .line 6760
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->facilityType_:I

    .line 6777
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cbNumListType_:Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 6820
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cachedSize:I

    .line 6738
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6890
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6884
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1

    .prologue
    .line 6795
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->clearOperationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 6796
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 6797
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 6798
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cachedSize:I

    .line 6799
    return-object p0
.end method

.method public clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1

    .prologue
    .line 6789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasCbNumListType:Z

    .line 6790
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cbNumListType_:Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 6791
    return-object p0
.end method

.method public clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6769
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasFacilityType:Z

    .line 6770
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->facilityType_:I

    .line 6771
    return-object p0
.end method

.method public clearOperationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6752
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasOperationType:Z

    .line 6753
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->operationType_:I

    .line 6754
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6823
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 6825
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getSerializedSize()I

    .line 6827
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cachedSize:I

    return v0
.end method

.method public getCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1

    .prologue
    .line 6779
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cbNumListType_:Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    return-object v0
.end method

.method public getFacilityType()I
    .locals 1

    .prologue
    .line 6761
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->facilityType_:I

    return v0
.end method

.method public getOperationType()I
    .locals 1

    .prologue
    .line 6744
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->operationType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6832
    const/4 v0, 0x0

    .line 6833
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasOperationType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6835
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getOperationType()I

    move-result v1

    const/4 v2, 0x1

    .line 6834
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6837
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasFacilityType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6839
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getFacilityType()I

    move-result v1

    const/4 v2, 0x2

    .line 6838
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6841
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasCbNumListType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6843
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v1

    const/4 v2, 0x3

    .line 6842
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6845
    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cachedSize:I

    .line 6846
    return v0
.end method

.method public hasCbNumListType()Z
    .locals 1

    .prologue
    .line 6778
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasCbNumListType:Z

    return v0
.end method

.method public hasFacilityType()Z
    .locals 1

    .prologue
    .line 6762
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasFacilityType:Z

    return v0
.end method

.method public hasOperationType()Z
    .locals 1

    .prologue
    .line 6745
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasOperationType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6803
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
    .line 6850
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6855
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6859
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6860
    return-object p0

    .line 6857
    :sswitch_0
    return-object p0

    .line 6865
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    goto :goto_0

    .line 6869
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    goto :goto_0

    .line 6873
    :sswitch_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    .line 6874
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6875
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    goto :goto_0

    .line 6855
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .prologue
    .line 6781
    if-nez p1, :cond_0

    .line 6782
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6784
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasCbNumListType:Z

    .line 6785
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cbNumListType_:Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 6786
    return-object p0
.end method

.method public setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasFacilityType:Z

    .line 6765
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->facilityType_:I

    .line 6766
    return-object p0
.end method

.method public setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasOperationType:Z

    .line 6748
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->operationType_:I

    .line 6749
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
    .line 6809
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasOperationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6810
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getOperationType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6812
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasFacilityType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6813
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getFacilityType()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6815
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasCbNumListType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6816
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6808
    :cond_2
    return-void
.end method
