# Galaxy Fleet
  
<h1>～装備品仕様～</h1>  
  

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメントは「Galaxy Fleet」で使われる装備品の定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  
  





<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)
  * [装備品仕様](readme.md)
  * [装備の区分記号](../strategypart/readme.md#aEquipClassificationSymbol)
  * [装備種類](#aEquipKind)
  * [装備分類](#aEquipClass)

* 基礎構造
  * [基礎フレーム](basic.md#aFoundationFrame)
  * [スラスタ](basic.md#aThruster)
  * [メインコンピュータ](basic.md#aMainComputer)
  * [エンジン](basic.md#aEngine)

* 砲
  * [要塞砲](equip_cannon.md#iFortressCannon)
  * [大型砲](equip_cannon.md#iLargeCannon)
  * [中型砲](equip_cannon.md#iMiddleCannon)
  * [小型砲](equip_cannon.md#iSmallCannon)
  * [機関砲](equip_cannon.md#iMachineGun)
  * [携行銃](equip_cannon.md#iHandGun)

* 噴進武器
  * [ロケットランチャー](equip_luncher.md#iRocketLuncher)
  * [ミサイルランチャー](equip_luncher.md#iMissileLuncher)
  * [スプレッドランチャー](equip_luncher.md#iSpreadLuncher)
  * [モスキートランチャー](equip_luncher.md#iMosquitoLuncher)
  * [トーピードランチャー](equip_luncher.md#iTorpido)
  * [デプスチャージランチャー](equip_luncher.md#iDepthCharge)

* 対空武器
  * [対空砲](equip_aagun.md#iAntiAirCannon)
  * [対空機関砲](equip_aagun.md#iAntiAirMachineGun)
  * [ディフューズレーザ](equip_aagun.md#iDiffuseLaser)
  * [パルスレーザ](equip_aagun.md#iPulsedLaser)

* 爆弾
  * [爆弾](equip_bomb.md#iBomb)
  * [装甲貫通弾](equip_bomb.md#iArmorBomb)
  * [レーザボム](equip_bomb.md#iLaserBomb)
  * [プロミネンスボム](equip_bomb.md#iLaserBomb)

* 接近戦用武器
  * [艦船用接近戦武器](equip_infight.md#iShipInfight)
  * [歩兵用接近戦武器](equip_infight.md#iInfantryInfight)
  * [歩兵用補助装備](equip_infight.md#iInfantryAuxiliary)

* 装甲強化装備
  * [簡易追加装甲](equip_armor.md#iConsumableAdditionalArmor)
  * [装甲強化キット](equip_armor.md#iModifiedAdditionalArmor)
  * [フレーム強化キット](equip_armor.md#iModifiedAdditionalArmor)

* 電子戦装備
  * [電子探索装置](equip_electronic.md#iElectronicSupport)
  * [次元探索装置](equip_electronic.md#iElectronicAttack)
  * [電子攻撃装置](equip_electronic.md#iElectronicProtection)
  * [電子防護装置](equip_electronic.md#iFireSupport)

* 防御装備
  * [シールド発生装置](equip_defence.md#iShield)
  * [ミサイル迎撃装置](equip_defence.md#iMissileInterception)
  * [雷撃防御装置](equip_defence.md#iTorpedoProtection)
  * [ダメコンユニット](equip_defence.md#iTorpedoProtection)

* 付属設備
  * [兵器搭載設備](parts.md#iTemporaryParts)
  * [貨物搭載設備](parts.md#iRemodelingParts)
  * [指令設備](parts.md#iSpecialParts)
  * [火器管制設備](parts.md#iSpecialParts)
  * [補助機関設備](parts.md#iSpecialParts)
  * [浮遊陣地用設備](parts.md#iSpecialParts)
  * [陣地用設備](parts.md#iSpecialParts)

* 戦略級兵器
  * [作戦兵器](equip_strategic.md#iOperationalStrategicWeapon)
  * [戦術兵器](equip_strategic.md#iRestrictedStrategicWeapon)
  * [戦略兵器](equip_strategic.md#iRestrictedStrategicWeapon)

* 魔導武器
  * [魔導武器](sorcery.md)
  * [法撃魔術](sorcery.md)
  * [防御魔術](sorcery.md)
  * [回復魔術](sorcery.md)
  * [補助魔術](sorcery.md)
  * [妨害魔術](sorcery.md)
  * [召喚魔術](sorcery.md)

* 魔導装備
  * [魔導装甲](sorcery.md)
  * [魔導小手](sorcery.md)
  * [魔導靴](sorcery.md)

* 弾薬
  * [砲弾](equip_equipment.md#iOnboardUnit)
  * [無誘導噴進弾](equip_equipment.md#iOnboardUnit)
  * [誘導噴進弾](equip_equipment.md#iOnboardUnit)
  * [次元転換魚雷](equip_equipment.md#iOnboardUnit)
  * [次元反応爆雷](equip_equipment.md#iOnboardUnit)
  * [爆弾](equip_equipment.md#iOnboardUnit)

* 消耗品
  * [補充用部品](equip_equipment.md#iOnboardUnit)
  * [交換用部品](equip_equipment.md#iOnboardUnit)
  * [支援設備用](equip_equipment.md#iOnboardUnit)
  





<h1 id="aEquipKind">装備種類 / Equip Kind</h1>  
装備品は大きく装備品分類により分類されます。  
  
詳しくは戦略パート仕様をご参照ください。  
  
  [装備品種類](../strategypart/readme.md#aEquipKind)  
  





<h1 id="aEquipClass">装備分類 / Equip Class</h1>  
各装備種類は、さらに装備分類に分類分けされます。  
  
  [目次へ戻る](#aMokuji)  
  

<h2 id="aFoundationStructure">FS：基礎構造 / Foundation Structure</h2>  

* **FSFF：基礎フレーム　Foundation Frame**  
  外装やフレームなど兵器の装甲や基礎構造で、耐久性能に影響する構造です。  
  

* **FSTH：スラスタ　Thruster**  
  兵器の姿勢制御や加速、推進をおこなう装置で、機動性能に影響する構造です。  
  

* **FSMC：メインコンピュータ　Main Computer**  
電子機器の制御や情報統制、戦術分析などをおこなうコンピュータなどの電子装置で、電子性能に影響する構造です。  
  

* **FSEG：エンジン　Engine**  
エネルギーを自己生成し、兵器が活動するための力を生み出す装置で、動力性能に影響する構造です。  
  


<h2 id="aCannon">CN：砲 / Cannon</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **CNFT：要塞砲　Fortress Cannon**  
  要塞専用の超大型砲です。防衛兵器だけが搭載できます。  
  

* **CNLG：大型砲　Large Cannon**  
  戦艦、防衛兵器が搭載できる大型砲です。  
  

* **CNMD：中型砲　Middle Cannon**  
  巡航艦など中型以上の戦列艦、防衛兵器が搭載できる大砲です。  
  

* **CNSM：小型砲　Small Cannon**  
  駆逐艦、装載艇、戦車、防衛兵器で共通利用できる大砲です。大型艦の副砲にも兼用できます。  
  

* **CNMG：機関砲　Machine Gun**  
  戦列艦、装載艇、航空機、歩兵、戦車で共通利用できる砲です。歩兵の場合、大きいのでかさばります。  
  

* **CNHG：携行銃　Hand Gun**  
  歩兵が装備できる手持ちの大砲です。歩兵以外では兼用できません。  
  


<h2 id="aThrowingWepon">TW：噴進武器 / Throwing Wepon</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **TWRC：無誘導噴進弾　Rocket Luncher**  
  実体弾をロケットモータで加速させ、運動エネルギーと爆発の威力で粉砕する武器、ロケット弾です。  
  

* **TWMI：誘導噴進弾　Missile Luncher**  
  実体弾をジェット噴進と精密誘導装置で目標に誘導し、直撃させるか、至近で爆破し爆風で破壊する武器、ミサイルです。  
  

* **TWSP：スプレッドランチャー　Spread Luncher**  
  着弾すると爆発するエネルギー弾を発射する武器です。無誘導のため命中率が悪いですが、高威力です。  
  

* **TWMQ：モスキートランチャー　Mosquito Luncher**  
  着弾すると爆発するエネルギー弾を発射する武器です。誘導式で命中率が高いですが、威力が落ちます。  
  

* **TWTP：次元転換魚雷　Tranceform Torpido Luncher**  
  次元空間を滑走する魚雷を発射、着弾寸前に通常空間に現れ、目標を爆破する武器です。射程は短いですが、敵艦に壊滅的なダメージを与えます。  
  

* **TWVE：次元転換噴進弾　Tranceform Vertical Luncher**  
  次元空間から通常空間を噴進弾で攻撃する、潜航艦用の武器です。  
  


<h2 id="aAntiAirWepon">AA：対空武器 / Anti Air Wepon</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **AAAC：対空砲　Anti Air Cannon**  
  実体弾を用いた対空戦闘専用の武器です。主に戦列艦に搭載されます。  
  基本的に照準は自動照準となります。  
  

* **AAMG：対空機関砲　Anti Air Machine Gun**  
  実体弾を用いた対空戦闘専用の武器です。  
  対空砲より小型で、機動兵器などに搭載されます。  
  

* **AADL：ディフューズレーザ　Diffuse Laser**  
  レーザを拡散照射する、対空戦闘専用のレーザ砲です。  
  命中率が高いですが、搭載スペースと重量を食います。  
  基本的に照準は自動照準となります。  
  

* **AAPL：パルスレーザ　Pulsed Laser**  
  短い周期で連続発射できる対空戦闘用のレーザ砲です。  
  低出力ですが、命中率が高いです。  
  


<h2 id="aBombLuncher">BB：爆弾 / Bomb Luncher</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **BBUG：無誘導爆弾　Unguided Bomb Luncher**  
  投下、着弾の衝撃で大きく爆発し、熱と衝撃波と破片で破壊する武器です。  
  誘導爆弾よりコストが低いわりに破壊力がありますが、命中率が低いです。  
  防衛兵器や陸戦兵器を攻撃するのに向いています。  
  

* **BBGD：誘導通弾　Guided Bomb Luncher**  
  投下、着弾の衝撃で大きく爆発し、熱と衝撃波と破片で破壊する武器です。  
  誘導装置により精密誘導され命中率が非常に高いですが、コストが高いです。  
  防衛兵器や陸戦兵器を攻撃するのに向いています。  
  

* **BBLB：レーザボム　Laser Bomb Luncher**  
  投下、着弾すると爆発し、熱とエネルギー流で目標を破壊する武器です。  
  連装式で歩兵や多数の地上目標を攻撃するのに向いています。  
  

* **BBPR：プロミネンスボム　Prominence Bomb Luncher**  
  投下、着弾すると目標に吸着した上、強烈な熱を放ち、熱焼損で損傷するか、焼き切る武器です。  
  主に装甲の厚い艦船や、建物を攻撃するのに向いてます。  
  

* **BBMN：次元反応爆雷　Reaction Dropping Mine Luncher**  
  次元空間に爆雷を投下し、潜航艦を攻撃する武器です。  
  低コストですが、潜航中の潜水艦以外には使えません。  
  


<h2 id="aInfightWeapon">IW：接近戦用武器 / Infight Weapon</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **IWSP：艦船用接近戦武器　Ship Infight Weapon**  
  護衛艦用の接近戦闘専用の武器です。  
  艦船への移乗や、艦船の妨害や拘束に使えます。  
  

* **IWII：歩兵用接近戦武器　Infantry Infight Weapon**  
  歩兵用の接近戦闘専用の武器です。  
  武器の使用が制限される艦内や要塞戦で使えます。  
  

* **IWIA：歩兵用補助装備　Infantry Auxiliary Equipment**  
  歩兵を補助するための装備です。  
  


<h2 id="aArmorEnhancementEquipment">AM：装甲強化装備 / Armor Enhancement Equipment</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **AMAA：簡易追加装甲　Easy AddOn Armor**  
  簡易的に兵器の装甲を追加するパーツです。  
  簡易的に装備するため耐久性が低く壊れやすいです。  
  

* **AMEP：装甲強化キット　Armor Enhancement Kit**  
  兵器の装甲を追加、強化する改造キットです。  
  既存の装甲を入れ替えるため故障はなく、耐久性は高いです。  
  

* **AMFR：フレーム強化キット　Frame Strengthening Kit**  
  兵器の基礎フレームを強化する改造キットです。  
  


<h2 id="aElectronicWarfareDevice">EW：電子戦装備 / Electronic Warfare Device</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **EWSH：電子探索装置　Electronic Search Device**  
  戦場の地形や敵の存在、位置を探索したり、探索で収集したデータを分析する装置です。  
  レーダーが該当します。  
  

* **EWDS：次元探索装置　Dimention Search Device**  
  次元空間を探索し、次元に潜む物体や、潜水艦を探す装置です。  
  ソナーが該当します。  
  

* **EWAT：電子攻撃装置　Electronic Attack Device**  
  敵の探知装置を妨害波や欺瞞工作、高度な電子操作をおこなって妨害する装置です。  
  ECMなどのジャミング装置が該当します。  
  

* **EWPR：電子防護装置　Electronic Protection Device**  
  敵の探知から逃れたり、電子妨害を軽減したり、無効化する装置です。電子支援装置に付属して使用します。  
  電子戦装置の性能を強化したり、感度を向上するようなパーツです。  
  


<h2 id="aDefensiveEquipment">DF：防御装備 / Defensive Equipment</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **DFSH：シールド発生装置　Shield Device**  
  エネルギーで船体を守る防御装置です。  
  シールドジェネレータと接続し、シールドエネルギーが続く限り防御効果が継続します。  
  

* **DFMI：ミサイル迎撃装置　Missile Interception Device**  
  ミサイルを迎撃するミサイルとそのシステム一式です。  
  物理的に迎撃するので有効性が高いです。  
  

* **DFTP：雷撃防御装置　Torpedo Protection Device**  
  雷撃から身を守ったり、航行する魚雷を妨害したり迎撃するシステム一式です。  
  

* **DFDC：ダメコンユニット　Damage Control Unit**  
  被弾時の被害軽減と復旧をおこなうシステム一式です。  
  


<h2 id="aAncillaryEquipment">AC：付属設備 / Ancillary Equipment</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **ACUL：兵器搭載設備　Unit Loading Equipment**  
  兵器へ別の兵器を搭載したり、敷設兵器を設置、回収するための設備です。  
  

* **ACCL：貨物搭載設備　Cargo Loading Equipment**  
  兵器へ貨物を搭載したり、回収するための設備です。  
  

* **ACCO：指令設備　Command Equipment**  
  指令をおこなったり、指令機能を追加、強化する設備です。  
  

* **ACFC：火器管制設備　Fire Control Equipment**  
  火器の発射制御や、照準制御をおこなう設備です。  
  

* **ACAE：補助機関設備　Auxiliary Engine Equipment**  
  兵器の推進制御や、動力制御をおこなったり、星間を移動するためのドライブユニットなどの設備です。  
  

* **ACFE：浮遊陣地用設備　Floating Encampment Equipment**  
  浮遊兵器用の設備です。  
  

* **ACEN：陣地用設備　Encampment Equipment**  
  陣地用の設備です。  
  


<h2 id="aStrategicClassWeapon">SW：戦略級兵器 / Strategic Class Weapon</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **SWVV：作戦兵器　Operational Weapon**  
  建物や戦場の一部に限定的かつ破滅的な影響を与える兵器です。  
  使用の制限はありませんが、非常に高額なため、使用する場面は限られます。  
  

* **SWXX：戦術兵器　Tactical Weapon**  
  エリアマップやローカルマップの一部に破滅的な影響を与える兵器です。  
  使用にあたっては封印されており、使う場面は非常に限定され、戦時監視委員会の承認が必要です。  
  

* **SWZZ：戦略兵器　Strategic Weapon**  
  エリアマップやローカルマップ全体、あるいはグローバルマップに天体規模の影響を与える兵器です。  
  使用にあたっては厳重に封印されており、戦時監視委員会の承認がとれないと使用できません。  
  承認は滅多に降りません。  
  


<h2 id="aWizardWepon">WE：魔導装備 / Wizard Wepon</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **WWWP：魔導武器　Wizard Wepon**  
  魔導エネルギーを帯びた近接武器です。  
  厚い装甲を破り、魔導装甲をも貫通できます。  
  

* **WWST：法撃魔術　Strike Magic**  
  攻撃用の魔導装備で、離れた目標に対して魔導エネルギーや魔導弾で攻撃できます。  
  通常のエネルギーシールドを貫通します。  
  法撃の効果により、炎、雷など効果が変わります。  
  

* **WWCT：防御魔術　Counter Magic**  
  防御用の魔導装備で、法撃魔術を防いだり、反射したりできます。  
  通常のエネルギー兵器や物理兵器、魔導武器には効果がありません。  
  

* **WWHL：回復魔術　Heal Magic**  
  損傷した装甲を魔導エネルギーにより修復することができる魔導装備です。  
  

* **WWAU：補助魔術　Auxiliary Magic**  
  魔導エネルギーを使って自分や味方の機能を向上させることができる魔導装備です。  
  

* **WWDI：妨害魔術　Disturbance Magic**  
  魔導エネルギーを使って相手の電子機器を狂わせる魔導装備です。  
  通常の装備にも有効です。魔導兵器に対して有効ですが、抵抗（レジスト）で無効化される場合もあります。  
  

* **WWSM：召喚魔術　Summon Magic**  
  魔導によりドローンを生成（召喚）することができる魔導装備です。  
  魔導により消費はなく、実質無制限にドローンを召喚できますが、一度に召喚できる数には限りがあり、クールタイムもあります。  
  


<h2 id="aWizardEquipment">WE：魔導装備 / Wizard Equipment</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **WEAM：魔導装甲　Wizard Armor**  
  表面に魔導エネルギーを発し、防御効果を発揮する魔導装備です。  
  通常のエネルギー兵器や、エネルギー弾をかなり減衰でき、法撃魔術に対してもある程度減衰されます。  
  

* **WEGL：魔導小手　Wizard Gloves**  
  魔導エネルギーの制御をサポートする魔導装備です。  
  法撃魔術の命中補正や、相手の妨害魔術に対する抵抗に効果があります。  
  

* **WESS：魔導靴　Wizard Shoes**  
  魔導兵器の推進や機動をサポートする魔導装備です。  
  魔導兵器の速度、回避力に効果があります。  
  


<h2 id="aBullet">BL：弾薬 / Bullet</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **BLCN：砲弾　Cannon Shell**  
  大砲や対空砲の弾薬です。  
  

* **BLRK：無誘導噴進弾　Rocket Shell**  
  ロケットやミサイル本体と燃料のセットです。  
  

* **BLMI：誘導噴進弾　Missile Shell**  
  ミサイル本体と燃料のセットです。  
  

* **BLTP：次元転換魚雷　Tranceform Torpedo**  
  魚雷です。  
  

* **BLDM：次元反応爆雷　Reaction Dropping Mine**  
  爆雷です。  
  

* **BLBO：爆弾　Bomb**  
  爆弾です。  
  


<h2 id="aExpendables">EP：消耗品 / Expendables</h2>  
  
  [目次へ戻る](#aMokuji)  
  

* **EPSP：補充用部品　Spare Parts**  
  補充用部品です。  
  

* **EPRP：交換用部品　Replacement Parts**  
  交換用の替え具、部品です。  
  

* **EPSU：支援設備用　Support Equipment Expendables**  
  支援設備用の替え具です。  
  





***
::Game Site= [https://galaxy-fleet.koreis-labo.com/](https://galaxy-fleet.koreis-labo.com/)  
::github= [https://github.com/korei-xlix/galaxyfleet](https://github.com/korei-xlix/galaxyfleet)  
::Twitter= [https://twitter.com/galaxy_fleet](https://twitter.com/galaxy_fleet)  
  
::Deverop= Samafeald (@samafeald)  
::Twitter= [https://twitter.com/samafeald](https://twitter.com/samafeald)  
  

***
[[トップへ戻る]](/readme.md)　/
[[装備品仕様]](/equip/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::Twitter= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
