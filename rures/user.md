# Galaxy Fleet　～ユーザ仕様～
::ProjectName= Galaxy Fleet (master)  
::github= https://github.com/lucida3rd/starregion_doc  
::Admin= Lucida（twitter: @lucida3rd）  
::Twitter URL= https://twitter.com/lucida3rd  
::Homepage=  https://lucida3web.wixsite.com/prof  
::Message= https://marshmallow-qa.com/lucida3poi  




<a id="iDocSummary"></a>
# ドキュメント概要
このドキュメントは「Galaxy Fleet」のユーザ仕様、パスワード認証、ユーザデータ周りの仕様を記載するものです。
その他の仕様についてはreadmeの目次を確認してください。


<a id="iRet"></a>
# 目次
* [readme.md](/readme.md)
* [兵器ステータスの構成](#iStructStatus)
* [習熟度](#iProficiency)




<a id="iUserData"></a>
# ユーザデータ

ユーザデータは以下で構成される。

* ユーザID  
  ログインに必要なユーザIDです。  

* ユーザ名  
  ゲーム内で表示する司令官名です。  

* パスワード  
  ログインに必要なパスワードです。  




<a id="iUserConfirm"></a>
# ユーザ認証

ログイン時に、ユーザID、パスワード、パスコードが必要になります。  
パスコードは前回ゲームをやめる際、サーバから自動的に発行されます。  
  
* パスコードはゲームを終了する際、クライアントでパスコードを発行します。パスコードはランダムな半角大文字英数字です。  
* 発行されたパスコードはユーザに改変されないよう、変数内に格納し、セーブ時にセーブデータに保存します。  
* ユーザID、パスワードは、サーバに送信しません。  
* 認証処理の本処理は、クライアント側でおこないます。  
* ゲームを終了する際、パスコード＋ユーザID＋パスワードをMD5化し、認証データとしてセーブデータに保管します。  
* ログインする際、ユーザID、パスワード、パスコードを入力します。認証の際、MD5化し、セーブデータの認証データと比較してOKならログインさせます。  
  
よって、パスワードやパスコードを忘れると、管理者（Lucida）でも復旧できず、二度とセーブデータがロードできません。  
またパスコードは使い捨てなので、第三者から盗まれたり、解析される危険性が少ないです。  




