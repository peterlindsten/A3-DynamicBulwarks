/**
*  Preset
*  WIP: USUNGS CONFIG ARE A BIT ALL OVER THE PLACE MIGHT BE BETTER TO JUST WHITELIST EVERYTHING
*  Defines all global config for the mission
*  Required mods: The_Unsung_Vietnam_War_Mod
*  https://steamcommunity.com/sharedfiles/filedetails/?id=1748457883
*  Domain: Client, Server
**/
/* MOD FILTER */
modTag = ["uns"]; //limits loot and vehicles to a specific mod. Mods usually have a tag within their class names, use that. For example modTag = ["LIB"] would only spawn Iron Front Weapons. Can use multiple for example:modTag = ["LIB,"NORTH"];
/* Attacker Waves */
// Use group class names
HOSTILE_LEVEL_1 = ["vc_rifleteam"];    //wave 0
HOSTILE_LEVEL_2 = ["vc_fourmancell"];         //wave 5
HOSTILE_LEVEL_3 = ["vc_mainweaponsquadone"];         //wave 10
HOSTILE_LEVEL_4 = ["NVA_68heavyweaponsquad1"];         //wave 15
DEFECTOR_CLASS = ["uns_ROK_WH68_WeaponSquad1"];          //defector special wave units
PARATROOP_CLASS = ["uns_ROK_WH68_Rifle1"];         //friendly units called in via support

/* Vehicle Whitelist and Blacklists */   //not done yet

/* LOCATION LIST OPTIONS */
// List_AllCities - for any random City
// List_SpecificPoint - will start the mission on the "Specific Bulwark Pos" marker (move with mission editor). Location must meet BULWARK_LANDRATIO and LOOT_HOUSE_DENSITY, BULWARK_MINSIZE, etc requirements
// List_LocationMarkers - for a location selected randomly from the Bulwark Zones in editor (Currently broken)
// *IMPORTANT* If you get an error using List_SpecificPoint it means that there isn't a building that qualifies. Turning down the "Minimum spawn room size" parameter might help.
BULWARK_LOCATIONS = List_AllCities;

/* LOOT */
Medkit = "Medikit";
LOOT_BLACKLIST = [
    "O_Static_Designator_02_weapon_F", // If players find and place CSAT UAVs they count as hostile units and round will not progress
    "O_UAV_06_backpack_F",
    "O_UAV_06_medical_backpack_F",
    "O_UAV_01_backpack_F",
    "B_IR_Grenade",
    "O_IR_Grenade",
    "I_IR_Grenade"
];
//Loot Chances - chance in % that weapon spawn, spawns a weapon of the following type -- 10 would be 10% chance, 40 would be 40% chance if all combined are 100:
launcherWeapTypeChance =    15;
assaultWeapTypeChance =     30;
smgWeapTypeChance =         25;    //shotguns included in SMG array since there aren't that many
sniperWeapTypeChance =      20;
mgWeapTypeChance =          5;
handgunWeapTypeChance =		5;
//chances in % for what type of item spawns -- 10 would be 10% chance, 40 would be 40% chance if all combined are 100:
clothesTypeChance = 		15;
itemsTypeChance =			10;
weaponsTypeChance =			25;
backpacksTypeChance =		35;
explosivesTypeChance =		25;
//Ammo amount - how many magazines can spawn with weapons [1,3] would be minimum 1 and maximum 3, the maximum is also used to determine how much ammo you get from ammo drops:
magLAUNCHER =	[1,3];
magASSAULT =	[1,3];
magSMG =		[2,5];      //shotguns included in SMG array since there aren't that many
magSNIPER =		[3,6];
magMG =			[1,1];
magHANDGUN =	[2,4];
/* Whitelist modes */
/* 0 = Off */
/* 1 = Only Whitelist Items will spawn as loot */
LOOT_WHITELIST_MODE = 0;
/* Loot Whitelists */
/* Fill with classname arrays: ["example_item_1", "example_item_2"] */
/* To use Whitelisting there MUST be at least one applicaple item in each LOOT_WHITELIST array*/
LOOT_WHITELIST_WEAPON_MG = [];
LOOT_WHITELIST_WEAPON_SNIPER = [];
LOOT_WHITELIST_WEAPON_SMG = [];     //shotguns included in SMG array since there aren't that many
LOOT_WHITELIST_WEAPON_ASSAULT = [];
LOOT_WHITELIST_WEAPON_LAUNCHER = [];
LOOT_WHITELIST_WEAPON_HANDGUN = [];
LOOT_WHITELIST_APPAREL = [];
LOOT_WHITELIST_ITEM = [];
LOOT_WHITELIST_EXPLOSIVE = [];
LOOT_WHITELIST_STORAGE = [];

/* POINTS */
SCORE_RANDOMBOX = 950;  // Cost to spin the box
//Point multipliers of SCORE_KILL for different waves
HOSTILE_LEVEL_1_POINT_SCORE = 0.75;
HOSTILE_LEVEL_2_POINT_SCORE = 1;
HOSTILE_LEVEL_3_POINT_SCORE = 1.50;
HOSTILE_LEVEL_4_POINT_SCORE = 1.75;
HOSTILE_CAR_POINT_SCORE = 2;
HOSTILE_ARMOUR_POINT_SCORE = 4;

