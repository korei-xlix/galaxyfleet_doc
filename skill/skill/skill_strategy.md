# Galaxy Fleet：機能仕様：戦略機能

## Galaxy Fleet：Skill Specifications：Strategy Skill

## このドキュメントについて / About this document

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  
このドキュメントは「Galaxy Fleet」の機能のうち、戦略機能について定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  





## 目次 / Table of contents

* [readme.md](/readme.md)

* [建築](#建築--architecture)
* [設置](#設置--installation)
* [資源](#資源--material)
* [その他戦略](#その他戦略--other-strategy)





## 建築 / Architecture

[目次へ戻る](#目次--table-of-contents)  
  

### 工作設備 / Engineerging Equipment
  
工作用資材の格納庫、建築作業アーム、回収保管庫のセットです。  
基地施設のの建築、修理、解体もできますが、ターンがかなりかかります。  
浮遊兵器、設置兵器の設置、修理、回収ができます。  
建築、設置する際、工作用資材を消費します。  
搭載物の補充はできません。  
　　機能追加：施設建築、施設修理、施設解体  
　　　　　　　兵器設置、兵器修理、兵器回収  
　　搭載可能：浮遊兵器、設置兵器、工作用資材  


### 建築設備 / Architecture Equipment
  
工作用資材の格納庫、建築作業アーム、回収保管庫のセットです。  
基地施設のの建築、修理、解体は素早くできます。  
浮遊兵器、設置兵器の設置、修理、回収ができます。  
建築、設置する際、工作用資材を消費します。  
搭載物の補充はできません。  
　　機能追加：施設建築、施設修理、施設解体、建築加速  
　　　　　　　兵器設置、兵器修理、兵器回収  
　　搭載可能：浮遊兵器、設置兵器、工作用資材  


## 施設建築 / Facility Architecture
  
建築可能宙域か、上陸地点のローカルマップに基地施設を建築します。  
建築する際、工作用資材を消費します。  
　　発動効果：建築中  


## 施設修理 / Facility Repair
  
隣接する施設か、上陸地点のローカルマップの基地施設を修理します。  
修理する際、工作用資材を消費します。  
　　発動効果：建築中  


## 施設解体 / Facility Demolition
  
隣接する施設か、上陸地点のローカルマップの基地施設を解体します。  
解体したあと、建築に使った資材を回収できます。  
　　発動効果：建築中  


## 建築加速 / Architecture Boostup
  
この機能があると施設の建築速度が向上します。  





## 設置 / Installation

[目次へ戻る](#目次--table-of-contents)  
  

### 設置設備 / Construction Equipment
  
工作用資材の格納庫、設置作業アーム、回収保管庫のセットです。  
浮遊兵器の設置、修理、回収ができます。設置する際、工作用資材を消費します。  
搭載物の補充はできません。  
　　機能追加：兵器設置、兵器修理、兵器回収  
　　搭載可能：浮遊兵器、工作用資材  


### 敷設設備 /  
  
工作用資材の格納庫、敷設作業アーム、回収保管庫のセットです。  
設置兵器の設置、修理、回収ができます。設置する際、工作用資材を消費します。  
搭載物の補充はできません。  
　　機能追加：兵器設置、兵器修理、兵器回収  
　　搭載可能：設置兵器、工作用資材  


## 兵器設置
  
設置可能宙域か、上陸地点のローカルマップに搭載中の浮遊兵器、設置兵器を建築します。  
設置する際、工作用資材を消費します。  
　　発動効果：設置中  


## 兵器修理
  
隣接する設置兵器か、上陸地点のローカルマップの浮遊兵器、設置兵器を修理します。  
修理する際、工作用資材を消費します。  
　　発動効果：設置中  


## 兵器回収
  
隣接する設置兵器か、上陸地点のローカルマップの浮遊兵器、設置兵器を回収します。  
回収した兵器は格納されるか、資材に分解して回収することもできます。  
　　発動効果：設置中  





## 資源 / Material

[目次へ戻る](#目次--table-of-contents)  
  





## その他戦略 / Other Strategy

[目次へ戻る](#目次--table-of-contents)  
  









## xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



## 設置回収
**[Installation Recycling]**  
設置兵器を発見して、現場で解体して資源化します。  
資源化するには、資源を搭載する容量が必要です。  
設置回収設備を装備していないと発動しません。  


## 処理班
**[Processing Groupy]**  
設置回収設備が使用できるようになる機能です。  

## 工事屋
**[Contractor]**  
敷設用設備が使用できるようになる機能です。  


## 回収業者
**[Collection Company]**  
回収用設備が使用できるようになる機能です。  

## 土建屋
**[General Contractor]**  
建築用設備が搭載できるようになります。  


## 工兵
**[Engineer]**  
設置用設備が搭載できるようになります。  







<h1 id="aReload">資源系 / Reload</h1>  
  
[目次へ戻る](#aMokuji)  
  







## 資源採掘
**[Mining]**  
戦場で資源採掘ができます。  
資源採掘設備か簡易採掘設備を装備してないと発動しません。  
　　発生効果：採掘中  

## 戦車回収
**[Tank Recycling]**  
破壊された陸戦兵器や防衛兵器を回収したり、現場で解体して資源化したりできます。  
回収した兵器は、破壊された時のダメージの総量で計算され、生き残りの残機を再利用できます。  
残りは資源化されます。  
資源化するには、資源を搭載する容量が必要です。  
戦車回収設備を装備していないと発動しません。  


## 再利用業者
**[Recycling Industry]**  
戦車回収設備が使用できるようになる機能です。  







<h1 id="aReload">建築系 / Reload</h1>  
  
[目次へ戻る](#aMokuji)  
  







<h1 id="aReload">その他戦略 / Reload</h1>  
  
[目次へ戻る](#aMokuji)  
  



## 地質学者
**[Geologist]**  
地形観測設備が使用できるようになる機能です。  


## 気象予報士
**[Weather Forecaster]**  
気象観測設備が搭載できるようになります。  


## 転送者
**[Operator]**  
転送設備が搭載できるようになります。  

## 穴掘り
**[Digging]**  
簡易採掘設備が搭載できるようになります。  


## 工夫
**[Miner]**  
資源採掘設備が搭載できるようになります。  


## 船大工
浮きドック設備が搭載できるようになります。  



## 工場長
兵器生産設備が搭載できるようになります。  


## 工作員
**[Worker]**  
工作用設備が搭載できるようになります。  






***
[[トップへ戻る]](/readme.md)　/
[[機能仕様]](/skill/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
