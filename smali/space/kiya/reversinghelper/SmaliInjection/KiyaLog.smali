.class public Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;
.super Ljava/lang/Object;
.source "KiyaLog.java"


# static fields
.field public static synthetic $change:Lcom/android/tools/fd/runtime/IncrementalChange;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v1, Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;->$change:Lcom/android/tools/fd/runtime/IncrementalChange;

    .line 0
    if-eqz v1, :cond_1

    const-string v0, "init$args.([Ljava/lang/Object;)Ljava/lang/Object;"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/android/tools/fd/runtime/IncrementalChange;->access$dispatch(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;-><init>([Ljava/lang/Object;Lcom/android/tools/fd/runtime/InstantReloadException;)V

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "init$body.(Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;)V"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/android/tools/fd/runtime/IncrementalChange;->access$dispatch(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0
.end method

.method constructor <init>([Ljava/lang/Object;Lcom/android/tools/fd/runtime/InstantReloadException;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Lcom/android/tools/fd/runtime/InstantReloadException;

    const-string v2, "String switch could not find \'%s\' with hashcode %s in %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "space/kiya/reversinghelper/SmaliInjection/KiyaLog"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/fd/runtime/InstantReloadException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_0
    return-void

    :sswitch_1
    invoke-direct {p0}, Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;-><init>()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x755772c6 -> :sswitch_0
        -0x6d324855 -> :sswitch_1
    .end sparse-switch
.end method

.method public static Log(Ljava/lang/Object;)V
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 0
    sget-object v0, Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;->$change:Lcom/android/tools/fd/runtime/IncrementalChange;

    if-eqz v0, :cond_0

    const-string v1, "Log.(Ljava/lang/Object;)V"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/android/tools/fd/runtime/IncrementalChange;->access$dispatch(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v0, "kiya"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 0
    sget-object v0, Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;->$change:Lcom/android/tools/fd/runtime/IncrementalChange;

    if-eqz v0, :cond_0

    const-string v1, "Log.(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/android/tools/fd/runtime/IncrementalChange;->access$dispatch(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static Log([Ljava/lang/Object;)V
    .locals 4
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 0
    sget-object v0, Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;->$change:Lcom/android/tools/fd/runtime/IncrementalChange;

    if-eqz v0, :cond_0

    const-string v1, "Log.([Ljava/lang/Object;)V"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/android/tools/fd/runtime/IncrementalChange;->access$dispatch(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v0, "kiya"

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs synthetic access$super(Lspace/kiya/reversinghelper/SmaliInjection/KiyaLog;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/android/tools/fd/runtime/InstantReloadException;

    const-string v1, "String switch could not find \'%s\' with hashcode %s in %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v4, "space/kiya/reversinghelper/SmaliInjection/KiyaLog"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/fd/runtime/InstantReloadException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_1
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-super {p0, v2, v3, v0}, Ljava/lang/Object;->wait(JI)V

    move-object v0, v1

    goto :goto_0

    :sswitch_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    move-object v0, v1

    goto :goto_0

    :sswitch_3
    invoke-super {p0}, Ljava/lang/Object;->notify()V

    move-object v0, v1

    goto :goto_0

    :sswitch_4
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-super {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    move-object v0, v1

    goto :goto_0

    :sswitch_5
    invoke-super {p0}, Ljava/lang/Object;->notifyAll()V

    move-object v0, v1

    goto :goto_0

    :sswitch_6
    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    invoke-super {p0}, Ljava/lang/Object;->wait()V

    move-object v0, v1

    goto :goto_0

    :sswitch_8
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :sswitch_9
    aget-object v0, p2, v3

    invoke-super {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    :sswitch_a
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed927f3 -> :sswitch_0
        -0x5f6ac6c5 -> :sswitch_1
        -0x5cacde5b -> :sswitch_2
        -0x4581b0b0 -> :sswitch_3
        -0x3ce26d38 -> :sswitch_4
        -0x2a71cde1 -> :sswitch_5
        0xbff01f6 -> :sswitch_6
        0xe8d537c -> :sswitch_7
        0x53a9ab15 -> :sswitch_8
        0x6c2a9726 -> :sswitch_9
        0x78b3604e -> :sswitch_a
    .end sparse-switch
.end method
