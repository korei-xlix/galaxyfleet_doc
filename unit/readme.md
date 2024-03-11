# Galaxy Fleet：兵器仕様

## Galaxy Fleet：Weapon Specifications

## このドキュメントについて / About this document

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  
このドキュメントは「Galaxy Fleet」の兵器の種類、定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  





## 目次 / Table of contents

* [readme.md](/readme.md)

* 兵器仕様
  * [兵器の区分記号](/strategypart/readme.md#兵器の区分記号--unit-classification-symbol)
  * [兵器種類](#兵器種類--unit-kind)
  * [兵器分類](#兵器分類--unit-class)
  * [兵器形式](#兵器形式--unit-type)

* 戦闘用の艦船
  * [戦列艦](#bs戦列艦--battle-ships)
  * [護衛艦](#es護衛艦--escort-ships)
  * [支援艦](#ss支援艦--support-ships)

* 戦闘兵器
  * [機動兵器](#mu機動兵器--movable-units)
  * [陸戦兵器](#lu陸戦兵器--land-units)
  * [防衛兵器](#du防衛兵器--defense-units)
  * [魔導歩兵](#wi魔導兵器--wizard-infantrys)

* 民間用
  * [民間船](#cs民間船--civil-ships)
  * [民間機](#cu民間機--civil-units)
  * [民間施設](#cb民間施設--civil-facilities)





## 兵器種類 / Unit Kind

[目次へ戻る](#目次--table-of-contents)  
  

兵器は大きく兵器分類により分類されます。  
  
詳しくは戦略パート仕様をご参照ください。  
  
  [兵器種類](../strategypart/readme.md#aUnitKind)  





## 兵器分類 / Unit Class

[目次へ戻る](#目次--table-of-contents)  
  
各兵器種類は、さらに兵器分類に分類分けされます。  


## BS：戦列艦 / Battle Ships

[目次へ戻る](#目次--table-of-contents) / [戦列艦](battleships/readme.md)  
  

* **[BSDS：駆逐艦　Destroyer](battleships/destroyer.md)**  
  小型で小回りのきく戦列艦です。  
  小型の火砲、魚雷、爆雷、対潜ソナーを装備し、近接での対艦戦闘と、対潜戦闘を得意とします。  
  機動性能、回避性能、高機動による索敵能力が高く、コストが安いです。  
  ただし、耐久性、装甲力が低く、被弾に弱いです。  
  　　主な武器：小型主砲、魚雷、爆雷、対空砲  

* **[BSCR：巡航艦　Cruiser](battleships/cruiser.md)**  
  中型で電子性能が高い戦列艦です。  
  中型の火砲を装備し、近距離から中距離の砲撃戦が得意です。  
  また高性能の電探、偵察機を装備し、電探による索敵や電子戦対空戦闘力を得意とします。  
  駆逐艦よりも耐久性、移動性能に優れますが、回避性能が劣ります。  
  　　主な武器：中型主砲、小型主砲、偵察機、対空砲  

* **[BSBB：戦艦　Battle Ship](battleships/battleship.md)**  
  大型で非常に戦闘力が高い戦列艦で、艦隊戦の花形です。  
  大型の火砲やミサイルを搭載し、中距離から遠距離の砲撃戦に秀でます。  
  また装甲やシールドが非常に厚く、生存性が高いです。偵察機も搭載でき、ある程度の索敵も可能です。  
  しかし大型の船体により鈍足で、機動兵器に狙われやすいです。  
  　　主な武器：大型主砲、中型主砲、ミサイル、偵察機、対空砲  

* **[BSAC：航空母艦　Aircraft Carrier](battleships/aircraftcarrier.md)**  
  大型で多数の艦載機を搭載、運用するための母艦型の戦列艦です。  
  母艦機能に特化しており、艦載機の整備、搭載武器の換装、修理などができます。  
  空母自体の武装は少なく、単艦での戦闘力は貧弱です。  
  カタパルトが損傷すると艦載機が発進できなくなります。  
  　　主な武器：対空砲  

* **[BSMC：改造空母　Modified Aircraft Carrier](battleships/modifiedcarrier.md)**  
  巡航艦や支援艦、大型の客船の船体をベースに建造した改装型の空母です。  
  空母としての母艦機能に加え、航空母艦よりも耐久性と経済性に優れます。  
  空母自体の武装は少なく、単艦での戦闘力は貧弱です。また航空母艦よりも鈍足です。  
  カタパルトが損傷すると艦載機が発進できなくなります。  
  　　主な武器：中型砲、小型砲、対空砲  

* **[BSMS：汎用母艦　General Purpose Mother Ship](battleships/mothership.md)**  
  空母では運用できない大型の航空機や爆撃機、汎用戦闘機、装載艇などを運用するための特設空母です。  
  母艦機能により搭載機の整備、搭載武器の換装、修理などができます。  
  船体の構造が巨大なため、航空母艦、改造空母よりも耐久性、機動性に難があります。  
  カタパルトが損傷すると艦載機が発進できなくなります。  
  　　主な武器：小型主砲、対空砲  

* **[BSLC：揚陸艦　Land Carrier](battleships/landcarrier.md)**  
  装載艇や陸戦兵器、歩兵を搭載し、泊地や要塞に揚陸させることができる戦列艦です。  
  中型で巡航艦程度の大きさの船体を持ち、装甲と機動性が高めです。  
  敵の艦船に強行接舷して歩兵を送ることもできます。  
  武装は少なく、艦船相手の戦闘力はほぼありません。  
  　　主な武器：野戦砲、対空砲  

* **[BSSB：潜航艦　Submarine](battleships/submarine.md)**  
  亜空間潜航が可能な特殊な戦列艦です。  
  小型で駆逐艦程度の大きさの船体を持ちます。  
  潜航中はビームやミサイルなどの兵器ではダメージが与えられず、駆逐艦や対潜哨戒機などでしか攻撃できません。  
  その代わり、潜水艦も潜航中は魚雷しか使えません。  
  速度や機動性は遅いため、索敵にひっかかると逃げるのが難しくなります。  
  　　主な武器：小型主砲、魚雷、対空砲  

* **[BSWZ：魔導戦艦　Battle Wizard Ship](battleships/battlewizardship.md)**  
  魔導技術で作られた特殊な戦列艦です。  
  強力な魔導砲や魔導ミサイル、魔導兵器を搭載、運用でき、魔導エネルギーを使った戦闘ができます。  
  エネルギーの無限生成と自我をもちます。  
  運用コストは安いですが、修理や武装にかかるコストが非常に高いです。  





## ES：護衛艦 / Escort Ships

[目次へ戻る](#目次--table-of-contents) / [護衛艦](escortships/readme.md)  
  

* **[ESFG：護衛艦　Frigate](escortships/frigate.md)**  
  電子性能、防空性能に優れ、大型の艦船の接近防御、艦隊の防空を担う護衛用の中型艦艇です。  
  敵機動兵器からの対空防御、接近してくる敵艦の妨害、揚陸してきた歩兵の排除がおこなえます。  
  護衛艦としての機能は万能ですが、コストが非常に高いです。  
  レギュレーションにより、直接的な対艦攻撃をおこなう武装は搭載できません。  
  移動も単独ではおこなえず、戦列艦に近接しなくてはいけません。  
  　　主な武器：対空砲  

* **[ESCV：防護艦　Corvet](escortships/corvet.md)**  
  護衛艦の機能から電子戦、機動戦に限定してコストダウンをおこなった小型の護衛艦です。  
  電子戦や機動戦による早期警戒、電子妨害や攪乱、電子妨害からの防御がおこなえます。  
  護衛艦と比較して機動性能、コストに優れますが、電子性能、対空防御力は劣ります。  
  レギュレーションにより、直接的な対艦攻撃をおこなう武装は搭載できません。  
  移動も単独ではおこなえず、戦列艦に近接しなくてはいけません。  
  　　主な武器：対空砲  

* **[ESMS：護衛母艦　Escort Mother Ship](escortships/escortmothership.md)**  
  制空、哨戒用の艦載機で艦隊の防空、対潜哨戒、周辺索敵をおこなう母艦型の護衛艦です。  
  護衛艦で艦載機を運用することで、航空機による艦隊の防空、警戒能力をあげることができます。  
  艦載機の運用に特化することでコストダウンを計っています。  
  発着艦の装置は内蔵式のため戦闘で破損することはありませんが、空母よりも発進が遅いです。  
  　　主な武器：対空砲  

* **[ESWZ：魔導護衛艦　Escort Wizard Ship](escortships/escortwizardship.md)**  
  魔導技術で作られた護衛艦です。  
  魔導により艦隊防空、早期発見、敵艦の妨害がおこなえ、魔導装甲により艦体が守られてます。  
  エネルギーの無限生成と自我をもちます。  
  運用コストは安いですが、修理や武装にかかるコストが非常に高いです。  





## SS：支援艦 / Support Ships

[目次へ戻る](#目次--table-of-contents) / [支援艦](supportships/readme.md)  
  

* **[SSRE：偵察艦　Recommend Ship](supportships/recommendship.md)**  
  索敵能力と隠蔽能力、機動性に秀でる偵察用の支援艦です。  
  船体は巡航艦がベースになっています。  
  単艦で敵地の奥まで侵入し、敵の情報の収集、収集した情報を味方に共有します。  
  自衛用の小型砲くらいしか武装できません。  
  　　主な武器：なし  

* **[SSEL：電子支援艦　Electronic Support Ship](supportships/electronicsupportship.md)**  
  電子戦による妨害工作と、対電子戦を専門とする支援艦です。  
  船体は巡航艦がベースになっています。  
  電子戦性能においては、他の艦船の追随を許しません。  
  自衛用の小型砲くらいしか武装できませんが、艦種によっては火力が高いものもあります。  
  　　主な武器：なし  

* **[SSSC：補給輸送艦　Supply Cargo Ship](supportships/supprycargoship.md)**  
  兵器や大量の資源や物資を輸送したり、艦船の補給をおこなうための支援艦です。  
  船体は戦艦や大型客船、巡航艦がベースになっています。  
  搭載容量は他の艦船よりもかなり多く、防衛兵器もバラして搭載できます。  
  また補給物資を搭載していれば、航行中や戦闘中でも他艦船への補給ができます。  
  ただし揚陸能力はなく、貨物の積み下ろしは大きな港がないとできません。  
  また武装は搭載しないことが多く、あっても自衛用の小型砲くらいしか武装できません。  
  　　主な武器：なし  

* **[SSCM：指揮支援艦　Command Support Ship](supportships/commandsupportship.md)**  
  戦闘の指揮や、艦隊の通信管制をおこなうための支援艦です。  
  船体は巡航艦がベースになってます。  
  指揮機能のほか、電子性能が高いです。  
  また武装は搭載しないことが多く、あっても自衛用の小型砲くらいしか武装できません。  
  　　主な武器：ビーム砲  

* **[SSKS：打撃支援艦　Strike Support Ship](supportships/strikesupportship.md)**  
  長距離の打撃火力を補助するための予備火力戦力を要する、戦闘支援のための艦船です。  
  船体は巡航艦がベースになってます。  
  長距離の火力が高いです。  
  装甲や機動性能は低いため、近接での打撃戦には向きません。  

* **[SSLS：陸戦支援艦　Land War Support Ship](supportships/landsupportship.md)**  
  軌道上から陸戦部隊を支援するための艦船です。  
  船体は巡航艦がベースになってます。  
  揚陸艦と違って陸戦部隊の揚陸機能はありませんが、桟橋に接続しなくても軌道上から支援することができます。  
  また武装は搭載しないことが多く、あっても自衛用の小型砲くらいしか武装できません。  

* **[SSFE：戦場工作艦　Field Engineer Ship](supportships/fieldengineership.md)**  
  戦場の工作や、機雷の敷設回収、艦船の補修などをおこなうための支援艦です。  
  船体は巡航艦がベースになってます。  
  ドックでなくても艦船の仮補修をおこなったり、戦場に機雷を敷設したり、戦術的な機能が充実しており、装甲や耐久性にも優れます。  
  ただし、戦闘力はほぼなく、機動性が低いです。  
  また武装は搭載しないことが多く、あっても自衛用の小型砲くらいしか武装できません。  

* **[SSSS：戦略支援艦　Strategy Support Ship](supportships/strategysupportship.md)**  
  建物を建築したり、戦略的な情報を収集するための支援艦です。  
  船体は戦艦や大型客船がベースになってます。  
  戦略的な機能が充実してます。  
  ただし、戦闘力はほぼなく、攻撃に弱いです。また武装はしてません。  

* **[SSWZ：魔導支援艦　Support Wizard Ship](supportships/supportwizardship.md)**  
  魔導技術で作られた支援艦です。  
  魔導により戦闘支援、艦隊防御、工作がおこなえ、魔導装甲により艦体が守られてます。  
  エネルギーの無限生成と自我をもちます。コストが高いです。  





## MU：機動兵器 / Movable Units

[目次へ戻る](#目次--table-of-contents) / [機動兵器](movableunits/readme.md)  
  

* **[MUCB：空母航空機　Carrier Aircraft](planes/carrieraircraft.md)**  
  航空母艦専用で運用できる小型、中型の航空機です。エリアマップでしか運用できません。  
  航空戦と対艦攻撃が得意です。  
  対空武器、機動歩兵によわいです。  
  　　主な武器：機関砲、ミサイル、爆弾、対空機関砲  

* **[MUML：汎用航空機　Multipurpose Aircraft](planes/multipurposesircraft.md)**  
  巡航艦や戦艦で運用する小型の航空機です。  
  広大な飛行甲板でなくても運用できるよう工夫されてます。  
  戦闘力は空母航空機より低く、搭載装備も少ないです。  
  対空武器、機動歩兵によわいです。  
  　　主な武器：機関砲、ミサイル、爆弾、対空機関砲  

* **[MULG：大型航空機　Large Aircraft](planes/largeaircraft.md)**  
  大型の航空機です。ペイロードが大きく高性能の武器や機能を搭載します。  
  機体が巨大なため専用の母艦や超大型の空母でしか運用できません。  
  非常に強力な兵器ですが、機動性は空母航空機より下がります。  
  対空武器、機動歩兵によわいです。  
  　　主な武器：機関砲、対空機関砲  

* **[MUMI：機動歩兵　Movable Infantry](infantrys/movableinfantry.md)**  
  人型のロボットです。航空戦以外の用途でも運用できます。  
  航空機につよいです。  
  　　主な武器：機関砲、手投げ弾、接近戦用武器、対空機関砲  

* **[MUVI：万能歩兵　Versatile Infantry](infantrys/versatileinfantry.md)**  
  最高性能の機動歩兵です。大気圏内でも活動できます。  
  陸戦兵器によわいです。  
  　　主な武器：機関砲、手投げ弾、接近戦用武器、対空機関砲  

* **[MUMB：装載艇　Mounted Boat](planes/mountedboat.md)**  
  艦船に搭載できる小型の舟艇です。  
  艦載用の武器が搭載できるため攻撃力が非常に高いです。  
  航空機によわいです。  
  　　主な武器：小型主砲、機関砲、対空機関砲  





## LU：陸戦兵器 / Land Units

[目次へ戻る](#目次--table-of-contents) / [陸戦兵器](landunits/readme.md)  
  

* **[LULA：陸戦攻撃機　Land Airplane](planes/landairplane.md)**  
  戦術マップや要塞など極局地でのみ運用できる飛行機です。  
  航空機、機動歩兵、陸戦歩兵、戦車につよいです。  
  対空武器によわいです。  
  　　主な武器：機関砲、ロケット、爆弾、対空機関砲  

* **[LULI：陸戦歩兵　Land Infantry](infantrys/landinfantry.md)**  
  陸戦に特化した人型のロボットです。  
  泊地や要塞への揚陸や、陸戦移譲への護衛など、特殊な状況下でのみ運用できます。  
  機動歩兵、防衛兵器につよいです。  
  陸戦攻撃機、戦車によわいです。  
  　　主な武器：機関砲、手投げ弾、接近戦用武器、対空機関砲  

* **[LUMT：主力戦車　Main Tank](cars/maintank.md)**  
  地上や要塞など極局地でのみ運用できる戦闘車両です。  
  主に戦車、車両、歩兵を攻撃するのに向いてます。  
  耐久性も高く、防御力が高いです。  
  陸戦攻撃機によわいです。  
  　　主な武器：小型主砲（小型野戦砲）、機関砲  

* **[LUST：支援戦車 / Support Tank](cars/supporttank.md)**  
  主力戦車から歩兵を守ったり、攻撃の支援をする戦車です。  
  主に戦車、装甲車両、歩兵を攻撃するのに向いてます。  
  耐久性、防御力は主力戦車より低いですが、歩兵からの攻撃には耐えやすいです。  
  主力戦車、陸戦攻撃機によわいです。  

* **[LUPT：自走戦車 / Self Propelled Tank](cars/selfpropelledtank.md)**  
  戦車の台座に様々な火砲を搭載する火力戦車です。  
  載せる砲台によって、対地、対空に分類が分かれます。  
  耐久性、防御力は低いですが、歩兵からの攻撃にはやや耐えやすいです。  
  攻撃にはよわいです。  

* **[LUAV：装甲車両 / Armoed Vehicle](cars/armoedvehicle.md)**  
  装甲で強化した戦闘支援用の車両です。  
  主に、支援戦車、歩兵を攻撃するのに向いてます。  
  耐久性、防御力は支援戦車より高いすが。  
  支援戦車、陸戦攻撃機によわいです。  

* **[LUMV：機動車両 / Mobility Vehicle](cars/maintank.md)**  
  機動力が高い支援用の車両です。  
  ユニットを乗せ換えることで様々な支援機能に変えることができます。  
  陸戦指揮にかかわる車両もあります。  
  攻撃にはよわいです。  
  　　主な武器：機関砲  

* **[LUTR：牽引車両　Trailer](cars/trailer.md)**  
  地上や要塞など極局地でのみ運用できるトレーラーです。  
  荷台に砲や荷物を載せて運用し、牽引車両で牽引します。  
  攻撃にはよわいです。  





## DU：防衛兵器 / Defense Units

[目次へ戻る](#目次--table-of-contents) / [防衛兵器](defenseunits/readme.md)  
  

* **[DUSY：防衛システム　Defense System](defenseunits/defensesystem.md)**  
  拠点防衛のための超巨大システムです。  
  ローカルマップの奥に設置され、ゲームではボスキャラ扱いです。  
  陸戦兵器でしか攻撃できません。特に陸戦歩兵によわいです。  

* **[DUGW：巨人兵器　Giant Wepon](defenseunits/giantwepon.md)**  
  拠点攻撃、防衛のための超巨大兵器です。  
  １基で数個艦隊を凌駕する戦力を持ちます。ゲームではボスキャラ扱いです。  
  外から攻撃して破壊することは非常に難しく、内部に陸戦兵器を送り込むしかないです。  
  陸戦歩兵によわいです。  

* **[DUST：宇宙砲台　Space Battery](defenseunits/spacebattery.md)**  
  拠点防衛のための武器を置く施設です。  
  航空機、歩兵によわいです。  

* **[DULT：野戦砲台　Land Battery](defenseunits/landbattery.md)**  
  拠点防衛のための武器を置く施設です。  
  陸戦歩兵、陸戦攻撃機によわいです。  

* **[DUFU：浮遊兵器　Floating Unit](defenseunits/floatingunit.md)**  
  敷設艦で簡易的に設置できる兵器や陣地です。  
  宇宙空間でしか使えません。  
  攻撃に対しては脆弱です。  

* **[DUIU：設置兵器　Installed Unit](defenseunits/installedunit.md)**  
  陸地に簡易的に設置できる兵器や陣地です。  
  陸戦兵器の侵攻を妨害します。  
  工兵で設置できます。  

* **[DUBS：宇宙基地　Space Base](defenseunits/spacebase.md)**  
  エリアマップに設置できる軍事施設です。  
  建設には時間がかかります。  

* **[DULB：地上基地　Land Base](defenseunits/landbase.md)**  
  ローカルマップに設置できる軍事施設です。  
  ローカルマップにおいては拠点となります。  
  建設には時間がかかります。  





## WI：魔導兵器 / Wizard Infantrys

[目次へ戻る](#目次--table-of-contents) / [魔導兵器](wizardinfantrys/readme.md)  
  

* **[WISO：魔導士　Sorcery](wizardinfantrys/sorcery.md)**  
  攻撃、妨害、召喚の法術に優れた魔導兵器です。  
  中距離、長距離の法撃攻撃力に優れます。  
  装甲が薄く、耐久性が低いです。  

* **WIMO：修道士　Monk**  
  防御、回復、支援系の法術に優れた魔導兵器です。  
  術法の防御、味方の支援能力に優れ、近接戦闘も少し得意です。  

* **WIEM：使役士　Employer**  
  遠隔操作や召喚など、小型兵器を操ることに優れた魔導兵器です。  
  術法の防御、味方の支援能力、敵の妨害に優れ、近接戦闘も少し得意です。  

* **WIWA：戦士　Warrior**  
  攻防のバランスのいい戦闘力を備えた魔導兵器です。  
  近接戦用の大型装備が搭載でき、接近戦闘に特化し、前線で戦うのに向いてます。  
  装甲が若干薄いです。  

* **WIHU：狩人　Hunter**  
  主に攻撃に重きを与えた魔導兵器です。  
  遠距離戦用の大型装備が搭載でき、中距離～遠距離の戦闘に特化しています。  
  装甲が若干薄いです。  

* **WIKN：騎士　Knight**  
  重武装で特に防御力が高い魔導兵器です。  
  近接戦用の大型装備が搭載でき、接近戦闘に特化し、「騎馬」により戦場を高速で移動できます。  
  攻防に非常に優れますが、国家から許可がないとスキルが得られません。  

* **WIEG：技師　Engineer**  
  技術系のスキルを搭載した魔導兵器です。  
  戦術マップでの作業に向いてます。  
  戦闘には向いてません。  

* **WIST：一般職　Staff**  
  一般系、生活系のスキルを搭載した魔導兵器です。  
  戦闘は苦手です。  

* **WILH：英雄　Legend of Hero**  
  魔導の技術を結集し、カスタマイズを重ね仕上げる高性能な魔導兵器です。  
  製造手順が特殊なため数が少なく、性能がピーキーです。  

* **WIWH：魔導馬　Wizard Horse**  
  魔導兵器が搭乗できる馬です。  
  高速で移動したり、魔導兵器の戦闘支援、装備品の補充などが行えます。  





## CS：民間船 / Civil Ships

[目次へ戻る](#目次--table-of-contents) / [民間装備](civilunits/readme.md)  
  

* **[CSPA：旅客船　Passenger Ship](civilunits/civilship.md)**  
  民間が運用する人員輸送、旅客が目的の艦船です。  
  旅客船、連絡船、自家用船、個別営業船が該当します。  
  主に人員の惑星間移動、旅行、定期船として利用されます。  

* **[CSCO：企業船　Corporate Ship](civilunits/civilship.md)**  
  民間企業が運用する艦船です。  
  連絡船、輸送船、探査船、採掘船が該当します。  
  主に人員、資源の惑星間移動、惑星開拓や調査として利用されます。  

* **[CSGV：公用船　Government Ship](civilunits/civilship.md)**  
  政府機関、官公庁、戦闘監視委員会が運用する艦船です。  
  連絡船、輸送船、調査船、監視船が該当します。  
  この付近での戦闘は厳重に禁止されてます。  

* **[CSGU：警備船　Guard Ship](civilunits/civilship.md)**  
  星系警察、医療機関、消防、災害対応関係の機関会が運用する艦船です。  
  警備船、救急船、消防船、巡視船が該当します。  
  この付近での戦闘は厳重に禁止されてます。  





## CU：民間機 / Civil Units

[目次へ戻る](#目次--table-of-contents) / [民間装備](civilunits/readme.md)  
  

* **[CUCP：民間機　Civil Plane](civilunits/civilplane.md)**  
  民間が運用する非武装の航空機です。  
  旅客機、自家用機、探査機、輸送機が該当します。  

* **[CUGP：公用機　Government Plane](civilunits/civilplane.md)**  
  政府、官公庁、戦時監視委員会が運用する非武装の航空機です。  
  連絡機、輸送機、探査機、監視機が該当します。  
  この付近での戦闘は厳重に禁止されてます。  

* **[CUCR：民間ロボット　Civil Robot](civilunits/civilrobot.md)**  
  民間が運用する非武装の人型ロボットです。  
  作業ロボット、自家用ロボット、探査ロボット、警備ロボットが該当します。  

* **[CUGR：公用ロボット　Government Robot](civilunits/civilrobot.md)**  
  政府、官公庁、戦時監視委員会が運用する非武装の人型ロボットです。  
  作業ロボット、探査ロボット、要人用ロボット、戦時監視ロボットが該当します。  
  この付近での戦闘は厳重に禁止されてます。  

* **[CUCB：民間舟艇　Civil Boat](civilunits/civilboat.md)**  
  民間が運用する非武装の舟艇 です。  
  連絡艇、自家用舟艇、探査艇、輸送艇が該当します。  

* **[CUGB：公用舟艇 　Government Boat](civilunits/civilboat.md)**  
  政府、官公庁、戦時監視委員会が運用する非武装の舟艇 です。  
  連絡艇、輸送艇、探査艇、監視艇が該当します。  
  この付近での戦闘は厳重に禁止されてます。  

* **[CUCC：民間車両　Civil Car](civilunits/civilcar.md)**  
  民間が運用する非武装の車両です。  
  作業車、自家用車、探査車、輸送車が該当します。  

* **[CUGC：公用車両 　Government Car](civilunits/civilcar.md)**  
  政府、官公庁、戦時監視委員会が運用する非武装の車両です。  
  連絡車、輸送車、探査車、監視車が該当します。  
  この付近での戦闘は厳重に禁止されてます。  

* **[CUCS：民間衛星　Civil Satellite](civilunits/civilsatellite.md)**  
  民間が運用する人工衛星です。  
  通信衛星、自家用衛星、探査衛星、警備衛星が該当します。  

* **[CUGS：公用衛星 　Government Satellite](civilunits/civilsatellite.md)**  
  政府、官公庁、戦時監視委員会が運用する人工衛星です。  
  通信衛星、探査衛星、中継衛星、監視衛星が該当します。  





## CB：民間施設 / Civil Facilities

[目次へ戻る](#目次--table-of-contents) / [民間装備](civilunits/readme.md)  
  

* **[CBSP：宇宙施設　Space Facility](civilunits/civulfacility.md)**  
  エリアマップ（宇宙）にある民間施設です。  

* **[CBLD：宇宙施設　Land Facility](civilunits/civulfacility.md)**  
  ローカルマップ（地上）にある民間施設です。  





## 兵器形式 / Unit Type

[目次へ戻る](#目次--table-of-contents)
  
各兵器種類は、さらに兵器分類に分類分けされます。  


### BSDS：駆逐艦 / Destroyer

* **BSDS-STD：駆逐艦**  

* **BSDS-AMD：装甲駆逐艦**  

* **BSDS-ADF：防空駆逐艦**  

* **BSDS-MIS：ミサイル駆逐艦**  

* **BSDS-INF：歩兵駆逐艦**  

* **BSDS-TPD：重雷装艦**  

* **BSDS-AST：突撃艦**  

* **BSDS-SMK：駆潜艦**  



### BSCR：巡航艦 / Cruiser

* **BSCR-STD：巡航艦**  

* **BSCR-AMD：装甲巡航艦**  

* **BSCR-ADF：防空巡航艦**  

* **BSCR-MIS：ミサイル巡航艦**  

* **BSCR-SPT：高速巡航艦**  

* **BSCR-AVI：航空巡航艦**  

* **BSCR-STM：強襲巡航艦**  

* **BSCR-FLD：嚮導艦**  


### BSBB：戦艦 / Battle Ship

* **BSBB-STD：戦艦**  

* **BSBB-AMD：装甲戦艦**  

* **BSBB-BCR：巡航戦艦**  

* **BSBB-SPT：高速戦艦**  

* **BSBB-AVI：航空戦艦**  

* **BSBB-SRK：戦略打撃艦**  

* **BSBB-HGN：重砲撃艦**  

* **BSBB-SGN：狙撃戦艦**  


### BSAC：航空母艦 / Aircraft Carrier

* **BSAC-STD：航空母艦**  

* **BSAC-AMD：装甲空母**  

* **BSAC-ATK：攻撃空母**  

* **BSAC-MUS：多段式空母**  

* **BSAC-BAC：戦闘空母**  

* **BSAC-ICP：要撃空母**  

* **BSAC-SRK：戦略空母**  

* **BSAC-SCT：制宙艦**  


### BSMC：改造空母 / Modified Aircraft Carrier

* **BSMC-STD：改造空母**  

* **BSMC-LIG：軽空母**  

* **BSMC-SPT：高速空母**  

* **BSMC-STM：強襲空母**  

* **BSMC-MUL：商船空母**  

* **BSMC-SMK：対潜空母**  

* **BSMC-CNT：コンテナ空母**  

* **BSMC-GIT：超大型空母**  


### BSMS：汎用母艦 / General Purpose Mother Ship

* **BSMS-STD：汎用機母艦**  

* **BSMS-BMB：爆撃機母艦**  

* **BSMS-GIT：巨人機母艦**  

* **BSMS-STM：強襲母艦**  

* **BSMS-INF：歩兵母艦**  

* **BSMS-LAM：陸攻母艦**  

* **BSMS-DEF：防衛兵器母艦**  

* **BSMS-BLM：戦闘母艦**  


### BSLC：揚陸艦 / Land Carrier

* **BSLC-STD：揚陸艦**  

* **BSLC-TNK：戦車揚陸艦**  

* **BSLC-CST：建設揚陸艦**  

* **BSLC-SPT：高速揚陸艦**  

* **BSLC-SMN：潜航揚陸艦**  

* **BSLC-STM：強襲揚陸艦**  

* **BSLC-MOT：揚陸母艦**  

* **BSLC-BLD：戦闘揚陸艦**  


### BSSB：潜航艦 / Submarine

* **BSSB-STD：潜航艦**  

* **BSSB-ATK：攻撃潜航艦**  

} **BSSB-MIS：ミサイル潜航艦**  

} **BSSB-SPT：高速潜航艦**  

} **BSSB-AVI：潜航空母**  

} **BSSB-STM：強襲潜航艦**  

} **BSSB-SRK：戦略潜航艦**  

} **BSSB-RAD：遊撃艦**  


### BSWZ：魔導戦艦 / Battle Wizard Ship

* **BSWZ-STD：魔導戦艦**  

* **BSWZ-AMD：魔導装甲艦**  

* **BSWZ-MIS：魔導ミサイル艦**  

* **BSWZ-MOS：魔導母艦**  



### ESFG：護衛艦 / Frigate

[目次へ戻る](#目次--table-of-contents)
  

* **ESFG-STD：護衛艦**  

* **ESFG-SMK：対潜護衛艦**  

* **ESFG-RES：陸戦救護艦**  

* **ESFG-ADF：対空砲艦**  

* **ESCV-SRG：格闘戦艦**  


### ESCV：防護艦 / Corvet

* **ESCV-STD：防護艦**  

* **ESCV-GAD：警戒艦**  

* **ESCV-AMD：装甲防護艦**  

* **ESCV-MIS：ミサイル防護艦**  

* **ESCV-DSP：通報艦**  


### ESMS：護衛母艦 / Escort Mother Ship

* **ESMS-STD：護衛母艦**  

* **ESMS-SMM：哨戒母艦**  

* **ESMS-STM：強襲護衛艦**  

* **ESMS-AVI：航空護衛艦**  

* **ESMS-CAG：輸送護衛艦**  


### ESWZ：魔導護衛艦 / Escort Wizard Ship

* **ESWZ-STD：魔導護衛艦**  

* **ESWZ-COV：魔導防護艦**  



### SSRE：偵察艦 / Recommend Ship

[目次へ戻る](#目次--table-of-contents)
  

* **SSRE-STD：偵察艦**  

* **SSRE-SMN：潜航偵察艦**  

* **SSRE-MOT：偵察母艦**  

* **SSRE-RBS：偵察戦艦**  


### SSEL：電子支援艦 / Electronic Support Ship

* **SSEL-STD：電子支援艦**  

* **SSEL-SPT：高速電戦艦**  

* **SSEL-SMN：潜航電戦艦**  

* **SSEL-EBS：支援戦艦**  


### SSSC：補給輸送艦 / Suppry Cargo Ship

* **SSSC-STD：補給輸送艦**  

* **SSSC-SPT：高速輸送艦**  

* **SSSC-MOT：輸送母艦**  

* **SSSC-UCG：兵器輸送艦**  


### SSCM：指揮支援艦 / Command Support Ship

* **SSCM-STD：戦術指揮艦**  

* **SSCM-ACM：航空指揮艦**  

* **SSCM-LCM：陸戦指揮艦**  

* **SSCM-CBS：指揮戦艦**  


### SSKS：打撃支援艦 / Strike Support Ship

* **SSKS-STD：打撃支援艦**  

* **SSKS-MIS：大型ミサイル艦**  

* **SSKS-LAZ：戦術レーザ艦**  

* **SSKS-TRW：転送艦**  


### SSLS：陸戦支援艦 / Land War Support Ship

* **SSLS-STD：陸戦支援艦**  

* **SSLS-CAG：陸戦輸送艦**  

* **SSLS-ATK：陸戦攻撃艦**  

* **SSLS-TKR：戦車回収艦**  


### SSFE：戦場工作艦 / Field Engineer Ship

* **SSFE-STD：戦場工作艦**  

* **SSFE-LAY：敷設回収艦**  

* **SSFE-TOW：曳航艦**  

* **SSFE-EBS：工作戦艦**  


### SSSS：戦略支援艦 / Strategy Support Ship

* **SSSS-STD：戦略支援艦**  

* **SSSS-CNS：大型建設艦**  

* **SSSS-DOC：浮遊ドック艦**  

* **SSSS-MIN：資源採掘艦**  

* **SSSS-WOK：移動工房艦**  

* **SSSS-OBS：気象観測艦**  

* **SSSS-TNG：練習艦**  

* **SSSS-TST：試験艦**  

* **SSSS-DCY：欺瞞艦**  

* **SSSS-TRG：転送ゲート艦**  


### SSWZ：魔導支援艦 / Support Wizard Ship

* **SSWZ-STD：魔導支援艦**  

* **SSWZ-ENG：魔導工作艦**  

* **SSWZ-COM：魔導指揮艦**  

* **SSWZ-CAG：魔導輸送艦**  



### MUCB：空母航空機 / Carrier Aircraft

[目次へ戻る](#目次--table-of-contents)
  

* **MUCB-FIG：戦闘機**  

* **MUCB-ICP：要撃機**  

* **MUCB-ATK：攻撃機**  

* **MUCB-TPD：雷撃機**  

* **MUCB-BMB：高速爆撃機**  

* **MUCB-AFG：戦闘攻撃機**  

* **MUCB-SRK：戦闘爆撃機**  

* **MUCB-AIF：機動戦闘機**  

* **MUCB-MRA：多用途攻撃機**  

* **MUCB-TAC：戦術戦闘機**  

* **MUCB-REC：偵察機**  

* **MUCB-SMK：対潜攻撃機**  

* **MUCB-ELW：電子支援機**  

* **MUCB-CAG：補給輸送機**  


### MUML：汎用航空機 / Multipurpose Aircraft

* **MUML-FIG：汎用戦闘機**  

* **MUML-ATK：汎用攻撃機**  

* **MUML-TPD：汎用雷撃機**  

* **MUML-BMB：汎用爆撃機**  

* **MUML-SRK：汎用戦爆機**  

* **MUML-SBM：特務爆撃機**  

* **MUML-REC：汎用偵察機**  

* **MUML-ELW：汎用電戦機**  

* **MUML-SMK：汎用哨戒機**  

* **MUML-CAG：汎用輸送機**  


### MULG：大型航空機 / Large Aircraft

* **MULG-HFI：重戦闘機**  

* **MULG-HAT：重攻撃機**  

* **MULG-HBM：重爆撃機**  

* **MULG-MRF：多用途戦闘機**  

* **MULG-ESC：護衛戦闘機**  

* **MULG-LRB：渡宙爆撃機**  

* **MULG-STR：戦略爆撃機**  

* **MULG-INF：歩兵支援機**  

* **MULG-MII：ミサイル迎撃機**  

* **MULG-REC：強行偵察機**  

* **MULG-EAW：早期警戒機**  

* **MULG-SMK：対潜哨戒機**  

* **MULG-ELW：電子作戦機**  

* **MULG-CAG：大型輸送機**  


### MUMI：機動歩兵 / Movable Infantry

* **MUMI-STD：汎用型**  

* **MUMI-ATK：攻撃型**  

* **MUMI-AMD：防御型**  

* **MUMI-SPT：機動型**  

* **MUMI-SRG：格闘型**  

* **MUMI-HAM：重装型**  

* **MUMI-REC：強行偵察型**  

* **MUMI-SMK：対潜哨戒型**  

* **MUMI-ELW：電子作戦型**  

* **MUMI-ENG：宙域工作型**  


### MUVI：万能歩兵 / Versatile Infantry

* **MUVI-STD：万能型**  

* **MUVI-VAR：可変型**  

* **MUVI-CBI：合体型**  

* **MUVI-REP：換装型**  


### MUMB：装載艇 / Mounted Boats

* **MUMB-STD：装載艇**  

* **MUMB-AMG：装甲砲撃艇**  

* **MUMB-MIS：高速ミサイル艇**  

* **MUMB-ROK：ロケット砲艇**  

* **MUMB-PTD：重雷撃艇**  

* **MUMB-ADW：防空警戒艇**  

* **MUMB-ICP：要撃艇**  

* **MUMB-PAT：巡視艇**  

* **MUMB-RCM：偵察指揮艇**  

* **MUMB-SMK：対潜哨戒艇**  

} **MUMB-ELW：電子作戦艇**  

* **MUMB-CAG：補給輸送艇**  

* **MUMB-LND：揚陸艇**  

* **MUMB-INF：歩兵装載艇**  

* **MUMB-EST：護衛装載艇**  

* **MUMB-RES：救護艇**  

* **MUMB-SMN：潜航艇**  

* **MUMB-ENG：工作艇**  

* **MUMB-MSW：掃宙艇**  

* **MUMB-SPA：特殊攻撃艇**  



### LULA：陸戦攻撃機 / Land Airplane

[目次へ戻る](#目次--table-of-contents)
  

* **LULA-ATK：陸戦攻撃機**  

* **LULA-BMB：陸戦爆撃機**  

* **LULA-SPR：陸戦制圧機**  

* **LULA-OBS：陸戦観測機**  

* **LULA-INF：陸戦支援機**  

* **LULA-CAG：陸戦輸送機**  

* **LULA-LFI：局地戦闘機**  

* **LULA-OBT：軌道要撃機**  


### LULI：陸戦歩兵 / Land Infantry

* **LULI-STD：陸戦型**  

* **LULI-AIB：空挺型**  

* **LULI-ATK：砲兵型**  

* **LULI-STG：護衛型**  

* **LULI-REC：偵察型**  

* **LULI-CEG：戦闘工兵型**  

* **LULI-ENG：陸戦工作型**  

* **LULI-SPL：特戦型**  


### LUMT：主力戦車 / Main Tank

* **LUMT-STD：主力戦車**  

* **LUMT-LMT：軽戦車**  

* **LUMT-HMT：重戦車**  

* **LUMT-MMT：機動戦車**  

* **LUMT-AMT：空中戦車**  

* **LUMT-VER：万能戦車**  


### LUST：支援戦車 / Support Tank

* **LUST-STD：支援戦車**  

* **LUST-AMD：装甲戦車**  

* **LUBT-INF：歩兵戦車**  

* **LUST-AST：突撃戦車**  

* **LUST-JGP：駆逐戦車**  

* **LUST-ENG：工作戦車**  


### LUPT：自走戦車 / Self Propelled Tank

* **LUPT-STD：自走野戦砲**  

* **LUPT-AAT：自走対空砲**  

* **LUPT-ROC：自走ロケット**  

* **LUPT-MIS：自走ミサイル**  

* **LUPT-MIS：自走弩砲**  

* **LUPT-MOV：浮遊機動砲**  


### LUAV：装甲車両 / Armoed Vehicle

* **LUAV-STD：装甲輸送車**  

* **LUAV-AMP：両用戦車**  

* **LUAV-ADT：対物戦車**  

* **LUAV-REC：偵察警戒車**  

* **LUAV-TKR：戦場回収車**  

* **LUAV-ENG：戦場工作車**  


### LUMV：機動車両 / Mobility Vehicle

* **LUMV-STD：機動車両**  

* **LUMV-HOV：ホバーバイク**  

* **LUMV-ELW：電子支援車**  

* **LUMV-COM：陸戦指揮車**  

* **LUMV-CAG：補給輸送車**  

* **LUMV-MTP：多目的車両**  


### LUTR：被牽引車 / Trailer

* **LUTR-TOW：牽引車**  

* **LUTR-CAG：大型貨物車両**  

* **LUTR-FGN：野戦砲車両**  

* **LUTR-AAG：対空砲車両**  

* **LUTR-ROC：ロケット車両**  

* **LUTR-MIS：対地ミサイル車両**  

* **LUTR-OBT：軌道狙撃砲車両**  

* **LUTR-SRK：戦略ミサイル車両**  

* **LUTR-MUL：汎用支援車両**  

* **LUTR-RCY：戦車回収車両**  

* **LUTR-MNG：資源採掘車両**  

* **LUTR-BAS：移動基地車両**  



### DUSY：防衛システム / Defense System

[目次へ戻る](#目次--table-of-contents)
  

* **DUSY-CCC：システムコア**  

* **DUSY-ATT：攻撃システム**  

* **DUSY-ICP：迎撃システム**  

* **DUSY-DEF：防御システム**  

* **DUSY-RPR：修復システム**  

* **DUSY-POW：発電システム**  

* **DUSY-ONB：搭載システム**  

* **DUSY-SSP：自給システム**  

* **DUSY-MOV：機動システム**  

* **DUSY-ELW：電戦システム**  


### DUGW：巨人兵器 / Giant Wepon

* **DUGW-BAT：超巨大戦艦**  

* **DUGW-CAR：超巨大空母**  

* **DUGW-SUB：超巨大潜航艦**  

* **DUGW-MFT：超機動要塞**  

* **DUGW-INF：巨人歩兵**  

* **DUGW-AIC：巨人爆撃機**  

* **DUGW-TAN：巨大戦車**  

* **DUGW-MGN：超機動砲座**  

* **DUGW-DEV：魔神**  

* **DUGW-WIZ：魔導要塞**  


### DUST：宇宙砲台 / Space Battery

* **DUST-STD：対艦砲台**  

* **DUST-HUG：要塞砲台**  

* **DUST-AAC：対空砲台**  

* **DUST-ONB：搭載デッキ**  

* **DUST-SUP：補給デッキ**  

* **DUST-ELW：監視台**  


### DULT：野戦砲台 / Land Battery

* **DULT-STD：野戦砲台**  

* **DULT-OBT：軌道砲台**  

* **DULT-AAC：対空砲台**  

* **DULT-AIR：航空デッキ**  

* **DULT-GRG：車庫デッキ**  

* **DULT-ELW：監視台**  


### DUFU：浮遊兵器 / Floating Unit

* **DUFU-STD：浮遊砲台**  

* **DUFU-ECN：浮遊陣地**  

* **DUFU-MIN：浮遊機雷**  

* **DUFU-SAT：衛星**  


### DUIU：設置兵器 / Installed Unit

* **DUIU-STD：設置砲台**  

* **DUIU-ECN：陣地**  

* **DUIU-MIN：地雷**  

* **DUIU-ENG：工作設備**  


### DUSB：宇宙基地 / Space Base

* **DUSB-CCC：防衛基地**  

* **DUSB-CCP：泊地**  

* **DUSB-CCF：要塞**  

* **DUSB-CCB：宇宙基地**  

* **DUSB-CCT：軍港**  

* **DUSB-STA：防衛詰所**  

* **DUSB-FAC：兵器工場**  

* **DUSB-SUP：補給基地**  

* **DUSB-MIN：採掘基地**  

* **DUSB-REC：偵察基地**  


### DULB：地上基地 / Land Base

* **DULB-CCC：防衛基地**  

* **DULB-CCP：防衛陣地**  

* **DULD-CCF：要塞**  

* **DULB-CCB：陸戦基地**  

* **DULB-GAR：駐屯地**  

* **DULB-AIR：航空基地**  

* **DULB-FAC：兵器工場**  

* **DULB-SUP：補給基地**  

* **DULB-MIN：採掘基地**  

* **DULB-ELV：軌道エレベータ**  
  



### WISO：魔導士 / Sorcery

[目次へ戻る](#目次--table-of-contents)
  

* **WISO-STD：魔導士**  

* **WISO-MAG：魔術士**  

* **WISO-THA：法術士**  

* **WISO-ILL：幻術士**  

* **WISO-CON：呪術師**  

* **WISO-ENC：付与術士**  

* **WISO-ALC：錬金術師**  

* **WISO-SAG：賢者**  


### WIMO：修道士 / Monk

* **WIMO-STD：修道士**  

* **WIMO-PAS：司祭**  

* **WIMO-BIS：司教**  

* **WIMO-PRI：神官**  

* **WIMO-CRU：聖戦士**  

* **WIMO-SAN：修道拳士**  

* **WIMO-MAR：神拳士**  

* **WIMO-APO：使徒**  


### WIEM：使役士 / Employer

* **WIEM-STD：使役士**  

* **WIEM-TRA：動物使い**  

* **WIEM-BEA：魔獣使い**  

* **WIEM-BOY：言霊使い**  

* **WIEM-ELE：精霊使い**  

* **WIEM-SHA：祈祷師**  

* **WIEM-NEC：死霊使い**  

* **WIEM-SUM：召喚者**  


### WIWA：戦士 / Warrior

* **WIWA-STD：戦士**  

* **WIWA-BER：狂戦士**  

* **WIWA-AVE：聖戦士**  

* **WIWA-FEN：剣士**  

* **WIWA-GLA：剣闘士**  

* **WIWA-ROG：悪党**  

* **WIWA-PIR：海賊**  

* **WIWA-ARM：魔剣戦士**  


### WIHU：狩人 / Hunter

* **WIHU-STD：狩人**  

* **WIHU-SHO：銃術士**  

* **WIHU-GUN：砲撃術師**  

* **WIHU-ARC：弓戦士**  

* **WIHU-SNI：弓闘士**  

* **WIHU-SEE：探索者**  

* **WIHU-ASS：暗殺者**  

* **WIHU-COM：特殊隊員**  


### WIKN：騎士 / Knight

* **WIKN-SQU：騎士見習い**  

* **WIKN-STD：騎士**  

* **WIKN-FRE：自由騎士**  

* **WIKN-ROY：近衛騎士**  

* **WIKN-PAL：聖騎士**  

* **WIKN-SHA：暗黒騎士**  

* **WIKN-DRA：竜騎士**  

* **WIKN-MAG：魔導騎士**  


### WIEG：技師 / Engineer

* **WIEG-ENG：機械技師**  

* **WIEG-PHA：薬剤師**  

* **WIEG-FAR：農民**  

* **WIEG-MIN：炭鉱夫**  

* **WIEG-BLA：鍛冶屋**  

* **WIEG-COK：料理人**  

* **WIEG-ADM：管理者**  


### WIST：一般職 / Staff

* **WIST-GAM：遊び人**  

* **WIST-MER：商人**  

* **WIST-BAR：詩人**  

* **WIST-DAN：舞踏家**  

* **WIST-PER：演奏家**  

* **WIST-SCH：学者**  

* **WIST-EXE：経営者**  


### WILH：英雄 / Legend of Hero

* **WILH-LOA：王者**  

* **WILH-HER：隠者**  

* **WILH-BRA：勇者**  

* **WILH-DEM：魔王**  


### WIWH：魔導馬 / Wizard Horse

* **WIWH-STD：魔導馬**  

* **WIWH-CAG：運搬馬**  

* **WIWH-BAT：戦闘馬**  

* **WIWH-ARM：装甲馬**  

* **WIWH-SPT：競走馬**  

* **WIWH-GUN：砲座馬**  

* **WIWH-HEL：英雄馬**  



### CSPA：旅客船 / Passenger Ship

[目次へ戻る](#目次--table-of-contents)
  

* **CSPA-PSG：旅客船**  

* **CSPA-FER：民間連絡船**  

* **CSPA-PRV：自家用船**  

* **CSPA-TAX：個別営業船**  


### CSCO：企業船 / Corporate Ship

* **CSCO-FER：企業連絡船**  

* **CSCO-CAG：企業輸送船**  

* **CSCO-EXP：企業探査船**  

* **CSCO-MIN：企業採掘船**  


### CSGV：公用船 / Government Ship

* **CSGV-FER：公用連絡船**  

* **CSGV-CAG：公用輸送船**  

* **CSGV-EXP：公用探査船**  

* **CSGV-COC：戦時監視船**  


### CSGU：警備船 / Guard Ship

* **CSGU-GUD：警備船**  

* **CSGU-AMB：救急船**  

* **CSGU-FIR：消防船**  

* **CSGU-PAT：巡視船**  



### CUCP：民間機 / Civil Plane

[目次へ戻る](#目次--table-of-contents)
  

* **CUCP-PSG：旅客機**  

* **CUCP-PRV：自家用機**  

* **CUCP-EXP：民間探査機**  

* **CUCP-CAG：民間輸送機**  


### CUGP：公用機 / Government Plane

* **CUGP-FER：公用連絡機**  

* **CUGP-CAG：公用輸送機**  

* **CUGP-EXP：公用探査機**  

* **CUGP-COC：戦時監視機**  



### CUCR：民間ロボット / Civil Robot

[目次へ戻る](#目次--table-of-contents)
  

* **CUCR-ENG：民間作業ロボット**  

* **CUCR-PRV：自家用ロボット**  

* **CUCR-EXP：民間探査ロボット**  

* **CUCR-GUD：警備ロボット**  


### CUGR：公用ロボット / Government Robot

* **CUGR-ENG：公用作業ロボット**  

* **CUGR-EXP：公用探査ロボット**  

* **CUGR-VIP：要人用ロボット**  

* **CUGR-COC：戦時監視ロボット**  



### CUCB：民間舟艇  / Civil Boat

[目次へ戻る](#目次--table-of-contents)
  

* **CUCB-FER：民間連絡艇**  

* **CUCB-PRV：自家用舟艇**  

* **CUCB-EXP：民間探査艇**  

* **CUCB-CAG：民間輸送艇**  


### CUGB：公用舟艇  / Government Boat

* **CUGB-FER：公用連絡艇**  

* **CUGB-CAG：公用輸送艇**  

* **CUGB-EXP：公用探査艇**  

* **CUGB-COC：戦時監視艇**  



### CUCC：民間車両  / Civil Car

[目次へ戻る](#目次--table-of-contents)
  

* **CUCC-ENG：民間作業車**  

* **CUCC-PRV：自家用車**  

* **CUCC-EXP：民間探査車**  

* **CUCC-CAG：民間輸送車**  


### CUGC：公用車両  / Government Car

* **CUGC-FER：公用連絡車**  

* **CUGC-CAG：公用輸送車**  

* **CUGC-EXP：公用探査車**  

* **CUGC-COC：戦時監視車**  



### CUCS：民間衛星  / Civil Satellite

[目次へ戻る](#目次--table-of-contents)
  

* **CUCS-CMN：民間通信衛星**  

* **CUCS-PRV：自家用衛星**  

* **CUCS-EXP：民間探査衛星**  

* **CUCS-GUD：警備衛星**  


### CUGS：公用衛星  / Government Satellite

* **CUGS-CMN：公用通信衛星**  

* **CUGS-EXP：公用探査衛星**  

* **CUGS-REL：公用中継衛星**  

* **CUGS-COC：戦時監視衛星**  



### CBSP：宇宙施設  / Space Facility

[目次へ戻る](#目次--table-of-contents)
  

* **CBSP-CCC：中枢施設**  

* **CBSP-RST：居住施設**  

* **CBSP-CMM：商業施設**  

* **CBSP-IND：工業施設**  

* **CBSP-ADM：行政施設**  

* **CBSP-MIN：採掘施設**  

* **CBSP-CNT：通信施設**  


### CBLD：地上施設  / Land Facility

* **CBLD-CCC：中枢施設**  

* **CBLD-RST：居住施設**  

* **CBLD-CMM：商業施設**  

* **CBLD-IND：工業施設**  

* **CBLD-ADM：行政施設**  

* **CBLD-MIN：採掘施設**  

* **CBLD-CNT：通信施設**  





***
[[トップへ戻る]](/readme.md)　/
[[兵器仕様]](/unit/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
