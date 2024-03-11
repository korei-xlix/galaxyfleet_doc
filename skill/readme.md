# Galaxy Fleet：機能仕様

## Galaxy Fleet：Skill Specifications

## このドキュメントについて / About this document

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  
このドキュメントは「Galaxy Fleet」の機能（スキル、バフ、デバフ）の種類、定義を記載するものです。  
なおシステム設計の機能仕様のことではありません。  
その他の仕様についてはreadmeの目次を確認してください。  





## 目次 / Table of contents

* [readme.md](/readme.md)

* [機能の定義](#機能の定義--definition-of-skill)
* [機能種類](#機能種類--skill-kind)
* [効果種類](#効果種類--buff-kind)





## 機能の定義 / Definition of Skill

機能（スキル）は、艦船や装備品についていて、様々な上昇効果や減衰効果を生みだします。  
  

* **機能（スキル）**  
  兵器に上昇効果や減衰効果を付与したり、追加の装備品を装備できるようにしたりする能力です。  
  兵器に内蔵されていたり、装備品についていたり、兵器や装備品に付与したりできます。  
  機能は３種類あります。  
  
  * **動的機能（アクティブスキル）**  
    動的に発動する機能です。  

  * **受的機能（パッシブスキル）**  
    受動的に発動する機能です。  

  * **装備機能**  
    特殊な装備や固定装備を装備することができる機能です。  
  

* **上昇効果（バフ）**  
  機能により兵器に与える上昇効果です。  
  味方を有利にしたり、様々な支援効果を与えたりします。  

* **減衰効果（デバフ）**  
  機能により兵器に与える減衰効果です。  
  敵を妨害したり、性能に制限を与えたりして、味方を有利に、敵を不利にします。  





## 機能種類 / Skill Kind

[目次へ戻る](#目次--table-of-contents)  
  

兵器についてる機能で使用可能になる装備や、機能が発動することで発生効果が付加されます。  

* [攻撃機能](skill/skill_attack.md)  
  敵の兵器を攻撃したり、攻撃を強化するための機能です。  

* [防御機能](skill/skill_defence.md)  
  発動した兵器や味方の兵器を敵の攻撃から防御したり、妨害する機能です。  

* [回復機能](skill/skill_repair.md)  
  船体の修理、弾薬の補充、搭載機の補充など、回復に関する機能です。  

* [電子機能](skill/skill_electric.md)  
  電子装置による補助、妨害、索敵、作戦指揮、通信する機能です。  

* [移動機能](skill/skill_moved.md)  
  マップ移動の補助機能です。  

* [変形機能](skill/skill_change.md)  
  ユニットの変形、装備換装の機能です。  

* [搭載機能](skill/skill_onbord.md)  
  搭載機の搭載機能、支援機能、搭載機数の拡張、搭載装備の補助機能です。  

* [戦略機能](skill/skill_strategy.md)  
  建築や採取に関する機能です。  





## 効果種類 / Buff Kind

[目次へ戻る](#目次--table-of-contents)  
  

"発生効果"は機能の影響を受けて発生する効果です。  
RPGで言うバフ、デバフです。仕分けは以下のようになってます。  

* [攻撃効果](debuff/debuff_attack.md)  
  攻撃により付加する減衰効果です。  
  付加することでダメージを与えたり、性能や機能を制限させたり、使用不能にしたりします。  

* [妨害効果](debuff/debuff_jumming.md)  
  電子装置などで間接的に付加する減衰効果です。  
  付加することで性能や機能を制限させます。  

* [支援効果](buff/buff_support.md)  
  機能を発動した際に影響下にあることで付加する支援効果です。  
  影響下にある兵器の性能を向上させたりします。  

* [防御効果](buff/buff_defence.md)  
  機能を発動した際に影響下にあることで付加する支援効果です。  
  影響下にある兵器を敵の攻撃から防御したり、ダメージを軽減します。  

* [地形効果](terrain/terrain_effect.md)  
  兵器が侵入している地形により付加される効果です。  
  入った地形により、有利、不利が分かれます。  





***
[[トップへ戻る]](/readme.md)　/
[[機能仕様]](/skill/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
