# Galaxy Fleet
  
<h1>～機能仕様～ :: 支援効果</h1>  
<h2>～Skill Specifications～ :: Support Buff</h2>  
  

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメントは「Galaxy Fleet」の機能のうち、支援効果について定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  
  





<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)
* [スキル仕様](readme.md)

* [砲撃系](#aAttackSkill)
* [雷撃系](#aAttackSkill)
* [対空攻撃系](#aAttackSkill)
* [対潜攻撃系](#aAttackSkill)
* [航空攻撃系](#aAttackSkill)
* [歩兵攻撃系](#aAttackSkill)
* [電子戦系](#aAttackSkill)
  





<h1 id="aAttackSkill">砲撃系 / Attack Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  



## 分艦隊・指揮
**[Conductor Squadron Fleet]**  
分艦隊を指揮している艦船です。被弾すると解除されます。  


## 分艦隊
**[Designation Squadron Fleet]**  
分艦隊に指定されている艦船です。指揮艦で解除の条件が発生した場合、解除されます。  
ターン終了時にバフが残っている場合、指揮艦との連携攻撃が発生します。  


## ドローン起動中
**[Drone Running]**  
ドローンが次の何れかの起動モードで起動しています。  

* 手動モード  
  通常起動します。  
  このモードはプレイヤーがフルコントロールします。  
  ボーナスは発生しません。  

* 迎撃モード  
  このモードは母艦の周辺にドローンを配置し、攻撃してきた目標を自動攻撃します。  
  戦闘性能全体、被弾回避が上昇します。  

* 攻撃モード  
  このモードはドローンに攻撃したり、ドローンが攻撃を検知した最も近い目標を自動攻撃します。  
  戦闘性能全体、補足が上昇しますが、被弾回避が下がります。  

* 哨戒モード  
  このモードは母艦の周辺偵察をおこない、ドローンから最も近い目標を自動攻撃します。  
  探知、戦隊視認が上昇しますが、戦闘性能全体が下がります。  

* 殲滅モード  
  このモードはドローンから最も近い目標を自動攻撃します。  
  戦闘性能全体がかなり上昇しますが、探知、戦隊視認、被弾回避が下がります。  


## 航空・指揮
**[Conductor Air Squadron]**  
航空隊を指揮している艦船です。被弾すると解除されます。  


## 陸戦・指揮
**[Conductor Land Squadron]**  
陸戦隊を指揮している艦船です。被弾すると解除されます。  


## 護衛・護衛中
**[Escort During]**  
護衛後送で護衛中の護衛艦です。  


## 護衛・後送中
**[Escort Postponed]**  
護衛後送で後送中（被護衛の艦船）の艦船です。  


## 牽引・牽引中
**[Towing Puller]**  
牽引している方の兵器です。  


## 牽引
**[Towing]**  
牽引されている兵器です。  


## 採掘中
**[Mining]**  
採掘中の兵器です。一定時間で資源が採掘できます。  
止めるまで他の行動ができません。  


## 車両展開中
**[Vehicle Deployment]**  
トレーラを展開しています。移動できません。  






***
[[トップへ戻る]](/readme.md)　/
[[機能仕様]](/skill/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::Twitter= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
