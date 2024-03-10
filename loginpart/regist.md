# Galaxy Fleet
  
<h1>～ログインパート仕様～ :: ユーザ登録</h1>  
<h2>～Login part specifications～ :: Regist</h2>  
  

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメントは「Galaxy Fleet」のログインパートのユーザ登録の仕様を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  
  





<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)

* [ユーザ登録の流れ](#aProcess)
* [ユーザ情報の入力](#aInput)
  





<h1 id="aProcess">ユーザ登録の流れ / Regist process</h1>  
ユーザ登録は以下の流れでおこなわれます。  
  

* 1. 登録フォームでユーザ情報の入力（ユーザ）
* 2. 登録フォームでユーザ情報の送信（ユーザ）
* 3. ユーザ登録の承認（運営）
* 4. ログイン（初回）
  




<h1 id="aInput">ユーザ情報の入力 / User Data input</h1>  
ユーザ情報は登録フォームで入力をおこないます。  
入力する情報は次のとおりです。  
全て必須情報とします。  
  

* **ユーザID / User ID**  
* **司令官名 / Commander Name**  
* **X ID / X ID**  
* **パスワード**  
* **ランキングの参加可否**  

* **IP address / IP address**  
  IPはサーバorJavaScriptで取得します。  
  隠しステータスとします。  

* **更新日時**  
  更新日時はJavaScriptで取得します。（パソコンの現在時刻）  
  









ユーザ管理




* **ユーザID / User ID**  

* **X ID / X ID**  

* **IP address / IP address**  

* **承認日時**  


ユーザ登録承認
承認した場合、承認日時を入力し、Xの承認テキストを表示します。

ユーザ登録拒否
拒否した場合、サーバテキストとデータベースを消し、Xの拒否テキストを表示します。

ユーザ抹消
データベースを消します。

ユーザBAN
ユーザIDとIPアドレスをブラックリストに登録します。

ユーザBAN解除
ユーザID、IPアドレスに該当するユーザをブラックリストから削除します。








***
[[トップへ戻る]](/readme.md)　/
[[ログインパート仕様]](readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
