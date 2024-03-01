# Galaxy Fleet
  
<h1>～機能仕様～ :: 攻撃機能</h1>  
<h2>～Skill Specifications～ :: Attack Skill</h2>  
  

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメントは「Galaxy Fleet」の機能のうち、攻撃機能について定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  
  





<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)
* [スキル仕様](readme.md)

* [砲撃系](#aAttackSkill)
* [雷撃系](#aAttackSkill)
* [ミサイル系](#aAttackSkill)
* [対空攻撃系](#aAttackSkill)
* [対潜攻撃系](#aAttackSkill)
* [航空攻撃系](#aAttackSkill)
* [歩兵攻撃系](#aAttackSkill)
* [その他特殊](#aAttackSkill)
  





<h1 id="aAttackSkill">砲撃系 / Attack Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  

<h2>突撃 / Charge</h2>  
砲戦フェーズ時、一番先と、通常の手番の二回攻撃ができます。  
高速艦用ブーストキットを装備してないと発動できません。  
  

<h2>遊撃 / Shortstop</h2>  
長距離戦フェーズ時、自艦を捕捉してない敵艦に砲撃が行えます。  
ただし、早期警戒機能がある兵器がいると発動できません。  
  

<h2>狙撃 / Snipe</h2>  
コンポジットレーザで超大遠距離射撃を行います。装備してないと発動しません。  
長距離戦フェーズ時、補足してない敵に索敵判定を行い、成功すれば先制攻撃ができます。  
また攻撃が命中した場合、そのターン、攻撃を受けません。ただし砲戦フェーズには参加できません。  
  

<h2>威嚇 / Menacing</h2>  
抵抗する目標に通信や砲撃で脅し、停船や抵抗の停止を呼びかけます。  
捜査官の熟練レベルがあがると成功しやすくなります。  
停船に応じられると、アイテムを没収したり、鹵獲の可能性がでてきます。  
  

<h2>先読み / Lookahead</h2>  
自走砲や自走ロケットで攻撃された際、攻撃前にこちらから攻撃できます。  
地上からの遠距離射撃への回避力が 70％ 上昇します。  
ただし、近距離からの射撃は 30％ あがってしまいます。  
  


## 要塞砲
**[Fortress Cannon]**  
艦船にも要塞砲が搭載できるようになる機能です。コストも半減します。  


## 狙撃手
**[Sniper]**  
艦船にもコンポジットレーザが搭載できるようになる機能です。コストも半減します。  
　　追加機能：狙撃  

## 戦車破壊者
**[Tank Destroyer]**  
コストなしで対戦車ライフルキャノンが使用できるようになる機能です。  







<h1 id="aAttackSkill">雷撃系 / Attack Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  

<h2>重雷撃 / Torpedo Outburst</h2>  
雷撃フェーズ時、射程内全ての艦に対して雷撃を２回ずつ行います。  
弾は撃った分だけ消費します。  
  

<h2>潜航急襲 / Submarine Raid</h2>  
フェーズの最初に射程内の1隻に対して魚雷攻撃をおこないます。  
ただし潜航艦は対象外です。潜航中でないと発動しません。  
  



## トーピードマニア
**[Missile Mania]**  
魚雷の搭載コストが半減します。また最大弾数が1.5倍になります。  








<h1 id="aAttackSkill">ミサイル系 / Attack Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  

## ミサイルマニア
**[Missile Mania]**  
ミサイルの搭載コストが半減します。また最大弾数が1.5倍になります。  


## ハイパーミサイル
**[Hyper Missile]**  
ハイパーミサイルが使用できるようになる機能です。  







<h1 id="aAttackSkill">対空攻撃系 / Attack Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  

<h2>トンボ取り / Dragonfly Removal</h2>  
航空機へのダメージが 2倍 になり、命中率が30％向上します。  
ぐはっはっは、面白いようによく落ちる。まるでトンボとりでもしているようだな  
  





<h1 id="aAttackSkill">対潜攻撃系 / Attack Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  

<h2>先制対潜 / First Anti Submarine</h2>  
砲戦フェーズ時、射程内に潜水艦がいたら対潜攻撃が行えます。  
通常の砲撃もおこなえます。  
  

<h2>潜航艦狩り / Submarine Hunting</h2>  
フェーズの最初に射程内全ての潜航艦に対して雷撃を１回ずつ行います。  
弾は撃った分だけ消費します。  
また潜航艦から攻撃を受け、回避した場合、反撃の雷撃ができます。  
  





<h1 id="aAttackSkill">航空攻撃系 / Attack Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  

<h2>要撃 / Airplane Interception</h2>  
発動したターンは空戦フェーズ前に敵機動兵器隊を攻撃できます。  
機動兵器隊からの反撃は受けません。  
  

<h2>空襲 / Air Raid</h2>  
自艦を降下することなく、戦術マップ上の陸戦兵器を攻撃します。  
ただし空襲に使用できる武器（ミサイル、爆弾など）がないとできません。  
防衛兵器は攻撃できません。  
  

<h2>反転攻撃 / Reverse Air Attack</h2>  
雷撃フェーズ時、艦載機が残存していれば追加で航空攻撃ができます。反撃は受けません。  
発進強化飛行甲板を装備してないと発動しません。  
  

<h2>高速展開 / Charge</h2>  
航空攻撃フェーズ時、一番先に発艦すると同時に攻撃ができます。  
高速飛行甲板を装備してないと発動しません。  
  

<h2>航空要撃 / Air Interceptor</h2>  
母艦で捕捉している場合、空戦フェーズ前に搭載機を発艦させ、敵機動兵器隊を攻撃できます。  
機動兵器隊からの反撃は受けません。  
  

<h2>急降下爆撃 / Dive Bomber</h2>  
爆弾による対艦攻撃の命中率があがり、艦船の対空攻撃力が低くなります。  
  

<h2>集中爆撃 / Area Bombardment</h2>  
泊地で爆弾による戦車、施設攻撃時、攻撃力があがります。  
ただし、制空権がないと発動しません。  
  







<h1 id="aAttackSkill">歩兵攻撃系 / Attack Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  

<h2>空挺 / Airborne</h2>  
自艦もしくは自機を降下することなく、搭載機を降下地点に降下させます。  
  

<h2>陸戦移乗 / Land Warfare Transfer</h2>  
発動したターンで被弾しなかった場合、次のターンで中に配備している歩兵を目標艦に移乗させることができます。  
移乗した歩兵は接近戦用武器、バックラーしか使えません。  
  





<h1 id="aAttackSkill">その他特殊 / Attack Kind</h1>  
  
  [目次へ戻る](#aMokuji)  
  

<h2>自爆 / Self Destruct</h2>  
目標艦の近くで兵器もろとも自爆します。  
兵器は消失しませんが、撃沈扱いになります。回復するには生産と同じコストがかかります。  
爆弾を装備し、かつ残弾数がないと発動しません。  
  




## 隠し武器
**[Hidden Weapon]**  
この機能がついている場合、通常では装備できない武器を１つ追加装備できます。  
レアなユニーク機能です。  







***
[[トップへ戻る]](/readme.md)　/
[[機能仕様]](/skill/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::Twitter= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
