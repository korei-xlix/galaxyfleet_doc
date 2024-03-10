# Galaxy Fleet ～機能仕様：電子機能～
  
<h1>～機能仕様：電子機能～</h1>  
<h2>～Skill Specifications：Electric Skill～</h2>  
  

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメントは「Galaxy Fleet」の機能のうち、電子機能について定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  
  





<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)
* [スキル仕様](/skill/readme.md)

* [偵察](#aReconnaissance)
* [電子妨害](#aElectricAttack)
* [電子防御](#aElectricDefence)
* [指揮機能](#aCommandSkill)
  





<h1 id="aReconnaissance">偵察 / Reconnaissance</h1>  
  
[目次へ戻る](#aMokuji)  
  

<h2>監視者 / Observer</h2>  
レーダを装備している場合、索敵が 30％ 向上します。  
  






<h1 id="aElectricAttack">電子妨害 / Electric Attack</h1>  
  
[目次へ戻る](#aMokuji)  
  









<h1 id="aElectricDefence">電子防御 / Electric Defence</h1>  
  
[目次へ戻る](#aMokuji)  
  







<h1 id="aCommandSkill">指揮機能 / Command Skill</h1>  
  
[目次へ戻る](#aMokuji)  
  

<h2>艦隊統制 / Fleet Control</h2>  
状況判定の共有機能です。  
所属艦隊の艦が攻撃の命中、電子妨害の成功をした場合、その判定値を共有できます。  
ただし、この機能を持ってる艦が被弾、あるいは撃沈した場合、その直後から機能は無効になります。  
指揮設備の装備にコストがかかりません。  
  







## xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



<h1 id="aAttackSkill">電子戦系 / Attack Kind</h1>  
  
[目次へ戻る](#aMokuji)  
  

<h2>妨害 / Jamming</h2>  
電子的な妨害手段で範囲内の艦船のレーダを撹乱します。  
抵抗に失敗するとそのターン妨害状態になります。  
  


## 駆潜
**[Submarine Killer]**
ジェネレータの容量や電子性能に関係なく、高度な対潜武器が搭載できるようになります。  
次元探知拡張装置、爆雷誘導システムのコストが半減します。  



## 高度電子戦
**[Advanced Electronic Warfare]**  
電子性能が足りなくても高度な電子戦装置が使用できるようになる機能です。  
戦術分析システム、高度電子戦システム、電子対抗装置、弾道予測システム、次元追跡システムのコストが半減します。  


## 潜航偵察
**[Dive Reconnaissance]**  
次元偵察装置が使用できるようになる機能です。  


## 潜航偵察
**[Dive Reconnaissance]**  
次元偵察装置が使用できるようになる機能です。  







<h1 id="aCommandSkill">指揮機能 / Command Skill</h1>  
  
[目次へ戻る](#aMokuji)  
  


<h2>航空統制 / Aviation Command</h2>  
状況判定の共有機能です。  
戦術指揮艦がいるヘックス内の航空隊が攻撃の命中、電子妨害の成功をした場合、その判定値を共有できます。  
ただし、戦術指揮艦が被弾、あるいは撃破した場合、その直後から機能は無効になります。  
同ヘックスに航空指揮艦がいる場合は機能しません。  
  

<h2>陸戦統制 / Land Command</h2>  
状況判定の共有機能です。  
戦術指揮艦と同一ヘックスの地上の陸戦隊が攻撃の命中、電子妨害の成功をした場合、その判定値を共有できます。  
ただし、戦術指揮艦がヘックスから離れたり、被弾したり、撃破した場合、その直後から機能は無効になります。  
同ヘックスの地上に陸戦指揮艦がいる場合は機能しません。  
  

<h2>航空指揮 / Aviation Command</h2>  
状況判定の共有機能です。  
航空指揮艦がいるヘックス内の航空隊が攻撃の命中、電子妨害の成功をした場合、その判定値を共有できます。  
ただし、航空指揮艦が被弾、あるいは撃破した場合、その直後から機能は無効になります。  
　　発生効果：航空・指揮  
  

<h2>航空支援 / Aviation Support</h2>  
所属艦隊に航空隊がいる場合、かつ隣接ヘックスで戦闘がおこなわれてる場合、航空隊で援護攻撃ができます。  
また自艦隊の戦闘時、隣接ヘックスに航空隊がいる場合、その航空隊に攻撃させることができます。  
発動する都度、補給物資を消費します。  
  

<h2>航空援軍 / Aviation Reinforcement</h2>  
発動すると、援軍の航空隊を所属艦隊に召集できます。  
その際、補給物資とコストを消費します。  
戦闘が終了すると、援軍は撤兵します。  
このコマンドが使えるのは1戦闘につき1回だけです。  
  

<h2>陸戦指揮 / Land Command</h2>  
状況判定の共有機能です。  
同一の戦術マップに陸戦指揮艦がいる場合、もしくは陸戦指揮車がいる部隊が攻撃の命中、電子妨害の成功をした場合、その判定値を共有できます。  
ただし、陸戦支援艦が同一の戦術マップに居ない場合、かつ陸戦指揮車が被弾、あるいは撃破した場合、その直後から機能は無効になります。  
　　発生効果：陸戦・指揮  
  

<h2>陸戦援軍 / Land Reinforcement</h2>  
発動すると、援軍の陸戦隊を所属艦隊に召集できます。  
その際、補給物資とコストを消費します。  
戦闘が終了するか、陸戦指揮艦が泊地から離脱すると、援軍は撤兵します。  
このコマンドが使えるのは1戦闘につき1回だけです。  
  



## 護衛艦隊
**[Escort Fleet]**  
護衛艦の編成数が 2倍 になります。  


## 訓練
**[Training]**  
戦闘のほか行動をしても搭載中の戦隊や要員のレベルがあがりやすくなります。  


## ドローン制御
**[Drone Control]**  
ドローンの起動モードを設定します。  


## 非自律
**[Non Autonomous]**  
歩兵を搭載していないと行動できません。  








<h1 id="aElectronicWarfare">電子戦系 / Electronic Warfare</h1>  
  
[目次へ戻る](#aMokuji)  
  

## 偵察情報共有
**[Reconnaissance Information Sharing]**  
所属艦隊と隣接する艦隊に偵察機を飛ばしてる場合、索敵が成功しやすくなります。  


## 気象観測
**[Weather Observation]**  
戦場の地形を把握したり、気象予測をおこないます。  
予測により戦場に様々な効果を与えます。  
気象観測設備を装備してないと発動しません。  


## 着弾観測
**[Landing Observation]**  
発見した敵に対する味方の自走砲、自走ロケットなどの長距離攻撃のダメージが 10％ 、命中率が 30％ 向上します。  


<h2>ソナーマン / Sonarman</h2>  
ソナーを装備している場合、潜航艦への索敵が 30％ 向上します。  
  








<h1 id="aDefenceSkill">電子防御 / Defence Kind</h1>  
  
[目次へ戻る](#aMokuji)  
  

<h2>妨害無効 / Invalid Electronic Warfare</h2>  
電子妨害の影響を受けません。  
  

<h2>早期警戒 / Early Alert</h2>  
範囲内でミサイルや艦載機、レーザ砲を搭載する敵艦がいたら、  
砲撃回避や、ミサイル迎撃、航空戦が有利になりやすくなります。  
  






***
[[トップへ戻る]](/readme.md)　/
[[機能仕様]](/skill/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
