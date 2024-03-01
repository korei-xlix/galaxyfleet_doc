# Galaxy Fleet
  
<h1>～readme 取扱説明書～</h1>  
<h2>～readme User's Manual～</h2>  
  

**★このリポジトリの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this repository are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメント群ではブラウザで動作する艦隊ストラテジゲーム「Galaxy Fleet」の取扱説明書です。  
  
なお、現バージョンは要求仕様まとめ段階のものであり、今後予告なく改版されます。  
  
　　This document group is an instruction manual for the fleet strategy game "Galaxy Fleet" that runs on a browser.  
　　Note that the current version is at the stage of compiling required specifications and will be revised without prior notice.  
  




<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)
  * [オープニング](#aOpenning)
  * [ゲームストーリー](#aGameStory)
  * [システム概要](#aSystemOverview)
  * [ゲーム概要](#aGameOverview)

  * [対ユーザポリシー](#aDisclaimer)
  * [リポジトリの利用規約](#aRules)
  * [謝辞](#aAcknowledgment)
  * [参考資料](#aMaterial)

* 各仕様書
  * [ログインパート仕様](/loginpart/readme.md)
  * [戦略パート仕様](/strategypart/readme.md)
  * [戦術パート仕様](/tacticalpart/readme.md)
  * [戦闘パート仕様](/battlepart/readme.md)
  * [データ仕様](/data/readme.md)
  * [シナリオ仕様](/senario/readme.md)

  * データベース
    * [兵器仕様](/unit/readme.md)
    * [装備品仕様](/equip/readme.md)
    * [特殊機能](/skill/readme.md)

  * 世界設定など
    * [世界観](/strategypart/world.md)
    * [用語集](/strategypart/term.md)
  





<h1 id="aSetupUpdate">セットアップ・バージョンアップなど / About setup or update</h1>  

システム要件、セットアップ方法については、別紙のセットアップ手順書に記載しています。よくお読みください。  
    [セットアップ手順書](readme_setup_windows.md)  
  





<h1 id="aOpenning">オープニング / Openning</h1>  
「Galaxy Fleet」へようこそ！あなたがこの基地へ配属されるのを心待ちにしておりました！  
あなたにはここで宇宙戦闘艦「戦列艦」の艦隊を指揮していただきます。  
資源を巡る覇権争いで混迷する宇宙の鎮圧をするため我々を...我々を指揮してください！！！  
  
司令官！自軍を有利にするため戦列艦を入手してください！  
戦列艦は民間から徴発したり、手持ちの資材を消費して建造したり、レンタルで借用するなど様々な方法で入手できます。入手した戦列艦を艦隊に編成してください。戦列艦には駆逐艦などの小型艦船から、 戦艦や航空母艦など大型の艦船、 電子戦装備や探知装置で艦隊を防御する特殊な艦船などが用意されています。また、艦載戦闘機や、揚陸戦用の小型兵器、人型の機動歩兵も用意されており、それらを自由に編成できます。  
  
司令官！編成した艦隊で我々はいつでも出撃できます！  
艦隊や基地をさらに大きくしたり、維持するにはやはり「資源」が必要です。資源は戦闘地域の先にある採掘地域で採掘をおこなったりして得ることができます。まず艦隊を出撃させ、戦闘地域のボスを撃破し、制圧する必要があります。やー腕が鳴りますね司令官！さらに艦隊が大きくなれば輸送専用の部隊を編成したり、地上部隊が編成できるようになれば泊地化もでき、より効率よく資材の採掘ができるようになりますよ。  
  
司令官！...申し訳ありません。さきほどの戦闘で数隻撃沈（リタイヤ）しました...！  
しかし安心してください。艦のAIはリセットされるので戦闘経験値は消失してしまいますが、艦そのものは喪失（ロスト）しません。ただ、別途サルベージ専用の曳航艦を手配する必要がありますが... それに修復するにも資源が必要です。なので、できるだけ撃沈される事態は避けたほうがよいです。  
  
司令官！総司令部から指令が発令されました！  
総司令部からの指令には、侵攻部隊の排除、VIPの護衛任務、輸送隊による特定資源の輸送任務など様々あります。これらを編成した艦隊を効率よく動かして達成すれば、物資の支給などが受けられますよ。え、勝つためなんだから最初からよこせ？...あの、それはメタすぎる話ですよ、司令官...（小声）  
  
あ、司令官！ちゃっちゃとゲームをはじめてください！  
  





<h1 id="aGameStory">ゲームストーリー / Game story</h1>  
ゲームはとある時代のとある宇宙のとある銀河を中心が舞台  
  
既知宇宙全域を巻き込んだ大大戦（ラグナロク）から数世紀が経った  
  
戦争の技術発展で超技術革新がおこったあと  
宇宙開拓ラッシュが数百年も続きようやく落ち着きをみせた  
  
各国が国境の主張や資源の主張でぶつかようになると  
自然小競り合いから小さな武力衝突、民衆暴動がおこるようになった  
  
各国の話し合いがおこなわれた結果  戦闘の仲裁や国境監視をおこなう特別組織が置かれた  
  
各国間  地域でおこる紛争が厳しく統制され  
戦闘がおこったとしても被害が抑えされるよう武装の規格  戦闘のルールで制限され  
AI可もみ  大型の兵器や要塞もほぼ自動化されていった結果  
  
戦争がおきても戦場での兵士の死亡はすくなくなり  民間への人死にはでないようになってきた  
  
やがて戦争が外交の手段やビジネスとなっていった  
  
しかし...  
  
兵器を効率よく運用するためには  まだまだ人の指揮統制は必要不可欠だった  
  
機械化された戦場であっても  人は人との争いは避けられない  
...これは人の業か...？  
  
そして...  
  
ここ、とある基地にも司令官として着任した人物がいる...  
  





<h1 id="aSystemOverview">システム概要 / System overview</h1>  
「Galaxy Fleet」はブラウザで動作する艦隊ストラテジゲームです。  
ブラウザ部はHTML、Javascript、CSSで記述し、nginxなどwebサーバアプリで出力の補助をおこないます。  
ゲームの内部データ、セーブデータの加工、出力はメンテしやすいように別途処理用のサーバ（Linux系）を用意します。そちらのソースはPythonで記述し、実行の補助としてuwsgiを使用します。すべてSSL通信に対応します。なお、レンタルサーバによってはゲーム利用を禁止している会社さんもあるので、処理サーバでの処理はゲームの基礎データの格納と出力のみを負荷がかからない範囲でおこなうようにします。ゲームの実処理や判定はブラウザでおこなうようにします。  
  
全体としてWindows 10のローカル環境でも実行可能なようにします。  
（開発は諸事情でWindows 10上で行います）  


## システム要件（最低限）
  
|項目 |条件 |備考 |
|:--|:--|:--|
| OS              | Windows10        |    |
| python          | python3          |    |
| Webサーバ       | nginx            |    |
| DBサーバ        | MySQL            |    |
| python実行      | uWsgi            | web→python実行アプリ  |
| 疑似サーバ      | cygwin           | web、処理、DB実行環境  |
| エンコード      | utf-8            |    |
| その他          | githubアカウント |    |

* githubアカウントは持ってる前提で記載します。  
* 以上の前提が異なると一部機能が誤動作の可能性があります。
* 開発環境はWindows 10上でおこなうため、Linuxエミュレーション可能なCygwinを使用します。  
* Webサーバ、データ処理系、データベースともにCygwin上でおこなうようにします。  
* インストールなどの作業は、shバッチか、phthonスクリプトから実行できるようにします。  
  





<h1 id="aGameOverview">ゲーム概要 / Game overview</h1>  
プレイヤーはとある基地の司令官に着任します。  
  
主な任務は周辺の偵察や、敵対勢力の鎮静化です。それには基地戦力が必要になります。  
最初は司令部から支給された資源で艦船を獲得し、小規模な艦隊を編成します。  
  
細かいゲームの流れは、最初はチュートリアルで説明されますので、画面のとおり動かしてみてください。  
ですが、念のため、チュートリアルの流れを以下に示します。（特に読み飛ばしても構いません）  
  

まず「調達」メニューで艦船を調達します。初回は司令部からの支給品ですので、駆逐艦を1隻選びます（初期艦となります）。  
  

次に「編成」メニューで艦隊を編成します。艦船を基地から出撃させたり、遠征に出したりする場合、必ず艦隊を編成する必要があります。
基地の防衛や、エリアマップでの行動は艦隊単位でおこないます。
さきほど調達した駆逐艦を艦隊に編入します。  
これで調達した駆逐艦を出撃させることができるようになりました。  
  

「出撃」メニューから、「沿岸遠征（演習）」を選択し、さきほど編成した艦隊を出撃させます。  
通常遠征には数ターンかかりますが、ここでは一瞬で帰還してきます。  
  

遠征が終わると任務報酬として資材が得られるので、今度は「徴発」メニューを選びます。  
徴発も艦船などが購入できますが、調達よりランダム性に富みますが、思いもよらない掘り出し物が手に入る場合があります。
今の段階では駆逐艦しか徴発できないはずなので、もう1隻購入しましょう。  
  

まだ資材が余ってるので、今度は自力で艦船を建造します。「建造」メニューから艦船を建造します。  
建造結果がいくつか表示されるので、実際に建造したい艦船を選びます。
ここでは巡航艦を選びます。これで艦船が建造できました。  
ただ、建造したての艦船には装備品がなにも付いてないので、「製造」メニューから装備を製造します。
主砲、偵察機、対空砲の３つが製造できますので、すべて製造します。  
  

「編成」メニューから、徴発や建造で得た巡航艦、駆逐艦を編成してください。巡航艦には製造した装備品も装備させます。  
これで1艦隊、1巡航艦、2駆逐艦の編成ができたと思います。この編成であれば、小規模な駆逐艦隊なら簡単に破ることができるはずです。  
  

「出撃」メニューから、「沿岸警備（演習）」を選択し、さきほど編成した艦隊を出撃させます。  
マップには演習用に用意された標的艦隊が侵攻してきます。
自動照準で砲撃してきますが、砲は練習用に低出力になってますので、落ち着いて対処してください。おそらく撃沈されることはないはずです。おそらく...ね。  
敵艦隊を見事に撃滅するとミッション終了し、母港に帰還します。
  

任務達成にまた資材と、「揚陸艦」という艦船、「陸戦歩兵」「戦車」という戦闘兵器が支給されます。  
陸戦歩兵はローカルマップにある基地を占領するのに使うユニットです。  
戦車はローカルマップ上の主戦力となるユニットで、歩兵に強いですが、陸戦攻撃機という航空機には弱いという特徴があります。  
ローカルマップに陸戦ユニットを運ぶには揚陸艦が必要になります。  
「編成」メニューから、艦隊に「揚陸艦」を編成し、揚陸艦に「陸戦歩兵」「戦車」を搭載してください。  
  

「出撃」メニューから、「沿岸揚陸（演習）」を選択し、さきほど編成した艦隊を出撃させます。  
まず、エリアマップの敵艦隊を殲滅します。揚陸艦には戦闘力はないので後方に下げ、巡航艦と駆逐艦で守りながら戦闘を進めます。  
敵防衛艦隊を殲滅したら、ローカルマップへの降下作戦に入ります。  
ローカルマップには敵の陸戦歩兵が点在してますが、戦車で歩兵を守りながら駆逐し、敵の基地に歩兵を侵入させてください。
基地を占領するとローカルマップが制圧、クリアとなります。  
本来であれば基地は砲台や、超大型の防衛兵器で厳重に防御されてるので、陸戦戦力を整備しないと攻略が難しいので覚えておいてください。  
以上をクリアすると演習が終了し、基地に帰還、報酬が得られます。  
  

ここまでがチュートリアルとなってます。  
このように「調達・徴発」→「編成」→「出撃」→「任務完了」を繰り返すことで、ゲームを進行させていき、強力な艦隊を整備してください。  
  





<h1 id="aDisclaimer">対ユーザポリシー / for User Policy</h1>  

## 免責事項  

先ず、当ゲームを公開するにあたっては料金を取るつもりはありません。よってわたしと遊んでいただくユーザさんの立場は等価とみなしております。  
よって、あなた方の呼称については"ユーザさん"とややフレンドリーに呼ばせていただきますね。  
これに同意いただけない場合、当ゲームを遊んでいただくことはできません。  
また、本免責事項、次項の運用ポリシー、サイト規約に準拠いただけないユーザさんは、当ゲームを遊んでいただくことはできません。  
よろしくなー。  
  


## 情報セキュリティポリシー  

* ゲーム開始時に登録するユーザID、ユーザ名、パスワード、ゲームを進めた結果データ（セーブデータ）については全てローカル管理となっています。  
当方サーバに送信されることはありません。  
  

* トラヒック情報、フィードバック情報については、一部ご協力いただけるユーザさんに送信していただきます。  
  こちらの手順、送信されるデータフォーマットについては、まとめ次第公開します。（※将来実装する予定です）  
  

* データの責任については以下免責事項、サイト規約に準拠します。  
  

* なお、上記は仕様変更により将来変更される可能性があります。  
  正直いうと、情報漏らした時に社会的責任を取らされることになるので、なるたけ情報収集なんかやりたくないよね...  
  





<h1 id="aRules">リポジトリの利用規約 / Repository terms</h1>  

本項目では、githubの各リポジトリの共通的な利用規約について定めます。  


* 本規約は、リポジトリ上の文章、数値などのデータ、ソースコード、  
  ユーザアカウント情報、コメント、リンク先の情報など情報全てに適用されます。  

* 本リポジトリはフリーウェア規約に準拠します。

* **当リポジトリのソースコードの改造、改造物の配布は自由に行えます。**  
  **ただし、リポジトリのクローンは【禁止〗とします**。  

* リポジトリのソースコード使用の許諾、謝辞については不要です。  

* 著作権について。

  * 特に明記のないものはわたし Korei にあります。  

  * 別途著作権表記のある素材の利用については、各著作者に著作権があります。  

* 免責事項について。  

  * 本リポジトリの品質、正常性、正確性には万全を期しておりますが、  
    当サイトの情報やコンテンツを用いたことによるトラブル、不具合、損害などについて、  
    当方は一切責任を負いません。  

  * 本リポジトリをご使用する際は、ブランチの管理、ご自身の端末のセキュリティ対策、  
    データバックアップ対策、にご留意ください。  

  * 予告なくリポジトリの内容が変更されたり、削除される場合があります。  

  * 本リポジトリを重要なシステム（交通インフラ、生命維持、金融システムなど）に使用しないでください。  

* お問い合わせについて。  

  * ポジティブなご意見、ご感想があれば、開発者ホームページ記載の連絡先までお願いします。  
    誠意あるメッセージについては、大変励みになります。  

  * ご要望については対応する補償はありませんが、  
    参考ご意見として送っていただけると大変励みになります。  

  * その他、仕様に関するお問い合わせ、不具合へのクレームは受け付けません。  

  * 第三者を介したトラブル解決の際、当方の名称を出すのはご遠慮ください。  
  
  　　[[連絡先ページ]](https://website.koreis-labo.com/rules/address.htm)  
  






<h1 id="aAcknowledgment">謝辞 / Acknowledgment</h1>  
**※敬称略**  
* [プリ画像](https://prcm.jp/)  
  壁紙(星空)
  

* [オニコス(株)](https://www.onicos.co.jp/)  
  暗号化スクリプト
  





<h1 id="aMaterial">参考資料 / Reference material</h1>  
**※敬称略**  
* [アニヲタWiki(仮)](https://w.atwiki.jp/aniwotawiki/pages/39066.html)  
  




***
::Game Site= [https://galaxy-fleet.koreis-labo.com/](https://galaxy-fleet.koreis-labo.com/)  
::github= [https://github.com/korei-xlix/galaxyfleet](https://github.com/korei-xlix/galaxyfleet)  
::Public X= [https://twitter.com/korei_sup](https://twitter.com/korei_sup)  
  
::Deverop= Samafeald (@samafeald)  
::X= [https://twitter.com/samafeald](https://twitter.com/samafeald)  
  

***
[[トップへ戻る]](/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
