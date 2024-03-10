# Galaxy Fleet ～機能仕様：回復機能～
  
<h1>～機能仕様：回復機能～</h1>  
<h2>～Skill Specifications：Repair Skill～</h2>  
  

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメントは「Galaxy Fleet」の機能のうち、回復機能について定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  
  





<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)
* [スキル仕様](/skill/readme.md)

* [弾薬補充](#aReload)
* [修理](#aRepair)
* [補充](#aReplenishment)
  





<h1 id="aReload">弾薬補充 / Reload</h1>  
弾薬補充機能もしくは、弾薬補充機能つきの機能です。  
  
[目次へ戻る](#aMokuji)  
  

<h2>重盾交換 / Change Heavy Shield</h2>  
重盾を交換します。  
交換できる予備盾が必要です。  
　　前提機能：重盾  
  

<h2>砲身換装 / </h2>  
長距離砲の砲身を交換します。  
交換できる砲身が必要です。  
　　前提機能：狙撃  
  





<h1 id="aRepair">修理 / Repair</h1>  
  
[目次へ戻る](#aMokuji)  
  





<h1 id="aReplenishment">補充 / Replenishment</h1>  
  
[目次へ戻る](#aMokuji)  
  









## xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx





<h2>重盾 / Heavy Shield</h2>  
重盾装甲が使用できるようになる機能です。  
重盾を装備している場合、重盾を展開することができます。  
　　付加スキル：重盾交換、重盾展開
戦闘中に消費した盾を交換します。  
交換は所持している換装用重盾の数回行えます。  



<h2>重盾交換 / Exchange Heavy Shield</h2>  

## 重盾
**[Heavy Shield]**  




## ドリル交換
**[Drill Eeplacement]**  
破損したドリルを交換します。交換は所持している枚数回行えます。  

## 盾交換
**[Shield Exchange]**  
戦闘中に消費した盾を交換します。交換は所持している枚数回行えます。  
この機能がある場合、コストなしでバックラーを2個装備できます。  

## 板交換
**[Boad Exchange]**  
戦闘中に消費した反射板を交換します。交換は所持している枚数回行えます。  
この機能がある場合、コストなしで反射板を2個装備できます。  








<h1 id="aRepairReplenishmentSkill">修理補充機能 / Repair Replenishment Skill</h1>  
  
[目次へ戻る](#aMokuji)  
  

移動修理
艦船の修理ができます。工作用資材を消費します。  
浮きドック設備を装備していないと発動しません。  


移動改造
艦船の改造ができます。工作用資材を消費します。  
浮きドック設備を装備していないと発動しません。  



兵器生産
機動兵器、陸戦兵器を生産します。
兵器生産設備を装備していないと発動しません。  


兵器補充
艦船に生産した兵器を補充します。
兵器生産設備を装備していないと発動しません。  


<h2>補給 / Supply</h2>  
近くの兵器に補給をおこないます。補給用物資を消費します。  
補給用設備を装備していないと発動しません。  
  

<h2>潜航補給 / Dive Supply</h2>  
潜航したまま、潜航艦に補給がおこなえます。補給用物資を消費します。  
補給用設備を装備していないと発動しません。  
  

<h2>航空補給 / Aviation Supply</h2>  
味方の航空隊が同ヘックスにいる場合、弾薬の補給ができます。発動する都度、補給物資を消費します。  
補給用設備を装備してないと発動しません。  
  

<h2>陸戦補給 / Land Supply</h2>  
地上の味方陸戦隊、垂直着陸機に弾薬の補給ができます。発動する都度、補給物資を消費します。  
補給用設備を装備してないと発動しません。  
  


## 応急修理
**[Emergency Repair]**  
戦場や、泊地で兵器の修理をおこないます。工作用資材を消費します。  
工作用設備を装備してないと発動しません。  


## 兵器修理
**[Unit Repair]**  
戦闘兵器を修理します。  
修理には修理用資材を消費します。  
修理用設備を装備してないと発動しません。  


## 補給修理
**[Supply Repare]**  
補給をおこなった際、使用者1機あたり 0.1 機（端数繰り上げ）、相手の残機を回復することができます。  
補給用設備を装備していないと発動しません。  


## 補給係
**[Supply Clerk]**  
補給用設備が使用できるようになります。  


## 修理屋
**[Repair Worker]**  
修理用設備が搭載できるようになります。  





***
[[トップへ戻る]](/readme.md)　/
[[機能仕様]](/skill/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
