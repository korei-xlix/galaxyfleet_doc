# Galaxy Fleet
  
<h1>～兵器仕様～ :: 汎用航空機</h1>  
<h2>～Weapon Specifications～ :: Multipurpose Aircraft</h2>  
  

**★このドキュメントの改造、流用、配布、クローンは禁止です★**  
    **Modification, diversion, distribution, and cloning of this document are prohibited**  
  

<h1 id="aHowto">このドキュメントについて / About this document</h1>  
このドキュメントは「Galaxy Fleet」の兵器のうち、汎用航空機の定義を記載するものです。  
その他の仕様についてはreadmeの目次を確認してください。  
  





<h1 id="aMokuji">目次 / Table of contents</h1>  

* [readme.md](/readme.md)
  * [兵器仕様](/unit/readme.md)
  * [兵器種類](/strategypart/readme.md#aUnitKind)
  * [兵器分類](/unit/readme.md#aUnitClass)

  * [兵器分類：汎用航空機](/unit/readme.md#aMultipurposeAircraft)

* 兵器標準仕様
  * [MUML-FIG：汎用戦闘機](#aMultipurposeFighter)
  * [MUML-ATK：汎用攻撃機](#aMultipurposeAttacker)
  * [MUML-TPD：汎用雷撃機](#aMultipurposeTorpedoAttacker)
  * [MUML-BMB：汎用爆撃機](#aMultipurposeBomber)
  * [MUML-SRK：汎用戦爆機](#aMultipurposeStrikeFighter)
  * [MUML-SBM：特務爆撃機](#aSpecialBomber)
  * [MUML-REC：汎用偵察機](#aMultipurposeRecommendAircraft)
  * [MUML-ELW：汎用電戦機](#aMultipurposeElectronicSupportAircraft)
  * [MUML-SMK：汎用哨戒機](#aMultipurposeSubmarineKillerAircraft)
  * [MUML-CAG：汎用輸送機](#aMultipurposeCargoAircraft)
  





<h1 id="aMultipurposeFighter">MUML-FIG：汎用戦闘機 / Multipurpose Fighter</h1>  
[目次へ戻る](#aMokuji)  
  

巡航艦や戦艦に搭載できるよう機構を施した対空戦用の小型航空機です。空戦の機動力に優れます。  
少ないですが対空ミサイルが搭載できます。  
対艦攻撃用の武器はありません。  

|項目  |設定  |
|:--|:--|
|武器  |▲対空ミサイル、対空機関砲  |
|標準  |小型単装ミサイルランチャー  |
|      |小型対空機関砲  |
|機能  |(なし)  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ×   | 〇   | ▲   | ×   | 〇(+4)   |
  





<h1 id="aMultipurposeAttacker">MUML-ATK：汎用攻撃機 / Multipurpose Attacker</h1>  
[目次へ戻る](#aMokuji)  
  

対空、対艦両用の汎用航空機です。空戦における機動性能は汎用戦闘機に匹敵します。  
機関砲と、少ないですがロケット弾が搭載できます。  
空母搭載機に比べると対艦攻撃力には欠けます。  

|項目  |設定  |
|:--|:--|
|武器  |機関砲、▲ロケット弾、対空機関砲  |
|標準  |ビームガン  |
|      |小型多連装ロケットランチャー  |
|      |小型対空機関砲  |
|機能  |(なし)  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ×   | 〇   | ▲   | ×   | 〇(+4)   |
  





<h1 id="aMultipurposeTorpedoAttacker">MUML-TPD：汎用雷撃機 / Multipurpose Torpedo Attacker</h1>  
[目次へ戻る](#aMokuji)  
  

対艦攻撃用で魚雷を運用する汎用航空機です。空戦の機動性能が高めです。  
魚雷が搭載できます。  

|項目  |設定  |
|:--|:--|
|武器  |魚雷、対空機関砲  |
|標準  |小型トーピードランチャー  |
|      |小型対空機関砲  |
|機能  |(なし)  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ×   | 〇   | ▲   | ×   | 〇(+4)   |
  





<h1 id="aMultipurposeBomber">MUML-BMB：汎用爆撃機 / Multipurpose Bomber</h1>  
[目次へ戻る](#aMokuji)  
  

対艦攻撃用で爆弾を運用する汎用航空機です。急降下爆撃が得意で、生存性が高いです。  
少ないですが爆弾が搭載できます。  
空戦の性能は低いです。  

|項目  |設定  |
|:--|:--|
|武器  |▲爆弾、対空機関砲  |
|標準  |小型無誘導爆弾  |
|      |小型対空機関砲  |
|機能  |急降下爆撃  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ▲   | ・   | ▲   | ×   | 〇(+4)   |
  





<h1 id="aMultipurposeStrikeFighter">MUML-SRK：汎用戦爆機 / Multipurpose Strike Fighter</h1>  
[目次へ戻る](#aMokuji)  
  

対空、対艦両用の汎用航空機です。空戦の機動性能が高めです。  
少ないですが対空ミサイルと爆弾が搭載できます。  
コストが高めです。  

|項目  |設定  |
|:--|:--|
|武器  |▲機関砲、▲対空ミサイル、▲ロケット弾、対空機関砲  |
|標準  |ビームガン  |
|      |小型単装ミサイルランチャー  |
|      |小型多連装ロケットランチャー  |
|      |小型対空機関砲  |
|機能  |急降下爆撃  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ▲   | 〇   | ▲   | ▲   | ・(+6)   |
  





<h1 id="aSpecialBomber">MUML-SBM：特務爆撃機 / Special Bomber</h1>  
[目次へ戻る](#aMokuji)  
  

胴体に子機を抱えた特殊爆撃機です。  
子機を無線誘導して目標に突撃、爆破できます。  
思いの外機動性が高いです。  
コストが高めです。  

|項目  |設定  |
|:--|:--|
|武器  |▲機関砲、▲対空ミサイル、▲ロケット弾、無線誘導子機、対空機関砲  |
|標準  |ビームガン  |
|      |小型単装ミサイルランチャー  |
|      |小型多連装ロケットランチャー  |
|      |小型対空機関砲  |
|      |無線誘導子機  |
|機能  |子機誘導  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ▲   | 〇   | ▲   | ▲   | ・(+6)   |
  





<h1 id="aMultipurposeRecommendAircraft">MUML-REC：汎用偵察機 / Multipurpose Recommend Aircraft</h1>  
[目次へ戻る](#aMokuji)  
  

偵察、支援用の汎用航空機です。索敵能力、機動力が高いです。  
偵察以外にも補給品の輸送でも運用されます。  
武器はありません。  

|項目  |設定  |
|:--|:--|
|武器  |(なし)  |
|標準  |電波探知拡張装置  |
|      |補給用設備  |
|機能  |監視者、補給係  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ×   | ・   | ・   | ×   | 〇(+4)   |
  





<h1 id="aMultipurposeElectronicSupportAircraft">MUML-ELW：汎用電戦機 / Multipurpose Electronic Support Aircraft</h1>  
[目次へ戻る](#aMokuji)  
  

偵察、電子戦の両方ができる偵察機です。電子戦ができる上、偵察能力が高いです。  
武器はありません。コストが高いです。  

|項目  |設定  |
|:--|:--|
|武器  |(なし)  |
|標準  |電波探知拡張装置  |
|      |電波妨害装置  |
|機能  |監視者、妨害  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ×   | ・   | 〇   | ▲   | ・(+6)   |
  





<h1 id="aMultipurposeSubmarineKillerAircraft">MUML-SMK：汎用哨戒機 / Multipurpose Submarine Killer Aircraft</h1>  
[目次へ戻る](#aMokuji)  
  

対潜哨戒用の汎用航空機です。電子性能、潜航艦探知能力が高いです。  
爆雷が搭載できます。  
対空装備はありません。  

|項目  |設定  |
|:--|:--|
|武器  |爆雷  |
|標準  |小型デプスチャージランチャー  |
|      |次元探知拡張装置  |
|機能  |ソナーマン  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ×   | ・   | ・   | ×   | 〇(+4)   |
  





<h1 id="aMultipurposeCargoAircraft">MUML-CAG：汎用輸送機 / Multipurpose Cargo Aircraft</h1>  
[目次へ戻る](#aMokuji)  
  

補給品輸送用の汎用航空機です。電子性能も高く索敵任務にも対応できます。  
航続距離も長く、生存性が高いため、戦場から遠くの基地にも補給品を輸送できます。  
武器はありません。コストは汎用機としてはやや高いです。  

|項目  |設定  |
|:--|:--|
|武器  |(なし)  |
|標準  |補給用設備  |
|機能  |補給係  |

|生存  |機動  |電子  |稼働  |評価値    |
|:--|:--|:--|:--|:--|
| ▲   | ▲   | ・   | ・   | ・(+6)   |
  





***
[[トップへ戻る]](/readme.md)　/
[[兵器仕様]](/unit/readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://twitter.com/korei_xlix](https://twitter.com/korei_xlix)  
