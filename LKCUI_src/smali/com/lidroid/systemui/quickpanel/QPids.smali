.class public Lcom/lidroid/systemui/quickpanel/QPids;
.super Ljava/lang/Object;
.source "QPids.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static qpGetArr(Ljava/lang/String;)I
    .locals 1
    .parameter "str"

    .prologue
    .line 85
    const-string v0, "qp_reboot_actions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0000

    .line 88
    :goto_0
    return v0

    .line 86
    :cond_0
    const-string v0, "qp_reboot_options"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0001

    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "qp_timeouts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f0002

    goto :goto_0

    .line 88
    :cond_2
    const v0, 0x7f0b0000

    goto :goto_0
.end method

.method public static qpGetDrwb(Ljava/lang/String;)I
    .locals 1
    .parameter "str"

    .prologue
    .line 6
    const-string v0, "qp_act_reboot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02017a

    .line 45
    :goto_0
    return v0

    .line 7
    :cond_0
    const-string v0, "qp_act_shutdown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020151

    goto :goto_0

    .line 8
    :cond_1
    const-string v0, "qp_airplane_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020152

    goto :goto_0

    .line 9
    :cond_2
    const-string v0, "qp_airplane_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020153

    goto :goto_0

    .line 10
    :cond_3
    const-string v0, "qp_bg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f020154

    goto :goto_0

    .line 11
    :cond_4
    const-string v0, "qp_bg_mid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f020155

    goto :goto_0

    .line 12
    :cond_5
    const-string v0, "qp_bg_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f020156

    goto :goto_0

    .line 13
    :cond_6
    const-string v0, "qp_bg_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f020157

    goto :goto_0

    .line 14
    :cond_7
    const-string v0, "qp_bluetooth_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f020158

    goto :goto_0

    .line 15
    :cond_8
    const-string v0, "qp_bluetooth_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f020159

    goto :goto_0

    .line 16
    :cond_9
    const-string v0, "qp_brightness_auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f02015a

    goto :goto_0

    .line 17
    :cond_a
    const-string v0, "qp_brightness_mid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f02015b

    goto/16 :goto_0

    .line 18
    :cond_b
    const-string v0, "qp_brightness_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f02015c

    goto/16 :goto_0

    .line 19
    :cond_c
    const-string v0, "qp_brightness_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f02015d

    goto/16 :goto_0

    .line 20
    :cond_d
    const-string v0, "qp_data_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f02015e

    goto/16 :goto_0

    .line 21
    :cond_e
    const-string v0, "qp_data_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f02015f

    goto/16 :goto_0

    .line 22
    :cond_f
    const-string v0, "qp_flashlight_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f020160

    goto/16 :goto_0

    .line 23
    :cond_10
    const-string v0, "qp_flashlight_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f020161

    goto/16 :goto_0

    .line 24
    :cond_11
    const-string v0, "qp_gps_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f020162

    goto/16 :goto_0

    .line 25
    :cond_12
    const-string v0, "qp_gps_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f020163

    goto/16 :goto_0

    .line 26
    :cond_13
    const-string v0, "qp_ic_dlg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f020164

    goto/16 :goto_0

    .line 27
    :cond_14
    const-string v0, "qp_lock_screen_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const v0, 0x7f020165

    goto/16 :goto_0

    .line 28
    :cond_15
    const-string v0, "qp_lock_screen_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f020166

    goto/16 :goto_0

    .line 29
    :cond_16
    const-string v0, "qp_orientation_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x7f020167

    goto/16 :goto_0

    .line 30
    :cond_17
    const-string v0, "qp_orientation_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x7f020168

    goto/16 :goto_0

    .line 31
    :cond_18
    const-string v0, "qp_screen_timeout_10m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x7f020169

    goto/16 :goto_0

    .line 32
    :cond_19
    const-string v0, "qp_screen_timeout_15s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f02016a

    goto/16 :goto_0

    .line 33
    :cond_1a
    const-string v0, "qp_screen_timeout_1m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const v0, 0x7f02016b

    goto/16 :goto_0

    .line 34
    :cond_1b
    const-string v0, "qp_screen_timeout_2m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const v0, 0x7f02016c

    goto/16 :goto_0

    .line 35
    :cond_1c
    const-string v0, "qp_screen_timeout_30s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const v0, 0x7f02016d

    goto/16 :goto_0

    .line 36
    :cond_1d
    const-string v0, "qp_screen_timeout_unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x7f02016e

    goto/16 :goto_0

    .line 37
    :cond_1e
    const-string v0, "qp_sound_ring"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const v0, 0x7f02016f

    goto/16 :goto_0

    .line 38
    :cond_1f
    const-string v0, "qp_sound_ring_vibrate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x7f020170

    goto/16 :goto_0

    .line 39
    :cond_20
    const-string v0, "qp_sound_silent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const v0, 0x7f020171

    goto/16 :goto_0

    .line 40
    :cond_21
    const-string v0, "qp_sound_vibrate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const v0, 0x7f020172

    goto/16 :goto_0

    .line 41
    :cond_22
    const-string v0, "qp_sync_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x7f020173

    goto/16 :goto_0

    .line 42
    :cond_23
    const-string v0, "qp_sync_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const v0, 0x7f020174

    goto/16 :goto_0

    .line 43
    :cond_24
    const-string v0, "qp_wifi_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const v0, 0x7f020175

    goto/16 :goto_0

    .line 44
    :cond_25
    const-string v0, "qp_wifi_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x7f020176

    goto/16 :goto_0

    .line 45
    :cond_26
    const v0, 0x7f080000

    goto/16 :goto_0