/* SPECIAL WAVES */
//comment out the waves you don't like. Don't forget to remove the , behind the last entry
//list of special waves you can get early on
lowSpecialWave_list = [
	"fogWave",
	"switcharooWave",
    "specCivs"
];
//comment out the waves you don't like. Don't forget to remove the , behind the last entry
//list of all special waves you can get on higher waves
specialWave_list= [
	"specCivs",
	"fogWave",
	"demineWave",
	"switcharooWave",
	"suicideWave",
	"specMortarWave",
	"nightWave",
	"defectorWave",
    "mgWave",
    "sniperWave"
];
//starting from this wave the lowSpecialWaveList is used
lowSpecialWaveStart = 5;
//starting from this wave the specialWaveList is used
SpecialWaveStart = 10;
//If true, every time special waves spawn it could be any of the set special waves
//If false, you can't get a repeat of the same special wave type, until  all special waves happend once
specialWaveRepeat = false;
//if true, every wave starting with the lowSpecialWaveStart will be a special wave
everyWaveSpecial = false;

/* SUPPORT */
//Comment out or delete the below support items to prevent the player from buying them
BULWARK_SUPPORTITEMS = [
    [800,  "Recon UAV",             "reconUAV"],
    [1680, "Emergency Teleport",   "telePlode"],
    [1950, "Paratroopers",          "paraDrop"],
    [3850, "Missile CAS",          "airStrike"],
    [4220, "Mine Cluster Shell",   "mineField"],
    [4690, "Rage Stimpack",         "ragePack"],
    [5930, "Mind Control Gas",    "mindConGas"]
   // [6666, "ARMAKART TM",           "armaKart"],
   // [7500, "Predator Drone",    "droneControl"]
];
//support settings:
casAircraft = "UNS_AH1G_M200"; //CAS aircraft default: "B_Plane_CAS_01_DynamicLoadout_F"
supportAircraft = "uns_ch53d_m2_usmc"; //Plane that drops support and paratroopers default: "B_T_VTOL_01_vehicle_F"
supportAircraftFlyInHeight = 50; //default: 100
supportAircraftWaypointHeight = 20; //default: 300
supportAircraftSpeed = 20; // adds speed to the aircraft -- default 20

/* Objects the Player can buy */

/* Radius prevents hostiles walking through objects */

/*  Price - Display Name - Class Name - Rotation When Bought - Object Radius (meters) - explosive - invincible	*/
BULWARK_BUILDITEMS = [
    [25,    "Long Plank (8m)",        "Land_Plank_01_8m_F",                0,        4,        0,        0],
    [50,    "Timbers",                "Timbers",                           0,      1.5,        0,        0],
    [75,    "Small Ramp (1m)",        "Land_Obstacle_Ramp_F",            180,      1.5,        0,        0],
    [85,    "Flat Triangle (1m)",     "Land_DomeDebris_01_hex_green_F",  180,      1.5,        0,        0],
    [100,   "Short Sandbag Wall",     "Land_SandbagBarricade_01_half_F",   0,      1.5,        0,        0],
    [150,   "Sandbag Barricade",      "Land_SandbagBarricade_01_hole_F",   0,      1.5,        0,        0],
    [180,   "Concrete Shelter",       "Land_CncShelter_F",                 0,        1,        0,        0],
    [200,   "Concrete Walkway",       "Land_GH_Platform_F",                0,      3.5,        0,        0],
    [250,   "Tall Concrete Wall",     "Land_Mil_WallBig_4m_F",             0,        2,        0,        0],
    [260,   "Portable Light",         "Land_PortableLight_double_F",     180,        1,        0,        0],
    [300,   "Long Concrete Wall",     "Land_CncBarrierMedium4_F",          0,        3,        0,        0],
    [400,   "Large Ramp",             "Land_VR_Slope_01_F",                0,        4,        0,        0],
    [500,   "Trench pit small",       "LAND_t_sb_pit1",                    0,        2,        0,        0],
    [500,  "Guard Tower",             "Land_Wood_Tower",                    0,      3.5,        0,        0],
    [500,   "H Barrier",              "Land_HBarrier_3_F",                 0,        2,        0,        0],
    [500,   "Explosive Barrel",       "Land_MetalBarrel_F",                0,        1,        1,        0],	
    [750,   "Ladder",                 "Land_PierLadder_F",                 0,        1,        0,        0],
    [800,   "Storage box small",      "uns_engineerbox_US",                0,        1,        0,        1],
    [950,   "Stairs",                 "Land_GH_Stairs_F",                180,        4,        0,        0],
    [1000,  "Hallogen Lamp",          "Land_LampHalogen_F",               90,        1,        0,        0],
    [1000,  "Double H Barrier",       "Land_HBarrierWall4_F",              0,        4,        0,        0],
    [1000,  "Concrete Platform",      "BlockConcrete_F",                   0,      3.5,        0,        0],
    [1200,  "Storage box large",      "uns_US_armoury",                    0,        1,        0,        1],    
    [2500,  "Static HMG",             "uns_m2_high",                       0,        1,        0,        1],
    [3000,  "Small Bunker",           "Land_BagBunker_Small_F",          180,        3,        0,        0],
    [4500,  "Weapon Pit",             "LAND_uns_weapon_pit",              90,      2.5,        0,        0],
    [6000,  "Jap Bunker Metal",       "Land_WX_japbunker02",             180,      3.5,        0,        0],
    [6000,  "Jap Bunker",             "Land_WX_japbunker05",             180,      3.5,        0,        0],
    [6000,  "M- 55 Quad 50",          "Uns_M55_Quad",                    180,      3.5,        0,        1],
    [10000,  "ZPU-4 Quad 14.5mm",     "uns_ZPU4_VC",                    180,      3.5,        0,        1]
];