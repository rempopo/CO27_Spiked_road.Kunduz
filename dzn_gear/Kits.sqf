// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


// USMC

#define USMC_V ["rhsusf_spc_rifleman","rhsusf_spc_light","rhsusf_spc_iar","rhsusf_spc_corpsman"]
#define USMC_H ["rhsusf_lwh_helmet_marpatd_ess","rhsusf_lwh_helmet_marpatd_headset","rhsusf_lwh_helmet_marpatd"]
#define USMC_G ["CUP_G_Oakleys_Clr","CUP_G_Oakleys_Drk","CUP_G_Oakleys_Embr",""]

#define USMC_w_o ["CUP_optic_CompM2_low","CUP_optic_CompM2_Black",""]
#define USMC_w_g ["rhsusf_acc_grip3",""]
#define USMC_w_l ["CUP_acc_ANPEQ_2_OD_Top","CUP_acc_ANPEQ_2_Flashlight_Black_L","CUP_acc_ANPEQ_2_grey","CUP_acc_ANPEQ_2_Black_Top","CUP_acc_ANPEQ_2_Coyote_Top",""]


kit_usmc_sl = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d","rhsusf_spc_squadleader","tf_rt1523g_sage",USMC_H,USMC_G],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle","rhs_mag_30Rnd_556x45_M855_Stanag",["",USMC_w_l,"CUP_optic_ACOG2",USMC_w_g]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["PRIMARY MAG",8],["SmokeShellGreen",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usmc_ftl = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d","rhsusf_spc_patchless_radio","",USMC_H,USMC_G],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle_grip2","rhs_mag_30Rnd_556x45_M855_Stanag",["",USMC_w_l,"CUP_optic_ACOG2_PIP",USMC_w_g]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usmc_ar = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d","rhsusf_spc_mg","rhsusf_assault_eagleaiii_coy",USMC_H,USMC_G],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249_pip","rhsusf_200Rnd_556x45_M855_soft_pouch_coyote",["","","CUP_optic_ElcanM145_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_usmc_gr = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d","rhsusf_spc_teamleader","",USMC_H,USMC_G],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle_M203","rhs_mag_30Rnd_556x45_M855_Stanag",["",USMC_w_l,USMC_w_o,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["PRIMARY MAG",7],["CUP_1Rnd_HE_M203",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usmc_r = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d",USMC_V,"rhsusf_assault_eagleaiii_coy",USMC_H,USMC_G],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle_grip2","rhs_mag_30Rnd_556x45_M855_Stanag",["",USMC_w_l,USMC_w_o,USMC_w_g]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HandGrenade",2],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_200Rnd_556x45_M855_soft_pouch_coyote",2]]]
];

kit_usmc_mgtl = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d","rhsusf_spc_light","rhsusf_assault_eagleaiii_coy",USMC_H,USMC_G],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle","rhs_mag_30Rnd_556x45_M855_Stanag",["",USMC_w_l,"CUP_optic_ACOG2_PIP",USMC_w_g]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["rhs_mag_30Rnd_556x45_M855_Stanag",7]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_100Rnd_762x51",2]]]
];

kit_usmc_mg = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d","rhsusf_spc_mg","rhsusf_assault_eagleaiii_coy","rhsusf_lwh_helmet_marpatd","CUP_G_ESS_BLK"],
	["<PRIMARY WEAPON >>  ","rhs_weap_m240B","rhsusf_100Rnd_762x51",["","","CUP_optic_ElcanM145_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5]]]
];

kit_usmc_mgas = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d",USMC_V,"rhsusf_assault_eagleaiii_coy",USMC_H,USMC_G],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle","rhs_mag_30Rnd_556x45_M855_Stanag",["",USMC_w_l,USMC_w_o,""]],
	["<LAUNCHER WEAPON >>  ","dzn_MG_Tripod_M122A1_M240Mount_Carry","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["rhs_mag_30Rnd_556x45_M855_Stanag",7]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_100Rnd_762x51",2]]]
];

kit_usmc_attl = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d","rhsusf_spc_rifleman","rhsusf_assault_eagleaiii_coy",USMC_H,USMC_G],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle","rhs_mag_30Rnd_556x45_M855_Stanag",["",USMC_w_l,"CUP_optic_ACOG2_PIP",USMC_w_g]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["CUP_SMAW_HEAA_M",1],["CUP_SMAW_HEDP_M",1]]]
];

kit_usmc_at = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d",USMC_V,"rhsusf_assault_eagleaiii_coy",USMC_H,USMC_G],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle","rhs_mag_30Rnd_556x45_M855_Stanag",["",USMC_w_l,USMC_w_o,""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_Mk153Mod0","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["rhs_mag_30Rnd_556x45_M855_Stanag",7]]],
	["<BACKPACK ITEMS >> ",[["CUP_SMAW_HEAA_M",1],["CUP_SMAW_HEDP_M",1]]]
];

kit_usmc_atas = [
	["<EQUIPEMENT >>  ","rhs_uniform_FROG01_d",USMC_V,"rhsusf_assault_eagleaiii_coy",USMC_H,USMC_G],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle","rhs_mag_30Rnd_556x45_M855_Stanag",["",USMC_w_l,USMC_w_o,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["CUP_SMAW_HEAA_M",1],["CUP_SMAW_HEDP_M",1]]]
];

