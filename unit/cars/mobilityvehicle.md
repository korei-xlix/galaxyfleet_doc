# Galaxy Fleet
  
<h1>～兵器仕様～ :: 機動車両</h1>  
<h2>～Weapon Specifications～ :: Mobility Vehicle</h2>  
  

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメントは「Galaxy Fleet」の兵器のうち、機動車両の定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  
  





<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)
  * [兵器仕様](/unit/readme.md)
  * [兵器種類](/strategypart/readme.md#aUnitKind)
  * [兵器分類](/unit/readme.md#aUnitClass)

  * [兵器分類：機動車両](/unit/readme.md#aMobilityVehicle)

* 兵器標準仕様
  * [LUMV-STD：機動車両](#aMobilityVehicle)
  * [LUMV-HOV：ホバーバイク](#aHoverBike)
  * [LUMV-ELW：電子支援車](#aElectronicSupportVehicle)
  * [LUMV-COM：陸戦指揮車](#aLandCommandVehicle)
  * [LUMV-CAG：補給輸送車](#aSupplyCargoVehicle)
  * [LUMV-MTP：多目的車両](#aMultipurposeVehicle)
  





<h1 id="aMobilityVehicle">LUMV-STD：機動車両 / Mobility Vehicle</h1>  
  [目次へ戻る](#aMokuji)  
  

移動力に優れた軽車両です。タイヤで走行します。  
機関砲、ロケット、ミサイルのうち１種類を選択できます。  
コストは非常に安いです。歩兵を搭載できます。１台だけ車両を牽引することもできます。  
歩兵、歩兵戦車、対空戦車、自走戦車、突撃戦車、支援車両につよいです。
攻撃には非常に弱いです。  

|項目  |設定  |
|:--|:--|
|武器１|機関砲  |
|武器２|ロケット（対歩兵）  |
|武器３|ミサイル（対戦車）  |
|標準  |プラズマガン  |
|      |小型有線誘導ロケットランチャー（対歩兵弾）  |
|      |小型有線誘導ミサイルランチャー（対戦車弾）  |
|機能  |陸戦歩兵、車両牽引  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ×   | 〇   | ▲   | ×   | 〇(+4)   |
  





<h1 id="aHoverBike">LUMV-HOV：ホバーバイク / Hover Bike</h1>  
  [目次へ戻る](#aMokuji)  
  

反重力推進で車体を浮遊させて移動するバイクです。  
歩兵を載せ、地形の影響を受けずに移動できます。  
自動帰還モードがあり、破壊されても復活できる可能性があります。  
歩兵が操縦するので、歩兵が載ってないと動きません。  
戦闘力はありません。  

|項目  |設定  |
|:--|:--|
|武器  |(なし)  |
|標準  |反重力推進装置  |
|機能  |非自律、解脱、自動帰還  |
|搭載  |陸戦歩兵  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ▲   | 〇   | ×   | ×   | 〇(+4)   |
  





<h1 id="aElectronicSupportVehicle">LUMV-ELW：電子支援車 / Electronic Support Vehicle</h1>  
  [目次へ戻る](#aMokuji)  
  

電子戦能力が高い電子戦専用の車両です。  

|項目  |設定  |
|:--|:--|
|武器  |xxx  |
|標準  |xxx  |
|      |xxx  |
|機能  |xxx  |
|搭載  |xxx  |

|耐久  |機動  |電子  |動力  |評価値    |
|:--|:--|:--|:--|:--|
| xxx   | xxx   | xxx   | xxx   | xxx(xxx)   |
  





<h1 id="aLandCommandVehicle">LUMV-COM：陸戦指揮車 / Land Command Vehicle</h1>  
  [目次へ戻る](#aMokuji)  
  

陸戦隊の指揮機能を有する軽車両です。タイヤで走行します。  
ほかの陸戦隊との連携がより機能するようになります。  
補給機能があります。また通信機能もあり、援軍が呼べます。  
戦闘力は低いです。  

|項目  |設定  |
|:--|:--|
|武器  |機関砲  |
|標準  |プラズマガン  |
|      |補給用設備  |
|機能  |陸戦指揮、陸戦補給、陸戦援軍  |
|      |補給係  |
|搭載  |補給用物資  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ×   | 〇   | ▲   | ×   | 〇(+4)   |
  





<h1 id="aSupplyCargoVehicle">LUMV-CAG：補給輸送車 / Supply Cargo Vehicle</h1>  
  [目次へ戻る](#aMokuji)  
  

補給用の大型装甲トラックです。タイヤで走行します。  
歩兵や戦車、垂直着陸機、防衛兵器への補給と修理をおこないます。  
戦闘力は低いです。  

|項目  |設定  |
|:--|:--|
|武器  |機関砲  |
|標準  |プラズマガン  |
|      |補給用設備  |
|機能  |補給係、陸戦補給、補給修理  |
|搭載  |補給用物資  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ▲   | 〇   | ×   | ×   | 〇(+4)   |
  





<h1 id="aMultipurposeVehicle">LUMV-MTP：多目的車両 / Multipurpose Vehicle</h1>  
  [目次へ戻る](#aMokuji)  
  

電子戦能力が高い電子戦専用の車両です。  

|項目  |設定  |
|:--|:--|
|武器  |xxx  |
|標準  |xxx  |
|      |xxx  |
|機能  |xxx  |
|搭載  |xxx  |

|耐久  |機動  |電子  |動力  |評価値    |
|:--|:--|:--|:--|:--|
| xxx   | xxx   | xxx   | xxx   | xxx(xxx)   |
  





***
[[トップへ戻る]](/readme.md)　/
[[兵器仕様]](/unit/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::Twitter= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
