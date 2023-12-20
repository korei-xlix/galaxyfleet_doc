# Galaxy Fleet
**～セットアップ手順～**  


# このドキュメントについて <a name="aHowto"></a>
このドキュメント群ではブラウザで動作する艦隊ストラテジゲーム「Galaxy Fleet」のセットアップ手順を示します。  
  
前提としてサーバへの支援ソフト導入や、設定変更が必要で難易度は高いです。自己責任で行ってください。  
機能概要、バージョンアップ方法、その他については readme.md をご参照ください。  
* [readme.md](https://github.com/korei-xlix/galaxy_fleet/readme.md)
  
なお、現バージョンは要求仕様まとめ段階のものであり、今後予告なく改版されます。  





# 目次 <a name="aMokuji"></a>
* [readme.md](/readme.md)

* [前提](#aPremise)
* [github環境の構築](#aSetup_github)
* [サーバ環境の構築](#aSetup)
	* [Cygwinのインストール](#aSetup_Cygwin)
	* [nxingのインストール](#aSetup_nginx)
	* [python3ライブラリのインストール](#aSetup_python3lib)
	* [エンコードの確認と設定](#aSetup_endode)
	* [uwsgiのインストール](#aSetup_uwsgi)
	* [postgreSQLのインストール](#aSetup_postgresql)
	* [Galaxy Fleetのリポジトリ設置](#aSetup_repository)
	* [SSL証明書の発行](#aSetup_SSL)
	* [Galaxy Fleetの設定](#aSetup_galaxyfleet)





# 前提 <a name="aPremise"></a>
* Linux
* cygwin（Windows上の開発・実行環境）
* python3
* nginx（webサーバ）
* PostgreSQL（DBサーバ）
* uWsgi（web→python実行アプリ）
* githubアカウント（所持前提）
* OSのデフォルトエンコード：utf-8





# github環境の構築 <a name="aSetup_github"></a>
**既にgithubアカウント、github desktopを持ってる場合はスキップできます**  
  
Galaxy Fleetはgithubリポジトリで管理しています。
そのため、Galaxy Fleetを遊ぶにはguthubアカウントが必要になります。  
リポジトリの管理、アップデートなどのために、github環境を構築します。  


## githubアカウントの取り方
おそらくこのドキュメントを見られてる方はgithubアカウントをお持ちと思いますが念のため。  
githubのホームページから取得できます。  
  [github](https://github.com)  


## github desktopのインストール
github Desktopをインストールします。  
インストーラを以下から取得します。入手したインストーラで好きな場所にセットアップします。  
  [github HP](https://desktop.github.com)  





# サーバ環境の構築 <a name="aSetup"></a>
Galaxy Fleetを実行するための環境構築をセットアップします。  
  
前提としてWindows10下や開発環境では、コンソールとして使うCygwinをインストールします。  
以降の以下のインストールでは、Cygwin Terminalを使ってLinuxエミュレータ上でインストール作業をおこないます。  

ここでは次のアプリケーションをインストールします。  
* Cygwin  
* nginx  
* python3  
* uwsgi  
* postgreSQL  



## Cygwinのインストール <a name="aSetup_Cygwin"></a>
仮想サーバのコンソールとして使うCygwinをインストールします。  
以降の以下のインストールでは、Cygwin Terminalを使ってLinuxエミュレータ上でインストール作業をおこないます。  
  
**Linuxエミュレータ上でインストール作業をおこなうもの**  
* python3（Linux上で別でインストールが必要です）
* uwsgi
* postgreSQL

* 1.インストーラを以下から取得します。  
  [Cygwin HP](https://www.cygwin.com/)  

* 2.入手したインストーラで好きな場所にセットアップします。  
  パッケージは以下を選択します（選択しないとスキップされてしまうので注意）。  
  上記全てのライブラリを選択しないと正常にセットアップできません。  

  * python3-deval  
  * wget  
  * libcrypt-devel  
  * libintl-devel  
  * libssl-dev  
  * libreadline-deval  
  * zlib  
  * zlib-devel  
  * make  
  * gcc-core  
  * unzip  
  * gettext  
  * gettext-deval  
  * libpcre-devel  
  * git
  * git-cvs
  * git-debuginfo
  * git-email
  * git-gui
  * git-svn
  * gitk

  デフォルトか、環境にあわせてオプションを選択しましょう。  
  仮想環境はセットアップしたカレント配下にできます。  

```
* 3.ホームユーザ名を確認します  ★以後[Cygwinユーザ]で統一します  
$ whoami
```



## nxingのインストール <a name="aSetup_nginx"></a>
nginxをインストールします。  
この手順ではPCREライブラリのソースが必要なので、そちらもセットアップします。  
  
* 1.アーカイブのURLを以下で確認します。  
  nginxのソース  
  [nginx HP](https://nginx.org/)  
  
  PCREライブラリのソース  
  [OSDN](https://ja.osdn.net/projects/sfnet_pcre/)

* 2.workフォルダを作成し、アーカイブを取得、展開します。  

```
$ cd 
$ mkdir work
$ cd work

nginxのソース取得
$ wget [1項で確認したnginxのURL]
v1.23.1の場合
$ wget https://nginx.org/download/nginx-1.23.1.tar.gz

PCREライブラリのソース取得
$ wget [1項で確認したPCREライブラリのURL]
v8.45の場合
$ wget https://ja.osdn.net/projects/sfnet_pcre/downloads/pcre/8.45/pcre-8.45.tar.gz

nginxの展開
$ tar xvzf [アーカイブ名]
v1.23.1の場合
$ tar xvzf nginx-1.23.1.tar.gz

PCREの展開
$ tar xvzf [アーカイブ名]
v8.45の場合
$ tar xvzf pcre-8.45.tar.gz

```

* 3.nginxをメイク、インストールします。  
  --with-pcreのパスは、相対パスで、PCREライブラリのソースを解凍したフォルダを指定します。  
```
$ cd [展開フォルダ名]
$ ./configure --sbin-path="/usr/sbin/" --conf-path="/etc/nginx/nginx.conf" --pid-path="/var/run/nginx.pid" --with-pcre="../pcre-8.45/" --with-http_ssl_module --with-http_v2_module --prefix="/usr/local/nginx/"
$ make
$ make install
```

* 4.プロファイルに実行パスを読ませます。  
  **既に設定済みの場合はスキップできます**  
```
$ vi /home/[Cygwinユーザ]/.bash_profile

以下を追加
export PATH=$PATH:/usr/sbin:/usr/local/bin

追加したら以下を実行して、読み込ませます。  
$ source ~/.bash_profile
```

* 5.コマンドを入力してnginxを実行します。  
  なお実行するとWIndowsサービスとしてタスクが起動されます。  
```
$ nginx
```
  ファイアウォールの通知が出た場合は許可します。  

* 6.ブラウザでnginxのスタートページを表示します。  
  URLはローカルホストを指定します。  
    **http://localhost**  
  
  Welcome to nginx! と表示されればセットアップは正常です。  

* 7.コマンドを入力してnginxを終了します。  
```
$ nginx -s quit
```



## python3ライブラリのインストール <a name="aSetup_python3lib"></a>
python3の処理で必要なライブラリをインストールします。  
python3の本体はCygwinと一緒にインストールされてるはずです。  
  
なお、Galaxy Fleetで使うライブラリは以下の通りです。  
* requests 
* requests_oauthlib 
* python-dateutil 
* psycopg2
* flask （要らないかも？）
* apt-cyg（apt-getのcygwin版）
* procps（apt-cygでインストール）

以下手順です。  
* 1.以下のコマンドでpythonの動作テストしてみます。  
```
$ python -V
Python 3.8.2
  ※Windowsの場合、python3ではなく、pythonらしいです  
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
::Project= Galaxy Fleet  
::Admin= Korei (@korei-xlix)  
::github= https://github.com/korei-xlix/  
::Homepage= https://koreixlix.wixsite.com/profile  
