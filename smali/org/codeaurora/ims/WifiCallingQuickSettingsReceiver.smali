.class public Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingQuickSettingsReceiver.java"


# static fields
.field private static final CONTENT_WIFI_CALLING_Tile:Ljava/lang/String; = "Wifi Calling Tile"

.field private static final EXTRAKEY_CONTENT:Ljava/lang/String; = "contentDescription"

.field private static final EXTRAKEY_ICONID:Ljava/lang/String; = "iconId"

.field private static final EXTRAKEY_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field private static final EXTRAKEY_LABEL:Ljava/lang/String; = "label"

.field private static final EXTRAKEY_ONCLICK:Ljava/lang/String; = "onClick"

.field private static final EXTRAKEY_ONCLICK_URI:Ljava/lang/String; = "onClickUri"

.field private static final EXTRAKEY_ONLAUNCH:Ljava/lang/String; = "onLaunch"

.field private static final EXTRAKEY_ONLAUNCH_URI:Ljava/lang/String; = "onLaunchUri"

.field private static final EXTRAKEY_ONLONGCLICK:Ljava/lang/String; = "onLongClick"

.field private static final EXTRAKEY_ONLONGCLICK_URI:Ljava/lang/String; = "onLongClickUri"

.field private static final EXTRAKEY_VISIBLE:Ljava/lang/String; = "visible"

.field private static final QS_ONCLICK_ACTION:Ljava/lang/String; = "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

.field private static final QS_ONLAUNCH_ACTION:Ljava/lang/String; = "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

.field private static final WIFICALLING_TILE_ACTION:Ljava/lang/String; = "org.codeaurora.qs.tiles.wificallingtile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 144
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private sendIntentToUpdateQSTile(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    .line 89
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "org.codeaurora.qs.tiles.wificallingtile"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v2, "visible"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string/jumbo v2, "contentDescription"

    const-string/jumbo v3, "Wifi Calling Tile"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v2, "iconPackage"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->updateIntentWifiCallingStatus(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->updatePendingIntents(Landroid/content/Context;Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    return-void

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    .local v1, "isQSVisible":Z
    goto :goto_0
.end method

.method private updateIntentWifiCallingStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 111
    .local v2, "wfcEnabled":Z
    :goto_0
    if-eqz v2, :cond_1

    const v1, 0x7f040008

    .line 112
    .local v1, "label":I
    :goto_1
    if-eqz v2, :cond_2

    const v0, 0x7f020001

    .line 115
    .local v0, "iconId":I
    :goto_2
    const-string/jumbo v3, "label"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v3, "iconId"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    return-void

    .line 108
    .end local v0    # "iconId":I
    .end local v1    # "label":I
    .end local v2    # "wfcEnabled":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 111
    .restart local v2    # "wfcEnabled":Z
    :cond_1
    const v1, 0x7f040009

    .restart local v1    # "label":I
    goto :goto_1

    .line 113
    :cond_2
    const/high16 v0, 0x7f020000

    .restart local v0    # "iconId":I
    goto :goto_2
.end method

.method private updatePendingIntents(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    const-string/jumbo v0, "onClick"

    .line 121
    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 120
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v0, "onClickUri"

    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v0, "onLaunch"

    .line 124
    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 123
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    const-string/jumbo v0, "onLaunchUri"

    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string/jumbo v0, "onLongClick"

    .line 129
    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 128
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v0, "onLongClickUri"

    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    const-string/jumbo v3, "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->sendIntentToUpdateQSTile(Landroid/content/Context;)V

    .line 61
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string/jumbo v3, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 69
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 71
    .local v1, "wfcEnabled":Z
    :goto_1
    if-eqz v1, :cond_3

    :goto_2
    invoke-static {p1, v2}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 73
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->sendIntentToUpdateQSTile(Landroid/content/Context;)V

    goto :goto_0

    .end local v1    # "wfcEnabled":Z
    :cond_2
    move v1, v2

    .line 69
    goto :goto_1

    .line 71
    .restart local v1    # "wfcEnabled":Z
    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 75
    .end local v1    # "wfcEnabled":Z
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received Unexpected Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
