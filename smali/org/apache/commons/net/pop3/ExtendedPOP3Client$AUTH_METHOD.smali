.class public final enum Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
.super Ljava/lang/Enum;
.source "ExtendedPOP3Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/pop3/ExtendedPOP3Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUTH_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

.field public static final enum CRAM_MD5:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

.field public static final enum PLAIN:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;


# instance fields
.field private final methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 130
    new-instance v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    const/4 v1, 0x0

    const-string v2, "PLAIN"

    invoke-direct {v0, v2, v1, v2}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 133
    new-instance v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    const/4 v2, 0x1

    const-string v3, "CRAM_MD5"

    const-string v4, "CRAM-MD5"

    invoke-direct {v0, v3, v2, v4}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    sget-object v3, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    aput-object v3, v0, v1

    sget-object v1, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput-object p3, p0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->methodName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    const-class v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    .locals 1

    .line 127
    sget-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    invoke-virtual {v0}, [Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    return-object v0
.end method


# virtual methods
.method public final getAuthName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->methodName:Ljava/lang/String;

    return-object v0
.end method
