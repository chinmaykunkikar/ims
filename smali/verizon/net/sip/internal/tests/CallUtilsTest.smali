.class public Lverizon/net/sip/internal/tests/CallUtilsTest;
.super Landroid/test/AndroidTestCase;
.source "CallUtilsTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 15
    return-void
.end method

.method protected tearDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 19
    return-void
.end method

.method public testSample()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Lverizon/net/sip/internal/tests/CallUtilsTest;->assertTrue(Z)V

    .line 23
    return-void
.end method
