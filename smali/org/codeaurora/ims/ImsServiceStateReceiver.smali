.class public Lorg/codeaurora/ims/ImsServiceStateReceiver;
.super Ljava/lang/Object;
.source "ImsServiceStateReceiver.java"


# static fields
.field private static final ACTION_WIFI_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "org.codeaurora.wifibearer.WIFI_CONNECTION_STATE"

.field private static final IMS_HD_ICON:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceStateReceiver"

.field private static final WIFI_STATUS:Ljava/lang/String; = "Wifi_Status"

.field private static mIsWifiCallIntentSent:Z

.field private static mNotificationMgr:Landroid/app/NotificationManager;

.field private static mShowHDIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    sput-boolean v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 34
    sput-boolean v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mIsWifiCallIntentSent:Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCallExistsWithState(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)Z
    .locals 2
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isShowHDIconSupported(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "showHDIcon":Z
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 88
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 88
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 90
    invoke-static {p0, v3}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    .local v2, "subRes":Landroid/content/res/Resources;
    const v3, 0x7f030003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 94
    .end local v0    # "showHDIcon":Z
    .end local v2    # "subRes":Landroid/content/res/Resources;
    :cond_0
    const-string/jumbo v3, "ImsServiceStateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isShowHDIconSupported config showHDIcon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return v0
.end method

.method private static sendWifiIconIntent(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showWifiIcon"    # Z

    .prologue
    .line 127
    sget-boolean v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mIsWifiCallIntentSent:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 128
    :cond_0
    const-string/jumbo v1, "ImsServiceStateReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendWifiIconIntent with showWifiIcon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sput-boolean p1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mIsWifiCallIntentSent:Z

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.wifibearer.WIFI_CONNECTION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "Wifi_Status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 126
    return-void
.end method

.method private static showHDIcon(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showHDIcon"    # Z

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 60
    sget-boolean v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    if-ne v2, p1, :cond_0

    return-void

    .line 62
    :cond_0
    sget-object v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    if-nez v2, :cond_1

    .line 64
    const-string/jumbo v2, "notification"

    .line 63
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sput-object v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 67
    :cond_1
    sput-boolean p1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 68
    sget-boolean v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    if-eqz v2, :cond_2

    .line 69
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 72
    const v3, 0x7f040001

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 74
    const v2, 0x7f020002

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 76
    .local v1, "notification":Landroid/app/Notification;
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 77
    sget-object v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 78
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 77
    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 59
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "notification":Landroid/app/Notification;
    :goto_0
    return-void

    .line 80
    :cond_2
    sget-object v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static updateHDIcon(Landroid/content/Context;IZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "isVideoCapable"    # Z
    .param p3, "isVoiceCapable"    # Z

    .prologue
    .line 45
    const-string/jumbo v0, "ImsServiceStateReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHDIcon isVideo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isVoice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    const-string/jumbo v2, " phoneId: "

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    const-string/jumbo v2, " show HD Icon: "

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    sget-boolean v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->isShowHDIconSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    if-nez p2, :cond_1

    .end local p3    # "isVoiceCapable":Z
    :goto_0
    invoke-static {p0, p3}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Landroid/content/Context;Z)V

    .line 44
    :goto_1
    return-void

    .line 52
    .restart local p3    # "isVoiceCapable":Z
    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method public static validateAndUpdateWifiIconStatus(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;ZZ)V
    .locals 2
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isVoiceSupportedOverWifi"    # Z
    .param p3, "isVideoSupportedOverWifi"    # Z

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "wifiIconStatus":Z
    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    .line 104
    :cond_0
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-static {p0, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->isCallExistsWithState(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-static {p0, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->isCallExistsWithState(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)Z

    move-result v1

    .line 104
    if-eqz v1, :cond_2

    .line 106
    :cond_1
    const/4 v0, 0x1

    .line 110
    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->sendWifiIconIntent(Landroid/content/Context;Z)V

    .line 100
    return-void

    .line 103
    :cond_3
    const/4 v0, 0x0

    .line 102
    goto :goto_0
.end method
