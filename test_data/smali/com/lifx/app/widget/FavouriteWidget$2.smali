.class final Lcom/lifx/app/widget/FavouriteWidget$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifx/app/widget/FavouriteWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lifx/app/widget/FavouriteWidget;->a(Z)Z

    .line 78
    invoke-static {}, Lcom/lifx/app/widget/FavouriteWidget;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/lifx/app/widget/FavouriteWidget;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    const-string v1, "scenesJson"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    invoke-static {}, Lcom/lifx/app/widget/FavouriteWidget;->h()Lcom/lifx/app/widget/FavouriteItemCollection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/lifx/app/widget/FavouriteItemCollection;

    invoke-direct {v0}, Lcom/lifx/app/widget/FavouriteItemCollection;-><init>()V

    invoke-static {v0}, Lcom/lifx/app/widget/FavouriteWidget;->a(Lcom/lifx/app/widget/FavouriteItemCollection;)Lcom/lifx/app/widget/FavouriteItemCollection;

    .line 92
    :cond_1
    invoke-static {}, Lcom/lifx/app/widget/FavouriteWidget;->h()Lcom/lifx/app/widget/FavouriteItemCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lifx/app/widget/FavouriteItemCollection;->a(Lorg/json/JSONArray;)V

    .line 93
    invoke-static {}, Lcom/lifx/app/widget/FavouriteWidget;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lifx/app/widget/FavouriteWidget;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/lifx/app/widget/FavouriteWidget$2;->a(Lorg/json/JSONArray;)V

    return-void
.end method
