.class public final Lorg/codeaurora/ims/ImsQmiIF$CallModify;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallModify"
.end annotation


# static fields
.field public static final CALLDETAILS_FIELD_NUMBER:I = 0x3

.field public static final CALLINDEX_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

.field private callIndex_:I

.field private error_:I

.field private hasCallDetails:Z

.field private hasCallIndex:Z

.field private hasError:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1730
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1735
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callIndex_:I

    .line 1752
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1772
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->error_:I

    .line 1812
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->cachedSize:I

    .line 1730
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1882
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1876
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1

    .prologue
    .line 1787
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->clearCallIndex()Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 1788
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 1789
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->clearError()Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 1790
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->cachedSize:I

    .line 1791
    return-object p0
.end method

.method public clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1

    .prologue
    .line 1764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallDetails:Z

    .line 1765
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1766
    return-object p0
.end method

.method public clearCallIndex()Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1744
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallIndex:Z

    .line 1745
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callIndex_:I

    .line 1746
    return-object p0
.end method

.method public clearError()Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1781
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError:Z

    .line 1782
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->error_:I

    .line 1783
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1815
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->cachedSize:I

    if-gez v0, :cond_0

    .line 1817
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getSerializedSize()I

    .line 1819
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->cachedSize:I

    return v0
.end method

.method public getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method

.method public getCallIndex()I
    .locals 1

    .prologue
    .line 1736
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callIndex_:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 1774
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->error_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1824
    const/4 v0, 0x0

    .line 1825
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1827
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallIndex()I

    move-result v1

    const/4 v2, 0x2

    .line 1826
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1829
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1831
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v1

    const/4 v2, 0x3

    .line 1830
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1833
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1835
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getError()I

    move-result v1

    const/4 v2, 0x4

    .line 1834
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1837
    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->cachedSize:I

    .line 1838
    return v0
.end method

.method public hasCallDetails()Z
    .locals 1

    .prologue
    .line 1753
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallDetails:Z

    return v0
.end method

.method public hasCallIndex()Z
    .locals 1

    .prologue
    .line 1737
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallIndex:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1773
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1795
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
    .line 1842
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1846
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1847
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1851
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1852
    return-object p0

    .line 1849
    :sswitch_0
    return-object p0

    .line 1857
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    goto :goto_0

    .line 1861
    :sswitch_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 1862
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1863
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    goto :goto_0

    .line 1867
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setError(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    goto :goto_0

    .line 1847
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x15 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .prologue
    .line 1756
    if-nez p1, :cond_0

    .line 1757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1759
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallDetails:Z

    .line 1760
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1761
    return-object p0
.end method

.method public setCallIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallIndex:Z

    .line 1740
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callIndex_:I

    .line 1741
    return-object p0
.end method

.method public setError(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError:Z

    .line 1777
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->error_:I

    .line 1778
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
    .line 1801
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallIndex()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 1804
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1805
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1807
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1808
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getError()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1800
    :cond_2
    return-void
.end method
