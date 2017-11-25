.class public final Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF$CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Call"
.end annotation


# static fields
.field public static final ALS_FIELD_NUMBER:I = 0x6

.field public static final CALLDETAILS_FIELD_NUMBER:I = 0xd

.field public static final FAILCAUSE_FIELD_NUMBER:I = 0xe

.field public static final INDEX_FIELD_NUMBER:I = 0x2

.field public static final ISCALLEDPARTYRINGING_FIELD_NUMBER:I = 0x10

.field public static final ISENCRYPTED_FIELD_NUMBER:I = 0xf

.field public static final ISMPTY_FIELD_NUMBER:I = 0x4

.field public static final ISMT_FIELD_NUMBER:I = 0x5

.field public static final ISVOICEPRIVACY_FIELD_NUMBER:I = 0x8

.field public static final ISVOICE_FIELD_NUMBER:I = 0x7

.field public static final NAMEPRESENTATION_FIELD_NUMBER:I = 0xc

.field public static final NAME_FIELD_NUMBER:I = 0xb

.field public static final NUMBERPRESENTATION_FIELD_NUMBER:I = 0xa

.field public static final NUMBER_FIELD_NUMBER:I = 0x9

.field public static final STATE_FIELD_NUMBER:I = 0x1

.field public static final TOA_FIELD_NUMBER:I = 0x3


# instance fields
.field private als_:I

.field private cachedSize:I

.field private callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

.field private failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

.field private hasAls:Z

.field private hasCallDetails:Z

.field private hasFailCause:Z

.field private hasIndex:Z

.field private hasIsCalledPartyRinging:Z

.field private hasIsEncrypted:Z

.field private hasIsMT:Z

.field private hasIsMpty:Z

.field private hasIsVoice:Z

.field private hasIsVoicePrivacy:Z

.field private hasName:Z

.field private hasNamePresentation:Z

.field private hasNumber:Z

.field private hasNumberPresentation:Z

.field private hasState:Z

.field private hasToa:Z

.field private index_:I

.field private isCalledPartyRinging_:Z

.field private isEncrypted_:Z

.field private isMT_:Z

.field private isMpty_:Z

.field private isVoicePrivacy_:Z

.field private isVoice_:Z

.field private namePresentation_:I

.field private name_:Ljava/lang/String;

.field private numberPresentation_:I

.field private number_:Ljava/lang/String;

.field private state_:I

.field private toa_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1895
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1900
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1917
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1934
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 1951
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 1968
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 1985
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 2002
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 2019
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 2036
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 2053
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 2070
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 2087
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 2104
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2124
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2144
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    .line 2161
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    .line 2253
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 1895
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2429
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2423
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2176
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearState()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2177
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIndex()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2178
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2179
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsMpty()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2180
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsMT()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2181
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearAls()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2182
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsVoice()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2183
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsVoicePrivacy()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2184
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2185
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNumberPresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2186
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearName()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2187
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNamePresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2188
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2189
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2190
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsEncrypted()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2191
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsCalledPartyRinging()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2192
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 2193
    return-object p0
.end method

.method public clearAls()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1994
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    .line 1995
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 1996
    return-object p0
.end method

.method public clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    .line 2117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2118
    return-object p0
.end method

.method public clearFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    .line 2137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2138
    return-object p0
.end method

.method public clearIndex()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1926
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    .line 1927
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1928
    return-object p0
.end method

.method public clearIsCalledPartyRinging()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2170
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging:Z

    .line 2171
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    .line 2172
    return-object p0
.end method

.method public clearIsEncrypted()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2153
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted:Z

    .line 2154
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    .line 2155
    return-object p0
.end method

.method public clearIsMT()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1977
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    .line 1978
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 1979
    return-object p0
.end method

.method public clearIsMpty()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1960
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    .line 1961
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 1962
    return-object p0
.end method

.method public clearIsVoice()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2011
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    .line 2012
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 2013
    return-object p0
.end method

.method public clearIsVoicePrivacy()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2028
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    .line 2029
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 2030
    return-object p0
.end method

.method public clearName()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    .line 2080
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 2081
    return-object p0
.end method

.method public clearNamePresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2096
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    .line 2097
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 2098
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    .line 2046
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 2047
    return-object p0
.end method

.method public clearNumberPresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2062
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    .line 2063
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 2064
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1909
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    .line 1910
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1911
    return-object p0
.end method

.method public clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1943
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    .line 1944
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 1945
    return-object p0
.end method

.method public getAls()I
    .locals 1

    .prologue
    .line 1986
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2256
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    if-gez v0, :cond_0

    .line 2258
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getSerializedSize()I

    .line 2260
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    return v0
.end method

.method public getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method

.method public getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 2126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1918
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    return v0
.end method

.method public getIsCalledPartyRinging()Z
    .locals 1

    .prologue
    .line 2162
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    return v0
.end method

.method public getIsEncrypted()Z
    .locals 1

    .prologue
    .line 2145
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    return v0
.end method

.method public getIsMT()Z
    .locals 1

    .prologue
    .line 1969
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    return v0
.end method

.method public getIsMpty()Z
    .locals 1

    .prologue
    .line 1952
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    return v0
.end method

.method public getIsVoice()Z
    .locals 1

    .prologue
    .line 2003
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    return v0
.end method

