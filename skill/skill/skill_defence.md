# Galaxy Fleet：機能仕様：防御機能

## Galaxy Fleet：Skill Specifications：Defence Skill

## このドキュメントについて / About this document

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  
このドキュメントは「Galaxy Fleet」の機能のうち、防御機能について定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  





## 目次 / Table of contents

* [readme.md](/readme.md)

* [機能仕様](/skill/readme.md)

* 各機能
  * [物理防御](#物理防御--defence)
  * [対空防御](#対空防御--anti-air-defence)
  * [航空防御](#航空防御--airplane-defence)





## 物理防御 / Defence

[目次へ戻る](#目次--table-of-contents)  
  

### 重盾 / Heavy Shield
  
重盾装甲が使用できるようになる機能です。  
重盾で攻撃を防げます。  
重盾装甲を装備すると、防御効果が発生します。  
　　追加機能：重盾交換  
　　発生効果：重盾防御  


## 護衛指示 / Escort Instructions
  
艦隊内の駆逐艦、もしくは護衛艦に自艦を護衛させます。  
駆逐艦、護衛艦がいないと発動しません。  
　　発生効果：護衛中  





## 対空防御 / Anti Air Defence

[目次へ戻る](#目次--table-of-contents)  
  

### 迎撃 / Interception
  
電子性能に関わらず迎撃ミサイルが装備できるようになる機能です。コストも半減します。  
迎撃ミサイルを装備している場合、迎撃準備ができます。  
　　追加機能：迎撃準備  


### 迎撃準備 / Preparing for Interception
  
迎撃ミサイルを発射準備態勢にセットします。  
迎撃ミサイルの残弾がないと発動しません。  
　　前提機能：迎撃  
　　発生効果：Ｍ迎撃  






## 航空防御 / Airplane Defence

[目次へ戻る](#目次--table-of-contents)  
  

### 空母直掩 / Air Carrier Direct Flight
  
空母直掩（くうぼちょくえん）  
搭載中の戦闘機を発艦させて、空母を護衛させます。戦闘機が残存していないと発動しません。  
直掩中、戦闘機が０機になると直掩は解除されます。  
また直掩機は航空戦に参加できません。  
　　発生効果：直掩中  






## xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



## 反射板
**[Refrection Boad]**  
装甲反射板が使用できるようになる機能です。  
反射板を装備している場合、反射板を展開することができます。  


## 耐戦車砲
**[Anti Tank Gun]**  
耐戦車砲装甲板が搭載できるようになります。  







<h1 id="aDefenceSkill">防御支援 / Defence Kind</h1>  
  
[目次へ戻る](#aMokuji)  
  


<h2>舟艇護衛 / Boat Direct Flight</h2>  
搭載中の装載艇を発艦させて、空母を護衛させます。装載艇が残存していないと発動しません。  
直掩中、戦闘機が０機になると直掩は解除されます。  
また直掩の装載艇は通常の戦闘に参加できません。  
　　発生効果：舟護中  
  



<h2>陸戦防衛 / Land Warfare Defense</h2>  
搭載中の戦隊に護衛型の陸戦歩兵がいる場合、そのうちの１隊を陸防中にします。  
所属艦隊の艦船が陸戦移乗を受けたら、陸防中の陸戦歩兵を自動派遣し、迎撃に回せます。  
　　発生効果：陸防中  
  

<h2>陸戦阻止 / Stop Land Warfare</h2>  
搭載中の戦隊に護衛型の陸戦歩兵がいる場合、その艦船を陸阻中にします。  
所属艦隊の艦船が陸戦移乗を受けたら、身代わりで対象艦と入れ替わり、搭載中の陸戦歩兵を派遣し、迎撃に回せます。  
　　発生効果：阻止中  
  

<h2>護衛後送 / Escort Post</h2>  
被弾した艦に護衛艦をつけて単独で退避させることができます。  
また被弾した護衛艦と、手持ちの無傷の護衛艦と入れ替えできます。  
　　発生効果：護衛・護衛中、護衛・後送中  
  

<h2>護衛増援 / Escort Reinforcement</h2>  
隣接ヘックスで護衛艦が撃沈されていたり、護衛艦の枠がある場合、  
手持ちの無傷の護衛艦を送ることができます。  
  













***
[[トップへ戻る]](/readme.md)　/
[[機能仕様]](/skill/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
