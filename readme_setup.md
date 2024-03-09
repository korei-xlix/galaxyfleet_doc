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
  * [gettextのインストール](#aSetup_gettext)
  * [gitのインストール](#aSetup_git)
  * [homebrewのインストール](#aSetup_homebrew)

  * [python3のインストール](#aSetup_python3)
  * [Galaxy Fleet本体インストール](#aSetup_GalaxyFleet)

* 没操作
  * [libpslのインストール](#aSetup_libpsl)
  





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
* gettext  
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
  


<h3>ディレクトリ構成（イメージ）</h3>  

```text
home
|-- _tmp
|-- opt
|    |-- openssl
|    |    |-- lib64
|    |    |    |-- pkgconfig
|    |    |    `-- ...
|    |    |-- include
|    |    |-- bin
|    |    `-- ...
|    |-- curl
|    |    |-- lib
|    |    |    |-- pkgconfig
|    |    |    `-- ...
|    |    |-- include
|    |    |-- bin
|    |    `-- ...
|    |-- gettext
|    |    |-- bin
|    |    `-- ...
|    |-- git
|    |    |-- lib64
|    |    |    |-- pkgconfig
|    |    |    `-- ...
|    |    |-- include
|    |    |-- bin
|    |    `-- ...


|    `-- pkgconfig


|-- .linuxbrew
|    |-- Homebrew
|    |-- bin


```
  


<h3>環境変数の変更</h3>  

```text
プロファイルをviエディタで開く
$ vi .bash_profile

※export PATH    に上書きする

PATH=/usr/bin:/usr/sbin

PREFIX=${HOME}/opt

PATH=${PREFIX}/openssl/bin:${PATH}
PATH=${PREFIX}/curl/bin:${PATH}
PATH=${PREFIX}/gettext/bin:${PATH}
PATH=${PREFIX}/git/bin:${PATH}

MYPROF=${HOME}/.bash_profile
MYTEMP=${HOME}/_tmp
MYOPT=${HOME}/opt

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${HOME}/opt/openssl/lib64:${HOME}/opt/curl/lib:${HOME}/opt/gettext/lib

:wq  ←保存・終了コマンド

プロファイル再読み込み
$ source .bash_profile

```
  


<h3>ディレクトリ作成</h3>  

```text
mkdirで作成していく
$ mkdir -p ~/opt
$ mkdir -p ~/opt/openssl
$ mkdir -p ~/opt/curl
$ mkdir -p ~/opt/gettext
$ mkdir -p ~/opt/git
$ mkdir -p ~/_tmp
$ mkdir -p ~/.linuxbrew
$ mkdir -p ~/.linuxbrew/bin

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

ビルド＆インストール
$ make clean
$ ./config --prefix=${PREFIX}/openssl --openssldir=${PREFIX}/openssl shared '-Wl,-rpath,$(LIBRPATH)'

$ make
$ make test
$ make install
$ cd ~

opensslのエイリアス変更（pythonの切り替え）
$ alias openssl='${PREFIX}/openssl/bin/openssl'

インストールの正常確認
$ openssl version
OpenSSL 3.2.0 23 Nov 2023 (Library: OpenSSL 3.2.0 23 Nov 2023)

$ which openssl
alias openssl='${PREFIX}/openssl/bin/openssl'

$ ldd ~/opt/openssl/bin/openssl
        linux-vdso.so.1 =>  (0x00007ffeb5fee000)
        libssl.so.3 => ${HOME}/opt/openssl/lib64/libssl.so.3 (0x00007fcb36d5a000)
        libcrypto.so.3 => ${HOME}/opt/openssl/lib64/libcrypto.so.3 (0x00007fcb36646000)
        libdl.so.2 => /lib64/libdl.so.2 (0x00007fcb36442000)
        libpthread.so.0 => /lib64/libpthread.so.0 (0x00007fcb36226000)
        libc.so.6 => /lib64/libc.so.6 (0x00007fcb35e58000)
        /lib64/ld-linux-x86-64.so.2 (0x00007fcb3707b000)

```
  


<h3>OpenSSLオプションメモ</h3>  

```text

＜環境変数＞
${HOME}    ホームパス  /user/local ？
${PREFIX}  ${HOME}/opt


＜OpenSSLオプション＞
実行ファイルを納めるフォルダ（bin）、ライブラリフォルダの最上位フォルダ
--prefix=${PREFIX}/openssl

OpenSSLの設定ファイル、デフォルトの証明書やKey Storeの保存先
--openssldir=${PREFIX}/openssl

シェアードライブラリの出力
shared

共有ライブラリパスを通す
'-Wl,-rpath,$(LIBRPATH)'


ライブラリの指定
export LDFLAGS="-L$PREFIX/openssl/lib64"
export CFLAGS="-I$PREFIX/openssl/include"
export CPPFLAGS="-I$PREFIX/openssl/include"


export LDFLAGS=""
export CFLAGS=""
export CPPFLAGS=""
export LOBS=""
export PKG_CONFIG_PATH="-L$PREFIX/pkgconfig"

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

v8.6.0の場合
$ wget https://curl.se/download/curl-8.6.0.tar.gz
$ tar xvfz curl-8.6.0.tar.gz
$ cd curl-8.6.0

ビルド＆インストール
$ make clean
$ ./configure --enable-libcurl-option --enable-shared --without-libpsl --prefix=${PREFIX}/curl --with-openssl=${PREFIX}/openssl

  Host setup:       x86_64-pc-linux-gnu
  Install prefix:   /home/koreislabo/opt/curl
  Compiler:         gcc -std=gnu11
   CFLAGS:          -Werror-implicit-function-declaration -O2 -Wno-system-headers -pthread
   CPPFLAGS:        -isystem /home/koreislabo/opt/openssl/include
   LDFLAGS:         -L/home/koreislabo/opt/openssl/lib64
   LIBS:            -lssl -lcrypto -lssl -lcrypto -lz
  curl version:     8.6.0
  SSL:              enabled (OpenSSL v3+)
  SSH:              no      (--with-{libssh,libssh2})
  zlib:             enabled
  TLS-SRP:          enabled
  resolver:         POSIX threaded
  Build libcurl:    Shared=yes, Static=yes
  Built-in manual:  enabled
  --libcurl option: enabled (--disable-libcurl-option)
  Verbose errors:   enabled (--disable-verbose)
  ca cert bundle:   /etc/pki/tls/certs/ca-bundle.crt
  ca cert path:     no
  HTTP1:            enabled (internal)
  Protocols:        DICT FILE FTP FTPS GOPHER GOPHERS HTTP HTTPS IMAP IMAPS IPFS IPNS MQTT POP3 POP3S RTSP SMB SMBS SMTP SMTPS TELNET TFTP
  Features:         AsynchDNS HSTS HTTPS-proxy Largefile NTLM SSL TLS-SRP UnixSockets alt-svc libz threadsafe

$ make
$ make test
$ make install

必要なライブラリの参照確認
$ ldd ~/opt/curl/bin/curl
        libssl.so.3 => not found     ←ライブラリが見えない
        libcrypto.so.3 => not found  ←ライブラリが見えない

ライブラリ libに libssl、libcrypto の参照設定
$ ls ~/opt/openssl/lib64
engines-3    libcrypto.so    libssl.a   libssl.so.3   pkgconfig
libcrypto.a  libcrypto.so.3  libssl.so  ossl-modules

$ ls ~/opt/curl/lib
libcurl.a  libcurl.la  libcurl.so  libcurl.so.4  libcurl.so.4.8.0  pkgconfig

$ pushd ~/opt/curl/lib  ←元のパスを記憶したままディレクトリ変更
$ ls ../../openssl/lib64/libssl.so.3
../../openssl/lib64/libssl.so.3
$ ls ../../openssl/lib64/libcrypto.so.3
../../openssl/lib64/libcrypto.so.3

ライブラリのリンボリックリンクを作成する（lib64を参照）
$ ln -s ../../openssl/lib64/libssl.so.3 libssl.so.3
$ ln -s ../../openssl/lib64/libcrypto.so.3 libcrypto.so.3

libにシンボリックリンクができていることを確認
$ ls
libcrypto.so.3  libcurl.la  libcurl.so.4      libcurl.so.4.8.0  pkgconfig
libcurl.a       libcurl.so  libcurl.so.4.3.0  libssl.so.3

$ popd  ←元のパスに戻る

curlのエイリアス変更（pythonの切り替え）
$ alias curl='${PREFIX}/curl/bin/curl'

インストールの正常確認
Protocolにhttpsが含まれることを確認する
$ curl -V
curl 8.6.0 (x86_64-pc-linux-gnu) libcurl/8.6.0 OpenSSL/3.2.0 zlib/1.2.7
Release-Date: 2024-01-31
Protocols: dict file ftp ftps gopher gophers http https imap imaps ipfs ipns mqtt pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
Features: alt-svc AsynchDNS HSTS HTTPS-proxy Largefile libz NTLM SSL threadsafe TLS-SRP UnixSockets

$ which curl
~/opt/curl/bin/curl

$ ldd ~/opt/curl/bin/curl
        linux-vdso.so.1 =>  (0x00007ffd949c7000)
        libcurl.so.4 => ${HOME}/opt/curl/lib/libcurl.so.4 (0x00007f628d6c5000)
        libssl.so.3 => ${HOME}/opt/curl/lib/libssl.so.3 (0x00007f628d3a4000)
        libcrypto.so.3 => ${HOME}/opt/curl/lib/libcrypto.so.3 (0x00007f628cc90000)
        libz.so.1 => /lib64/libz.so.1 (0x00007f628ca7a000)
        libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f628c85e000)
        libc.so.6 => /lib64/libc.so.6 (0x00007f628c490000)
        libdl.so.2 => /lib64/libdl.so.2 (0x00007f628c28c000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f628d95c000)

ダウンロードテスト
$ cd ~/_tmp
$ curl -O [テストアーカイブURL(なんでもいい)]

アーカイブをもっかいダウンロードするとか
$ rm curl-8.6.0.tar.gz
$ curl -O https://curl.se/download/curl-8.6.0.tar.gz
$ ls
curl-8.6.0.tar.gz

```
  


<h3>curlオプションメモ</h3>  

```text

＜環境変数＞
${HOME}    ホームパス  /user/local ？
${PREFIX}  ${HOME}/opt


＜curlオプション＞

実行ファイルを納めるフォルダ（bin）、ライブラリフォルダの最上位フォルダ
--prefix=${PREFIX}/curl

OpenSSLがインストールされている最上位フォルダ
--with-openssl=${PREFIX}/openssl

--enable-libcurl-option
--enable-shared
--without-libpsl

```
  





<h2 id="aSetup_gettext">gettextのインストール</h2>  
  
  [目次へ戻る](#aMokuji)  
  

作業フォルダに移動し、gettextをインストールします。gitのインストールに必要です（本当に必要なんだろうか...？）。  
wgetでダウンロードするバージョンは以下で確認してください。  
  [gittext](https://ftp.gnu.org/pub/gnu/gettext/)  
  

```text
作業フォルダに移動
$ cd ~/_tmp

ダウンロード
$ wget [gettextのリンク]
$ tar xvfz [アーカイブ名]
$ cd [アーカイブ名]

v0.22.4の場合
$ wget https://ftp.gnu.org/pub/gnu/gettext/gettext-0.22.4.tar.gz
$ tar xvfz gettext-0.22.4.tar.gz
$ cd gettext-0.22.4

ビルド＆インストール
$ make clean
$ ./configure --prefix=${PREFIX}/gettext

$ make
$ make install

動作確認
$ gettext --version
gettext (GNU gettext-runtime) 0.22.4

```
  





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

環境変数の追加（更新？）
export LDFLAGS="-L$PREFIX/openssl/lib64 -L$PREFIX/curl/lib -L$PREFIX/gettext/lib"

ビルド＆インストール
$ ./configure --prefix=${PREFIX}/git --with-openssl=${PREFIX}/openssl --with-curl=${PREFIX}/curl

SHA1_Init、curl_global_initがOK、curl-configがセットできてることを確認する
configure: CHECKS for libraries
checking for SHA1_Init in -lcrypto... yes
checking for curl_global_init in -lcurl... yes
checking for curl-config... curl-config
configure: Setting CURL_LDFLAGS to '-L/home/koreislabo/opt/curl/lib -lcurl'
checking for XML_ParserCreate in -lexpat... no

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

$ ls ~/opt/git/libexec/git-core
git                           git-fsmonitor--daemon   git-remote
git-add                       git-gc                  git-remote-ext
git-am                        git-get-tar-commit-id   git-remote-fd
git-annotate                  git-grep                git-remote-ftp
git-apply                     git-gui                 git-remote-ftps
git-archimport                git-gui--askpass        git-remote-http
git-archive                   git-hash-object         git-remote-https

cloneコマンドは失敗するけど、cloneアプリが実行されかけている
$ git clone
fatal: You must specify a repository to clone.

usage: git clone [<options>] [--] <repo> [<dir>]
    -v, --[no-]verbose    be more verbose
...

```
  


<h3>gitオプションメモ</h3>  

```text

＜環境変数＞
${HOME}    ホームパス  /user/local ？
${PREFIX}  ${HOME}/opt


＜gitオプション＞

実行ファイルを納めるフォルダ（bin）、ライブラリフォルダの最上位フォルダ
--prefix=${PREFIX}/git

OpenSSLがインストールされている最上位フォルダ
--with-openssl=${PREFIX}/openssl

curlがインストールされている最上位フォルダ
--with-curl=${PREFIX}/curl


ライブラリの指定
export LDFLAGS="-L$PREFIX/openssl/lib64 -L$PREFIX/curl/lib -L$PREFIX/gettext/lib"
export CFLAGS="-I$PREFIX/openssl/include -I$PREFIX/curl/include -I$PREFIX/gettext/include"
export CPPFLAGS="-I$PREFIX/openssl/include -I$PREFIX/curl/include -I$PREFIX/gettext/include"
export LIBS=""
export PKG_CONFIG_PATH="-L$PREFIX/openssl/lib64"


export LDFLAGS=""
export CFLAGS=""
export CPPFLAGS=""
export LIBS=""
export PKG_CONFIG_PATH=""

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${HOME}/opt/openssl/lib64:${HOME}/opt/curl/lib:${HOME}/opt/gettext/lib


echo $LDFLAGS
echo $CFLAGS
echo $CPPFLAGS
echo $LIBS
echo $PKG_CONFIG_PATH

```
  





<h2 id="aSetup_homebrew">homebrewのインストール</h2>  
  
  [目次へ戻る](#aMokuji)  
  

<h3>homebrewクローンの配置</h3>
homebrewのクローンを配置します。  

```text

PKGconfigの確認（念のため）
$ cd ~
$ find ~/opt -name pkgconfig
${HOME}/opt/openssl/lib64/pkgconfig
${HOME}/opt/curl/lib/pkgconfig

cloneの配置
$ git clone https://github.com/Homebrew/brew.git ~/.linuxbrew/Homebrew

Cloning into '${HOME}/.linuxbrew/Homebrew'...
remote: Enumerating objects: 258822, done.
remote: Counting objects: 100% (258819/258819), done.
remote: Compressing objects: 100% (63859/63859), done.
remote: Total 258822 (delta 188344), reused 258093 (delta 187876), pack-reused
Receiving objects: 100% (258822/258822), 72.88 MiB | 23.15 MiB/s, done.
Resolving deltas: 100% (188345/188345), done.

クローン配置の確認
$ ls ~/.linuxbrew/Homebrew
CHANGELOG.md     Dockerfile   Library    bin          docs      package
CONTRIBUTING.md  LICENSE.txt  README.md  completions  manpages

```
  


<h3>環境変数を追加</h3>
homebrew用の環境変数を追加します。  

```text
プロファイルをviエディタで開く
$ vi ~/.bash_profile

以下を追加する
export HOMEBREW_DEVELOPER=1
export HOMEBREW_FORCE_BREWED_GIT=
export HOMEBREW_FORCE_BREWED_CURL=

export HOMEBREW_CURL_PATH=${HOME}/opt/curl/bin/curl
export HOMEBREW_GIT_PATH=${HOME}/opt/git/bin/git

export HOMEBREW_PREFIX=${HOME}/.linuxbrew
export HOMEBREW_CELLAR=${HOME}/.linuxbrew/Cellar
export HOMEBREW_REPOSITORY=${HOME}/.linuxbrew/Homebrew
export MANPATH=${HOME}/.linuxbrew/share/man${MANPATH+:$MANPATH}
export INFOPATH=${HOME}/.linuxbrew/share/info:${INFOPATH:-}

PATH=${HOME}/.linuxbrew/opt/binutils/bin:${PATH}
PATH=${HOME}/.linuxbrew/bin:${PATH}
PATH=${HOME}/.linuxbrew/sbin:${PATH}

:wq  ←保存・終了コマンド

プロファイル再読み込み
$ source ~/.bash_profile

```
  

<h3>homebrewのセットアップ</h3>
homebrewをインストールします。  

```text

binへのリンボリックリンクの作成
$ cd .linuxbrew
$ ln -s ~/.linuxbrew/Homebrew/bin/brew ~/.linuxbrew/bin
$ ls
Homebrew  bin

homebrewのセットアップ
$ eval "$(bin/brew shellenv)"
$ brew update --force --quiet

権限の変更
$ chmod -R go-w "$(brew --prefix)/share/zsh"

必要なライブラリのインストール
$ brew install binutils

For compilers to find binutils you may need to set:
  export LDFLAGS="-L/home/koreislabo/.linuxbrew/opt/binutils/lib"
  export CPPFLAGS="-I/home/koreislabo/.linuxbrew/opt/binutils/include"
==> Summary
?  /home/koreislabo/.linuxbrew/Cellar/binutils/2.41_1: 4,729 files, 469MB
==> Running `brew cleanup binutils`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).

以下を追加する
$ export LDFLAGS="-L${HOME}/.linuxbrew/opt/binutils/lib"
$ export CPPFLAGS="-I${HOME}/.linuxbrew/opt/binutils/include"

インストールするpythonのバージョンを決める
$ brew search python@3
==> Formulae
boost-python3       python@3.12         python@3.9          jython
python@3.10         python@3.7          ipython             cython
python@3.11         python@3.8          bpython

Pythonのインストールをする
$ brew install python@3.12
make test  に時間がかかる






```
  


<h3>うまくいかない場合</h3>  

* 上の表示どおり進行しない場合は、どこかでエラーを起こしてる場合があります。  
  エラーログを見て、怪しいライブラリやアプリをreinstallすることで改善します。  

/.cache/Homebrew/Logs


```text
Reinstallに使ったコマンド集
$ brew fetch zstd && brew reinstall zstd

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


＜homebrew解析＞
export PATH=
${HOME}/.linuxbrew/opt/binutils/bin:
${HOME}/opt/curl/bin:
${HOME}/opt/git/bin:
${HOME}/opt/gettext/bin:
${HOME}/opt/ssl/bin:
${HOME}/.linuxbrew/bin:
${HOME}/.linuxbrew/sbin${PATH+:
$PATH}

$ export HOMEBREW_MY_TEST=1

```
  




















* 7.作業フォルダを削除します。  
  メンテのため削除しなくてもよいです。  
  
```text
削除コマンド
$ rm -rf ~/_tmp
```
  
















***
[[トップへ戻る]](/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