.method public getIsVoicePrivacy()Z
    .locals 1

    .prologue
    .line 2020
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNamePresentation()I
    .locals 1

    .prologue
    .line 2088
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 2054
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2265
    const/4 v0, 0x0

    .line 2266
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2268
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v1

    const/4 v2, 0x1

    .line 2267
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2270
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2272
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v1

    const/4 v2, 0x2

    .line 2271
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2274
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2276
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v1

    const/4 v2, 0x3

    .line 2275
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2278
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2280
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v1

    const/4 v2, 0x4

    .line 2279
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2282
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2284
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v1

    const/4 v2, 0x5

    .line 2283
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2286
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2288
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v1

    const/4 v2, 0x6

    .line 2287
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2290
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2292
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v1

    const/4 v2, 0x7

    .line 2291
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2294
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2296
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v1

    const/16 v2, 0x8

    .line 2295
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2298
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2300
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    .line 2299
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2302
    :cond_8
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2304
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v1

    const/16 v2, 0xa

    .line 2303
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2306
    :cond_9
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2308
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    .line 2307
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2310
    :cond_a
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2312
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v1

    const/16 v2, 0xc

    .line 2311
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2314
    :cond_b
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2316
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v1

    const/16 v2, 0xd

    .line 2315
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2318
    :cond_c
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2320
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v1

    const/16 v2, 0xe

    .line 2319
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2322
    :cond_d
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2324
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsEncrypted()Z

    move-result v1

    const/16 v2, 0xf

    .line 2323
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2326
    :cond_e
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2328
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsCalledPartyRinging()Z

    move-result v1

    const/16 v2, 0x10

    .line 2327
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2330
    :cond_f
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 2331
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1902
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    return v0
.end method

.method public getToa()I
    .locals 1

    .prologue
    .line 1935
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    return v0
.end method

.method public hasAls()Z
    .locals 1

    .prologue
    .line 1987
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    return v0
.end method

.method public hasCallDetails()Z
    .locals 1

    .prologue
    .line 2105
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    return v0
.end method

.method public hasFailCause()Z
    .locals 1

    .prologue
    .line 2125
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 1919
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    return v0
.end method

.method public hasIsCalledPartyRinging()Z
    .locals 1

    .prologue
    .line 2163
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging:Z

    return v0
.end method

.method public hasIsEncrypted()Z
    .locals 1

    .prologue
    .line 2146
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted:Z

    return v0
.end method

.method public hasIsMT()Z
    .locals 1

    .prologue
    .line 1970
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    return v0
.end method

.method public hasIsMpty()Z
    .locals 1

    .prologue
    .line 1953
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    return v0
.end method

.method public hasIsVoice()Z
    .locals 1

    .prologue
    .line 2004
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    return v0
.end method

.method public hasIsVoicePrivacy()Z
    .locals 1

    .prologue
    .line 2021
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2072
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    return v0
.end method

.method public hasNamePresentation()Z
    .locals 1

    .prologue
    .line 2089
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 2038
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    return v0
.end method

.method public hasNumberPresentation()Z
    .locals 1

    .prologue
    .line 2055
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 1901
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    return v0
.end method

.method public hasToa()Z
    .locals 1

    .prologue
    .line 1936
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2197
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
    .line 2335
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2339
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2340
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2344
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2345
    return-object p0

    .line 2342
    :sswitch_0
    return-object p0

    .line 2350
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2354
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2358
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2362
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsMpty(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2366
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsMT(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2370
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setAls(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2374
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsVoice(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2378
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsVoicePrivacy(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2382
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2386
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNumberPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2390
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setName(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2394
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNamePresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2398
    :sswitch_d
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 2399
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2400
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2404
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    :sswitch_e
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 2405
    .local v2, "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2406
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2410
    .end local v2    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2414
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsCalledPartyRinging(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2340
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x55 -> :sswitch_a
        0x5a -> :sswitch_b
        0x65 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
    .end sparse-switch
.end method

.method public setAls(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    .line 1990
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 1991
    return-object p0
.end method

.method public setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .prologue
    .line 2108
    if-nez p1, :cond_0

    .line 2109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    .line 2112
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2113
    return-object p0
.end method

.method public setFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .prologue
    .line 2128
    if-nez p1, :cond_0

    .line 2129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2131
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    .line 2132
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2133
    return-object p0
.end method

.method public setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    .line 1922
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1923
    return-object p0
.end method

.method public setIsCalledPartyRinging(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging:Z

    .line 2166
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    .line 2167
    return-object p0
.end method

.method public setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted:Z

    .line 2149
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    .line 2150
    return-object p0
.end method

.method public setIsMT(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    .line 1973
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 1974
    return-object p0
.end method

.method public setIsMpty(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    .line 1956
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 1957
    return-object p0
.end method

.method public setIsVoice(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    .line 2007
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 2008
    return-object p0
.end method

.method public setIsVoicePrivacy(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    .line 2024
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 2025
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    .line 2075
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 2076
    return-object p0
.end method

.method public setNamePresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    .line 2092
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 2093
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    .line 2041
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 2042
    return-object p0
.end method

.method public setNumberPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    .line 2058
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 2059
    return-object p0
.end method

.method public setState(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    .line 1905
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1906
    return-object p0
.end method

.method public setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    .line 1939
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 1940
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
    .line 2203
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2204
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2206
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2207
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2209
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2210
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2212
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2213
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2215
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2216
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2218
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2219
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2221
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2222
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2224
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2225
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2227
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2228
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2230
    :cond_8
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2231
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2233
    :cond_9
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2234
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2236
    :cond_a
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2237
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2239
    :cond_b
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2240
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2242
    :cond_c
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2243
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2245
    :cond_d
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2246
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsEncrypted()Z

    move-result v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2248
    :cond_e
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2249
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsCalledPartyRinging()Z

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2202
    :cond_f
    return-void
.end method
