# Galaxy Fleet
  
<h1>～機能仕様～ :: 防御機能</h1>  
<h2>～Skill Specifications～ :: Defence Skill</h2>  
  

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメントは「Galaxy Fleet」の機能のうち、防御機能について定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  
  





<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)
* [スキル仕様](readme.md)

* [物理防御](#aDefenceSkill)
* [電子防御](#aDefenceSkill)
* [防御支援](#aDefenceSkill)
  







<h1 id="aDefenceSkill">物理防御 / Defence Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  

<h2>重盾展開 / Open Heavy Shield</h2>  
重盾を展開します。重盾装甲を装備してないと発動しません。  
展開中は追加の防御バフが得られます。得られるバフは盾の性能によります。  
　　発生効果：重盾防御  
  

<h2>迎撃準備 / Preparing for Interception</h2>  
迎撃ミサイルを発射準備態勢にセットします。装備していないと発動しません。  
展開中は追加の防御バフが得られます。  
　　発生効果：Ｍ迎撃  
  



## 迎撃
**[Interception]**  
電子性能が足りなくても迎撃ミサイルが装備できるようになる機能です。コストも半減します。  
迎撃ミサイルを装備している場合、迎撃準備ができます。  
　　追加機能：迎撃準備


## 反射板
**[Refrection Boad]**  
装甲反射板が使用できるようになる機能です。  
反射板を装備している場合、反射板を展開することができます。  


## 耐戦車砲
**[Anti Tank Gun]**  
耐戦車砲装甲板が搭載できるようになります。  







<h1 id="aDefenceSkill">防御支援 / Defence Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  

<h2>空母直掩 / Air Carrier Direct Flight</h2>  
空母直掩（くうぼちょくえん）  
搭載中の戦闘機を発艦させて、空母を護衛させます。戦闘機が残存していないと発動しません。  
直掩中、戦闘機が０機になると直掩は解除されます。  
また直掩機は航空戦に参加できません。  
　　発生効果：直掩中  
  

<h2>護衛指示 / Escort Instructions</h2>  
艦隊内の駆逐艦、もしくは護衛艦に自艦を護衛させます。駆逐艦、護衛艦がいないと発動しません。  
　　発生効果：護衛中  
  

<h2>舟艇護衛 / Boat Direct Flight</h2>  
搭載中の装載艇を発艦させて、空母を護衛させます。装載艇が残存していないと発動しません。  
直掩中、戦闘機が０機になると直掩は解除されます。  
また直掩の装載艇は通常の戦闘に参加できません。  
　　発生効果：舟護中  
  

<h2>艦隊防空 / Fleet Air Defense</h2>  
搭載中の戦闘機を発艦させて、艦隊を護衛させます。戦闘機が残存していないと発動しません。  
直掩中、戦闘機が０機になると直掩は解除されます。  
また艦隊防空中の機は航空戦に参加できません。  
　　発生効果：防空中  
  


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
  







## 装甲甲板
**[Armor Deck]**  
コストなしで甲板重装甲化が搭載できるようになります。  


## 強化甲板
**[Reinforced Deck]**  
コストなしで強化カタパルトが搭載できるようになります。  
　　追加機能：迎撃準備  






***
[[トップへ戻る]](/readme.md)　/
[[機能仕様]](/skill/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::Twitter= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
