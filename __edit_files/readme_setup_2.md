# Galaxy Fleet
  
<h1>～セットアップ手順書～</h1>  
<h2>～Setup Manual～</h2>  
  

**★このリポジトリの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this repository are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメント群ではブラウザで動作する艦隊ストラテジゲーム「Galaxy Fleet」のセットアップ手順を示します。  
  
前提としてサーバへの支援ソフト導入や、設定変更が必要で難易度は高いです。自己責任で行ってください。  
機能概要、バージョンアップ方法、その他については readme.md をご参照ください。  
[readme.md](https://github.com/korei-xlix/galaxy_fleet_doc/readme.md)
  
なお、現バージョンは要求仕様まとめ段階のものであり、今後予告なく改版されます。  
  




<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)

* [前提環境・ソフトウェア](#aPremise)

* [github環境の構築](#aSetup_github)

* [環境構築](#aSetup)
  * [インストール環境構成](#aSetup_Configure)
  * [OpenSSLのインストール](#aSetup_OpenSSL)
  * [curlのインストール](#aSetup_curl)
  * [gittextのインストール](#aSetup_gittext)
  * [gitのインストール](#aSetup_git)
  * [python3のインストール](#aSetup_python3)
  





<h1 id="aPremise">前提環境・ソフトウェア</h1>  
  
[目次へ戻る](#aMokuji)  
  
readmeの[システム概要](/readme.md#システム要件最低限)をご参照ください。  
  





<h1 id="aSetup_github">github環境の構築</h1>  
  
[目次へ戻る](#aMokuji)  
  

本章ではgithub環境の構築について記載します。  
**既にgithubアカウント、github desktopを持ってる場合はスキップできます**  
  

Galaxy Fleetは **githubリポジトリ** で管理しています。
そのため、**Galaxy Fleetを運用するにはguthubアカウントが必要になります。**  
リポジトリの管理、アップデートなどのために、github環境を構築します。  
  

<h2>githubアカウントの取り方</h2>  
おそらくこのドキュメントを見られてる方はgithubアカウントをお持ちと思いますが念のため。  
githubのホームページから取得できます。  
  [github](https://github.com)  
  

<h2>github desktopのインストール</h2>  
github Desktopをインストールします。  
インストーラを以下から取得します。入手したインストーラで好きな場所にセットアップします。  
  [github HP](https://desktop.github.com)  
  




<h1 id="aSetup">環境構築</h1>  
  
[目次へ戻る](#aMokuji)  
  

Galaxy Fleetを実行するための環境構築をします。  
インストールするアプリケーションは次の通りです。  

* openssl  
* curl  
* gittext  
* git  
* homebrew  
* python3  
* MySQL  

> 本仕様ではnginx、fastCGI、TeraTermはインストール済みの前提です。  
> TeraTermはX Serverを構築する際にインストールしてると思いますが、  
> 念のため以下からダウンロードできます。  
>  
> [Tera Term(窓の社)](https://forest.watch.impress.co.jp/library/software/utf8teraterm/)  
  



<h2 id="aSetup_Configure">インストール環境構成</h2>  
  
[目次へ戻る](#aMokuji)  
  

Galaxy Fleetではpython3のライブラリを利用しますが、X Serverのレンタルサーバの場合権限がないため、そのままの環境では利用できません。  
そこで、自前のライブラリ環境を整えた上でインストールをおこないます。  
**X Serverのレンタルサーバ以外はこの手順はスキップできます。**  
  

## ディレクトリ構成（イメージ）

```text
home
|-- _tmp
|-- opt
     |-- curl
     |-- gettext
     |-- git
     |-- ssl
     `-- python3
|-- .homebrew
```
  

## 環境変数の変更  

```text
プロファイルをviエディタで開く
$ vi .bash_profile

※export PATH    に上書きする

PATH=/usr/bin:/usr/sbin:${HOME}/opt/bin:${HOME}/opt/gettext/bin
PREFIX=${HOME}/opt
BASH_PROFILE=${HOME}/.bash_profile

:wq  ←保存・終了コマンド

プロファイル再読み込み
$ source .bash_profile


PATH
${HOME} はユーザのルートディレクトリ（ホームディレクトリ）
/usr/bin
${HOME}/opt/bin
${HOME}/opt/gettext/bin

```

## ディレクトリ作成  

```text
mkdirで作成していく

$ mkdir -p python_venv

$ mkdir -p ~/opt/curl
$ mkdir -p ~/opt/git
$ mkdir -p ~/opt/gettext
$ mkdir -p ~/opt/ssl
$ mkdir -p ~/opt/python3
$ mkdir -p ~/.homebrew
$ mkdir ~/_tmp
```
  

find / -name libcrypto.so.3


find / -name pkgconfig

php -i

tar zxvf homebrew_zip --strip-components 1

rm -rf Homebrew-brew-6a9c9c0


Makefileの編集
$ vi Makefile

CFLAGS=-fPIC
CPPFLAGS=/usr/include
LDFLAGS=/usr/lib64
LD_LIBRARY_PATH=/usr/lib:/usr/lib64
PKG_CONFIG_PATH=/usr/lib64/pkgconfig

:wq  ←保存・終了コマンド





<h2 id="aSetup_pythonVirtual">pythonの仮想環境の構築</h2>  
  
[目次へ戻る](#aMokuji)  
  
pip3を使えるよう、python仮想環境を構築します。  
  

## python仮想環境の構築

```text
仮想環境フォルダの作成
$ cd
$ cd python_venv
$ pwd
[HOME]/python_venv

python仮想環境の構築
$ python3.6 -m venv --without-pip [仮想環境名]

仮想環境名 python36v の場合
$ python3.6 -m venv --without-pip python36v


仮想環境を有効化する
$ source [仮想環境名]/bin/activate

仮想環境名 python36v の場合
$ source python36v/bin/activate

ターミナルモードになればOK
(python36v) [ユーザ名 python_venv]$ python -V
Python 3.6.8

```
  


## pipをインストール
  
pipをインストールするためのget-pip.pyをダウンロードします。  
  [ダウンロード先:bootstrap](https://bootstrap.pypa.io/pip/)  

```text
curlはサーバのものを使用する
$ curl -V
curl 7.29.0 (x86_64-redhat-linux-gnu) libcurl/7.29.0 NSS/3.53.1 zlib/1.2.7 libidn/1.28 libssh2/1.8.0
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp scp sftp smtp smtps telnet tftp
Features: AsynchDNS GSS-Negotiate IDN IPv6 Largefile NTLM NTLM_WB SSL libz unix-sockets

curlでダウンロードする
$ curl -o [ダウンロードURL]

pip3.6の場合
$ curl -o https://bootstrap.pypa.io/pip/3.6/get-pip.py

pipのアップデート(python経由)
$ python get-pip.py

$ pip -V
pip 21.3.1 from [HOME]/python_venv/python36v/lib64/python3.6/site-packages/pip (python 3.6)

$ which pip
~/python_venv/python36v/bin/pip

$ pip list
Package    Version
---------- -------
pip        21.3.1
setuptools 59.6.0
wheel      0.37.1

pipが使えるようになりました

```
  


## 仮想環境の無効化

```text
$ deactivate

$ python -V
Python 2.7.5

```
  


## ログイン時に仮想環境を実行するようにする

```text
$ cd
$ vi .bash_profile

以下を追加
source ./python_venv/python36v/bin/activate

:wq  ←保存・終了コマンド

プロファイル再読み込み
$ source .bash_profile

ターミナルモードになればOK
(python36v) [ユーザ名 python_venv]$ python -V
Python 3.6.8

```
  




























<h2 id="aSetup_OpenSSL">OpenSSLのインストール</h2>  
  
[目次へ戻る](#aMokuji)  
  

作業フォルダに移動し、opensslをインストールします。  
wgetでダウンロードするバージョンは以下で確認してください。  
参考記事だと1.1.1で紹介されてますが、サポートされてないので最新を使います。  
  [openssl](http://www.openssl.org/source/)  
  

```text
作業フォルダに移動
$ cd ~/_tmp

ダウンロード
$ wget [opensslのリンク]
$ tar xvfz [アーカイブ名]
$ cd [アーカイブ名]

v3.2.0の場合
$ wget https://www.openssl.org/source/openssl-3.2.0.tar.gz
$ tar xvfz openssl-3.2.0.tar.gz
$ cd openssl-3.2.0


wget https://github.com/openssl/openssl/archive/refs/heads/master.zip





	providers/libdefault.a providers/libcommon.a  -ldl -pthread 
/usr/lib64: file not recognized: Is a directory
collect2: error: ld returned 1 exit status
make[1]: *** [libcrypto.so.3] Error 1
make[1]: Leaving directory `/home/koreislabo/_tmp/openssl-3.2.0'
make: *** [build_sw] エラー 2


-soname=libcrypto.so.3

                providers/libdefault.a providers/libcommon.a
    $(CC) $(LIB_CFLAGS) $(LIB_LDFLAGS) -Wl,-soname=libcrypto.so.3 \
                -o libcrypto.so.3 -Wl,--version-script=libcrypto.ld \



        ssl/statem/libssl-shlib-statem_srvr.o \
        -lcrypto  -ldl -pthread
/usr/lib64: file not recognized: Is a directory
collect2: error: ld returned 1 exit status
make[1]: *** [libssl.so.3] Error 1
make[1]: Leaving directory `/home/koreislabo/_tmp/openssl-3.2.0'
make: *** [build_sw] エラー 2


-soname=libssl.so.3

             ssl/statem/libssl-shlib-statem_srvr.o libssl.ld libcrypto.so
    $(CC) $(LIB_CFLAGS) -L. $(LIB_LDFLAGS) -Wl,-soname=libssl.so.3 \
                -o libssl.so.3 -Wl,--version-script=libssl.ld \



        providers/libdefault.a providers/libcommon.a  -ldl -pthread
/usr/lib64: file not recognized: Is a directory
collect2: error: ld returned 1 exit status
make[1]: *** [libcrypto.so.3] Error 1
make[1]: Leaving directory `/home/koreislabo/_tmp/openssl-3.2.0'
make: *** [build_sw] エラー 2


libcrypto.so.3
libssl.so.3






###########################
関連 Makefile

INSTALLTOP=${HOME}/opt
OPENSSLDIR=${HOME}/opt/ssl
LIBDIR=lib64

libdir=$(INSTALLTOP)/$(LIBDIR)
LIBRPATH=$(libdir)

CFLAGS=-fPIC
CNF_CFLAGS=-pthread -m64 -Wa,--noexecstack

LDFLAGS= /usr/lib64 -Wl,-rpath,$(LIBRPATH)
CNF_LDFLAGS=

LIB_CFLAGS=-fPIC $(CNF_CFLAGS) $(CFLAGS)
LIB_LDFLAGS=-Wl,-znodelete -shared -Wl,-Bsymbolic $(CNF_LDFLAGS) $(LDFLAGS)

LDFLAGS= /usr/lib64 -Wl,-rpath,$(LIBRPATH)

EX_LIBS=
CNF_EX_LIBS=-ldl -pthread

LIB_EX_LIBS=$(CNF_EX_LIBS) $(EX_LIBS)

SHLIBS=libcrypto.so.3 libssl.so.3
SHLIB_INFO="libcrypto.so.3;libcrypto.so;" "libssl.so.3;libssl.so;"

INSTALL_SHLIBS=libcrypto.so.3 libssl.so.3
INSTALL_SHLIB_INFO="libcrypto.so.3;libcrypto.so;" "libssl.so.3;libssl.so;"

###########################



ビルド＆インストール
### $ ./config shared --prefix=${HOME}/opt/ssl --openssldir=${HOME}/opt/ssl '-Wl,-rpath,$(LIBRPATH)'
### $ ./config shared --prefix=${PREFIX} --openssldir=${PREFIX}/ssl
$ ./config shared --prefix=${PREFIX} --openssldir=${PREFIX}/ssl '-Wl,-rpath,$(LIBRPATH)'

$ make clean
$ make
$ make test
$ make install
$ cd ~

opensslのエイリアス変更（pythonの切り替え）
###$ alias openssl='${PREFIX}/ssl/bin/openssl'
$ alias openssl='${PREFIX}/bin/openssl'

インストールの正常確認
$ openssl version
OpenSSL 3.2.0

$ which openssl
alias openssl='${PREFIX}/bin/openssl'

```
  



<h2 id="aSetup_curl">curlのインストール</h2>  
  
[目次へ戻る](#aMokuji)  
  

作業フォルダに移動し、curlをインストールします。gitのインストールに必要です。  
wgetでダウンロードするバージョンは以下で確認してください。  
  [curl](https://curl.haxx.se/download/)  
  

```text
作業フォルダに移動
$ cd ~/_tmp

ダウンロード
$ wget [curlのリンク]
$ tar xvfz [アーカイブ名]
$ cd [アーカイブ名]

v8.5.0の場合
$ wget https://curl.se/download/curl-8.5.0.tar.gz
$ tar xvfz curl-8.5.0.tar.gz
$ cd curl-8.5.0

ビルド＆インストール
###$ ./configure --with-openssl=${HOME}/opt/ssl --enable-libcurl-option --prefix=${HOME}/opt/curl --enable-shared
$ ./configure --prefix=${PREFIX} --enable-libcurl-option --with-openssl=${PREFIX}

$ make
$ make test
$ make install

ライブラリ libssl、libcrypto の設定
$ ls ~/opt/lib64
cmake      libcrypto.a   libcrypto.so.3  libssl.so    ossl-modules
engines-3  libcrypto.so  libssl.a        libssl.so.3  pkgconfig

$ pushd ~/opt/lib
$ ln -s ../../lib/libssl.so.3 libssl.so.3
$ ln -s ../../lib/libcrypto.so.3 libcrypto.so.3

$ ls
libcrypto.so.3  libcurl.la  libcurl.so.4      libcurl.so.4.8.0  pkgconfig
libcurl.a       libcurl.so  libcurl.so.4.3.0  libssl.so.3

$ popd
$ cd ~

インストールの正常確認
Protocolにhttpsが含まれることを確認する
$ curl -V
curl 8.5.0 (x86_64-pc-linux-gnu) libcurl/8.5.0 OpenSSL/3.2.0 zlib/1.2.7
Release-Date: 2023-12-06
Protocols: dict file ftp ftps gopher gophers http https imap imaps mqtt pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
Features: alt-svc AsynchDNS HSTS HTTPS-proxy Largefile libz NTLM SSL threadsafe TLS-SRP UnixSockets

$ which curl
~/opt/bin/curl

```
  



<h2 id="aSetup_gittext">gittextのインストール</h2>  
  
[目次へ戻る](#aMokuji)  
  

作業フォルダに移動し、gittextをインストールします。gitのインストールに必要です。  
wgetでダウンロードするバージョンは以下で確認してください。  
  [gittext](https://ftp.gnu.org/pub/gnu/gettext/)  
  

```text
作業フォルダに移動
$ cd ~/_tmp

ダウンロード
$ wget [gittextのリンク]
$ tar xvfz [アーカイブ名]
$ cd [アーカイブ名]

v0.22.4の場合
$ wget https://ftp.gnu.org/pub/gnu/gettext/gettext-0.22.4.tar.gz
$ tar xvfz gettext-0.22.4.tar.gz
$ cd gettext-0.22.4

ビルド＆インストール
###$ ./configure --prefix=${HOME}/opt/gettext
$ ./configure --prefix=${PREFIX}/gettext

$ make
$ make install

```
  





wget https://download.redis.io/redis-stable.tar.gz








<h2 id="aSetup_git">gitのインストール</h2>  
  
[目次へ戻る](#aMokuji)  
  

作業フォルダに移動し、gitをインストールします。  
wgetでダウンロードするバージョンは以下で確認してください。  
  [git](https://mirrors.edge.kernel.org/pub/software/scm/git/)  
  

```text
作業フォルダに移動
$ cd ~/_tmp

ダウンロード
$ wget [gitのリンク]
$ tar xvfz [アーカイブ名]
$ cd [アーカイブ名]

v2.43.0の場合
$ wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.43.0.tar.gz
$ tar xvfz git-2.43.0.tar.gz
$ cd git-2.43.0

ビルド＆インストール
$ ./configure --prefix=${PREFIX} --with-openssl=${PREFIX} --with-curl=${PREFIX}

$ make all
$ make test
$ make install
$ cd ~

gitのエイリアス変更
$ alias git='${PREFIX}/bin/git'

インストールの正常確認

$ git --version
git version 2.43.0

$ which git
alias git='${PREFIX}/bin/git'

$ cd ~

```
  



<h2 id="aSetup_homebrew">homebrewのインストール</h2>  
  
[目次へ戻る](#aMokuji)  
  
homebrewをインストールします。  
  
```text

PKGconfigの確認
$ find ~/opt -name pkgconfig
/opt/lib64/pkgconfig
/opt/lib/pkgconfig

cloneの作成
$ cd .homebrew
###$ git clone https://github.com/Homebrew/brew.git .

###mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew


$ curl -L 'https://github.com/Homebrew/brew/tarball/master' -o 'homebrew_zip'
$ tar zxvf homebrew_zip --strip-components 1


### PATH=${PATH}:${HOME}/bin
PATH=/usr/bin:${HOME}/opt/bin:${HOME}/opt/gettext/bin
PREFIX=${HOME}/opt

export HOMEBREW_DEVELOPER=1
export HOMEBREW_FORCE_BREWED_CURL=1
export HOMEBREW_CURL_PATH=${HOME}/opt/bin/curl
export HOMEBREW_GIT_PATH=${HOME}/opt/bin/git
export HOMEBREW_PATH=${PATH}


:wq  ←保存・終了コマンド

プロファイル再読み込み
$ source .bash_profile


homebrewのセットアップ
$ eval "$(bin/brew shellenv)"
$ brew update --force --quiet

$ chmod -R go-w "$(brew --prefix)/share/zsh"

```






















<h2 id="aSetup_python3">python3のインストール</h2>  
  
[目次へ戻る](#aMokuji)  
  

python3をインストールします。  
wgetでダウンロードするバージョンは以下で確認してください。  
  [python3](https://www.python.org/downloads/source/)  
  

```text
作業フォルダに移動
$ cd ~/_tmp

ダウンロード
$ wget [python3のリンク]
$ tar xvfz [アーカイブ名]
$ cd [アーカイブ名]

v3.12.1の場合
$ wget https://www.python.org/ftp/python/3.12.1/Python-3.12.1.tar.xz
$ tar xJf Python-3.12.1.tar.xz
$ cd Python-3.12.1

ビルド＆インストール

参考
./configure --enable-optimizations --with-openssl-rpath=no --with-openssl=$HOME/openssl-3.0.7 OPENSSL_LDFLAGS=-L$HOME/openssl-3.0.7 OPENSSL_LIBS=-l$HOME/openssl-3.0.7/ssl OPENSSL_INCLUDES=-I$HOME/openssl-3.0.7

./configure --prefix=/usr/local/python380 --with-ensurepip --enable-optimizations --with-openssl="/usr/local/openssl-1.1.1d"

OPENSSL_INCLUDES=-I/usr/local/openssl-1.1.1d/include    インクルーファイル
OPENSSL_LIBS=-lssl -lcrypto                             リンクしたいライブラリ
OPENSSL_LDFLAGS=-L/usr/local/openssl-1.1.1d/lib         ライブラリを探すパス


export LDFLAGS="-L${HOME}/.linuxbrew/opt/binutils/lib"
export CPPFLAGS="-I${HOME}/.linuxbrew/opt/binutils/include"

export CFLAGS=-fPIC
export LD_LIBRARY_PATH=${HOME}/opt/ssl/lib64/






$ ./configure --enable-optimizations --with-ensurepip --with-openssl=${HOME}/opt/ssl --prefix=${HOME}/opt/python3

$ ./configure --enable-optimizations --with-ensurepip --with-openssl=${HOME}/opt/ssl --prefix=${HOME}/opt/python3 OPENSSL_INCLUDES=-I${HOME}/opt/ssl/include OPENSSL_LIBS="-lssl -lcrapto" OPENSSL_LDFLAGS=-L${HOME}/opt/ssl/lib64

インクルーファイル
OPENSSL_INCLUDES=-I${HOME}/opt/ssl/include

リンクしたいライブラリ
OPENSSL_LIBS="-lssl -lcrypto"

ライブラリを探すパス
OPENSSL_LDFLAGS=-L${HOME}/opt/ssl/lib64







vi Mosules/Setup

# OpenSSL bindings
_ssl _ssl.c $(OPENSSL_INCLUDES) $(OPENSSL_LDFLAGS) $(OPENSSL_LIBS)
_hashlib _hashopenssl.c $(OPENSSL_INCLUDES) $(OPENSSL_LDFLAGS) -lcrypto







Rebuilding with profile guided optimizations:
rm -f profile-clean-stamp
make build_all CFLAGS_NODIST=" -fprofile-use -fprofile-correction" LDFLAGS_NODIST=""
make[1]: ディレクトリ `/home/koreislabo/_tmp/Python-3.12.1' に入ります
The following modules are *disabled* in configure script:
_sqlite3

The necessary bits to build these optional modules were not found:
_bz2                  _ctypes               _ctypes_test
_curses               _curses_panel         _hashlib
_ssl                  _tkinter              _uuid
readline
To find the necessary bits, look in configure.ac and config.log.

Could not build the ssl module!
Python requires a OpenSSL 1.1.1 or newer

Checked 111 modules (31 built-in, 68 shared, 1 n/a on linux-x86_64, 1 disabled, 10 missing, 0 failed on import)
make[1]: ディレクトリ `/home/koreislabo/_tmp/Python-3.12.1' から出ます




CONFIGURE_CFLAGS=       -fPIC
PY_CORE_LDFLAGS=$(PY_LDFLAGS) $(PY_LDFLAGS_NODIST)
CONFIGURE_LDFLAGS=

MODULE__CRYPT_LDFLAGS=-lcrypt
MODULE_AUDIOOP_LDFLAGS=-lm
LIBS=           -lpthread -ldl  -lutil




$ yum info gcc

インストール済みパッケージ
名前                : gcc
アーキテクチャー    : x86_64
バージョン          : 4.8.5
リリース            : 44.el7
容量                : 37 M
リポジトリー        : installed
提供元リポジトリー  : base
要約                : Various compilers (C, C++, Objective-C, Java, ...)
URL                 : http://gcc.gnu.org
ライセンス          : GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD
説明                : The gcc package contains the GNU Compiler Collection version 4.8.
                    : You'll need this package in order to compile C code.




opensslライブラリへのシンボリックリンクを作成する
$ mkdir -p Modules/openssl
$ pushd Modules
$ ln -s ~/opt/ssl/include/openssl/evp.h evp.h

$ mkdir -p Include/openssl
$ pushd Include/openssl
$ ln -s ~/opt/ssl/include/openssl/evp.h evp.h



$ popd
$ cd ~




$ make
$ make install

python3のエイリアス変更（pythonの切り替え）
$ alias python3='${HOME}/opt/python3/bin/python3'
$ alias pip3='${HOME}/opt/python3/bin/pip3'

インストールの正常確認
$ python3 -V
Python 3.12.1
```
  





  
> [参考記事](https://yururi-do.com/install-python-pipenv-with-homebrew-on-xserver/)  
  











* 7.作業フォルダを削除します。  
  メンテのため削除しなくてもよいです。  
  
```text
削除コマンド
$ rm -rf ~/_tmp
```
  





<h1>没操作</h1>  
  
[目次へ戻る](#aMokuji)  
  








<h2 id="aSetup_libpsl">libpslのインストール</h2>  
  
[目次へ戻る](#aMokuji)  
  

```text
中間証明書 ca-bundle.crt
/usr/share/doc/perl-Crypt-SSLeay-0.64/ca-bundle.crt

$ openssl x509 -in /usr/share/doc/perl-Crypt-SSLeay-0.64/ca-bundle.crt -text

Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
        Signature Algorithm: sha1WithRSAEncryption
        Issuer: CN=ACCVRAIZ1, OU=PKIACCV, O=ACCV, C=ES
        Validity
            Not Before: May  5 09:37:37 2011 GMT
            Not After : Dec 31 09:37:37 2030 GMT
        Subject: CN=ACCVRAIZ1, OU=PKIACCV, O=ACCV, C=ES
        Subject Public Key Info:


＜libpslオプション＞

libpslライブラリを作成する

wget https://github.com/rockdaboot/libpsl/releases/download/0.21.5/libpsl-0.21.5.tar.gz

unzip master.zip

$ ./configure --prefix=${PREFIX}

$ make
$ make install

prefix = /usr/local  デフォルト
pdfdir = ${docdir}
exec_prefix = ${prefix}

pkgpyexecdir = ${pyexecdir}/libpsl
pkgpythondir = ${pythondir}/libpsl

datadir = ${datarootdir}
includedir = ${prefix}/include
libdir = ${exec_prefix}/lib

pkgconfigdir = $(libdir)/pkgconfig
libdir = ${exec_prefix}/lib
exec_prefix = ${prefix}

```
  






<h2 id="aSetup_pythonVirtual">pythonの仮想環境の構築</h2>  
  
[目次へ戻る](#aMokuji)  
  
pip3を使えるよう、python仮想環境を構築します。  
  


<h3>python仮想環境の構築</h3>  
  
```text
仮想環境フォルダの作成
$ cd
$ cd python_venv
$ pwd
[HOME]/python_venv

python仮想環境の構築
$ python3.6 -m venv --without-pip [仮想環境名]

仮想環境名 python36v の場合
$ python3.6 -m venv --without-pip python36v


仮想環境を有効化する
$ source [仮想環境名]/bin/activate

仮想環境名 python36v の場合
$ source python36v/bin/activate

ターミナルモードになればOK
(python36v) [ユーザ名 python_venv]$ python -V
Python 3.6.8

```
  


<h3>pipをインストール</h3>  
  
pipをインストールするためのget-pip.pyをダウンロードします。  
  [ダウンロード先:bootstrap](https://bootstrap.pypa.io/pip/)  

```text
curlはサーバのものを使用する
$ curl -V
curl 7.29.0 (x86_64-redhat-linux-gnu) libcurl/7.29.0 NSS/3.53.1 zlib/1.2.7 libidn/1.28 libssh2/1.8.0
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp scp sftp smtp smtps telnet tftp
Features: AsynchDNS GSS-Negotiate IDN IPv6 Largefile NTLM NTLM_WB SSL libz unix-sockets

curlでダウンロードする
$ curl -o [ダウンロードURL]

pip3.6の場合
$ curl -O https://bootstrap.pypa.io/pip/3.6/get-pip.py


$ curl -O https://bootstrap.pypa.io/virtualenv/3.9/virtualenv.pyz


pipのアップデート(python経由)
$ python get-pip.py

$ pip -V
pip 21.3.1 from [HOME]/python_venv/python36v/lib64/python3.6/site-packages/pip (python 3.6)

$ which pip
~/python_venv/python36v/bin/pip

$ pip list
Package    Version
---------- -------
pip        21.3.1
setuptools 59.6.0
wheel      0.37.1

pipが使えるようになりました

```
  


<h3>仮想環境の無効化</h3>  
  
```text
$ deactivate

$ python -V
Python 2.7.5

```
  


<h3>ログイン時に仮想環境を実行するようにする</h3>  
  
```text
$ cd
$ vi .bash_profile

以下を追加
source ./python_venv/python36v/bin/activate

:wq  ←保存・終了コマンド

プロファイル再読み込み
$ source .bash_profile

ターミナルモードになればOK
(python36v) [ユーザ名 python_venv]$ python -V
Python 3.6.8

```
  



<h2 id="aSetup_Aplication">仮想環境にアプリのインストール</h2>  
  
[目次へ戻る](#aMokuji)  
  

* openssl
* git


```text
pip install pyOpenSSL




```










<h2 id="aSetup_python3">python3のインストール</h2>  
  
[目次へ戻る](#aMokuji)  
  

python3をインストールします。  
wgetでダウンロードするバージョンは以下で確認してください。  
  [python3](https://www.python.org/downloads/source/)  
  

```text
作業フォルダに移動
$ cd ~/_tmp

ダウンロード
$ wget [python3のリンク]
$ tar xvfz [アーカイブ名]
$ cd [アーカイブ名]

v3.12.1の場合
$ wget https://www.python.org/ftp/python/3.12.1/Python-3.12.1.tar.xz
$ tar xJf Python-3.12.1.tar.xz
$ cd Python-3.12.1

ビルド＆インストール





$ make all
$ make test
$ make install



python3のエイリアス変更（pythonの切り替え）
$ alias python3='${HOME}/opt/python3/bin/python3'
$ alias pip3='${HOME}/opt/python3/bin/pip3'

インストールの正常確認
$ python3 -V
Python 3.12.1





```
  


<h3>gitオプションメモ</h3>  

```text

PATH
~/opt/bin/openssl
~/opt/lib64/libssl.so.3
~/opt/lib64/libcrypto.so.3
~/opt/lib64/pkgconfig
~/opt/lib/libssl.so.3     ←シンボリックリンク
~/opt/lib/libcrypto.so.3  ←シンボリックリンク
~/opt/lib/pkgconfig
~/opt/include
~/opt/*.*      証明書類


環境変数
${HOME}    ホームパス  /user/local ？
${PREFIX}  ${HOME}/opt


$ ./configure --prefix=${PREFIX}/python --with-openssl=${PREFIX}/openssl --with-curl=${PREFIX}/curl



./configure --enable-optimizations --with-ensurepip --with-openssl=${PREFIX}/openssl --prefix=${PREFIX}/python



＜python3オプション＞

実行ファイルを納めるフォルダ（bin）、ライブラリフォルダの最上位フォルダ
--prefix=${PREFIX}

OpenSSLがインストールされている最上位フォルダ
--with-openssl=${PREFIX}

curlがインストールされている最上位フォルダ
--with-curl=${PREFIX}







参考
./configure --enable-optimizations --with-openssl-rpath=no --with-openssl=$HOME/openssl-3.0.7 OPENSSL_LDFLAGS=-L$HOME/openssl-3.0.7 OPENSSL_LIBS=-l$HOME/openssl-3.0.7/ssl OPENSSL_INCLUDES=-I$HOME/openssl-3.0.7

./configure --prefix=/usr/local/python380 --with-ensurepip --enable-optimizations --with-openssl="/usr/local/openssl-1.1.1d"

OPENSSL_INCLUDES=-I/usr/local/openssl-1.1.1d/include    インクルーファイル
OPENSSL_LIBS=-lssl -lcrypto                             リンクしたいライブラリ
OPENSSL_LDFLAGS=-L/usr/local/openssl-1.1.1d/lib         ライブラリを探すパス


export LDFLAGS="-L${HOME}/.linuxbrew/opt/binutils/lib"
export CPPFLAGS="-I${HOME}/.linuxbrew/opt/binutils/include"

export CFLAGS=-fPIC
export LD_LIBRARY_PATH=${HOME}/opt/ssl/lib64/






$ ./configure --enable-optimizations --with-ensurepip --with-openssl=${HOME}/opt/ssl --prefix=${HOME}/opt/python3

$ ./configure --enable-optimizations --with-ensurepip --with-openssl=${HOME}/opt/ssl --prefix=${HOME}/opt/python3 OPENSSL_INCLUDES=-I${HOME}/opt/ssl/include OPENSSL_LIBS="-lssl -lcrapto" OPENSSL_LDFLAGS=-L${HOME}/opt/ssl/lib64

インクルーファイル
OPENSSL_INCLUDES=-I${HOME}/opt/ssl/include

リンクしたいライブラリ
OPENSSL_LIBS="-lssl -lcrypto"

ライブラリを探すパス
OPENSSL_LDFLAGS=-L${HOME}/opt/ssl/lib64







vi Mosules/Setup

# OpenSSL bindings
_ssl _ssl.c $(OPENSSL_INCLUDES) $(OPENSSL_LDFLAGS) $(OPENSSL_LIBS)
_hashlib _hashopenssl.c $(OPENSSL_INCLUDES) $(OPENSSL_LDFLAGS) -lcrypto







Rebuilding with profile guided optimizations:
rm -f profile-clean-stamp
make build_all CFLAGS_NODIST=" -fprofile-use -fprofile-correction" LDFLAGS_NODIST=""
make[1]: ディレクトリ `/home/koreislabo/_tmp/Python-3.12.1' に入ります
The following modules are *disabled* in configure script:
_sqlite3

The necessary bits to build these optional modules were not found:
_bz2                  _ctypes               _ctypes_test
_curses               _curses_panel         _hashlib
_ssl                  _tkinter              _uuid
readline
To find the necessary bits, look in configure.ac and config.log.

Could not build the ssl module!
Python requires a OpenSSL 1.1.1 or newer

Checked 111 modules (31 built-in, 68 shared, 1 n/a on linux-x86_64, 1 disabled, 10 missing, 0 failed on import)
make[1]: ディレクトリ `/home/koreislabo/_tmp/Python-3.12.1' から出ます




CONFIGURE_CFLAGS=       -fPIC
PY_CORE_LDFLAGS=$(PY_LDFLAGS) $(PY_LDFLAGS_NODIST)
CONFIGURE_LDFLAGS=

MODULE__CRYPT_LDFLAGS=-lcrypt
MODULE_AUDIOOP_LDFLAGS=-lm
LIBS=           -lpthread -ldl  -lutil



./configure --enable-loadable-sqlite-extensions --enable-optimizations




$ yum info gcc

インストール済みパッケージ
名前                : gcc
アーキテクチャー    : x86_64
バージョン          : 4.8.5
リリース            : 44.el7
容量                : 37 M
リポジトリー        : installed
提供元リポジトリー  : base
要約                : Various compilers (C, C++, Objective-C, Java, ...)
URL                 : http://gcc.gnu.org
ライセンス          : GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD
説明                : The gcc package contains the GNU Compiler Collection version 4.8.
                    : You'll need this package in order to compile C code.




opensslライブラリへのシンボリックリンクを作成する
$ mkdir -p Modules/openssl
$ pushd Modules
$ ln -s ~/opt/ssl/include/openssl/evp.h evp.h

$ mkdir -p Include/openssl
$ pushd Include/openssl
$ ln -s ~/opt/ssl/include/openssl/evp.h evp.h









＜OpenSSLオプション＞

--enable-optimizations
--with-ensurepip

OpenSSLの設定ファイルおよび、デフォルトの証明書やKey Storeの保存先ディレクトリ
--prefix=${PREFIX}/openssl

OpenSSLのインストールディレクトリ
--with-openssl=${PREFIX}

OpenSSLのランタイムライブラリのディレクトリ
--with-openssl-rpath=auto
  "no" (デフォルト): rpathを指定しない
  "auto": --with-opensslで指定されたライブラリとpkg-configから、自動的にrpathを設定する
  "DIR": 明示的にrpathを指定する

インクルードファイル
OPENSSL_INCLUDES=-I$HOME/openssl-3.0.7

リンクしたいライブラリ
OPENSSL_LIBS=-l$HOME/openssl-3.0.7/ssl

ライブラリを探すパス
OPENSSL_LDFLAGS=-L$HOME/openssl-3.0.7


OPENSSL_INCLUDES=-I/usr/local/openssl-1.1.1d/include    インクルーファイル
OPENSSL_LIBS=-lssl -lcrypto                             リンクしたいライブラリ
OPENSSL_LDFLAGS=-L/usr/local/openssl-1.1.1d/lib         ライブラリを探すパス







--enable-loadable-sqlite-extensions






```
  







  
> [参考記事](https://yururi-do.com/install-python-pipenv-with-homebrew-on-xserver/)  
  









***
[[トップへ戻る]](/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
