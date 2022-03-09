# Galaxy Fleet　～装備品仕様～
::ProjectName= Galaxy Fleet (master)  
::github= https://github.com/lucida3rd/starregion_doc  
::Admin= Lucida（twitter: @lucida3rd）  
::Twitter URL= https://twitter.com/lucida3rd  
::Homepage=  https://lucida3web.wixsite.com/prof  
::Message= https://marshmallow-qa.com/lucida3poi  




<a id="iDocSummary"></a>
# ドキュメント概要
このドキュメントは「Galaxy Fleet」で使われる装備品の定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  


<a id="iRet"></a>
# 目次
* [readme.md](/readme.md)
* [装備品仕様](equip.md)

* [装備種類](#iEquipKind)
* [装備分類](#iEquipClass)
* [装備型](#iEquipType)

* [基礎素材](equip_basic.md#iBasicMaterial)
* [姿勢制御装置](equip_basic.md#iThruster)
* [電算装置](equip_basic.md#iMainComputer)
* [エンジン](equip_basic.md#iEngine)

* [要塞砲](equip_cannon.md#iFortressCannon)
* [大型砲](equip_cannon.md#iLargeCannon)
* [中型砲](equip_cannon.md#iMiddleCannon)
* [小型砲](equip_cannon.md#iSmallCannon)
* [機関砲](equip_cannon.md#iMachineGun)
* [携行銃](equip_cannon.md#iHandGun)

* [ロケットランチャー](equip_luncher.md#iRocketLuncher)
* [ミサイルランチャー](equip_luncher.md#iMissileLuncher)
* [スプレッドランチャー](equip_luncher.md#iSpreadLuncher)
* [モスキートランチャー](equip_luncher.md#iMosquitoLuncher)
* [トーピードランチャー](equip_luncher.md#iTorpido)
* [デプスチャージランチャー](equip_luncher.md#iDepthCharge)

* [対空砲](equip_aagun.md#iAntiAirCannon)
* [対空機関砲](equip_aagun.md#iAntiAirMachineGun)
* [ディフューズレーザ](equip_aagun.md#iDiffuseLaser)
* [パルスレーザ](equip_aagun.md#iPulsedLaser)

* [爆弾](equip_bomb.md#iBomb)
* [装甲貫通弾](equip_bomb.md#iArmorBomb)
* [レーザボム](equip_bomb.md#iLaserBomb)
* [プロミネンスボム](equip_bomb.md#iLaserBomb)

* [艦船用接近戦武器](equip_infight.md#iShipInfight)
* [歩兵用接近戦武器](equip_infight.md#iInfantryInfight)
* [歩兵用補助装備](equip_infight.md#iInfantryAuxiliary)

* [電子支援装置](equip_electronic.md#iElectronicSupport)
* [電子攻撃装置](equip_electronic.md#iElectronicAttack)
* [電子防護装置](equip_electronic.md#iElectronicProtection)
* [射撃支援装置](equip_electronic.md#iFireSupport)

* [シールド発生装置](equip_defence.md#iShield)
* [ミサイル迎撃装置](equip_defence.md#iMissileInterception)
* [雷撃防御装置](equip_defence.md#iTorpedoProtection)

* [仮設追加装甲](equip_armor.md#iConsumableAdditionalArmor)
* [改造追加装甲](equip_armor.md#iModifiedAdditionalArmor)

* [仮設強化装備](equip_parts.md#iTemporaryParts)
* [改造強化装備](equip_parts.md#iRemodelingParts)
* [特殊強化装備](equip_parts.md#iSpecialParts)

* [搭載機用設備](equip_equipment.md#iOnboardUnit)
* [支援作業設備](equip_equipment.md#iSupportWork)
* [基地用設備](equip_equipment.md#iBaseEquipment)
* [浮遊陣地用設備](equip_equipment.md#iFloatingEncampment)
* [陣地用設備](equip_equipment.md#iEncampmentEquipment)

* [作戦級戦略兵器](equip_strategic.md#iOperationalStrategicWeapon)
* [制限兵器](equip_strategic.md#iRestrictedStrategicWeapon)




<a id="iEquipKind"></a>
# 装備種類

**CN：砲　Cannon**  
レーザ砲やビーム砲など、この時代の主力武器です。射撃コストが無くほぼ無限に撃てますが、シールドで簡単に防がれてしまうのが弱点です。  
  
**TW：噴進武器　Throwing Wepon**  
ロケットやミサイルなどです。シールドがほとんど効果がないですが、弾数制限や射撃コストがあります。  
  
**DW：次元転換武器　Dimensional Conversion Wepon**  
いわゆる魚雷、爆雷です。次元空間に作用し、次元転移効果で船体にダメージを与えます。非常に威力が高いですが、射程、射速が遅いのが弱点です。潜水艦に対して有効な武器です。  
  
**AA：対空武器　Anti Air Wepon**  
航空機を迎撃するための武器です。速射性、命中率が高いですが、装甲を貫く力は弱いです。現代の兵器と違って、噴進弾の迎撃には使えません。  
  
**BB：爆弾　Bomb**  
爆弾です。航空機などの機動兵器から投下して使います。命中精度は悪いですが、威力が非常に高いです。主に建物の破壊に使われます。  
  
**IW：接近戦用武器　Infight Weapon**  
アンカーやビームサーベルなど近接戦闘用の武器です。めっちゃ威力がありますが、密接して当てないと効果がありません。  
  
**EW：電子戦装置　Electronic Warfare Device**  
レーダやソナー、電子妨害など電子戦用の装備です。索敵や射撃の支援、敵の索敵からの回避に影響を与えます。  
  
**DD：防御用装置　For Defense Device**  
敵の攻撃から船体や艦隊を防御する装備です。シールドや迎撃ミサイルなどです。  
  
## AM：追加装甲　Additional Armor
船体の装甲を追加します。  
  
**EE：強化装備　Enhanced Equipment**  
兵器の性能を底上げするための補助装備です。戦力アップになりますが、付けすぎると重量や余分なエネルギーが食われてしまいます。  
  
**OE：搭載設備　Onboard Equipment**  
艦船の搭載機を支援するための装備です。艦船用の格納庫やカタパルトなど搭載機を運用するのに重要な装備です。  
  
**CE：陣地設備　Encampment Equipment**  
陣地用の装備です。作業用の兵器で戦場に展開できます。  
  
**SW：戦略兵器　Strategic Weapons**  
惑星や地形に影響するほどの威力がある兵器です。条約で使用を厳しく制限され、通常は搭載することさえ規制されます。  
  
**BL：弾薬　Bullet**  
武器で射撃する際の弾です。敵兵器を破壊する弾丸部と、弾丸を飛ばす火薬やエネルギーが詰まった部分がセットになってます。弾薬がないと射撃できない武器もあります。  
  
**EP：消耗品　Expendables**  
兵器で消費される消耗品です。  



<a id="iEquipClass"></a>
# 装備分類
各装備種類は、さらに装備分類に分類分けされます。  

## CN：砲　Cannon

**CNFT：要塞砲　Fortress Cannon**  
要塞専用の超大型砲です。防衛兵器だけが搭載できます。  
  
**CNLG：大型砲　Large Cannon**  
戦艦、防衛兵器が搭載できる大型砲です。  
  
**CNMD：中型砲　Middle Cannon**  
巡航艦など中型以上の戦列艦、防衛兵器が搭載できる大砲です。  
  
**CNSM：小型砲　Small Cannon**  
駆逐艦、装載艇、戦車、防衛兵器で共通利用できる大砲です。大型艦の副砲にも兼用できます。  
  
**CNMG：機関砲　Machine Gun**  
戦列艦、装載艇、航空機、歩兵、戦車で共通利用できる砲です。  
  
**CNHG：携行銃　Hand Gun**  
歩兵が装備できる手持ちの大砲です。歩兵以外では兼用できません。  


## TW：噴進武器　Throwing Wepon

**TWRC：ロケットランチャー　Rocket Luncher**  
実体弾をロケットモータで加速させ、運動エネルギーと爆発の威力で粉砕する武器です。  
  
**TWMS：ミサイルランチャー　Missile Luncher**  
実体弾をジェット噴進と精密誘導装置で目標に誘導し、爆破する武器です。  
  
**TWSP：スプレッドランチャー　Spread Luncher**  
着弾すると爆発するエネルギー弾を発射する武器です。  
  
**TWMQ：モスキートランチャー　Mosquito Luncher**  
自動追尾で誘導するエネルギー弾を発射する武器です。  


## DW：次元転換武器　Dimensional Conversion Wepon

**DWTP：トーピードランチャー　Tranceform Torpido Luncher**  
次元空間を滑走する魚雷を発射、着弾寸前に通常空間に現れ、目標を爆破する武器です。射程は短いですが、敵艦に壊滅的なダメージを与えます。  
  
**DWDC：デプスチャージランチャー　Tranceform Depth Charge Luncher**  
次元空間に爆雷を投下し、潜水艦を攻撃する武器です。低コストですが、潜航中の潜水艦以外には使えません。  


## AA：対空武器　Anti Air Wepon

**AAAC：対空砲　Anti Air Cannon**  
実体弾を用いた対空戦闘専用の武器です。主に戦列艦に搭載されます。  
  
**AAMG：対空機関砲　Anti Air Machine Gun**  
実体弾を用いた対空戦闘専用の武器です。対空砲より小型で、機動兵器などに搭載されます。  
  
**AADL：ディフューズレーザ　Diffuse Laser**  
レーザを拡散照射するレーザ砲です。命中率が高いですが、搭載スペースと重量を食います。  
  
**AAPL：パルスレーザ　Pulsed Laser**  
短い周期で連続発射できるレーザ砲です。低出力ですが、命中率が高いです。  


## BB：爆弾　Bomb

**BBBO：爆弾　Bomb Luncher**  
投下、着弾の衝撃で大きく爆発し、熱と衝撃波と破片で破壊する武器です。防衛兵器や陸戦兵器を攻撃するのに向いています。  
  
**BBAB：装甲貫通弾　Armor Buster Luncher**  
投下後に高速に加速し、重量と運動エネルギーで装甲を破壊し、内部から爆破、目標を粉砕する武器です。装甲の厚い艦船や、建物を攻撃するのに非常に向いてます。  
  
**BBLB：レーザボム　Laser Bomb Luncher**  
投下、着弾すると爆発し、熱とエネルギー流で目標を破壊する武器です。連装式で歩兵や多数の地上目標を攻撃するのに向いています。  

**BBPR：プロミネンスボム　Prominence Bomb Luncher**  
投下、着弾すると目標に吸着した上、強烈な熱を放ち、熱焼損で損傷するか、焼き切る武器です。主に装甲の厚い艦船や、建物を攻撃するのに向いてます。  


## IW：接近戦用武器　Infight Weapon

**IWSP：艦船用接近戦武器　Ship Infight Weapon**  
護衛艦用の接近戦闘専用の武器です。艦船への移乗や、艦船の妨害や拘束に使えます。  
  
**IWII：歩兵用接近戦武器　Infantry Infight Weapon**  
歩兵用の接近戦闘専用の武器です。武器の使用が制限される艦内や要塞戦で使えます。  

**IWIA：歩兵用補助装備　Infantry Auxiliary Equipment**  
歩兵を補助するための装備です。  


## EW：電子戦装備　Electronic Warfare Device

**EWSU：電子支援装置　Electronic Support Device**  
戦場の地形や敵の存在、位置を探索したり、探索で収集したデータを分析する装置です。  
  
**EWAT：電子攻撃装置　Electronic Attack Device**  
敵の探知装置を妨害波や欺瞞工作、高度な電子操作をおこなって妨害する装置です。  
  
**EWPR：電子防護装置　Electronic Protection Device**  
敵の探知から逃れたり、電子妨害を軽減したり、無効化する装置です。電子支援装置に付属して使用します。  
  
**EWFS：射撃支援装置　Fire Support Device**  
射撃を支援する測距レーダや追尾レーダなどのレーダを統合した装置です。射撃の精度を向上させます。  


## DD：防御用装置　For Defense Device

**DDSH：シールド発生装置　Shield Device**  
エネルギーで船体を守る防御装置です。シールドジェネレータと接続し、シールドエネルギーが続く限り防御効果が継続します。  
  
**DDMI：ミサイル迎撃装置　Missile Interception Device**  
ミサイルを迎撃するミサイルとそのシステム一式です。物理的に迎撃するので有効性が高いです。  
  
**DDTP：雷撃防御装置　Torpedo Protection Device**  
雷撃から身を守ったり、航行する魚雷を妨害したり迎撃するシステム一式です。  


## AM：追加装甲　Additional Armor

**AMCN：仮設追加装甲　Consumable Additional Armor**  
船体の装甲を追加します。仮設で、耐久性が低く、壊れやすいです。  

**AMMD：改造追加装甲　Modified Additional Armor**  
船体の装甲を追加します。本格的に接続するため故障は少なく、耐久性は高いです。  


## EE：強化装備　Enhanced Equipment
兵器の性能を強化するための装置や部品です。  

**EECN：仮設強化装備　Consumable Enhanced Equipment**  
兵器の性能を一時的に強化するための装置や部品です。耐久性が低く、壊れやすいです。  

**EEMD：改造強化装備　Modified Enhanced Equipment**  
兵器の性能を永続的に強化するための装置や部品と改造キット一式です。本格的に接続するため故障しません。  

**EESP：特殊強化装備　Special Enhanced Equipment**  
兵器の性能を強化すると同時に、特殊な機能を付加するための装置や部品と改造キット一式です。  
装備することで特殊な装備が搭載できたり、機能が扱えるようになります。  
他の強化パーツと競合を起こす場合があります。  


## OE：搭載設備　Onboard Equipment

**EEOU：搭載機設備　Onboard Unit Equipment**  
搭載機能を拡張したり、搭載機の支援をおこなう設備です。  
  
**OESW：支援作業設備　Support Work Equipment**  
支援作業をおこなうための設備です。  


## CE：陣地設備　Encampment Equipment

**CEBC：基地用設備　Base Equipment**  
基地用の装備です。  
  
**CEFU：浮遊陣地用設備　Floating Encampment Equipment**  
浮遊陣地用の装備です。  
  
**CEIU：陣地用設備　Encampment Equipment**  
陣地用の装備です。  


## SW：戦略兵器　Strategic Weapon

**SWOP：作戦級戦略兵器　Operational Strategic Weapon**  
建物や戦場の一部に致命的な影響を与える兵器です。味方や非戦闘員にも影響を与えかねなく、高額なため、使用する場面は限られます。  
  
**SWRE：制限兵器　Restricted Strategic Weapon**  
戦場全体、あるいは天文規模に致命的な影響を与える兵器です。  
使用にあたっては陣営間で厳しく制限、管理され、通常の戦闘では使用できません。  


## BL：弾薬　Bullet

**BLSH：砲弾　Shell**  
大砲や対空砲の弾薬や、換装用の発振器です。  
  
**BLLA：噴進弾　Launch Shell**  
ロケットやミサイルなどの弾薬と燃料のセットです。  
  
**BLTR：次元転換弾　Tranceform Shell**  
魚雷や爆雷などの弾薬です。  
  
**BLBM：爆弾　Bomb**  
爆弾です。  
  
**BLSI：近接武器用　Soldier Infight Bullet**  
接近武器用の替え具です。  


## EP：消耗品　Expendables

**EPDF：防衛装置用　Defense Equipment Expendables**  
防衛装置用の替え具です。  
  
**EPSW：支援作業設備用　Support Work Equipment Expendables**  
支援作業設備用の替え具です。  



<a id="iEquipType"></a>
# 装備型
装備分類はさらに装備型に分類されます。  
詳細は各タイプのファイルを参照ください。  

**形式の付け方**  
```
xxyy-pzzzr

xx：装備種類
yy：装備分類
p：分類細分
zzz：装備型

p：分類細分
***
p：武器・実態弾
e：武器・エネルギー弾
i：武器・接近戦用武器
o：武器・その他
j：防御手段・電子的
g：防御手段・物理的
a：強化・追加・設備
b：弾薬・消費物
s：基本構成

r：連番・ダッシュ番号

分類のベースとなるものには STD
それ以外は、分類名と被らないアルファベット3文字を切り出す

```


## CNFT-eGAM：要塞用ガンマレーザ
## CNFT-eBUS：要塞用バスターキャノン
## CNFT-eSMA：要塞用スマッシャーキャノン

## CNLG-eLAS：大型レーザ
## CNLG-eGAM：ガンマレーザ
## CNLG-eCPS：コンポジットレーザ
## CNLG-eBUS：大型バスターキャノン
## CNLG-eSMA：大型スマッシャーキャノン
## CNLG-pRAI：大型超電磁砲

## CNMD-eLAS：中型レーザ
## CNMD-eMIC：マイクロレーザ
## CNMD-eBEM：ビームキャノン
## CNMD-eBUS：バスターキャノン
## CNMD-eSMA：スマッシャーキャノン
## CNMD-pRAI：超電磁砲
## CNMD-pFLD：野戦砲
## CNMD-eOBT：オービットスナイパーキャノン

## CNSM-eLAS：小型レーザ
## CNSM-eHYD：ヒドラレーザ
## CNSM-eMAS：メーザ
## CNSM-eBEM：小型ビームキャノン
## CNSM-eFLA：フラッシュキャノン
## CNSM-ePLA：プラズマキャノン
## CNSM-pFLD：小型野戦砲
## CNSM-pATR：対戦車ライフルキャノン

## CNMG-eMAS：メーザガン
## CNMG-eBEM：ビームガン
## CNMG-eFLA：フラッシュガン
## CNMG-ePLA：プラズマガン
## CNMG-pMCG：重機関砲
## CNMG-pINF：対歩兵擲弾砲

## CNHG-eBEM：携行ビームガン
## CNHG-eBUS：携行バスターガン
## CNHG-eSMA：携行スマッシャーガン
## CNHG-pFLD：携行野戦砲
## CNHG-pMCG：携行機関銃
## CNHG-pINF：携行擲弾銃
## CNHG-pATR：歩兵用対戦車ライフル

## TWRC-pLSM：大型単装ロケットランチャー
## TWRC-pMSM：中型単装ロケットランチャー
## TWRC-pSSM：小型単装ロケットランチャー

## TWRC-pLML：大型多連装ロケットランチャー
## TWRC-pMML：中型多連装ロケットランチャー
## TWRC-pSML：小型多連装ロケットランチャー

## TWRC-pMWG：中型有線誘導ロケットランチャー
## TWRC-pSWG：小型有線誘導ロケットランチャー

## TWRC-pLDS：大型ディスペンサーシステム
## TWRC-pMDS：中型ディスペンサーシステム
## TWRC-pSDS：小型ディスペンサーシステム

## TWRC-pHSM：携行式単装ロケットランチャー
## TWRC-pHML：携行式多連装ロケットランチャー
## TWRC-pHWG：携行式有線誘導ロケットランチャー

## TWMS-pGSM：超大型単装ミサイルランチャー
## TWMS-pLSM：大型単装ミサイルランチャー
## TWMS-pMSM：中型単装ミサイルランチャー
## TWMS-pSSM：小型単装ミサイルランチャー

## TWMS-pLML：大型多連装ミサイルランチャー
## TWMS-pMML：中型多連装ミサイルランチャー
## TWMS-pSML：小型多連装ミサイルランチャー

## TWMS-pHSM：携行式単装ミサイルランチャー
## TWMS-pHML：携行式多連装ミサイルランチャー

## TWMS-pMHP：リープミサイルランチャー
## TWMS-pGHP：ハイパーミサイルランチャー

## TWSP-eGSM：超大型単装スプレッドランチャー
## TWSP-eLSM：大型単装スプレッドランチャー
## TWSP-eMSM：中型単装スプレッドランチャー
## TWSP-eSSM：小型単装スプレッドランチャー

## TWRC-eLML：大型多連装スプレッドランチャー
## TWRC-eMML：中型多連装スプレッドランチャー
## TWRC-eSML：小型多連装スプレッドランチャー

## TWRC-eHSM：携行式単装スプレッドランチャー
## TWRC-eHML：携行式多連装スプレッドランチャー
## TWRC-eHWG：携行式有線誘導スプレッドランチャー

## TWMQ-eGSM：超大型単装モスキートランチャー
## TWMQ-eLSM：大型単装モスキートランチャー
## TWMQ-eMSM：中型単装モスキートランチャー
## TWMQ-eSSM：小型単装モスキートランチャー

## TWMQ-eLML：大型多連装モスキートランチャー
## TWMQ-eMML：中型多連装モスキートランチャー
## TWMQ-eSML：小型多連装モスキートランチャー

## TWMQ-eHSM：携行式単装モスキートランチャー
## TWMQ-eHML：携行式多連装モスキートランチャー
## TWMQ-eHWG：携行式有線誘導モスキートランチャー

## DWTP-eGSM：超大型トーピードランチャー
## DWTP-eLSM：大型トーピードランチャー
## DWTP-eMSM：中型トーピードランチャー
## DWTP-eSSM：小型トーピードランチャー

## DWTP-eLJT：噴式大型トーピードランチャー
## DWTP-eMJT：噴式中型トーピードランチャー
## DWTP-eSJT：噴式小型トーピードランチャー

## DWDC-eGSM：超大型デプスチャージランチャー
## DWDC-eLSM：大型デプスチャージランチャー
## DWDC-eMSM：中型デプスチャージランチャー
## DWDC-eSSM：小型デプスチャージランチャー
## DWDC-eHSM：携行式デプスチャージランチャー

## DWDC-eMWG：誘導式中型デプスチャージランチャー
## DWDC-eSWG：誘導式小型デプスチャージランチャー
## DWDC-eHWG：誘導式携行デプスチャージランチャー

## AAAC-pLAA：大型対空砲
## AAAC-pMAA：中型対空砲
## AAAC-pSAA：小型対空砲

## AAAC-pLQF：大型連装速射砲
## AAAC-pMQF：中型連装速射砲
## AAAC-pSQF：小型連装速射砲

## AAMG-pLAA：大型対空機関砲
## AAMG-pMAA：中型対空機関砲
## AAMG-pSAA：小型対空機関砲

## AADL-eLAA：大型ディフューズレーザ
## AADL-eMAA：中型ディフューズレーザ
## AADL-eSAA：小型ディフューズレーザ

## AAPL-eLAA：大型パルスレーザ
## AAPL-eMAA：中型パルスレーザ
## AAPL-eSAA：小型パルスレーザ

## BBBO-pGUG：超大型無誘導爆弾
## BBBO-pLUG：大型無誘導爆弾
## BBBO-pMUG：中型無誘導爆弾
## BBBO-pSUG：小型無誘導爆弾

## BBBO-pLID：大型誘導爆弾
## BBBO-pMID：中型誘導爆弾
## BBBO-pSID：小型誘導爆弾

## BBBO-pINF：手榴弾
## BBBO-pCAR：携行爆弾

## BBAB-pGID：超大型装甲貫通弾
## BBAB-pLID：大型装甲貫通弾
## BBAB-pMID：中型装甲貫通弾
## BBAB-pSID：小型装甲貫通弾

## BBLB-eLSM：大型レーザボム
## BBLB-eMSM：中型レーザボム
## BBLB-eSSM：小型レーザボム
## BBLB-eHSM：携行レーザボム

## BBPR-eLSM：大型プロミネンスボム
## BBPR-eMSM：中型プロミネンスボム
## BBPR-eSSM：小型プロミネンスボム
## BBPR-eHSM：携行プロミネンスボム

## IWSP-iRTT：艦船拘束用武器
## IWSP-iCLN：衝突用武器
## IWSP-iFCD：強制接弦装置

## IWII-iDAG：ダガー
## IWII-iBLA：ブレード
## IWII-iTWO：ツーハンデッドソード
## IWII-iKAT：カタナ
## IWII-iHAL：ハルバード
## IWII-iSPE：スピア
## IWII-iPIL：パイルバンカー
## IWII-iDEF：ディフェンダー
## IWII-iBOW：ボウ
## IWII-iSON：ゾンデ

## IWIA-oACD：自律制御装置
## IWIA-oSLD：バックラー

## EWSU-jRAD：電波探知拡張装置
## EWSU-jRADL：長距離電波探知拡張装置
## EWSU-jRADH：高性能電波探知拡張装置

## EWSU-jSON：次元探知拡張装置
## EWSU-jSONH：高性能次元探知拡張装置
## EWSU-gSON：ソノブイランチャー
## EWSU-gSONT：曳航式次元音響探知装置

## EWSU-jSYSA：戦術分析システム

## EWSU-jSMN：次元偵察装置

## EWAT-jJAM：電波妨害装置
## EWAT-jJAML：長距離電波妨害装置
## EWAT-jJAMF：射撃妨害装置
## EWAT-jJAME：電子妨害装置
## EWAT-jJAMH：高性能電子妨害装置

## EWAT-jSYSA：高度電子戦システム

## EWAT-gMIS：対レーダミサイルランチャー

## EWPR-jTRA：電探透過装置
## EWPR-jTRAE：電子減衰装置
## EWPR-jTRAH：高性能電子減衰装置

## EWPR-gDCY：デコイランチャー
## EWPR-gDCYT：曳航式次元欺瞞装置

## EWPR-jSYSA：電子対抗システム

## EWPR-gCHF：チャフランチャー
## EWPR-gFLR：フレアランチャー

## EWFS-jFCS：砲撃支援装置
## EWFS-jFCSB：弾道追跡装置
## EWFS-jFCSM：射撃管制装置
## EWFS-jFCSH：高性能射撃管制装置
## EWFS-jSYSA：射撃統制システム

## EWFS-jTGD：魚雷誘導装置
## EWFS-jTGDH：高性能魚雷誘導装置

## DDSH-gSLD：シールド
## DDSH-gBAR：バリア
## DDSH-gFLD：フィールド
## DDSH-gREF：リフレクター
## DDSH-gBLA：ブランケット

## DDMI-gIMS：迎撃ミサイルランチャー
## DDMI-gIMSP：迎撃ミサイルポッド
## DDMI-gMIL：ミサイルリーダー

## DDTP-gATP：アンチトーピードランチャー
## DDTP-gGIL：ジルネット

## AMCN-gNOR：追加装甲
## AMCN-gSTL：ステルス装甲
## AMCN-gREN：耐Ｅ追加装甲
## AMCN-gREX：耐爆追加装甲
## AMCN-gRTP：耐雷追加装甲
## AMCN-gRIP：耐衝撃追加装甲
## AMCN-gDDF：多重防御加装甲
## AMCN-gREF：反射板追加装甲

## AMMD-gNOR：追加装甲
## AMMD-gSTL：ステルス装甲
## AMMD-gREN：耐Ｅ追加装甲
## AMMD-gREX：耐爆追加装甲
## AMMD-gRTP：耐雷追加装甲
## AMMD-gRIP：耐衝撃追加装甲
## AMMD-gDDF：多重防御加装甲
## AMMD-gREF：反射板追加装甲
## AMMD-gEXR：爆発反応装甲
## AMMD-gCSD：帯Ｓ装甲
## AMMD-gPLF：疑似生体装甲
## AMMD-gHSD：重盾装甲

## EECN-aLPP：補強フレーム
## EECN-aLPPB：舟艇用補強フレーム
## EECN-aDVR：レーダ反射板
## EECN-aDLC：空間拡張キット
## EECN-aDLCB：舟艇用空間拡張キット

## EECN-aSPP：シールド増幅装置
## EECN-aSPPD：防衛兵器用シールド増幅装置
## EECN-aSPPB：舟艇用シールド増幅装置
## EECN-aPEC：動力増幅装置
## EECN-aPECD：防衛兵器用動力増幅装置
## EECN-aPECB：舟艇用動力増幅装置
## EECN-aPTP：伝達補助装置
## EECN-aPTPD：防衛兵器用伝達補助装置
## EECN-aPTPB：舟艇用伝達補助装置
## EECN-aPAR：燃料フィルター

## EECN-aMAV：姿勢制御補助装置
## EECN-aMAVB：舟艇用姿勢制御補助装置
## EECN-aMAVP：航空機用スタビライザ
## EECN-aMAVS：歩兵用姿勢制御補助装置
## EECN-aMAVC：車両用姿勢制御補助装置
## EECN-aMMB：加速補助装置
## EECN-aMMBP：航空機用加速補助装置
## EECN-aMMBS：歩兵用加速補助装置
## EECN-aMMBC：車両用加速補助装置
## EECN-aMMV：推進補助装置
## EECN-aMMVS：小型推進補助装置
## EECN-aMMVC：車両用

## EECN-gECA：増設演算装置

## EECN-aSAB：アクティブ防護装置
## EECN-aSSV：電波吸収装置
## EECN-aSRP：自動修復装置

## EECN-aOWP：増槽
## EECN-aOSP：自動給油装置
## EECN-aOIC：弾薬増設キット

## EEMD-aLPP：補強フレーム
## EEMD-aLPPB：舟艇用補強フレーム
## EEMD-aDVR：レーダ反射板
## EEMD-aDLC：空間拡張キット
## EEMD-aDLCB：舟艇用空間拡張キット

## EEMD-aSPP：シールド増幅装置
## EEMD-aSPPD：防衛兵器用シールド増幅装置
## EEMD-aSPPB：舟艇用シールド増幅装置
## EEMD-aPEC：動力増幅装置
## EEMD-aPECD：防衛兵器用動力増幅装置
## EEMD-aPECB：舟艇用動力増幅装置
## EEMD-aPTP：伝達補助装置
## EEMD-aPTPD：防衛兵器用伝達補助装置
## EEMD-aPTPB：舟艇用伝達補助装置
## EEMD-aPAR：燃料フィルター

## EEMD-aMAV：姿勢制御補助装置
## EEMD-aMAVB：舟艇用姿勢制御補助装置
## EEMD-aMAVP：航空機用スタビライザ
## EEMD-aMAVS：歩兵用姿勢制御補助装置
## EEMD-aMAVC：車両用姿勢制御補助装置
## EEMD-aMMB：加速補助装置
## EEMD-aMMBP：航空機用加速補助装置
## EEMD-aMMBS：歩兵用加速補助装置
## EEMD-aMMBC：車両用加速補助装置
## EEMD-aMMV：推進補助装置
## EEMD-aMMVS：小型推進補助装置
## EEMD-aMMVC：車両用

## EEMD-gECA：増設演算装置

## EEMD-aSAB：アクティブ防護装置
## EEMD-aSSV：電波吸収装置
## EEMD-aSRP：自動修復装置

## EEMD-aOWP：増槽
## EEMD-aOSP：自動給油装置
## EEMD-aOIC：弾薬増設キット

## EEMD-aHYF：ハイパーフレーム
## EEMD-aLCE：大容量増設ジェネレータ
## EEMD-aSTB：ステルスブースター
## EEMD-aACIU：加速向上キット
## EEMD-aSPAU：スーパーアーマー
## EEMD-aHLLU：健脚さんキット

## EESP-aBST：高速艦用ブーストキット
## EESP-aSMN：次元航行装置
## EESP-aOBT：軌道迎撃ユニット
## EESP-aBSTS：歩兵用ブーストキット
## EESP-aAGPC：反重力推進装置
## EESP-aTGAC：耐戦車砲装甲板
## EESP-aRFBC：装甲反射板
## EESP-aLEP：跳躍航行装置



































