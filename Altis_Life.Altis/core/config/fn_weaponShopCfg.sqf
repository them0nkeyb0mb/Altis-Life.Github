#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["Altis PCSO Shop",
					[
						["arifle_sdar_F","Taser Rifle",4000],
						["SMG_01_Holo_pointer_snds_F",nil,13000],
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["ToolKit",nil,0],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,5000],
						["ToolKit",nil,12000],
						["Medikit",nil,12000],
						["NVGoggles",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",500],
						["30Rnd_45ACP_Mag_SMG_01",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["Altis Constable Shop",
					[
						["arifle_sdar_F","Taser Rifle",4000],
						["SMG_02_F",nil,10000],
						["SMG_01_Holo_pointer_snds_F",nil,13000],
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["ToolKit",nil,0],
						["muzzle_snds_L",nil,650],
						["optic_Holosight_smg",nil,800],
						["FirstAidKit",nil,5000],
						["ToolKit",nil,12000],
						["Medikit",nil,12000],
						["NVGoggles",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",500],
						["30Rnd_45ACP_Mag_SMG_01",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["Altis Senior Police Constable Shop",
					[
						["HandGrenade_Stone","Flashbang",1700],
						["SmokeShellgreen","Tear Gas",1800],
						["arifle_sdar_F","Taser Rifle",4000],
						["SMG_02_F",nil,10000],
						["SMG_01_Holo_pointer_snds_F",nil,13000],
						["arifle_MX_SW_Black_F",nil,35000],
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["ToolKit",nil,0],
						["muzzle_snds_L",nil,650],
						["optic_Holosight_smg",nil,800],
						["FirstAidKit",nil,5000],
						["ToolKit",nil,12000],
						["Medikit",nil,12000],
						["NVGoggles",nil,1000],
						["Rangefinder",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",500],
						["30Rnd_45ACP_Mag_SMG_01",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["Altis Sargent Shop",
					[
						["HandGrenade_Stone","Flashbang",1700],
						["SmokeShellgreen","Tear Gas",1800],
						["arifle_sdar_F","Taser Rifle",4000],
						["SMG_02_F",nil,10000],
						["SMG_01_Holo_pointer_snds_F",nil,13000],
						["arifle_MX_SW_Black_F",nil,35000],
						["LMG_Mk200_pointer_F",nill,48000],
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["ToolKit",nil,0],
						["muzzle_snds_L",nil,650],
						["optic_Holosight_smg",nil,800],
						["FirstAidKit",nil,5000],
						["ToolKit",nil,12000],
						["Medikit",nil,12000],
						["NVGoggles",nil,1000],
						["Rangefinder",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["200Rnd_65x39_cased_Box",nil,2500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",500],
						["30Rnd_45ACP_Mag_SMG_01",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["Altis Inspector Shop",
					[
						["HandGrenade_Stone","Flashbang",1700],
						["SmokeShellgreen","Tear Gas",1800],
						["arifle_sdar_F","Taser Rifle",4000],
						["SMG_02_F",nil,10000],
						["srifle_LRR_SOS_F",nil,450000],
						["7Rnd_408_Mag",nil,250],
						["SMG_01_Holo_pointer_snds_F",nil,13000],
						["arifle_MX_SW_Black_F",nil,35000],
						["LMG_Mk200_pointer_F",nill,48000],
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["ToolKit",nil,0],
						["muzzle_snds_L",nil,650],
						["optic_Holosight_smg",nil,800],
						["FirstAidKit",nil,5000],
						["ToolKit",nil,12000],
						["Medikit",nil,12000],
						["NVGoggles",nil,1000],
						["Rangefinder",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["200Rnd_65x39_cased_Box",nil,2500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",500],
						["30Rnd_45ACP_Mag_SMG_01",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["Altis Chief Inspector Shop",
					[
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_sdar_F","Taser Rifle",4000],
						["SMG_02_F",nil,10000],
						["SMG_01_Holo_pointer_snds_F",nil,13000],
						["srifle_LRR_SOS_F",nil,450000],
						["7Rnd_408_Mag",nil,250],
						["arifle_MX_SW_Black_F",nil,35000],
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["ToolKit",nil,0],
						["muzzle_snds_L",nil,650],
						["optic_Holosight_smg",nil,800],
						["FirstAidKit",nil,5000],
						["ToolKit",nil,12000],
						["Medikit",nil,12000],
						["NVGoggles",nil,1000],
						["Rangefinder",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",500],
						["30Rnd_45ACP_Mag_SMG_01",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 7):
			{
				["Altis Chief Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_Black_F",nil,30000],
						["arifle_MXM_Black_F",nil,35000],
						["arifle_MX_GL_Black_F",nil,40000],
						["srifle_EBR_F",nil,100000],
						["srifle_LRR_SOS_F",nil,450000],
						["7Rnd_408_Mag",nil,250],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["UGL_FlareWhite_F",nil,300],
						["20Rnd_762x51_Mag",nil,250],
						["optic_Holosight",nil,5000],
						["optic_MRCO",nil,7500],
						["optic_SOS",nil,15000],
						["optic_tws",nil,25000],
						["arifle_sdar_F","Taser Rifle",0],
						["hgun_P07_snds_F","Stun Pistol",0],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,0],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,0],
						["optic_Aco",nil,500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",0]
					]
				];
			
			};
		};
	};
	
	case "attachments":
	{
		switch (true) do 
		{
			default {
				["Weapon Attachments",
					[
						["acc_flashlight",nil,2000],
						["acc_pointer_IR",nil,2000],
						["optic_Aco",nil,2000],
						["optic_ACO_grn",nil,2000],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_Arco",nil,2000],
						["optic_Hamr",nil,2000],
						["optic_Holosight",nil,2000],
						["optic_Holosight_smg",nil,2000],
						["optic_MRCO",nil,2000],
						["optic_SOS",nil,2000],
						["muzzle_snds_acp",nil,2000],
						["muzzle_snds_B",nil,2000],
						["muzzle_snds_H",nil,2000],
						["muzzle_snds_H_MG",nil,2000],
						["muzzle_snds_L",nil,2000],
						["muzzle_snds_M",nil,2000]
					]
				];
			};
		};	
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Rebel Cases",
					[
						["NVGoggles_OPFOR",nil,1000],
						["arifle_TRG20_F",nil,25000],
						["LMG_Zafir_pointer_F",nil,950000],
						["150Rnd_762x51_Box",nil,100],
						["srifle_LRR_SOS_F",nil,1500000],
						["7Rnd_408_Mag",nil,100],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["SMG_02_F",nil,15000],
						["SMG_01_F",nil,15000],
						["srifle_EBR_F",nil,60000],
						["arifle_Mk20_F",nil,50000],
						["arifle_MXM_F",nil,50000],
						["arifle_MXM_Black_F",nil,55000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_MRCO",nil,10000],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["20Rnd_762x51_Mag",nil,300],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["30Rnd_9x21_Mag",nil,250],
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_65x39_caseless_mag",nil,300],
						["MiniGrenade","Molotov",200000000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["RayRays Firearms",
					[
						["hgun_Rook40_F",nil,8500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "PMC":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_PMC): {"You are not a PMC Member!"};
			default
			{
				["PMC CORP",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,15000],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["srifle_LRR_SOS_F",nil,450000],
						["7Rnd_408_Mag",nil,250],
						["arifle_MXC_Black_F",nil,195000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["arifle_MX_SW_Black_F",nil,350000],
						["100Rnd_65x39_caseless_mag",nil,450],
						["hgun_PDW2000_Holo_snds_F",nil,99090],
						["30Rnd_9x21_Mag",nil,100],
						["SMG_01_Holo_pointer_snds_F",nil,145000],
						["30Rnd_45ACP_Mag_SMG_01",nil,120],
						["hgun_Pistol_heavy_01_MRD_F",nil,75000],
						["11Rnd_45ACP_Mag",nil,50],
						["hgun_Rook40_F",nil,74000],
						["30Rnd_9x21_Mag",nil,50]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,15000],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
