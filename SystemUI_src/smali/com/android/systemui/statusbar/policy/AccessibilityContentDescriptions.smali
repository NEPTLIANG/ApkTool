.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x5

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 14
    nop

    :array_20
    .array-data 0x4
        0x45t 0x0t 0x8t 0x7ft
        0x46t 0x0t 0x8t 0x7ft
        0x47t 0x0t 0x8t 0x7ft
        0x48t 0x0t 0x8t 0x7ft
        0x49t 0x0t 0x8t 0x7ft
        0x49t 0x0t 0x8t 0x7ft
    .end array-data

    .line 23
    :array_30
    .array-data 0x4
        0x4at 0x0t 0x8t 0x7ft
        0x4bt 0x0t 0x8t 0x7ft
        0x4ct 0x0t 0x8t 0x7ft
        0x4dt 0x0t 0x8t 0x7ft
        0x4et 0x0t 0x8t 0x7ft
    .end array-data

    .line 31
    :array_3e
    .array-data 0x4
        0x4ft 0x0t 0x8t 0x7ft
        0x50t 0x0t 0x8t 0x7ft
        0x51t 0x0t 0x8t 0x7ft
        0x52t 0x0t 0x8t 0x7ft
        0x53t 0x0t 0x8t 0x7ft
    .end array-data

    .line 38
    :array_4c
    .array-data 0x4
        0x54t 0x0t 0x8t 0x7ft
        0x55t 0x0t 0x8t 0x7ft
        0x56t 0x0t 0x8t 0x7ft
        0x57t 0x0t 0x8t 0x7ft
        0x58t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
