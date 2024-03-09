# Galaxy Fleet ～セットアップ手順書～
  
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
* [Homebrewのインストール](#aSetup_homebrew)

* [python3のインストール](#aSetup_python3)
* [python3ライブラリのインストール](#aSetup_python3lib)







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
Pythonの拡張ライブラリを使用するため、仮想環境Homebrewをインストールし、その上に環境を整えます。  
インストールするアプリケーションは次の通りです。  

* openssl  
* curl  
* gittext  
* git  

* Homebrew  
* python3  
* MySQL  
* Teraterm  

> 本仕様ではnginx、fastCGI、TeraTermはインストール済みの前提です。  
> TeraTermはX Serverを構築する際にインストールしてると思いますが、  
> 念のため以下からダウンロードできます。  
> 
> [Tera Term(窓の社)](https://forest.watch.impress.co.jp/library/software/utf8teraterm/)  
> 
  





<h1 id="aSetup_homebrew">Homebrewのインストール</h1>  
  
  [目次へ戻る](#aMokuji)  
  

Galaxy Fleetではpython3のライブラリを利用しますが、X Serverのレンタルサーバの場合権限がないため、そのままの環境では利用できません。  
そこで、自前のライブラリ環境を整えた上でインストールをおこないます。  
**X Serverのレンタルサーバ以外はこの手順はスキップできます。**  
  

## ディレクトリ構成（イメージ）

```text
home
|-- _tmp
|-- opt
|   |-- curl
|   |-- gettext
|   |-- git
|   `-- ssl
`-- .linuxbrew
    |-- Homebrew
    |-- bin
    `-- (その他インストール済みライブラリ)
```
  

* 1.環境変数を変更します。  

```text
プロファイルをviエディタで開く
$ vi .bash_profile

export PATH    に上書きする

export PATH=/usr/bin:${HOME}/opt/curl/bin:${HOME}/opt/git/bin:${HOME}/opt/gettext/bin:${HOME}/opt/ssl/bin:${HOME}/opt/python3/bin

export CFLAGS=-fPIC
export LD_LIBRARY_PATH=${HOME}/opt/ssl/lib64/

:wq  ←保存・終了コマンド

プロファイル再読み込み
$ source .bash_profile

```

* 2.ディレクトリを作成します。  

```text
mkdirで作成していく
$ mkdir -p ~/opt/curl
$ mkdir -p ~/opt/git
$ mkdir -p ~/opt/gettext
$ mkdir -p ~/opt/ssl
$ mkdir -p ~/opt/python3
$ mkdir ~/_tmp

```

* 3.作業フォルダに移動し、opensslをインストールします。gitのインストールに必要です。  
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

ビルド＆インストール
$ ./config shared --prefix=${HOME}/opt/ssl --openssldir=${HOME}/opt/ssl



$ ./config shared --prefix=${HOME}/opt/ssl --openssldir=${HOME}/opt/ssl '-Wl,-rpath,$(LIBRPATH)'


$ make
$ make install
$ cd ~

opensslのエイリアス変更（pythonの切り替え）
$ alias openssl='${HOME}/opt/ssl/bin/openssl'

インストールの正常確認
$ openssl version
OpenSSL 3.2.0

$ which openssl
~/opt/ssl/bin/openssl
```

**もしエラーがでたら？**  
sslのバージョンによっては使用するライブラリが異なるため、ライブラリパスが見えない場合があります。  
その場合、ライブラリパスを通してください。  

```text
ライブラリパスの確認
$ find ~/opt -name libssl.so.3
/opt/ssl/lib64/libssl.so.3

ライブラリの依存関係の確認
$ ldd ~/opt/ssl/bin/openssl

ホームパスの確認
$ echo $HOME
[ホームパス] ルートであればOK

プロファイルをviエディタで開く
$ vi .bash_profile

export LD_LIBRARY_PATH=${HOME}/opt/ssl/lib64/

:wq  ←保存・終了コマンド

プロファイルを読み込む
$ source ~/.bash_profile

$ openssl version
OpenSSL 3.2.0
```
  

* 4.作業フォルダに移動し、curlをインストールします。gitのインストールに必要です。  
  wgetでダウンロードするバージョンは以下で確認してください。  
  参考記事だと7.65.3で紹介されてます。  
  v7系でないとHomebrewから認識しないみたいです。この手順ではHomebrewで推奨しているv7.41.0で記載します。  
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
$ ./configure --with-openssl=${HOME}/opt/ssl --enable-libcurl-option --prefix=${HOME}/opt/curl --enable-shared
$ make
$ make install

ライブラリ libssl、libcrypto の設定
$ ls ~/opt/ssl/lib64
cmake      libcrypto.a   libcrypto.so.3  libssl.so    ossl-modules
engines-3  libcrypto.so  libssl.a        libssl.so.3  pkgconfig

$ pushd ~/opt/curl/lib
$ ln -s ../../ssl/lib/libssl.so.3 libssl.so.3
$ ln -s ../../ssl/lib/libcrypto.so.3 libcrypto.so.3

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
~/opt/ssl/bin/curl
```
  

* 5.作業フォルダに移動し、gittextをインストールします。gitのインストールに必要です。  
  wgetでダウンロードするバージョンは以下で確認してください。  
  参考記事だと0.21で紹介されてます。  
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
$ ./configure --prefix=${HOME}/opt/gettext
$ make
$ make install
```
  

* 6.作業フォルダに移動し、gitをインストールします。  
  wgetでダウンロードするバージョンは以下で確認してください。  
  参考記事だと2.17.0で紹介されてます。  
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
$ ./configure --prefix=${HOME}/opt/git --with-openssl=${HOME}/opt/ssl --with-curl=${HOME}/opt/curl
$ make
$ make install
$ cd ~

インストールの正常確認

$ git --version
git version 2.43.0

$ which git
~/opt/git/bin/git

$ cd ~
```

* 7.作業フォルダを削除します。  

```text
削除コマンド
$ rm -rf ~/_tmp
```
  

* 8.python3をインストールします。  
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

opensslライブラリへのシンボリックリンクを作成する
$ mkdir -p Modules/openssl
$ pushd Modules
$ ln -s ~/opt/ssl/include/openssl/evp.h evp.h

$ mkdir -p Include/openssl
$ pushd Include/openssl
$ ln -s ~/opt/ssl/include/openssl/evp.h evp.h



$ popd
$ cd ~




ビルド＆インストール
$ ./configure --prefix=${HOME}/opt/python3


$ ./configure --with-openssl=${HOME}/opt/ssl --prefix=${HOME}/opt/python3

$ ./configure --enable-optimizations --with-openssl=${HOME}/opt/ssl --with-openssl-rpath=auto --prefix=${HOME}/opt/python3 OPENSSL_LDFLAGS=${HOME}/_tmp/openssl-3.2.0 OPENSSL_INCLUDES=${HOME}/_tmp/openssl-3.2.0/include OPENSSL_LIBS=${HOME}/opt/ssl


OPENSSL_LDFLAGS=${HOME}/_tmp/openssl-3.2.0
OPENSSL_INCLUDES=${HOME}/_tmp/openssl-3.2.0/include
OPENSSL_LIBS=${HOME}/opt/ssl/lib64



OPENSSL_LDFLAGS=${HOME}/opt/ssl
OPENSSL_INCLUDES=${HOME}/opt/ssl/include
OPENSSL_LIBS=${HOME}/opt/ssl/lib64



./configure --enable-optimizations --with-openssl-rpath=no --with-openssl=$HOME/openssl-3.0.7 OPENSSL_LDFLAGS=-L$HOME/openssl-3.0.7 OPENSSL_LIBS=-l$HOME/openssl-3.0.7/ssl OPENSSL_INCLUDES=-I$HOME/openssl-3.0.7







$ make
$ make install

python3のエイリアス変更（pythonの切り替え）
$ alias python3='${HOME}/opt/python3/bin/python3'
$ alias pip3='${HOME}/opt/python3/bin/pip3'

インストールの正常確認
$ python3 -V
Python 3.12.1
```



$ alias openssl='${HOME}/opt/ssl/bin/openssl'



vi Mosules/Setup

_ssl _ssl.c



```text
# OpenSSL bindings
#_ssl _ssl.c $(OPENSSL_INCLUDES) $(OPENSSL_LDFLAGS) $(OPENSSL_LIBS)
#_hashlib _hashopenssl.c $(OPENSSL_INCLUDES) $(OPENSSL_LDFLAGS) -lcrypto

### OPENSSL_ANK=/home/koreislabo/_tmp/openssl-3.2.0
### OPENSSL_ANK=/home/koreislabo/_tmp/openssl-1.1.1w

# To statically link OpenSSL:
_ssl _ssl.c $(OPENSSL_INCLUDES) $(OPENSSL_LDFLAGS) \
### _ssl _ssl.c $(OPENSSL_ANK) $(OPENSSL_ANK)/include \
    -l:libssl.a -Wl,--exclude-libs,libssl.a \
    -l:libcrypto.a -Wl,--exclude-libs,libcrypto.a
_hashlib _hashopenssl.c $(OPENSSL_INCLUDES) $(OPENSSL_LDFLAGS) \
### _hashlib _hashopenssl.c $(OPENSSL_ANK) $ $(OPENSSL_ANK)/include \
    -l:libcrypto.a -Wl,--exclude-libs,libcrypto.a


```



Modules/_hashlib$(EXT_SUFFIX):  Modules/_hashopenssl.o; $(BLDSHARED)  Modules/_hashopenssl.o  $(OPENSSL_LDFLAGS) -lcrypto  -o Modules/_hashlib$(EXT_SUFFIX)


dule.o  Modules/errnomodule.o  Modules/_io/_iomodule.o Modules/_io/iobase.o Modules/_io/fileio.o Modules/_io/bytesio.o Modules/_io/bufferedio.o Modules/_io/textio.o Modules/_io/stringio.o  Modules/itertoolsmodule.o  Modules/_sre/sre.o  Modules/_threadmodule.o  Modules/timemodule.o  Modules/_typingmodule.o  Modules/_weakref.o  Modules/_abc.o  Modules/_functoolsmodule.o  Modules/_localemodule.o  Modules/_operator.o  Modules/_stat.o  Modules/symtablemodule.o  Modules/pwdmodule.o  Modules/_ssl.o  Modules/_hashopenssl.o -lpthread -ldl  -lutil                            -lcrypto  -lm
/usr/bin/ld: -lcrypto が見つかりません
collect2: エラー: ld はステータス 1 で終了しました
make[2]: *** [Programs/_freeze_module] エラー 1







[koreislabo@sv14429 Python-3.12.1]$ ls ~/_tmp/openssl-1.1.1w
ACKNOWLEDGEMENTS  LICENSE        NOTES.WIN      config.com     fuzz              libssl.map     ssl
AUTHORS           Makefile       README         configdata.pm  include           libssl.pc      test
CHANGES           NEWS           README.ENGINE  crypto         libcrypto.a       libssl.so      tools
CONTRIBUTING      NOTES.ANDROID  README.FIPS    demos          libcrypto.map     libssl.so.1.1  util
Configurations    NOTES.DJGPP    VMS            doc            libcrypto.pc      ms             wycheproof
Configure         NOTES.PERL     apps           e_os.h         libcrypto.so      openssl.pc
FAQ               NOTES.UNIX     build.info     engines        libcrypto.so.1.1  os-dep
INSTALL           NOTES.VMS      config         external       libssl.a          pod2htmd.tmp



checking for include/openssl/ssl.h in /home/koreislabo/opt/ssl... yes
checking whether compiling and linking against OpenSSL works... no
checking for --with-openssl-rpath...
checking whether OpenSSL provides required ssl module APIs... no
checking whether OpenSSL provides required hashlib module APIs... no



MODULE__CRYPT_LDFLAGS=-lcrypt


/usr/bin/ls



  
> [参考記事](https://yururi-do.com/install-python-pipenv-with-homebrew-on-xserver/)  
  





<h1 id="aSetup_python3">python3のインストール</h1>  
  
  [目次へ戻る](#aMokuji)  
  

python3をインストールします。  
> なお、X Server、Cygwin環境ではこの時点でインストール済です。  
> 念のためインストール済か確認するので、手順1のみ実行してください。  
  

* 1.pythonがインストールされてるか確認します。  
  バージョン番号が表示されなければ、手順2以降を継続してください。  

```text
バージョン表示が出ればOKです
$ python3 -V
Python 3.12.1 ←バージョン番号
```

* 2.python公式からpython3のソースコードをダウンロードします。  

```text
バージョン3.12.1の場合
$ wget https://www.python.org/ftp/python/3.12.1/Python-3.12.1.tar.xz

ソースの展開
$ tar xvzf [アーカイブ名]
```

* 3.ビルドします。  

```text
リファレンスのコマンドを実行します
$ ./configure --with-pydebug && make -j
```

* 4.pythonが正常にインストールされたか確認します。  
  バージョン番号が表示されなければ、手順2以降を継続してください。  

```text
バージョン表示が出ればOKです
$ python3 -V
Python 3.12.1 ←バージョン番号
```
  





<h1 id="aSetup_python3lib">python3ライブラリのインストール</h1>  
  
  [目次へ戻る](#aMokuji)  
  

python3ライブラリをインストールし、Galaxy Fleet環境で必要な機能を拡張します。  
なお、X ServerとCygwinとで利用するライブラリが異なります。  


<h2>X Serverの場合</h2>
|ライブラリ  |備考  |
|:--|:--|
| flask               | ?          |


<h2>Cygwinの場合</h2>
|ライブラリ  |備考  |
|:--|:--|
| requests            | ?          |
| requests_oauthlib   | ?          |
| python-dateutil     | ?          |
| psycopg2            | ?          |
| flask               | ?          |
| apt-cyg             |apt-getのcygwin版      |
| procps              |システムコマンド用。   |


* 1.インストールされているライブラリを確認します。  

```text
phton3のライブラリ一覧を表示します
$ pip3 list



```



* 2.pip3でライブラリをインストールします。  
```
$ pip3 install flask requests requests_oauthlib python-dateutil psycopg2
～中略～

$ pip3 list
～以下省略～
```

* 3.apt-cygと、apt-cygを使ってprocpsライブラリをインストールします。  
```
wgetでapt-cygを取得する
$ cd 
$ wget https://raw.githubusercontent.com/transcode-open/apt-cyg/master/apt-cyg
$ chmod 755 apt-cyg
$ mv apt-cyg /usr/local/bin

システム系コマンドのために
$ apt-cyg install procps
```



## エンコードの確認と設定 <a name="aSetup_endode"></a>
念のためデフォルトエンコードを確認しておきます。  
  
Galaxy FleetはOSのエンコードが uft-8 でないと動作しません。  
Cygwinはデフォルトでutf-8なので問題ないはずです。  

* 1.コマンドを入力します。  
```
$ python3
>>> import sys
>>> sys.getdefaultencoding()
'utf-8'

ここでuft-8がでればOKです。

以下はpython3コンソールの終了コマンドです。
>>> exit
[ctrl+D] ※キー入力で終了
```
  utf-8であれば、ここでスキップできます。  

* 2.もしutf-8でなかったらプロファイルにエンコードを追加します。  
```
viエディタを起動します。
$ vi /home/[Cygwinユーザ]/.bash_profile

ファイルの最後に以下を追加します。
export LANG=ja_JP.UTF-8

viエディタを終了します。
:wq
```

* 3.追加したら以下を実行して、プロファイルを読み込ませます。  
```
$ source ~/.bash_profile
```

* 4. 再度1項を実行して、utf-8に変更されたか確認します。  



## uwsgiのインストール <a name="aSetup_uwsgi"></a>
uwsgiをインストールします。インストールにはpython3を使うみたいです。  
uwsgiはgithubに置いてあるので、念のためクローンを取得しておくことをおすすめします。  

* 1.本家から自分のgithubにフォークします。  
  [uwsgi本家github](https://github.com/unbit/uwsgi/)  
  
  ここで「fork」を押します。  

* 2.github desktopを起動し、ローカルにクローンを作成します。  
  File -> Clone Repository  
  で、uwsgiを選択  
  Local Pathにクローン先のルートフォルダを指定。（ここ以下にクローンが作成される）  
  
  How are you planning...は、「For my own purposes」を選択します。  
  ※これは本家に影響するかの設定です。特に必要なければownを選択しておきます。  

* 3.githubでアーカイブURLを確認します。  
  本家が生きていれば本家からでいいと思います。  
  
  Code -> Tag でtar.gzを確認

* 4.gitからuwsgiをダウンロードしてセットアップします。  
```
$ cd 
$ cd work
$ wget https://github.com/unbit/uwsgi/archive/[リリースアーカイブ名]
$ tar xvzf [アーカイブ名]
$ cd uwsgi-[バージョン名]
$ python3 setup.py install
  ※アーカイブはリリースバージョンを指定します  
  ※コンパイルが動作するのでかなり時間がかかります  
```



## postgreSQLのインストール <a name="aSetup_postgresql"></a>
postgreSQLをインストールします。  
ここではpostgreSQL v15 で説明します。メジャーバージョンが異なると手順が変わる可能性がありますのでご留意ください。  
  
なお実行にはcygserverを使います。  
  
**既にpostgreSQLの環境ができている場合は、スキップできます。**  
**特に問題なければ既存のpostgreSQLを使っても問題ないと思います**  


### postgreSQLのセットアップ
postgreSQLをインストールします。  

* 1.ソースコードのURLを以下で確認します。  
  [postgresql HP](https://www.postgresql.org/download/)  
  .qz形式を選択します。  
```
$ cd 
$ cd work
$ wget [ソースコードのURL]
```

* 2.ソースコードをコンパイル、インストールします。  
```
$ tar -xvzf [アーカイブファイル名]
$ cd [解凍されたフォルダ]
$ mkdir make_dir
$ cd make_dir
$ ../configure --enable-nls --enable-thread-safety
$ make
$ make install
$ cd src/interfaces/libpq
$ make
$ make install
```

* 3. .bash_profileに環境変数を追加します。  
```
$ vi /home/[Cygwinユーザ]/.bash_profile

export PATH=/usr/local/pgsql/bin:/usr/local/pgsql/lib:$PATH
export PGHOST=localhost
export PGLIB=/usr/local/pgsql/lib
export PGDATA=/var/postgresql/data

:wq
```

* 4.追加したら以下を実行して、読み込ませます。  
```
source ~/.bashrc
source ~/.bash_profile
```


### cygserverの設定
postgreSQLの実行をサポートするため、cygserverを起動します。  

* 1.cygserverの設定をおこないます。  
```
/etc/cygserver.confの作成
$ cygserver-config
  Overwrite existing /etc/cygserver.conf file? (yes/no)  ←★yes
  ～～～
  Do you want to install cygserver as service?  ←★no 
```
  /etc 以下に cygserver.confができていることを確認します。  

* 2.cygserverを起動します。  
```
$ /usr/sbin/cygserver.exe &
  cygserver: Initialization complete.  Waiting for requests.
  ↑これがでればOK

プロセスができていることを確認します
$ jobs
  [1]+  Running                 /usr/sbin/cygserver.exe &
```

* 3.ipcs の状態も確認します。（念のため？）  
```
$ ipcs
Message Queues:
T     ID               KEY        MODE       OWNER    GROUP

Shared Memory:
T     ID               KEY        MODE       OWNER    GROUP

Semaphores:
T     ID               KEY        MODE       OWNER    GROUP
```


### postgreSQLの初期化
postgreSQLを初期化し、データを作りなおします。  
なお、既存でpostgreSQLを使ってる場合は、必要に応じてバックアップを取ってください。  

postgreSQLのマスターユーザとマスターデータベースを作成します。  
この操作でpostgreSQLのスーパーユーザ名は[postgres]になります。  
```
フォルダ削除
$ rm -rf /var/postgresql/data

インスタンスを生成します。  
$ initdb --no-locale -D /var/postgresql/data -U postgres -W

Enter new superuser password:  ←★postgresに設定するパスワードを入力

```


### postgreSQLの起動（非サービス起動）
postgreSQLのスクリプトを使ってpostgreSQLを起動します。  
この手順では、サービスは作成されません。  
  
* 1.posttgreSQLを起動します。  
```
$ /usr/local/pgsql/bin/pg_ctl -D /var/postgresql/data -l /var/log/postmaster.log start
  waiting for server to start.... done
  server started

```

* 2.postgreSQLが起動していることを確認します。
```
$ pg_ctl status
  pg_ctl: server is running (PID: xxxx)

postgreSQLのポートが開設されたことを確認します。
$ netstat -a -n | grep 5432
```

* 3.postgreSQLにログインできるか確認します。  
```

$ psql -l -U postgres -p 5432

～一覧がでる
[\]キーで終わる

$ psql postgres -U postgres -p 5432

postgres=# 

postgres=# \q

```
エラーがでなければOKです。  
以上で起動確認となります。  

**参考**  
サービス起動で起動する場合は、以下を実行します。  
```
$ postmaster -D /var/postgresql/data &
$ jobs
```


### ユーザの作成とセキュア設定
Galaxy Fleet用ユーザの作成、簡易的なパスワード認証をかけます。  
※可能であればpeerやmd5がおすすめです  
この操作でGalaxy Fleetのユーザ名、データベース名は[gyftdb]になります。  

* 1.Galaxy Fleetで使うユーザとデータベースを作成します。  
  ここではスーパーユーザー postgres で操作します。  
```
$ createuser gyftdb -U postgres -p 5432
$ createdb -O gyftdb gyftdb -U postgres -p 5432
```

* 2.スーパーユーザ[postgres]でログインする
```
$ psql postgres -U postgres -p 5432
```

* 3.Galaxy Fleet用ユーザ[gyftdb]にパスワードを設定する。
```
postgres=# alter role gyftdb with password '[DBパスワード]';  
postgres=# alter role gyftdb with login;  
postgres=# \q  
```

* 4.アクセス権限ファイルを編集します。  
```
$ vi /var/postgresql/data/pg_hba.conf

L95から以下のように設定する  trust→passwordへ

# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
###local   all             all                                     trust
local   all             all                                     password
# IPv4 local connections:
###host    all             all             127.0.0.1/32            trust
host    all             all             127.0.0.1/32            password
# IPv6 local connections:
###host    all             all             ::1/128                 trust
host    all             all             ::1/128                 password
# Allow replication connections from localhost, by a user with the
# replication privilege.
###local   replication     all                                     trust
###host    replication     all             127.0.0.1/32            trust
###host    replication     all             ::1/128                 trust

:wq
```

* 5.終わったらpg_sqlをリスタートします  
```
$ pg_ctl stop
$ pg_ctl start
  server started
$ pg_ctl status
  pg_ctl: server is running (PID: xxxx)
  /usr/local/pgsql/bin/postgres
```

* 6.ログインテストします。  
```
$ psql postgres -U postgres -p 5432
Password for user postgres:  ※スーパーユーザのパスワードを入力

postgres=# 
postgres=# \q

$ psql gyftdb -U gyftdb -p 5432
Password for user gyftdb:  ※gyftdbユーザのパスワードを入力

gyftdb=# 
gyftdb=# \q

ログインできればOKです。
```


### postgreSQLの停止
postgreSQLと、cygserverを停止します。  
両方止めないと次回の起動時に支障をきたすので、必ず2つ止まってることを確認してください。  

```
postgreSQLを停止します。
$ pg_ctl stop
$ pg_ctl status
  pg_ctl: no server running

cygserverを停止します。
$ /usr/sbin/cygserver --shutdown
  cygserver: Shutdown finished.
$ jobs
(何も表示されないこと)

ポートが解放されてることも確認します。
$ netstat -a -n | grep 5432
```



## Galaxy Fleetのリポジトリ設置 <a name="aSetup_repository"></a>
Galaxy Fleetの実行環境を、自分のサーバ内に作成します。  
gitでわたしのgithubからGalaxy Fleetソースコードのクローンを取得してください。  

* 1.gitの動作確認をします。  
```
$ git --version
git version [gitのバージョン]
```



▼▼▼








## SSL証明書の発行 <a name="aSetup_SSL"></a>
SSL証明書を発行します。  
  
SSLを使うには以下の証明書が必要です。  
* ルートCA証明書(クライアント用)
* 中間CA証明書
* サーバ証明書
これらがない場合、購入して入手するか、自己証明を発行します。  
以下は自己証明を発行する手順を示します。  
※証明書がある場合はスキップできます  

* 1.テキストエディタでopenssl.cnfのファイルを開いて、以下を編集します。  
    [cygwinのインストールフォルダ]/etc/pki/tls/openssl.cnf
```
L91 : default_days	  = 825

L150: countryName_default = JP
L155: stateOrProvinceName_default = XXXXXX  ★都道府県
L158: localityName_default        = XXXXXX  ★市町村
L161: 0.organizationName_default  = XXXXXX  ★組織名
※opensslのバージョンによって行が変わるようです
```

* 2.認証局の秘密鍵と、ルートCA証明書を作成します。  
```
$ mkdir /etc/pki/CA
$ chmod 700 /etc/pki/CA
$ cd /etc/pki/CA
$ openssl genrsa -des3 -out ca.key 2048
Enter pass phrase for ca.key:                         ★認証局のパス 適当に
Verifying - Enter pass phrase for ca.key:             ★認証局のパス 上と一緒

$ openssl req -x509 -new -nodes -key ca.key -sha256 -out ca.pem
Enter pass phrase for ca.key:                         ★認証局のパス 上と一緒
～省略～
Common Name (eg, your name or your server's hostname) []:  ★認証局の名前 適当に
                                                      ★それ以外は未入力
～省略～
```

* 3.クライアントに認証局の証明書をインストールします。  
Windows→設定で、「証明書」で検索。ユーザ証明書の管理を開く。  
信頼されたルート証明機関の上で右クリック、全てのタスク→インポート。  
現在のユーザ、ca.pemを選択、ルート証明機関を選択し、あとはOK。  

* 4.サーバ証明書を作成します。  
```
$ mkdir /etc/pki/Server
$ chmod 700 /etc/pki/Server
$ cd /etc/pki/Server
$ openssl genrsa -out server.key 2048
$ openssl req -new -key server.key -out server.csr
～省略～
Common Name (eg, your name or your server's hostname) []:  ★IPアドレスやホスト名 適当に
                                                      ★それ以外は未入力
～省略～

$ vi server.txt
---------
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names

[alt_names]
DNS.1 = localhost
---------\wq

$ openssl x509 -req -in server.csr -CA ../CA/ca.pem -CAkey ../CA/ca.key -CAcreateserial -out server.crt -sha256 -extfile server.txt
Enter pass phrase for ../CA/ca.key:                   ★認証局のパス

```


## Galaxy Fleetの設定 <a name="aSetup_galaxyfleet"></a>
nginxのパラメータをゲームサーバ用に設定します。  

* 1.nginxのnginx.configを調整します。  
    /etc/nginx/nginx.conf  
```
#user  nobody;
worker_processes auto;

#error_log  logs/error.log;
#error_log  logs/error.log  notice;
#error_log  logs/error.log  info;
error_log  /var/log/error.log;
error_log  /var/log/error.log  notice;
error_log  /var/log/error.log  info;

#pid        logs/nginx.pid;

worker_rlimit_nofile 64;
events {
### worker_connections 1024;
	worker_connections 64;
}


http {
    include       mime.types;
    default_type  application/octet-stream;

    #log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
    #                  '$status $body_bytes_sent "$http_referer" '
    #                  '"$http_user_agent" "$http_x_forwarded_for"';

    #access_log  logs/access.log  main;

    sendfile            on;
    tcp_nopush          on;
    tcp_nodelay         on;
    keepalive_timeout   65;
    types_hash_max_size 2048;

    include /var/galaxyfleet/galaxyfleet_data/nginx/*.conf;
    include /var/galaxyfleet/galaxyfleet_data/nginx/sites-enabled/*; 

###    server {
###        listen       80;
###        server_name  localhost;
###
###        #charset koi8-r;
###
###        #access_log  logs/host.access.log  main;
###
###        location / {
###            root   html;
###            index  index.html index.htm;
###        }
###
###        #error_page  404              /404.html;
###
###        # redirect server error pages to the static page /50x.html
###        #
###        error_page   500 502 503 504  /50x.html;
###        location = /50x.html {
###            root   html;
###        }

～省略～
    }
～省略～
}
```

* 2.Galaxy Fleetのセットアップスクリプトを実行します。  
```
$ cd
$ cd galaxyfleet
$ bash settup.sh

```


## 起動テスト <a name="aSetup_test"></a>
サーバをテスト起動します。  

* 1.nginxを起動します。  
```
$ start nginx
```

* 2.uwsgiを起動します。  
```
$ cd
$ uwsgi --master --https 127.0.0.1:9090,/etc/pki/Server/server.crt,/etc/pki/Server/server.key --wsgi-file galaxyfleet/galaxyfleet_uwsgi/test_uwsgi.py
```

* 3.ブラウザで次の2か所にアクセスします。  
  https://localhost/
  Galaxy Fleetのトップページが表示されればOKです。  
  
  https://localhost/uwsgi
  Hello Worldが表示されればOKです。  

* 4.nginxとuwsgiを停止します。  
```
uwsgiはCtrl+Cで停止します。  

$ nginx -s quit
$ jobs
  ジョブも確認してください。

```

ここまででStar Regionを動かすサーバの下地構築が完了しました。  










<a id="iEnvironmentSTRG"></a>
## StarRegionセットアップ
Star Regionを初期化して、起動する環境をセットアップします。  



cygwinを起動する

バッチを実行する






$ [nginxのインストールドライブ]:
$ cd [nginxのインストールフォルダ]
$ start nginx





URL： https://localhost/








用がなければ一旦サーバを停止します。  
$ pg_ctl stop






7.uwsgiサーバの実行環境をインストールします。  
7-1.uwsgiのインストーラを起動します。  
    [6項でクローンしたフォルダ]/uwsgi/strg_uwsgi_setup.ps1  
    この上で右クリック→[PowerShellで実行]をクリック
  
もし起動できない場合...？  
7-1-1.DOSプロンプトを起動する  
7-1-2.インストーラまでチェンジディレクトリする  
# cd [6項でクローンしたフォルダ]/uwsgi/
7-1-3.以下を実行する  
# PowerShell -ExecutionPolicy RemoteSigned .\strg_uwsgi_setup.ps1
  



postgreSQL：ポート番号：5432






start nginx
nginx -s reload
nginx -s stop
nginx -s quit



6-4.Star Regionデータ格納用のフォルダ strgdata を作成します。  
フォルダはcloneを置いたカレントフォルダ(=cloneと同一階層)に作成します。  
```
# mkdir strgdata
```
  







db
https://qiita.com/jeyei/items/44ea0fc15622320a1130





9.DBを初期化する。  
```
# su - starregion
$ cd uwsgi/strg_run
$ python3 _init.py
```
以後、コンソールに従って必要事項を入力します。  

ここまででセットアップは完了です。  




7.ブラウザからアクセスして、エラーが表示されなければOK。  
URL： https://localhost/uwsgi/strg_run/








＜対処パターン＞  
ImportError: /usr/lib64/python2.7/site-packages/psycopg2/_psycopg.so: undefined symbol: PQconninfoが出たとき。  
```
# cd /usr/lib64
# rm libpq.so.5
# ln -s /usr/pgsql-[バージョン]/lib/libpq.so.5 libpq.so.5

postgresql11の場合
# ln -s /usr/pgsql-11/lib/libpq.so.5 libpq.so.5

http://www.leeladharan.com/importerror-psycopg-so:-undefined-symbol:-lo-truncate64
```





http://www.math.kobe-u.ac.jp/HOME/kodama/tips-powershell-grammar.html







```
スーパーユーザ[postgres]にパスワードを設定する
=> alter role postgres with password '[postgresのマスタパスワード]';  

```




### **postgreSQLのアンインストール**
postgreSQLのアンインストールする場合、make以下でuninstallコマンドを実行します。  

```
$ cd [解凍されたフォルダ]

$ cd make_dir
$ ../configure --enable-nls --enable-thread-safety
$ make uninstall
$ cd src/interfaces/libpq
$ make uninstall
```






7.uwsgiサーバの実行環境をインストールします。  
7-1.uwsgiのインストーラを起動します。  
    [6項でクローンしたフォルダ]/uwsgi/strg_uwsgi_setup.ps1  
    この上で右クリック→[PowerShellで実行]をクリック
  
もし起動できない場合...？  
7-1-1.DOSプロンプトを起動する  
7-1-2.インストーラまでチェンジディレクトリする  
# cd [6項でクローンしたフォルダ]/uwsgi/
7-1-3.以下を実行する  
# PowerShell -ExecutionPolicy RemoteSigned .\strg_uwsgi_setup.ps1
  
7-2.cygwinのインストールフォルダを指定します。  
7-3.cygwinを起動してuwsgiサーバをテスト起動します。  
```
uwsgi --http :9090 --wsgi-file strg_uwsgi/test.py
*** Starting uWSGI 2.0.18 (64bit) on [Tue Aug 25 17:58:48 2020] ***
～省略～
*** uWSGI is running in multiple interpreter mode ***
```
ファイアウォールでブロックされた場合は許可します。
  
7-4.ブラウザで以下にアクセスします。  
http://localhost:9090
  
Hello World  が表示されればOKです。  
Ctrl+Cでuwsgiサーバを停止します。  




## Galaxy Fleetのリポジトリ設置 <a name="aSetup_galaxyfleet"></a>
Galaxy Fleetの実行環境を、自分のPC内に作成します。  
github DesktopでわたしのgithubからGalaxy Fleetソースコードのクローンを取得してください。  


* 1.[FILE]-[Clone Repositry]を選択します。  

* 2.URLタブで以下を指定します。  
  Repositry URL：https://github.com/lucida3rd/starregion.git  
  Local Path：  [好きなフォルダを指定]  

* 3.[Clone]を押すと、ローカルにクローンが作成されます。  





# バージョンアップ手順 <a id="aVerup"></a>
リポジトリのmasterから最新版をpullする方法です。  
- ※forkしてる場合はforkリポジトリにmasterを反映してから実行します。  

1.セットアップしたサーバにログインし、Star Region用ユーザに切り替えます。  
　そしてStar Regionのcloneフォルダにcdします。  

```
# su - [ユーザ名]
$ pwd
/home/[ユーザ名]/bot
　　※cloneフォルダにいることを確認します
```

2.最新版のリストをfetchします。

```
$ git fetch
　original->master と出たら、githubに最新版があります。
```

3.アップデートします。

```
$ git stash　※stashは不要と思いますが念のため
$ git pull
  pullされたファイル一覧が出ればOKです。
$ exit
　作業は終わりです。
```

















***
[[トップへ戻る]](/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
