.class public Lcom/android/systemui/statusbar/powerwidget/ApnButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "ApnButton.java"


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREFERAPN_URI:Landroid/net/Uri;

.field public static final PREFERAPN_URI_2:Landroid/net/Uri;

.field private static final isDualMode:Z

.field private static mCm:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->CONTENT_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->PREFERAPN_URI:Landroid/net/Uri;

    .line 38
    const-string v0, "content://telephony/carriers2/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->PREFERAPN_URI_2:Landroid/net/Uri;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->OBSERVED_URIS:Ljava/util/List;

    .line 42
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "mobile_data_sim"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->PREFERAPN_URI_2:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->mCm:Landroid/net/ConnectivityManager;

    .line 51
    const-string v0, "ro.dual.sim.phone"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->isDualMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 55
    const-string v0, "toggleAPN"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    .line 60
    :cond_1e
    return-void
.end method

.method private static getDataState(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 120
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 122
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private static getDefaultSimID(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "context"

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data_sim"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, simid:I
    if-nez v1, :cond_10

    .line 146
    const-string v0, "sim1"

    .line 150
    .local v0, defaultSimId:Ljava/lang/String;
    :goto_f
    return-object v0

    .line 148
    .end local v0           #defaultSimId:Ljava/lang/String;
    :cond_10
    const-string v0, "sim2"

    .restart local v0       #defaultSimId:Ljava/lang/String;
    goto :goto_f
.end method

.method private static getPreferredApn(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 156
    const-string v0, "sim1"

    invoke-static {p0}, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->getDefaultSimID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 157
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->PREFERAPN_URI:Landroid/net/Uri;

    .line 162
    .local v1, uri:Landroid/net/Uri;
    :goto_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_34

    .line 168
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_38

    .line 170
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_3c

    move-result-object v3

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_34
    :goto_34
    return-object v3

    .line 159
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_35
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->PREFERAPN_URI_2:Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_10

    .line 173
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_38
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :catchall_3c
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static final isCardAbsent(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 127
    const-string v1, "sim1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 128
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 129
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    .line 135
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :goto_14
    return v1

    .line 130
    :cond_15
    const-string v1, "sim2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 131
    const-string v1, "phone2"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager2;

    .line 132
    .local v0, tm:Landroid/telephony/TelephonyManager2;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager2;->hasIccCard()Z

    move-result v1

    goto :goto_14

    .line 135
    .end local v0           #tm:Landroid/telephony/TelephonyManager2;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private static nextApn(Landroid/content/Context;)V
    .registers 25
    .parameter "context"

    .prologue
    .line 183
    const-string v1, "sim1"

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->getDefaultSimID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 184
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->PREFERAPN_URI:Landroid/net/Uri;

    .line 185
    .local v2, uri:Landroid/net/Uri;
    const-string v11, "apn_id"

    .line 192
    .local v11, apn_id:Ljava/lang/String;
    :goto_10
    const/4 v9, -0x1

    .line 193
    .local v9, apnId:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 196
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_37

    .line 198
    :try_start_26
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_34

    .line 200
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_c5

    move-result v9

    .line 203
    :cond_34
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_37
    const/16 v20, 0x0

    .line 209
    .local v20, simOperator:Ljava/lang/String;
    const-string v1, "sim1"

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->getDefaultSimID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 210
    const-string v1, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    .line 212
    .local v22, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v20

    .line 219
    .end local v22           #tm:Landroid/telephony/TelephonyManager;
    :goto_53
    const-string v1, "PowerButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextApn() apnId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " numeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, -0x1

    if-eq v9, v1, :cond_146

    if-eqz v20, :cond_146

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_146

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "type"

    aput-object v6, v5, v1

    const-string v6, "numeric=?"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v20, v7, v1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 227
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 228
    .local v17, n:I
    const/4 v1, 0x1

    move/from16 v0, v17

    if-le v0, v1, :cond_143

    .line 229
    move/from16 v0, v17

    new-array v12, v0, [I

    .line 230
    .local v12, apns:[I
    const/16 v16, -0x1

    .line 231
    .local v16, indexOfCurApn:I
    const/4 v15, 0x0

    .line 233
    .local v15, index:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_b3
    move/from16 v0, v17

    if-ge v14, v0, :cond_108

    .line 234
    invoke-interface {v13, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 235
    if-nez v13, :cond_da

    .line 233
    :cond_bc
    :goto_bc
    add-int/lit8 v14, v14, 0x1

    goto :goto_b3

    .line 187
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #apnId:I
    .end local v11           #apn_id:Ljava/lang/String;
    .end local v12           #apns:[I
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v14           #i:I
    .end local v15           #index:I
    .end local v16           #indexOfCurApn:I
    .end local v17           #n:I
    .end local v20           #simOperator:Ljava/lang/String;
    :cond_bf
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->PREFERAPN_URI_2:Landroid/net/Uri;

    .line 188
    .restart local v2       #uri:Landroid/net/Uri;
    const-string v11, "apn_id2"

    .restart local v11       #apn_id:Ljava/lang/String;
    goto/16 :goto_10

    .line 203
    .restart local v9       #apnId:I
    .restart local v13       #cursor:Landroid/database/Cursor;
    :catchall_c5
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 214
    .restart local v20       #simOperator:Ljava/lang/String;
    :cond_ca
    const-string v1, "phone2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager2;

    .line 216
    .local v22, tm:Landroid/telephony/TelephonyManager2;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager2;->getSimOperator()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_53

    .line 239
    .end local v22           #tm:Landroid/telephony/TelephonyManager2;
    .restart local v12       #apns:[I
    .restart local v14       #i:I
    .restart local v15       #index:I
    .restart local v16       #indexOfCurApn:I
    .restart local v17       #n:I
    :cond_da
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 240
    .local v10, apnType:Ljava/lang/String;
    if-eqz v10, :cond_f1

    const-string v1, "default"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f1

    const-string v1, "*"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_105

    :cond_f1
    const/16 v19, 0x1

    .line 243
    .local v19, selectable:Z
    :goto_f3
    if-eqz v19, :cond_bc

    .line 247
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v12, v15

    .line 248
    aget v1, v12, v15

    if-ne v1, v9, :cond_102

    .line 249
    move/from16 v16, v15

    .line 251
    :cond_102
    add-int/lit8 v15, v15, 0x1

    goto :goto_bc

    .line 240
    .end local v19           #selectable:Z
    :cond_105
    const/16 v19, 0x0

    goto :goto_f3

    .line 255
    .end local v10           #apnType:Ljava/lang/String;
    :cond_108
    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_147

    .line 256
    const/4 v1, 0x0

    aget v18, v12, v1

    .line 262
    .local v18, newApnId:I
    :goto_110
    const-string v1, "PowerButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextApn() newApnId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v23, values:Landroid/content/ContentValues;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    .end local v12           #apns:[I
    .end local v14           #i:I
    .end local v15           #index:I
    .end local v16           #indexOfCurApn:I
    .end local v18           #newApnId:I
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_143
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 270
    .end local v17           #n:I
    :cond_146
    return-void

    .line 258
    .restart local v12       #apns:[I
    .restart local v14       #i:I
    .restart local v15       #index:I
    .restart local v16       #indexOfCurApn:I
    .restart local v17       #n:I
    :cond_147
    add-int/lit8 v1, v16, 0x1

    rem-int v21, v1, v15

    .line 259
    .local v21, temp:I
    move/from16 v0, v21

    if-ge v0, v15, :cond_152

    aget v18, v12, v21

    .restart local v18       #newApnId:I
    :goto_151
    goto :goto_110

    .end local v18           #newApnId:I
    :cond_152
    move/from16 v18, v9

    goto :goto_151
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    return-object v0
.end method

.method protected getObservedUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick()Z
    .registers 3

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .registers 5

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 97
    :cond_14
    :goto_14
    return-void

    .line 93
    :cond_15
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->getDataState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 96
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->nextApn(Landroid/content/Context;)V

    goto :goto_14
.end method

.method protected updateState()V
    .registers 8

    .prologue
    const v6, 0x7f080078

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_25

    .line 67
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    .line 84
    :cond_24
    :goto_24
    return-void

    .line 72
    :cond_25
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->getDefaultSimID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->isCardAbsent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 73
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    goto :goto_24

    .line 76
    :cond_3f
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->getDataState(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v4, :cond_55

    .line 77
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 78
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/ApnButton;->getPreferredApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 82
    :cond_55
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mText:Ljava/lang/String;

    goto :goto_24
.end method
