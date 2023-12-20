# Galaxy Fleet
**～データ仕様～**  


# このドキュメントについて <a name="aHowto"></a>
このドキュメントは「Galaxy Fleet」のデータ仕様を記載するものです。
その他の仕様についてはreadmeの目次を確認してください。


# 目次 <a name="aMokuji"></a>
* [readme.md](/readme.md)
* [データ仕様](/data/readme.md)

* [ユーザ管理](#aUserAdmin)

* [兵器のステータス](#aStatusOfUnit)
	* [基礎構造](#aFoundationStructure)
	* [各ステータス](#aEachStatus)
	* [強化ペナルティ](#aPenalty)

* [収納](#aStorage)



# 兵器種別
tbl_unit_kind

VALID
INDEX
ID
NAMEJP
NAMEEN



# 兵器分類
tbl_unit_class

VALID
INDEX
ID
KINDID
NAMEJP
NAMEEN



# 兵器形式
tbl_unit_type

VALID
INDEX
ID
KINDID
CLASSID
COUNTRYID
NAMEJP
NAMEEN
PROFJP
PROFEN

A_HP
A_SP
A_AP
A_LK

B_DR
B_MB
B_EL
B_PW

P_DD
P_DE
P_DV
P_DL
P_MM
P_MA
P_MR
P_MW
P_EC
P_EA
P_ED
P_ER
P_PI
P_PL
P_PA
P_PT

M_Fuel
M_Steel
M_Fiber
M_RareEarth

M_Red
M_Blue
M_Green
M_Purple
M_Black

M_Glitter
M_Core

M_Pot
M_Capital
M_Food
M_Fabric
M_Scrap

ARR_SKILLS
ARR_EQUIPTYPE
ARR_WEPONS
ARR_PARTTS
ARR_PAYLOADTYPE



# 製造国種別
tbl_country_kind

VALID
INDEX
ID
NAMEJP
NAMEEN



# 装備種別
tbl_equip_kind

VALID
INDEX
ID
NAMEJP
NAMEEN



# 装備分類
tbl_equip_class

VALID
INDEX
ID
KINDID
NAMEJP
NAMEEN



# パーツ形式
tbl_partts_type

VALID
INDEX
ID
KINDID
CLASSID
COUNTRYID
NAMEJP
NAMEEN
PROFJP
PROFEN

A_HP
A_SP
A_AP
A_LK

B_DR
B_MB
B_EL
B_PW

P_DD
P_DE
P_DV
P_DL
P_MM
P_MA
P_MR
P_MW
P_EC
P_EA
P_ED
P_ER
P_PI
P_PL
P_PA
P_PT

M_Fuel
M_Steel
M_Fiber
M_RareEarth

M_Red
M_Blue
M_Green
M_Purple
M_Black

M_Glitter
M_Core

M_Pot
M_Capital
M_Food
M_Fabric
M_Scrap

C_CCP
C_CWT
C_CAP
C_CPC

ARR_SKILLS



# 武器形式
tbl_wepon_type

VALID
INDEX
ID
KINDID
CLASSID
COUNTRYID
NAMEJP
NAMEEN
PROFJP
PROFEN

B_BTT
B_BAR
B_BIN
B_BLD
B_BDF
B_BSR

M_Fuel
M_Steel
M_Fiber
M_RareEarth

M_Red
M_Blue
M_Green
M_Purple
M_Black

M_Glitter
M_Core

M_Pot
M_Capital
M_Food
M_Fabric
M_Scrap

C_CCP
C_CWT
C_CAP
C_CPC

ARR_SKILLS
ARR_AMMO



# 弾薬形式
tbl_ammo_type

VALID
INDEX
CLASSID
ID
NAMEJP
NAMEEN
PROFJP
PROFEN

EQUIPPERM
MAX_AMMO

M_Fuel
M_Steel
M_Fiber
M_RareEarth

M_Red
M_Blue
M_Green
M_Purple
M_Black

M_Glitter
M_Core

M_Pot
M_Capital
M_Food
M_Fabric
M_Scrap

ARR_SKILLS



# 機能
tbl_skill

VALID
INDEX
KINDID
CLASSID
ACTIVE
ID
NAMEJP
NAMEEN
PROFJP
PROFEN



***
[トップへ戻る](/readme.md) / [データ仕様](/data/readme.md)  
  
::Project= Galaxy Fleet Document  
::Admin= Korei (@korei-xlix)  
::github= https://github.com/korei-xlix/  
::Homepage= https://koreixlix.wixsite.com/profile  
