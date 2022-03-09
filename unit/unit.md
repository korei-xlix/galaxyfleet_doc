# Galaxy Fleet　～兵器仕様～
::ProjectName= Galaxy Fleet (master)  
::github= https://github.com/lucida3rd/starregion_doc  
::Admin= Lucida（twitter: @lucida3rd）  
::Twitter URL= https://twitter.com/lucida3rd  
::Homepage=  https://lucida3web.wixsite.com/prof  
::Message= https://marshmallow-qa.com/lucida3poi  




<a id="iDocSummary"></a>
# ドキュメント概要
このドキュメントは「Galaxy Fleet」の兵器の種類、定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  
  

<a id="iRet"></a>
# 目次
* [readme.md](/readme.md)
* [兵器仕様](unit.md)

* [兵器種類](#iUnitKind)
* [兵器分類](#iUnitClass)
* [兵器型](#iUnitType)

* [駆逐艦](unit_ship.md#iDestroyer)
* [巡航艦](unit_ship.md#iCruiser)
* [戦艦](unit_ship.md#iBattleShip)
* [潜航艦](unit_ship.md#iSubmarine)

* [航空母艦](unit_carrier.md#iAircraftCarrier)
* [改造空母](unit_carrier.md#iModifiedCarrier)
* [汎用母艦](unit_carrier.md#iMotherShip)
* [揚陸艦](unit_carrier.md#iLandCarrier)

* [護衛艦](unit_escort.md#iFrigate)
* [防護艦](unit_escort.md#iCorvet)
* [護衛母艦](unit_escort.md#iEscortMotherShip)

* [偵察艦](unit_support.md#iRecommend)
* [電子支援艦](unit_support.md#iElectronicSupportShip)
* [輸送艦](unit_support.md#iTransport)
* [補給艦](unit_support.md#iSupply)
* [戦闘支援艦](unit_support.md#iBattleSupportShip)
* [後方支援艦](unit_support.md#iLogisticsSupportShip)

* [空母航空機](unit_plane.md#iCarrierBasedAircraft)
* [汎用航空機](unit_plane.md#iMultipurposeAircraft)
* [大型航空機](unit_plane.md#iLargeAircraft)
* [装載艇](unit_plane.md#iBoats)
* [ドローン](unit_plane.md#iDrone)
* [陸戦攻撃機](unit_plane.md#iLandAirplane)

* [機動歩兵](unit_soldier.md#iMovableSoldier)
* [万能歩兵](unit_soldier.md#iVersatileSoldier)
* [陸戦歩兵](unit_soldier.md#iLandSoldier)

* [戦闘車両](unit_car.md#iTank)
* [支援車両](unit_car.md#iVehicle)
* [被牽引車](unit_car.md#iTrailer)

* [防衛兵器](unit_defence.md#iDefenseUnit)
* [砲台](unit_defence.md#iBattery)
* [浮遊兵器](unit_defence.md#iFloatingUnit)
* [設置兵器](unit_defence.md#iInstalledUnit)

* [艦船](unit_unarmed.md#iShip)
* [舟艇](unit_unarmed.md#iBoat)
* [車両](unit_unarmed.md#iCar)
* [衛星](unit_unarmed.md#iSattelite)

* [宇宙施設](unit_unarmed.md#iSpaceBuild)
* [地上施設](unit_unarmed.md#iLandBuild)




<a id="iUnitKind"></a>
# 兵器種類
兵器は大きく６種類の兵器種類に分類されます。  
  
**BS：戦列艦　Battle Ships**  
強力な火砲や艦載機などの武器を搭載し、主に対艦攻撃に優れる艦船です。このゲームの主力となります。  
  
**ES：護衛艦　Escort Ships**  
近接武器や対空装備、電子戦装置などの防御用の武器を搭載し、艦隊防御をおこなう艦船です。対艦攻撃力はほぼありません。  
  
**SS：支援艦　Support Ships**  
補給や輸送、艦隊の戦闘支援、索敵など後方支援をするための艦船です。戦闘は苦手です。  
  
**MU：機動兵器　Movable Unit**  
艦船にも搭載できる装載艇、戦闘機、人型兵器の総称です。空母や戦闘母艦に搭載して運用することが多いです。戦隊を編成します。  
  
**LU：陸戦兵器　Land Unit**  
戦車や陸戦用の人型兵器の総称です。泊地や要塞など局地でのみ運用できます。運搬するのに輸送艦や揚陸艇など輸送力が必要になります。戦隊を編成します。  
  
**DU：防衛兵器　Defense Unit**  
基地、拠点専用の固定砲台などです。自力で移動ができず据え付けするにも時間がかかります。  

**UN：非武装　Unarmed Unit**  
非武装の民間船、交易船、民間機などです。  




<a id="iUnitClass"></a>
# 兵器分類
各兵器種類は、さらに兵器分類に分類分けされます。  

## BS：戦列艦　Battle Ships

**BSDS：駆逐艦　Destroyer**  
小型で小回りのきく戦列艦です。主に近接で火砲や魚雷を使った戦闘に向き、対潜戦闘ができます。少し輸送ペイロードがあり、輸送任務も可能です。  
  
**BSCR：巡航艦　Cruiser**  
中型で長距離の航行に向いてる戦列艦です。中型の火砲による砲戦が得意で、機動性が高く、索敵にも向いています。艦載機として偵察機を搭載できます。  
  
**BSBB：戦艦　Battle Ship**  
戦列艦の花形です。大型の火砲を搭載し、装甲やシールドが厚く、対艦戦闘に秀でます。しかし鈍足で戦闘以外の目的に使えません。  
  
**BSAC：航空母艦　Aircraft Carrier**  
艦載機を大量に運用するための母艦型の戦列艦です。大型で母艦機能に特化しており、単艦の戦闘力は貧弱です。  
カタパルトが損傷すると艦載機が発進できなくなります。  
  
**BSMC：改造空母　Modified Aircraft Carrier**  
巡洋艦や支援艦の船体をベースに建造した改造空母です。空母としての母艦機能に加え、耐久性と経済性に優れます。  
カタパルトが損傷すると艦載機が発進できなくなります。  
  
**BSGC：汎用母艦　General Purpose Mother Ship**  
空母では運用できない大型の航空機や爆撃機、汎用戦闘機、装載艇などを運用するための母艦型の戦列艦です。  
  
**BSLC：揚陸艦　Land Carrier**  
装載艇や陸戦兵器を搭載し、泊地や要塞に降下させる揚陸戦用の戦列艦です。敵の艦船に強行接舷して歩兵を送ることもできます。  
  
**BSSB：潜航艦　Submarine**  
亜空間潜航が可能な特殊な戦列艦です。潜航中はビームやミサイルなどの兵器ではダメージが与えられず、爆雷でしか攻撃できません。潜水艦も潜航中は魚雷しか使えません。  


## ES：護衛艦　Escort Ships

**ESFG：護衛艦　Escort Frigate**  
敵機動兵器からの対空防御、接近してくる敵艦の妨害、揚陸してきた歩兵の排除をおこなう護衛艦です。  
  
**ESCO：防護艦　Escort Corvet**  
脅威の早期発見や、電子戦や機動戦による妨害や攪乱、電子妨害からの防御をおこなう護衛艦です。  
  
**ESEM：護衛母艦　Escort Mother Ship**  
制空用や哨戒用の艦載機で艦隊の防空、対潜哨戒、周辺索敵をおこなう母艦型の護衛艦です。  


## SS：支援艦　Support Ships

**SSRE：偵察艦　Recommend Ship**  
索敵能力と隠蔽能力に秀でる支援艦です。単艦で敵地の奥まで侵入し、敵の情報の偵察がおこなえます。  
  
**SSEL：電子支援艦　Electronic Support Ship**  
電子戦による妨害工作と、対電子戦を専門とする支援艦です。  
  
**SSTR：輸送艦　Transport Ship**  
兵器や大量の資源や物資を輸送するための支援艦です。  
  
**SSSS：補給艦　Supply Ship**  
補給物資や弾薬を輸送し、基地以外での補給を支援する支援艦です。  
  
**SSBS：戦闘支援艦　Battle Support Ship**  
戦闘補助の設備を備え、前線の戦闘支援をおこなう支援艦です。  
  
**SSLS：後方支援艦　Logistics Support Ship**  
主に戦略レベルでの支援（マップ単位）をおこなう支援艦です。艦隊戦には向きません。  


## MU：機動兵器　Movable Unit

**MUCB：空母航空機　Carrier Based Aircraft**  
航空母艦で運用する小型、中型の航空機です。航空戦と対艦攻撃が得意です。戦略マップでしか運用できません。対空武器、機動歩兵によわいです。  
  
**MUML：汎用航空機　Multipurpose Aircraft**  
巡航艦や戦艦で運用する小型の航空機です。広大な飛行甲板でなくても運用できるよう工夫されてます。戦闘力は空母航空機より低いです。対空武器、機動歩兵によわいです。  
  
**MULG：大型航空機　Large Aircraft**  
大型の航空機です。ペイロードが大きく高性能の武器や機能を搭載します。機体が巨大なため専用の母艦や超大型の空母でしか運用できません。対空武器、機動歩兵によわいです。  
  
**MUMS：機動歩兵　Movable Soldier**  
人型のロボットです。航空戦以外の用途でも運用できます。航空機につよいです。  
  
**MUVS：万能歩兵　Versatile Soldier**  
最高性能の機動歩兵です。大気圏内でも活動できます。陸戦兵器によわいです。  
  
**MUMB：装載艇　Mounted Boats**  
艦船に搭載できる小型の舟艇です。艦載用の武器が搭載できるため攻撃力が非常に高いです。航空機によわいです。  
  
**MUDR：ドローン　Drone**  
母艦から遠隔操作する無人機動兵器です。極近距離しか活動できません。  


## LU：陸戦兵器　Land Unit

**LULA：陸戦攻撃機　Land Airplane**  
戦術マップや要塞など極局地でのみ運用できる飛行機です。航空機、機動歩兵、陸戦歩兵、戦車につよいです。対空武器によわいです。  
  
**LULS：陸戦歩兵　Land Soldier**  
陸戦に特化した人型のロボットです。泊地や要塞への揚陸や、陸戦移譲への護衛など、特殊な状況下でのみ運用できます。機動歩兵、防衛兵器につよいです。陸戦攻撃機、戦車によわいです。  
  
**LUBT：戦闘車両　Battle Tank**  
地上や要塞など極局地でのみ運用できる戦闘車両です。主に歩兵を攻撃するのに向いてます。陸戦攻撃機によわいです。  
  
**LUSV：支援車両　Support Vehicle**  
地上や要塞など極局地での作業支援をおこなう車両です。攻撃にはよわいです。  
  
**LUTR：被牽引車　Trailer**  
地上や要塞など極局地でのみ運用できるトレーラーです。荷台に砲や荷物を載せて運用し、牽引車両で牽引します。攻撃にはよわいです。  


## DU：防衛兵器　Defense Unit

**DUDU：防衛兵器　Defense Unit**  
拠点防衛のための超巨大兵器です。１基で数個艦隊を凌駕する戦力を持ちます。ゲームではボスキャラ扱いです。陸戦歩兵によわいです。  
  
**DUBT：砲台　Battery**  
拠点防衛のための武器を置く施設です。陸戦歩兵、陸戦攻撃機によわいです。  
  
**DUBC：基地　Base**  
泊地に置かれる拠点です。陸戦歩兵、陸戦攻撃機によわいです。  
  
**DUFU：浮遊兵器　Floating Unit**  
敷設艦で簡易的に設置できる兵器や陣地です。宇宙空間でしか使えません。攻撃に対しては脆弱です。  
  
**DUIU：設置兵器　Installed Unit**  
陸地に簡易的に設置できる兵器や陣地です。陸戦兵器の侵攻を妨害します。工兵で設置できます。  


## UN：非武装　Unarmed Unit

**UNSS：艦船　Ship**  
非武装の艦船です。客船、民間企業の定期便、プライベートシップ、政府機関、官公庁などのの輸送船、タンカー、使節団の船などが該当します。  
  
**UNBB：舟艇　Boat**  
非武装の舟艇です。連絡艇、調査艇などが該当します。  
  
**UNCC：車両　Car**  
非武装の車両です。送迎車、探査車、輸送車などが該当します。  
  
**UNST：衛星　Satellite**  
非武装の衛星です。気象衛星、通信衛星、探査衛星などが該当します。  
  
**UNSB：宇宙施設　Space Build**  
軍事に関連していない非武装の建造物です。居住用コロニー、プラント施設、研究所などが該当します。  
  
**UNLB：地上施設　Land Build**  
軍事に関連していない非武装の建造物です。居住用施設、工場、研究施設などが該当します。  
  




<a id="iUnitType"></a>
# 兵器型
兵器分類はさらに兵器型に分類されます。  
詳細は各タイプのファイルを参照ください。  

**形式の付け方**  
```
xxyy-zzz

xx：兵器種類
yy：兵器分類
zzz：兵器型

分類のベースとなるものには STD
それ以外は、分類名と被らないアルファベット3文字を切り出す

```

## BSDS-STD：駆逐艦
## BSDS-AMD：装甲駆逐艦
## BSDS-ADF：防空駆逐艦
## BSDS-MIS：ミサイル駆逐艦
## BSDS-INF：歩兵駆逐艦
## BSDS-TPD：重雷装艦
## BSDS-AST：突撃艦
## BSDS-SMK：駆潜艦

## BSCR-STD：巡航艦
## BSCR-AMD：装甲巡航艦
## BSCR-ADF：防空巡航艦
## BSCR-MIS：ミサイル巡航艦
## BSCR-SPT：高速巡航艦
## BSCR-AVI：航空巡航艦
## BSCR-STM：強襲巡航艦
## BSCR-FLD：嚮導艦

## BSBB-STD：戦艦
## BSBB-AMD：装甲戦艦
## BSBB-BCR：巡航戦艦
## BSBB-SPT：高速戦艦
## BSBB-AVI：航空戦艦
## BSBB-SRK：戦略打撃艦
## BSBB-HGN：重砲撃艦
## BSBB-SGN：狙撃戦艦

## BSSB-STD：潜航艦
## BSSB-ATK：攻撃潜航艦
## BSSB-MIS：ミサイル潜航艦
## BSSB-SPT：高速潜航艦
## BSSB-AVI：潜航空母
## BSSB-STM：強襲潜航艦
## BSSB-SRK：戦略潜航艦
## BSSB-RAD：遊撃艦

## BSAC-STD：航空母艦
## BSAC-AMD：装甲空母
## BSAC-ATK：攻撃空母
## BSAC-MUS：多段式空母
## BSAC-BAC：戦闘空母
## BSAC-ICP：要撃空母
## BSAC-SRK：戦略空母
## BSAC-SCT：制宙艦

## BSMC-STD：改造空母
## BSMC-LIG：軽空母
## BSMC-SPT：高速空母
## BSMC-STM：強襲空母
## BSMC-MUL：商船空母
## BSMC-SMK：対潜空母
## BSMC-CNT：コンテナ空母
## BSMC-GIT：超大型空母

## BSGC-STD：汎用機母艦
## BSGC-BMB：爆撃機母艦
## BSGC-GIT：巨人機母艦
## BSGC-STM：強襲母艦
## BSGC-INF：歩兵母艦
## BSGC-LAM：陸攻母艦
## BSGC-DEF：防衛兵器母艦
## BSGC-BLM：戦闘母艦

## BSLC-STD：揚陸艦
## BSLC-TNK：戦車揚陸艦
## BSLC-CST：建設揚陸艦
## BSLC-SPT：高速揚陸艦
## BSLC-SMN：潜航揚陸艦
## BSLC-STM：強襲揚陸艦
## BSLC-MOT：揚陸母艦
## BSLC-BLD：戦闘揚陸艦

## ESFG-STD：護衛艦
## ESFG-SMK：対潜護衛艦
## ESFG-RES：陸戦救護艦
## ESFG-ADF：対空砲艦
## ESCV-SRG：格闘戦艦

## ESCV-STD：防護艦
## ESCV-GAD：警戒艦
## ESCV-AMD：装甲防護艦
## ESCV-MIS：ミサイル防護艦
## ESCV-DSP：通報艦

## ESEM-STD：護衛母艦
## ESEM-SMM：哨戒母艦
## ESEM-BOT：戦闘護衛艦
## ESEM-AVI：航空護衛艦
## ESEM-DRN：ドローン護衛艦

## SSRE-STD：偵察艦
## SSRE-SMN：偵察潜行艦
## SSRE-MOT：偵察母艦

## SSEL-STD：電子支援艦
## SSEL-SMN：潜航電戦艦
## SSEL-EBS：支援戦艦

## SSTR-STD：輸送艦
## SSTR-SPT：高速輸送艦
## SSTR-MOT：輸送母艦

## SSSS-STD：補給艦
## SSSS-SPT：高速補給艦
## SSSS-MOT：潜航母艦

## SSBS-STD：戦闘支援艦
## SSBS-DES：降下支援艦
## SSBS-MIS：大型ミサイル艦
## SSBS-COM：戦術指揮艦
## SSBS-ACM：航空指揮艦
## SSBS-LCM：陸戦指揮艦
## SSBS-ECM：護衛艦母艦
## SSBS-TRN：練習艦

## SSLS-MUL：汎用支援艦
## SSLS-TOW：曳航艦
## SSLS-ENG：工作艦
## SSLS-RPR：兵器修理艦
## SSLS-LAY：敷設回収艦
## SSLS-MNG：資源採掘艦
## SSLS-WOB：気象観測艦
## SSLS-TRF：転送艦

## MUCB-ICP：要撃機
## MUCB-FIG：戦闘機
## MUCB-TPD：雷撃機
## MUCB-BMB：高速爆撃機
## MUCB-ATK：攻撃機
## MUCB-AFG：戦闘攻撃機
## MUCB-SRK：戦闘爆撃機
## MUCB-TAC：戦術戦闘機
## MUCB-REC：偵察機
## MUCB-SMK：対潜攻撃機
## MUCB-ELW：電子攻撃機
## MUCB-SUP：補給機

## MUML-FIG：汎用戦闘機
## MUML-ATK：汎用攻撃機
## MUML-TPD：汎用雷撃機
## MUML-BMB：汎用爆撃機
## MUML-SRK：汎用戦闘爆撃機
## MUML-REC：汎用偵察機
## MUML-REC：汎用電子偵察機
## MUML-OBS：汎用観測機
## MUML-SMK：汎用哨戒機
## MUML-OBS：汎用輸送機

## MULG-HFI：重戦闘機
## MULG-HAT：重攻撃機
## MULG-HBM：重爆撃機
## MULG-SRK：戦略爆撃機
## MULG-ESC：護衛戦闘機
## MULG-MII：ミサイル迎撃機
## MULG-REC：強行偵察機
## MULG-AEW：早期警戒機
## MULG-SMK：対潜哨戒機
## MULG-ELS：電子作戦機
## MULG-SUP：補給輸送機
## MULG-INF：歩兵輸送機

## MUMB-STD：装載艇
## MUMB-AMG：装甲砲撃艇
## MUMB-MIS：高速ミサイル艇
## MUMB-ROK：ロケット砲艇
## MUMB-PTD：重雷撃艇
## MUMB-ADW：防空警戒艇
## MUMB-ICP：要撃艇
## MUMB-PAT：巡視艇
## MUMB-RCM：偵察指揮艇
## MUMB-SMK：対潜哨戒艇
## MUMB-ELW：電子作戦艇
## MUMB-SUP：補給輸送機
## MUMB-LND：揚陸艇
## MUMB-INF：歩兵装載艇
## MUMB-EST：護衛装載艇
## MUMB-RES：救護艇
## MUMB-SMN：潜航艇
## MUMB-ENG：工作艇
## MUMB-MSW：掃宙艇
## MUMB-SPA：特殊攻撃艇

## MUDR-ICP：要撃用ドローン
## MUDR-FIG：空戦用ドローン
## MUDR-ATK：攻撃用ドローン
## MUDR-SRG：格闘戦用ドローン
## MUDR-SMK：対潜哨戒用ドローン
## MUDR-SUP：補給輸送用ドローン
## MUDR-ENG：工作用ドローン

## LULA-ATK：陸戦攻撃機
## LULA-BMB：陸戦爆撃機
## LULA-SPR：陸戦制圧機
## LULA-OBS：陸戦観測機
## LULA-INF：陸戦支援機
## LULA-CAG：陸戦輸送機
## LULA-LFI：局地戦闘機
## LULA-OBT：軌道要撃機

## MUMS-STD：汎用型
## MUMS-ATK：攻撃型
## MUMS-AMD：防御型
## MUMS-SPT：機動型
## MUMS-SRG：格闘型
## MUMS-HAM：重装型
## MUMS-REC：強行偵察型
## MUMS-SMK：対潜哨戒型
## MUMS-ELW：電子作戦型
## MUMS-ENG：宙域工作型

## MUVS-STD：万能型
## MUVS-VAR：可変型
## MUVS-CBI：合体型
## MUVS-REP：換装型

## LULS-STD：陸戦型
## LULS-AIB：空挺型
## LULS-ATK：砲兵型
## LULS-SRG：護衛型
## LULS-REC：偵察型
## LULS-CEG：戦闘工兵型
## LULS-ENG：陸戦工作型
## LULS-SPL：特戦型

## LUBT-MBT：主力戦車
## LUBT-LBT：軽戦車
## LUBT-HBT：重戦車
## LUBT-MOB：機動戦車
## LUBT-INF：歩兵戦車
## LUBT-AAT：対空戦車
## LUBT-AMT：両用戦車
## LUBT-VER：万能戦車
## LUBT-AST：突撃戦車
## LUBT-JGP：駆逐戦車
## LUBT-SLC：自走砲
## LUBT-SLR：自走ロケット

## LUSV-STD：高機動車
## LUSV-COM：陸戦指揮車
## LUSV-MFG：機動野砲車
## LUSV-MRK：機動ロケット車
## LUSV-CAG：装甲輸送車
## LUSV-REC：偵察警戒車
## LUSV-HOV：ホバーバイク
## LUSV-SUP：補給修理車
## LUSV-CEG：戦闘工兵車
## LUSV-ENG：工作車
## LUSV-ORM：障害除去車
## LUSV-TOB：地形観測車

## LUSV-TOW：牽引車
## LUTR-CAG：大型貨物車両
## LUTR-FGN：野砲車両
## LUTR-AAC：対空戦闘車両
## LUTR-ROC：ロケット車両
## LUTR-MIS：対地ミサイル車両
## LUTR-OBT：軌道狙撃砲車両
## LUTR-SRK：戦略ミサイル車両
## LUTR-MUL：汎用支援車両
## LUTR-RCY：戦車回収車両
## LUTR-MNG：資源採掘車両
## LUTR-BAS：移動基地車両



## DUDU-STD：防衛システム
## DUDU-TAN：列車兵器
## DUDU-SHP：巨大戦艦
## DUDU-STL：戦略衛星
## DUDU-GIT：巨人兵器
## DUDU-GBT：巨大戦車
## DUDU-ABS：空中戦艦




## LUBT-FO：要塞砲台
## LUBT-AS：対艦砲台
## LUBT-FI：野戦砲台
## LUBT-AA：対空砲台
## LUBT-MI：ロケット発射台
## LUBT-MI：ミサイル発射台
## LUBT-ST：可動式デッキ
## LUBT-ST：待機デッキ
補給デッキ
## LUBT-MO：監視台



**浮遊砲台　[Floation Battery：DUFU-BT]**
**浮遊陣地　[Floating Encampment：DUFU-EN]**
**衛星　[Satellite：DUFU-ST]**

**設置砲台　[Installation Battery：DUIU-IB]**
**陣地　[Encampment：DUIU-CP]**
**工作設備　[Craft Equipment：DUIU-CE]**



## UNSS-PAS：客船

## UNBB-LIA：連絡艇

## UNST-REC：探査衛星



