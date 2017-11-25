.class Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;
.super Landroid/os/Handler;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsServiceSubHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    .line 1157
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    .line 1158
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1157
    return-void
.end method

.method private extractUrisFromPipeSeparatedUriStrings(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 6
    .param p1, "combinedUris"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1280
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    :cond_0
    return-object v5

    .line 1281
    :cond_1
    const-string/jumbo v3, "\\|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1282
    .local v1, "uriStrings":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [Landroid/net/Uri;

    .line 1283
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1284
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1286
    :cond_2
    return-object v2
.end method

.method private getRilRadioTech(Lorg/codeaurora/ims/ImsQmiIF$Registration;)I
    .locals 2
    .param p1, "registration"    # Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .prologue
    .line 1259
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1260
    const/4 v1, 0x0

    return v1

    .line 1264
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getRadioTech()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1273
    :pswitch_0
    const/4 v0, 0x0

    .line 1276
    .local v0, "imsRat":I
    :goto_0
    return v0

    .line 1266
    .end local v0    # "imsRat":I
    :pswitch_1
    const/16 v0, 0xe

    .line 1267
    .restart local v0    # "imsRat":I
    goto :goto_0

    .line 1270
    .end local v0    # "imsRat":I
    :pswitch_2
    const/16 v0, 0x12

    .line 1271
    .restart local v0    # "imsRat":I
    goto :goto_0

    .line 1264
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handleImsStateChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1214
    const-string/jumbo v9, "handleImsStateChanged"

    invoke-static {p0, v9}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, "errorCode":I
    const/4 v1, 0x0

    .line 1217
    .local v1, "errorMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1218
    .local v8, "selfIdentityUrisCombined":Ljava/lang/String;
    const/4 v4, 0x2

    .line 1219
    .local v4, "regState":I
    const/4 v2, 0x0

    .line 1220
    .local v2, "imsRat":I
    const/4 v6, 0x0

    .line 1221
    .local v6, "selfIdentityUriStrings":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1222
    .local v7, "selfIdentityUris":[Landroid/net/Uri;
    if-eqz p1, :cond_7

    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_7

    iget-object v9, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v9, v9, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    if-eqz v9, :cond_7

    .line 1223
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 1225
    .local v5, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorCode()I

    move-result v0

    .line 1227
    :goto_0
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 1229
    .end local v1    # "errorMessage":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1230
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getPAssociatedUris()Ljava/lang/String;

    move-result-object v8

    .line 1231
    .end local v8    # "selfIdentityUrisCombined":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v4

    .line 1233
    :goto_3
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->getRilRadioTech(Lorg/codeaurora/ims/ImsQmiIF$Registration;)I

    move-result v2

    .line 1234
    const/4 v9, 0x2

    if-eq v4, v9, :cond_0

    .line 1235
    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v10, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v10}, Lorg/codeaurora/ims/ImsServiceSub;->-get1(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 1237
    :cond_0
    if-eqz v8, :cond_1

    .line 1239
    invoke-direct {p0, v8}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->extractUrisFromPipeSeparatedUriStrings(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v7

    .line 1245
    .end local v5    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .end local v7    # "selfIdentityUris":[Landroid/net/Uri;
    :cond_1
    :goto_4
    new-instance v3, Lcom/android/ims/ImsReasonInfo;

    .line 1246
    const/16 v9, 0x3e8

    .line 1245
    invoke-direct {v3, v9, v0, v1}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1248
    .local v3, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v9, v3, v4}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap28(Lorg/codeaurora/ims/ImsServiceSub;Lcom/android/ims/ImsReasonInfo;I)V

    .line 1250
    invoke-direct {p0, v4, v3, v2}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->notifyRegChange(ILcom/android/ims/ImsReasonInfo;I)V

    .line 1252
    if-eqz v7, :cond_2

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->selfIdentityUrisHaveChanged([Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1253
    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->updateSelfIdentityUriCache([Landroid/net/Uri;)V

    .line 1254
    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->notifyRegAssociatedUriChange([Landroid/net/Uri;)V

    .line 1213
    :cond_2
    return-void

    .line 1226
    .end local v3    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v1    # "errorMessage":Ljava/lang/String;
    .restart local v5    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .restart local v7    # "selfIdentityUris":[Landroid/net/Uri;
    .restart local v8    # "selfIdentityUrisCombined":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1228
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1230
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 1232
    .end local v8    # "selfIdentityUrisCombined":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x2

    goto :goto_3

    .line 1242
    .end local v5    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .restart local v1    # "errorMessage":Ljava/lang/String;
    .restart local v8    # "selfIdentityUrisCombined":Ljava/lang/String;
    :cond_7
    const-string/jumbo v9, "handleImsStateChanged error"

    invoke-static {p0, v9}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private notifyRegAssociatedUriChange([Landroid/net/Uri;)V
    .locals 2
    .param p1, "self_identity"    # [Landroid/net/Uri;

    .prologue
    .line 1196
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;-><init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;[Landroid/net/Uri;)V

    .line 1208
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->-get2(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1209
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->-get2(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1195
    :cond_0
    return-void
.end method

.method private notifyRegChange(ILcom/android/ims/ImsReasonInfo;I)V
    .locals 2
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I

    .prologue
    .line 1168
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;IILcom/android/ims/ImsReasonInfo;)V

    .line 1190
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->-get2(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1191
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->-get2(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1167
    :cond_0
    return-void
.end method

.method private selfIdentityUrisHaveChanged([Landroid/net/Uri;)Z
    .locals 4
    .param p1, "new_uris"    # [Landroid/net/Uri;

    .prologue
    .line 1290
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceSub;->-get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 1291
    :cond_0
    const/4 v0, 0x0

    .line 1292
    .local v0, "changed":Z
    array-length v2, p1

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceSub;->-get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1293
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceSub;->-get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1294
    :cond_1
    const/4 v0, 0x1

    .line 1303
    :cond_2
    :goto_0
    return v0

    .line 1296
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 1297
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceSub;->-get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1298
    const/4 v0, 0x1

    .line 1299
    goto :goto_0

    .line 1296
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateSelfIdentityUriCache([Landroid/net/Uri;)V
    .locals 3
    .param p1, "new_uris"    # [Landroid/net/Uri;

    .prologue
    .line 1307
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->-get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1308
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->-set0(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 1312
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1313
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->-get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelfIdentityUriCache :: new self-identity host URI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1315
    aget-object v2, p1, v0

    .line 1314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1310
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->-get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 1306
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 1321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message received: what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1326
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1327
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 1329
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v4, v4, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 1331
    :cond_1
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1335
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1336
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1339
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1340
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 1341
    const-string/jumbo v4, "Request turn on/off IMS failed"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1345
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const-string/jumbo v4, "Received event: EVENT_SRV_STATUS_UPDATE"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1346
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1347
    .local v1, "arResult":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1349
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 1350
    .local v3, "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v3}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap14(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1352
    .end local v3    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_2
    const-string/jumbo v4, "IMS Service Status Update failed!"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1353
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap23(Lorg/codeaurora/ims/ImsServiceSub;)V

    goto :goto_0

    .line 1357
    .end local v1    # "arResult":Landroid/os/AsyncResult;
    :pswitch_5
    const-string/jumbo v4, "Received event: EVENT_GET_STATUS_UPDATE"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1358
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1359
    .local v2, "arResultSrv":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 1361
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 1362
    .restart local v3    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v3}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap14(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1364
    .end local v3    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_3
    const-string/jumbo v4, "IMS Service Status Update failed!"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1365
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap23(Lorg/codeaurora/ims/ImsServiceSub;)V

    goto :goto_0

    .line 1372
    .end local v2    # "arResultSrv":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1373
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 1374
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap6(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1375
    :cond_4
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap0(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1376
    const-string/jumbo v4, "EVENT_CALL_STATE_CHANGE when Radio is Unavailable"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1377
    iput-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1378
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap1(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1379
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 1380
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap6(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1382
    :cond_5
    const-string/jumbo v4, "EVENT_CALL_STATE_CHANGE with no calls ignored!"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1385
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EVENT_CALL_STATE_CHANGE exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1389
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1390
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap6(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1393
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1394
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap18(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1397
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1398
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap19(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1401
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1402
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->handleRefreshConfInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1405
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1406
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap10(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1409
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1410
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap7(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1413
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1414
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap15(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1417
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1418
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_7

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_7

    .line 1419
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/CallModify;

    invoke-static {v5, v4}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap11(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V

    goto/16 :goto_0

    .line 1421
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1425
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap12(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1428
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1429
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap3(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap27(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1432
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1433
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap3(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap24(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1436
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1437
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap3(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap25(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1440
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1441
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap3(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap26(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1444
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1445
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap4(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1448
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1449
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap8(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1452
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1453
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap9(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1456
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1457
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap3(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap13(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1460
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1461
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap20(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1464
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1465
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap5(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1468
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1469
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap22(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1472
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1473
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap17(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1476
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1477
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap3(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap21(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1480
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1481
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap3(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap16(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1484
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1485
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->handleParticipantStatusInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_d
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_17
        :pswitch_1e
    .end packed-switch
.end method