cargo_kit_usmc_cargo = [
	[["rhs_weap_m72a7",1],["ACE_VMH3",1]],
	[["HandGrenade",10],["rhsusf_mag_15Rnd_9x19_FMJ",10],["rhs_mag_30Rnd_556x45_M855_Stanag",20],["rhsusf_200Rnd_556x45_M855_soft_pouch_coyote",10],["CUP_1Rnd_HE_M203",20],["rhsusf_100Rnd_762x51",10],["CUP_SMAW_HEDP_M",4],["CUP_SMAW_HEAA_M",4],["CUP_PipeBomb_M",2]],
	[["ACE_DefusalKit",4],["ACE_Clacker",2]],
	[]
];

cargo_kit_usmcw_cargo = [
	[["rhs_weap_m72a7",2],["ACE_VMH3",1]],
	[["HandGrenade",10],["rhsusf_mag_15Rnd_9x19_FMJ",10],["rhs_mag_30Rnd_556x45_M855_Stanag",40],["rhsusf_200Rnd_556x45_M855_soft_pouch_coyote",20],["CUP_1Rnd_HE_M203",40],["rhsusf_100Rnd_762x51",20],["CUP_SMAW_HEDP_M",6],["CUP_SMAW_HEAA_M",6],["CUP_PipeBomb_M",2]],
	[["ACE_DefusalKit",4],["ACE_Clacker",2]],
	[]
];

// Insurg

#define insr_v ["CUP_V_OI_TKI_Jacket2_03","CUP_V_OI_TKI_Jacket2_01","CUP_V_OI_TKI_Jacket3_03","CUP_V_OI_TKI_Jacket3_02","CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket4_02","CUP_V_OI_TKI_Jacket4_03","CUP_V_OI_TKI_Jacket4_05"]
#define insr_h ["CUP_H_TKI_Lungee_05","CUP_H_TKI_Lungee_06","CUP_H_TKI_Pakol_1_01","CUP_H_TKI_Pakol_2_01","CUP_H_TKI_Pakol_2_06","CUP_H_TKI_Lungee_03","CUP_H_TKI_Lungee_Open_05","CUP_H_TKI_Lungee_Open_03","CUP_H_TK_Lungee"]
#define insr_u ["CUP_O_TKI_Khet_Partug_05","CUP_O_TKI_Khet_Partug_08","CUP_O_TKI_Khet_Partug_06","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_01","CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_Jeans_02","CUP_O_TKI_Khet_Partug_03"]

#define insr_w_r ["CUP_arifle_FNFAL5061_wooden","CUP_arifle_FNFAL5061","CUP_arifle_AKMS_Early","CUP_arifle_AKM_Early","CUP_arifle_AKS74_Early","CUP_arifle_AKS74U","CUP_arifle_AK74","CUP_srifle_Mosin_Nagant","CUP_arifle_G3A3_ris","CUP_srifle_LeeEnfield","CUP_SKS","CUP_arifle_TYPE_56_2_Early"]
#define insr_a_r ["CUP_20Rnd_762x51_FNFAL_M","CUP_20Rnd_762x51_FNFAL_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_545x39_AK_M","CUP_30Rnd_545x39_AK_M","CUP_30Rnd_545x39_AK_M","CUP_5Rnd_762x54_Mosin_M","CUP_20Rnd_762x51_G3","CUP_10x_303_M","CUP_10Rnd_762x39_SKS_M","CUP_30Rnd_762x39_AK47_bakelite_M"]

#define insr_w_gr ["CUP_arifle_AKMS_GL","CUP_arifle_AK74_GL","CUP_arifle_AKS74_GL_Early"]
#define insr_a_gr ["CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_545x39_AK_M","CUP_30Rnd_545x39_AK_M"]


kit_insr_r = [
	["<EQUIPEMENT >>  ",insr_u,insr_v,"",insr_h,""],
	["<PRIMARY WEAPON >>  ",insr_w_r,insr_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["CUP_HandGrenade_RGD5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_insr_mg = [
	["<EQUIPEMENT >>  ",insr_u,insr_v,"CUP_B_AlicePack_Khaki",insr_h,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",1],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_insr_gr = [
	["<EQUIPEMENT >>  ",insr_u,insr_v,"CUP_B_AlicePack_Khaki",insr_h,""],
	["<PRIMARY WEAPON >>  ",insr_w_gr,insr_a_gr,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",1],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",6],["PRIMARY MAG",2]]]
];

kit_insr_at = [
	["<EQUIPEMENT >>  ",insr_u,insr_v,"CUP_B_RPGPack_Khaki",insr_h,""],
	["<PRIMARY WEAPON >>  ",insr_w_r,insr_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["CUP_HandGrenade_RGD5",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7VL_mag",2]]]
];

kit_insr_rpg18 = [
	["<EQUIPEMENT >>  ",insr_u,insr_v,"",insr_h,""],
	["<PRIMARY WEAPON >> ",insr_w_r,insr_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["CUP_HandGrenade_RGD5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_insr_svd = [
	["<EQUIPEMENT >>  ",insr_u,insr_v,"",insr_h,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_insr_mm = [
	["<EQUIPEMENT >>  ",insr_u,insr_v,"",insr_h,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_LeeEnfield","CUP_10x_303_M",["","","CUP_optic_no23mk2_pip",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",1],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];