.end method

.method public static qpGetLt(Ljava/lang/String;)I
    .locals 1
    .parameter "str"

    .prologue
    .line 79
    const-string v0, "qp_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030020

    .line 82
    :goto_0
    return v0

    .line 80
    :cond_0
    const-string v0, "qp_layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f030021

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "qp_scrollview"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f030022

    goto :goto_0

    .line 82
    :cond_2
    const v0, 0x7f020100

    goto :goto_0
.end method

.method public static qpGetStr(Ljava/lang/String;)I
    .locals 1
    .parameter "str"

    .prologue
    .line 48
    const-string v0, "qp_airplane_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080082

    .line 76
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string v0, "qp_autosync_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080083

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "qp_bluetooth_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080084

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "qp_brightness_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080085

    goto :goto_0

    .line 52
    :cond_3
    const-string v0, "qp_dc_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f080086

    goto :goto_0

    .line 53
    :cond_4
    const-string v0, "qp_flashlight_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f080087

    goto :goto_0

    .line 54
    :cond_5
    const-string v0, "qp_gps_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f080088

    goto :goto_0

    .line 55
    :cond_6
    const-string v0, "qp_lockscreen_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f080089

    goto :goto_0

    .line 56
    :cond_7
    const-string v0, "qp_no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f08008a

    goto :goto_0

    .line 58
    :cond_8
    const-string v0, "qp_reboot_dlg_title"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f08008b

    goto :goto_0

    .line 59
    :cond_9
    const-string v0, "qp_reboot_download"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f08008c

    goto/16 :goto_0

    .line 60
    :cond_a
    const-string v0, "qp_reboot_now"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f08008d

    goto/16 :goto_0

    .line 61
    :cond_b
    const-string v0, "qp_reboot_recovery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f08008e

    goto/16 :goto_0

    .line 62
    :cond_c
    const-string v0, "qp_reboot_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f08008f

    goto/16 :goto_0

    .line 63
    :cond_d
    const-string v0, "qp_rotation_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f080090

    goto/16 :goto_0

    .line 64
    :cond_e
    const-string v0, "qp_screen_timeout_hr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f080091

    goto/16 :goto_0

    .line 65
    :cond_f
    const-string v0, "qp_screen_timeout_min"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f080092

    goto/16 :goto_0

    .line 66
    :cond_10
    const-string v0, "qp_screen_timeout_prefix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f080093

    goto/16 :goto_0

    .line 67
    :cond_11
    const-string v0, "qp_screen_timeout_sec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f080094

    goto/16 :goto_0

    .line 68
    :cond_12
    const-string v0, "qp_screen_timeout_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f080095

    goto/16 :goto_0

    .line 69
    :cond_13
    const-string v0, "qp_shutdown_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f080096

    goto/16 :goto_0

    .line 70
    :cond_14
    const-string v0, "qp_silent_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const v0, 0x7f080097

    goto/16 :goto_0

    .line 71
    :cond_15
    const-string v0, "qp_sound_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f080098

    goto/16 :goto_0

    .line 72
    :cond_16
    const-string v0, "qp_sound_vibration_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x7f080099

    goto/16 :goto_0

    .line 73
    :cond_17
    const-string v0, "qp_vibration_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x7f080080

    goto/16 :goto_0

    .line 74
    :cond_18
    const-string v0, "qp_wifi_text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x7f080081

    goto/16 :goto_0

    .line 75
    :cond_19
    const-string v0, "qp_yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f08007f

    goto/16 :goto_0

    .line 76
    :cond_1a
    const v0, 0x7f080000

    goto/16 :goto_0
.end method
