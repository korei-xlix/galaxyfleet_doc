# Galaxy Fleet：機能仕様：変形機能

## Galaxy Fleet：Skill Specifications：Change Skill

## このドキュメントについて / About this document

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  
このドキュメントは「Galaxy Fleet」の機能のうち、変形機能について定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  





## 目次 / Table of contents

* [readme.md](/readme.md)

* [機能仕様](/skill/readme.md)

* 各機能
  * [装備換装](#装備換装--equipment-replacement-skill)
  * [変形](#変形--transformation)
  * [分離合体](#分離合体--separation-and-ombination)





## 装備換装 / Equipment Replacement Skill

[目次へ戻る](#目次--table-of-contents)  
  

### 装備換装 / Wepon Set Change  
  
装備セットの換装を行います。  
ただし、換装できるのは着陸中、艦艇に搭載中か、艦艇が入港中のときのみです。  




## 変形 / Transformation

[目次へ戻る](#目次--table-of-contents)  
  

### 甲板切替 / 
  
戦闘空母の甲板を砲撃モード、航空甲板モードに切り替えます。  
　　前提機能：戦闘甲板  
  





## 分離合体 / Separation and ombination

[目次へ戻る](#目次--table-of-contents)  
  






## xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



<h1 id="aEquipmentReplacementSkill">装備換装機能 / Equipment Replacement Skill</h1>  
  
[目次へ戻る](#aMokuji)  
  

<h2>換装機構 / Replacement Mechanism</h2>  
歩兵用の機能です。この機能がある場合、母艦が近くにあったらターン消費なしに換装変形が可能です。  
換装によりボーナス値、機能が変化します。  
換装できるパーツを失ったら、その換装はできません。  
換装時にバックラーはチャージされます。  

* **砲撃換装　[Bombardment Replacement]**  
  砲撃特化の換装モードです。手持ちで保有している武器全てを同一ターンで攻撃に使用できます。  
  生存-20％、機動-30％  

* **機動換装　[Mobile Replacement]**  
  機動性に特化した換装モードです。地形の効果を受けずに移動できます。  
  生存-20％、機動+30％  

* **防御換装　[Defensive Replacement]**  
  防御特化の換装モードです。戦闘中に消費した盾を交換します。交換は所持している枚数回行えます。  
  防御換装した際、バックラーは2個にリチャージされます。  
  生存+20％、機動-30％  

* **格闘換装　[Fighting Replacement]**  
  格闘特化の換装モードです。接近戦用武器で攻撃した場合、ダメージが2倍になります。  
  浮遊移動の効果が無効になります。  
  生存+20％、機動+30％  


<h2>コンテナ / Container</h2>  
コンテナを搭載したり、入れ替えしたりできます。  
コンテナの乗せ換えは司令部でしかできません。  
  






<h1 id="aTransformationSkill">変形機能 / Transformation Skill</h1>  
  
[目次へ戻る](#aMokuji)  
  

<h2>可変機構 / Variable Mechanism</h2>  
歩兵用の機能です。この機能がある場合、ターン消費なしに変形が可能です。  
形態によりボーナス値、機能が変化します。  
変形できるタイプは、機体により異なります。  

* **飛行形態　[Flight Form]**  
  戦闘機の形に変形します。地形の効果を受けずに移動できます。  
  ただし、格闘武器やバックラーは使用できなくなります。  
  生存-20％、機動+30％  

* **戦車形態　[Tank Form]**  
  戦車の形に変形します。手持ちで保有している武器全てを同一ターンで攻撃に使用できます。  
  ただし、格闘武器やバックラーは使用できなくなります。  
  生存+20％、機動-30％  

* **射撃形態　[Shooting Form]**  
  手持ちで保有している武器全てを同一ターンで攻撃に使用できます。  
  ただし、射撃したターンは移動できません。  
  生存-20％、機動-30％  
  

<h2>戦闘甲板切替 / Change Battle Deck</h2>  
戦闘甲板を主砲モード、飛行甲板モードに切替ます。  
移動中でも戦闘中でもいつでも切替が可能です。  
主砲モードのときは艦載機の離発艦ができません。  
  




## 車両展開
**[Vehicle Deployment]**  
トレーラを固定し、載せている設備を使用できる状態にします。  
展開中は移動できません。  





<h1 id="aSeparationAndCombinationSkill">分離合体機能 / Separation and ombination Skill</h1>  
  
[目次へ戻る](#aMokuji)  
  

<h2>分離機構 / Separation Mechanism</h2>  
歩兵用の機能です。この機能がある場合、ターン消費なしに分離、合体が可能です。  
分離状態の場合、地形の効果を受けずに移動できます。手持ちで保有している武器全てを同一ターンで攻撃に使用できます。  
ただし、格闘武器やバックラーは使用できなくなります。  
生存-20％、機動+40％  
  













***
[[トップへ戻る]](/readme.md)　/
[[機能仕様]](/skill/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
