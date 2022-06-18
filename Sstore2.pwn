/*
                                        ,,
 .M"""bgd `7MM               `7MM"""YMM `7MM
,MI    "Y   MM                 MM    `7   MM
`MMb.       MM  ,MP'`7M'   `MF'MM   d     MM   ,6"Yb.  `7Mb,od8 .gP"Ya
  `YMMNq.   MM ;Y     VA   ,V  MM""MM     MM  8)   MM    MM' "',M'   Yb
.     `MM   MM;Mm      VA ,V   MM   Y     MM   ,pm9MM    MM    8M""""""
Mb     dM   MM `Mb.     VVV    MM         MM  8M   MM    MM    YM.    ,
P"Ybmmd"  .JMML. YA.    ,V   .JMML.     .JMML.`Moo9^Yo..JMML.   `Mbmmd'
                       ,V
                    OOb"
                    
Credits to Me SkyFlre AKA(NinjahZ) - Making the Script
Credits to SA-MP Team - for a_samp
Credits to Y_less for YSI/y_Commands
_______________________________________
[=====][***VERSION 2 CHANGES***][=====]

HEALTH PURCHASES NOW AVAILABLE, SEE BELOW FOR PRICE VARIABLES ABOVE THE ARMOR ONES.

PLAYER NAME COLOR PURCHASES NOW AVAILABLE, SEE BELOW FOR PRICE VARIABLE.

PLAYER NAME CHANGES NOW AVAILABLE, SEE BELOW FOR PRICE VARIABLE.

TELEPORTS NOW AVAILABLE, SEE BELOW FOR PRICE VARIABLE.

SKIN PURCHASE NOW CHANGEABLE, SEE BELOW FOR PRICE VARIABLE.

VEHICLE PURCHASES NOW CHANGEABLE, SEE BELOW FOR PRICE VARIABLES.

ALL PURCHASES NOW SHOW IN CHAT IF YOU DONT HAVE ENOUGH MONEY, IT TELLS YOU HOW MUCH THE ITEM IS.
REMEMBER TO CHANGE THE PRICE VARIABLES I HAVE INCLUDED A  '*****'  NEXT TO THE ONES THAT YOU CAN CHANGE THE PRICE FOR.
______________________________________________________________________________________________________________________
*/
////////////////////////////////////////////////////////////////////////////////
//--------------------------[ FILTERSCRIPT ]------------------------------------
#define 					FILTERSCRIPT
//--------------------------[ GENERAL INCLUDES ]--------------------------------
#include 					<a_samp>
#include 					<YSI\y_commands>
//--------------------------[ COLOR ]-------------------------------------------
#define 					CRED 								0xFF0000FF
#define                     Green                               0x33AA33AA
#define                     Red                                	0xAA3333AA
#define                     Yellow                              0xFFFF00AA
#define                     Blue                                0x0000FFAA
#define                     Orange                              0xFF9900AA
#define                     Pink                                0xFF00FFAA
#define                     Gold                                0xD4A017AA
#define                     Aqua                                0x00FFFFAA
#define                     Lime                                0x00FF00AA
#define                     Black                               0x00000000
#define                     White                               0xFFFFFFFF
#define                     Gray                                0x6c6c6cAA
#define                     Purple                              0x800080AA
#define                     Dark Red                            0x8B0000FF
#define                     Indigo                              0x4B0082FF
#define                     LightCoral                          0xF08080FF
#define                     LimeGreen                           0x32CD32FF
#define                     DeepPink                            0xFF1493FF
//--------------------------[ CUSTOM DEFINES ]----------------------------------
#define 					SCM									SendClientMessage
#define                     SPD                                 ShowPlayerDialog
#define                     LISTBOX								DIALOG_STYLE_LIST
#define                     MSGBOX								DIALOG_STYLE_MSGBOX
#define                     INPUTBOX                            DIALOG_STYLE_INPUT
#define                     PID									playerid
#define                     ROW                                 case
#define                     PAR	                               	params
#define                     HLP                                 help
#define                     Y                                   YCMD
#define                     ACCEPT                            	response
#define                     LI                                  listitem
#define                     DI                                  dialogid
#define                     IT                                  inputtext
#define 					MAX 								13
//--------------------------[ GUN AMMO AMOUNT ]---------------------------------
#define						AMMOAMOUNT                          0x7FFFFFFF//***** 0x7FFFFFFF MEANS INFINITE IN THIS CASE
//--------------------------[ GUN PRICES ]--------------------------------------
#define						N9MMPRICE                           150//*****
#define 					SILENCED9MMPRICE                    180//*****
#define 					DESERTEAGLEPRICE                    250//*****
#define 					SHOTGUNPRICE                        300//*****
#define 					SAWNOFFSHOTGUNPRICE                 350//*****
#define 					COMBATSHOTGUNPRICE                  550//*****
#define 					UZIPRICE                            650//*****
#define 					MP5PRICE                            650//*****
#define 					AK47PRICE                           850//*****
#define 					M4PRICE                             1050//*****
#define 					TEC9PRICE                           1150//*****
#define 					COUNTRYRIFLEPRICE                   1250//*****
#define 					SNIPERPRICE                         2500//*****
//--------------------------[ HEALTH PRICES ]-----------------------------------
#define                     N25PERCENTHEALTHPRICE               50//*****
#define                     N50PERCENTHEALTHPRICE               150//*****
#define                     N75PERCENTHEALTHPRICE               250//*****
#define                     N100PERCENTHEALTHPRICE              550//*****
//--------------------------[ ARMOR PRICES ]------------------------------------
#define                     N25PERCENTARMORPRICE                150//*****
#define                     N50PERCENTARMORPRICE                250//*****
#define                     N75PERCENTARMORPRICE                350//*****
#define                     N100PERCENTARMORPRICE               650//*****
//--------------------------[ VEHICLE PRICES ]----------------------------------
//---------------BIKES---------------//
#define                     NPizzaboyPRICE                      900//*****
#define                     NPCJ600PRICE                       	2500//*****
#define                     NFaggioPRICE                        1000//*****
#define                     NFreewayPRICE                       9000//*****
#define                     NSanchezPRICE                       6000//*****
#define                     NQuadPRICE                          3500//*****
#define                     NBMXPRICE                           250//*****
#define                     NBikePRICE                          150//*****
#define                     NMountainBikePRICE                  350//*****
#define                     NFCR900PRICE                        5500//*****
#define                     NNRG500PRICE                        15000//*****
#define                     NBF400PRICE                         9500//*****
#define                     NWayfarerPRICE                      6000//*****
//---------------SPORTSCARS---------------//
#define                     NBuffaloPRICE                       6500//*****
#define                     NInfernusPRICE                      8000//*****
#define                     NCheetahPRICE                       7800//*****
#define                     NBansheePRICE                       7750//*****
#define                     NTurismoPRICE                      	8550//*****
#define                     NSabrePRICE                         1750//*****
#define                     NZR350PRICE                         2500//*****
#define                     NHotringRacer1PRICE                 6750//*****
#define                     NBlistaCompactPRICE                 1800//*****
#define                     NHotringRacer2PRICE                 6750//*****
#define                     NHotringRacer3PRICE                 6750//*****
#define                     NSuperGTPRICE                       3000//*****
#define                     NBulletPRICE                        7000//*****
#define                     NUranusPRICE                        3000//*****
#define                     NJesterPRICE                        3000//*****
#define                     NFlashPRICE                         3000//*****
#define                     NEurosPRICE                         3000//*****
#define                     NClubPRICE                          2500//*****
#define                     NAlphaPRICE                         3000//*****
#define                     NPhoenixPRICE                       4500//*****
//---------------LOCOLOWCO---------------//
#define                     NVoodooPRICE                        2200//*****
#define                     NRemingtonPRICE                     2300//*****
#define                     NSlamvanPRICE                       2500//*****
#define                     NBladePRICE                         1900//*****
#define                     NTahomaPRICE                        1200//*****
#define                     NSavannaPRICE                       1800//*****
#define                     NTornadoPRICE                       1500//*****
//---------------WHEELARCH---------------//
#define                     NSultanPRICE                        2900//*****
#define                     NStratumPRICE                       2850//*****
#define                     NElegyPRICE                         3000//*****
//---------------4X4---------------//
#define                     NLandstalkerPRICE                   1200//*****
#define                     NRancherPRICE                       1500//*****
#define                     NMesaPRICE                          1100//*****
#define                     NHuntleyPRICE                       1350//*****
#define                     NBFInjectionPRICE                   2100//*****
//---------------UTES---------------//
#define                     NBobcatPRICE                        1000//*****
#define                     NPicadorPRICE                       1300//*****
//---------------VANS/WAGONS---------------//
#define                     NMoonbeamPRICE                      950//*****
#define                     NPerennielPRICE                     1000//*****
#define                     NReginaPRICE                        1050//*****
//---------------COUPES---------------//
#define                     NMananaPRICE                        1050//*****
#define                     NEsperantoPRICE                     1050//*****
#define                     NStallionPRICE                      1050//*****
#define                     NHermesPRICE                        1250//*****
#define                     NCometPRICE                         1150//*****
#define                     NVirgoPRICE                         1050//*****
#define                     NMajesticPRICE                      1050//*****
#define                     NBuccaneerPRICE                     1050//*****
#define                     NFortunePRICE                       1050//*****
#define                     NCadronaPRICE                       1050//*****
#define                     NFeltzerPRICE                       1050//*****
#define                     NWindsorPRICE                       1050//*****
#define                     NBroadwayPRICE                      1050//*****
#define                     NBravuraPRICE                       1050//*****
#define                     NHustlerPRICE                       1050//*****
//---------------SEDANS---------------//
#define                     NPremierPRICE                       1050//*****
#define                     NPrevionPRICE                       1050//*****
#define                     NAdmiralPRICE                       1050//*****
#define                     NGlendalePRICE                      1050//*****
#define                     NOceanicPRICE                       1050//*****
#define                     NGreenwoodPRICE                     1050//*****
#define                     NElegantPRICE                      	1050//*****
#define                     NNebulaPRICE                        1050//*****
#define                     NWillardPRICE                       1050//*****
#define                     NVincentPRICE                       1050//*****
#define                     NIntruderPRICE                      1050//*****
#define                     NPrimoPRICE                         1050//*****
#define                     NSunrisePRICE                       1050//*****
#define                     NMeritPRICE                         1050//*****
#define                     NStaffordPRICE                      1050//*****
#define                     NEmperorPRICE                       1050//*****
#define                     NWashingtonPRICE                    1050//*****
//---------------HOBO---------------//
#define                     NWaltonPRICE                        850//*****
#define                     NCloverPRICE                        900//*****
#define                     NTampaPRICE                         950//*****
//---------------BUSINESS---------------//
#define                     NStretchPRICE                       10000//*****
//--------------------------[ SKIN PRICE ]--------------------------------------
#define                     NSKINPRICE                          250//*****
//--------------------------[ COLOR PRICE ]-------------------------------------
#define						NCOLORPRICE                         1000//*****
//--------------------------[ NAME CHANGE PRICE ]-------------------------------
#define                     NNAMECHANGEPRICE                    1500//*****
//--------------------------[ TELEPORT PRICE ]----------------------------------
#define                     NTELEPRICE                          1000//*****
//--------------------------[ DIALOGS ]-----------------------------------------
#define 					DIALOG_STORE  						100
#define 					DIALOG_GUNS                         200
#define 					DIALOG_HEALTH     					300
#define 					DIALOG_ARMOR     					400
#define						DIALOG_CARS				            500
#define                     DIALOG_CARCATEGORY                  600
#define                     DIALOG_BIKES		                700
#define                     DIALOG_SPORTS		                800
#define                     DIALOG_TUNING		                900
#define                     DIALOG_TRANSF		                1000
#define                     DIALOG_LOCOLO		                1100
#define                     DIALOG_WAATF		                1200
#define				   		DIALOG_4X4							1300
#define				   		DIALOG_UTES							1400
#define				   		DIALOG_TRUCKS						1500
#define				   		DIALOG_VANS							1600
#define				   		DIALOG_COUPES						1700
#define				   		DIALOG_SEDANS						1800
#define				   		DIALOG_HOBO							1900
#define				   		DIALOG_BUSINESS						2000
#define                     DIALOG_SKINMENU		                2100
#define                     DIALOG_PLAYERCOLORS                 2200
#define                     DIALOG_NAMECHANGE                   2300
#define                     DIALOG_TELEPORTS                    2400
#define                     DIALOG_STOREHELP                    2500
//--------------------------[ BIKES IDS ]---------------------------------------
#define                     NPizzaboy                           448
#define                     NPCJ600                            	461
#define                     NFaggio                             462
#define                     NFreeway                            463
#define                     NSanchez                            468
#define                     NQuad                             	471
#define                     NBMX                             	481
#define                     NBike                             	509
#define                     NMountainBike                       510
#define                     NFCR900                            	521
#define                     NNRG500                            	522
#define                     NBF400                             	581
#define                     NWayfarer                           586
//--------------------------[ SPORTSCARS IDS ]----------------------------------
#define                     NBuffalo                            402
#define                     NInfernus                           411
#define                     NCheetah                            415
#define                     NBanshee                            429
#define                     NTurismo                            451
#define                     NSabre                             	475
#define                     NZR350                             	477
#define                     NHotringRacer1                      494
#define                     NBlistaCompact                      496
#define                     NHotringRacer2                      502
#define                     NHotringRacer3                      503
#define                     NSuperGT                            506
#define                     NBullet                             541
#define                     NUranus                             558
#define                     NJester                             559
#define                     NFlash                             	565
#define                     NEuros                             	587
#define                     NClub                             	589
#define                     NAlpha                             	602
#define                     NPhoenix                            603
//--------------------------[ LOCOCARS IDS ]------------------------------------
#define                     NVoodoo                             412
#define                     NRemington                          534
#define                     NSlamvan                            535
#define                     NBlade                             	536
#define                     NTahoma                             566
#define                     NSavanna                            567
#define                     NTornado                            576
//--------------------------[ ARCHCARS IDS ]------------------------------------
#define                     NSultan                            	560
#define                     NStratum                            561
#define                     NElegy                             	562
//--------------------------[ 4X4 CARS IDS ]------------------------------------
#define                     NLandstalker                        400
#define                     NRancher                            489
#define                     NMesa                            	500
#define                     NHuntley                            579
#define                     NBobcat                            	422
#define                     NPicador                            600
#define                     NBFInjection                       	424
//--------------------------[ SEDAN CARS IDS ]----------------------------------
#define                     NPremier                            426
#define                     NPrevion                            436
#define                     NAdmiral                            445
#define                     NGlendale                           466
#define                     NOceanic                            467
#define                     NGreenwood                          492
#define                     NElegant                            507
#define                     NNebula                             516
#define                     NWillard                            529
#define                     NVincent                            540
#define                     NIntruder                           546
#define                     NPrimo                             	547
#define                     NSunrise                            550
#define                     NMerit                             	551
#define                     NStafford                           580
#define                     NEmperor                            585
#define                     NWashington                         421
//--------------------------[ VANS/WAGON CARS IDS ]-----------------------------
#define                     NMoonbeam                           418
#define                     NPerenniel                          404
#define                     NRegina                             479
//--------------------------[ HOBO CARS IDS ]-----------------------------------
#define                     NWalton                             478
#define                     NClover                             542
#define                     NTampa                             	549
//--------------------------[ COUPES CARS IDS ]---------------------------------
#define                     NManana                             410
#define                     NEsperanto                          419
#define                     NStallion                           439
#define                     NHermes                             474
#define                     NComet                             	480
#define                     NVirgo                             	491
#define                     NMajestic                           517
#define                     NBuccaneer                          518
#define                     NFortune                            526
#define                     NCadrona                            527
#define                     NFeltzer                            533
#define                     NWindsor                            555
#define                     NBroadway                           575
#define                     NBravura                           	401
#define                     NHustler                            545
//--------------------------[ BUSINESS CARS IDS ]-------------------------------
#define                     NStretch                            409
////////////////////////////////////////////////////////////////////////////////
stock GetXYInFrontOfPlayer(PID, &Float:x2, &Float:y2, Float:distance)
{
	new Float:a;

	GetPlayerPos(PID, x2, y2, a);
	GetPlayerFacingAngle(PID, a);

	if(GetPlayerVehicleID(PID))
	{
		GetVehicleZAngle(GetPlayerVehicleID(PID), a);
	}

	x2 += (distance * floatsin(-a, degrees));
	y2 += (distance * floatcos(-a, degrees));
}

new OnSkyDiving[MAX];

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Store System v2 by SkyFlare Loaded!");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
    print("\n--------------------------------------");
    print("Store System v2 by SkyFlare Unloaded!");
    print("--------------------------------------\n");
	return 1;
}

public OnDialogResponse(PID, DI, ACCEPT, LI, IT[])
{
	switch(DI)
	{
		ROW DIALOG_STORE: //==STORE==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SCM(PID, CRED, "You exited the Store.");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0: //==Guns==//
					{
   						SPD(PID, DIALOG_GUNS, LISTBOX, "Gun Selection","{BB0000}9mm\n{BB0000}Silenced 9mm\n{BB0000}Desert Eagle\n{BB0000}Shotgun\n{BB0000}SawnOff Shotgun\n{BB0000}Combat Shotgun\n{BB0000}Micro SMG/Uzi\n{BB0000}MP5\n{BB0000}AK-47\n{BB0000}M4\n{BB0000}Tec-9\n{BB0000}Country Rifle\n{BB0000}Sniper Rifle", "Select", "Back");
					}
					ROW 1: //==Health==//
   					{
				   		SPD(PID, DIALOG_HEALTH, LISTBOX, "Health Selection","{BB0000}25 Percent\n{BB0000}50 Percent\n{BB0000}75 Percent\n{BB0000}100 Percent", "Select", "Back");
				   	}
					ROW 2: //==Armor==//
   					{
				   		SPD(PID, DIALOG_ARMOR, LISTBOX, "Armor Selection","{BB0000}25 Percent\n{BB0000}50 Percent\n{BB0000}75 Percent\n{BB0000}100 Percent", "Select", "Back");
				   	}
				   	ROW 3: //==Cars==//
				   	{
				  		SPD(PID, DIALOG_CARS, LISTBOX, "Vehicle Selection","{BB0000}Bikes\n{BB0000}Sport Cars\n{BB0000}Tuneable Cars", "Select", "Back");
				   	}
				   	ROW 4://==Skins==//
				   	{
				  		SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
				   	}
				   	ROW 5://==PlayerColors==//
				   	{
				  		SPD(PID, DIALOG_PLAYERCOLORS, LISTBOX, "Color Selection", "{008000}Green\n{FF0000}Red\n{FFFF00}Yellow\n{0000FF}Blue\n{FFA500}Orange\n{F660AB}Pink\n{D4A017}Gold\n{93FFE8}Aqua\n{00FF00}Lime\n{000000}Black\n{FFFFFF}White\n{808080}Gray\n{800080}Purple\n{800000}Dark Red\n{4B0082}Indigo\n{E77471}Light Coral\n{41A317}Lime Green\n{F52887}Deep Pink","Change Color","Back");
				   	}
				   	ROW 6://==NameChange==//
				   	{
				   	    new ncdialog[190];
				   	    new nameprice = NNAMECHANGEPRICE;
				   	    new name[MAX_PLAYER_NAME];
    					GetPlayerName(PID, name, sizeof(name));
				   	    format(ncdialog, sizeof(ncdialog), "{BB0000}Please type in your newly desired name!\n{BB0000}Note: Name changes cost $%d\n\n{BB0000}Current Name:%s",nameprice,name);
		                SPD(PID, DIALOG_NAMECHANGE, INPUTBOX, "Name Selection", ncdialog, "Change", "Back");
					}
					ROW 7://==Teleports==//
					{
						SPD(PID, DIALOG_TELEPORTS, LISTBOX, "Teleport Selection", "{BB0000}Los Santos\n{BB0000}San Fierro\n{BB0000}Las Venturas\n{BB0000}Other", "Select", "Back");
					}
				}
			}
		}
		ROW DIALOG_GUNS: //==GUNS==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0: //==9mm==//
					{
				   		new PRICE = N9MMPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
						if(GetPlayerMoney(PID) < N9MMPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= N9MMPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a 9mm, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 22, AMMOAMOUNT);
						}
					}
					ROW 1: //==Silenced 9mm==//
   					{
				   		new PRICE = SILENCED9MMPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				   		if(GetPlayerMoney(PID) < SILENCED9MMPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= SILENCED9MMPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a Silenced 9mm, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 23, AMMOAMOUNT);
						}
				   	}
				   	ROW 2: //==DesertEagle==//
				   	{
				   		new PRICE = DESERTEAGLEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				  		if(GetPlayerMoney(PID) < DESERTEAGLEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= DESERTEAGLEPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a Desert Eagle, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 24, AMMOAMOUNT);
						}
				   	}
				   	ROW 3://==Shotgun==//
				   	{
				   		new PRICE = SHOTGUNPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
			  			if(GetPlayerMoney(PID) < SHOTGUNPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= SHOTGUNPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a Shotgun, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 25, AMMOAMOUNT);
						}
				   	}
				   	ROW 4://==SawnOff==//
				   	{
				   		new PRICE = SAWNOFFSHOTGUNPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				   	    if(GetPlayerMoney(PID) < SAWNOFFSHOTGUNPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= SAWNOFFSHOTGUNPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a Sawn-Off Shotgun, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 26, AMMOAMOUNT);
						}
				   	}
				   	ROW 5://==Combat Shotgun==//
				   	{
				   		new PRICE = COMBATSHOTGUNPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				   	    if(GetPlayerMoney(PID) < COMBATSHOTGUNPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= COMBATSHOTGUNPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a Combat Shotgun, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 27, AMMOAMOUNT);
						}
				   	}
				   	ROW 6://==Micro SMG/Uzi==//
				   	{
				   		new PRICE = UZIPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				   		if(GetPlayerMoney(PID) < UZIPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= UZIPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a UZI, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 28, AMMOAMOUNT);
						}
				   	}
				   	ROW 7://==MP5==//
				   	{
				   		new PRICE = MP5PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				   		if(GetPlayerMoney(PID) < MP5PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= MP5PRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a MP5, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 29, AMMOAMOUNT);
						}
				   	}
				   	ROW 8://==AK-47==//
				   	{
				   		new PRICE = AK47PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				   		if(GetPlayerMoney(PID) < AK47PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= AK47PRICE)
    					{
             				format(string, sizeof(string), "You have purchased a AK-47, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 30, AMMOAMOUNT);
						}
				   	}
				   	ROW 9://==M4==//
				   	{
				   		new PRICE = M4PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				   		if(GetPlayerMoney(PID) < M4PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= M4PRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a M4, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 31, AMMOAMOUNT);
						}
				   	}
				   	ROW 10://==Tec-9==//
				   	{
				   		new PRICE = TEC9PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				   		if(GetPlayerMoney(PID) < TEC9PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= TEC9PRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a TEC-9, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 32, AMMOAMOUNT);
						}
				   	}
				   	ROW 11://==CountryRifle==//
				   	{
				   		new PRICE = COUNTRYRIFLEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				   		if(GetPlayerMoney(PID) < COUNTRYRIFLEPRICE) SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= COUNTRYRIFLEPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a Country Rifle, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 33, AMMOAMOUNT);
						}
				   	}
				   	ROW 12://==SniperRifle==//
				   	{
				   		new PRICE = SNIPERPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Gun, you need to have $%d)!",PRICE);
				   		if(GetPlayerMoney(PID) < SNIPERPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= SNIPERPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a Sniper Rifle, you have paid $%d and have $%d left!",PRICE, CURRENT);
			    			SCM(PID, -1, string);
			    			GivePlayerMoney(PID,-PRICE);
                    		GivePlayerWeapon(PID, 34, AMMOAMOUNT);
						}
				   	}
				}
			}
		}
		ROW DIALOG_HEALTH: //==HEALTH==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0: //==25%==//
					{
						new PRICE = N25PERCENTHEALTHPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new HPPERCENT25 = N25PERCENTHEALTHPRICE;
				    	new string[200];
						new Float:HEALTH;
						GetPlayerHealth(PID, HEALTH);
						if(GetPlayerMoney(PID) < N25PERCENTHEALTHPRICE)
						{
							format(string, sizeof(string), "Sorry, you don't have enough money for this amount of Health, you need to have $%d)!",HPPERCENT25);
							SCM(PID, -1, string);
						}
    					else
						{
							if(GetPlayerMoney(PID) >= N25PERCENTHEALTHPRICE)
    						{
    					    	if(HEALTH < 75.1)
    					    	{
	    					    	format(string, sizeof(string), "You have purchased 25 percent Health, you have paid $%d and have $%d left!",PRICE, CURRENT);
	   					    		SCM(PID, -1, string);
	   					    		GivePlayerMoney(PID,-PRICE);
	                    			SetPlayerHealth(PID, HEALTH+25);
                    			}
                    			else
                    			{
	                    			format(string, sizeof(string), "You have more than 75 Percent Health, please allow yourself to lose a little bit more Health before purchasing more!");
	   					    		SCM(PID, -1, string);
                    			}
							}
						}
					}
					ROW 1: //==50%==//
   					{
   						if(GetPlayerMoney(PID) < N50PERCENTHEALTHPRICE)
						{
							new HPPERCENT50 = N50PERCENTHEALTHPRICE;
					    	new string[200];
							format(string, sizeof(string), "Sorry, you don't have enough money for this amount of Health, you need to have $%d)!",HPPERCENT50);
							SCM(PID, -1, string);
							return 1;
						}
				   		new PRICE = N50PERCENTHEALTHPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						new Float:HEALTH;
						GetPlayerHealth(PID, HEALTH);
						if(HEALTH > 50.0) return SCM(PID,-1,"You already have more than 50 Percent Health, please select a lower amount of Health from the store!");
    					else if(GetPlayerMoney(PID) >= N50PERCENTHEALTHPRICE)
    					{
    					    if(HEALTH < 50.1)
    					    {
  					    		format(string, sizeof(string), "You have purchased 50 percent Health, you have paid $%d and have $%d left!",PRICE, CURRENT);
   					    		SCM(PID, -1, string);
   					    		GivePlayerMoney(PID,-PRICE);
                    			SetPlayerHealth(PID, HEALTH+50);
                    		}
						}
					}
	   				ROW 2: //==75%==//
				   	{
			  			if(GetPlayerMoney(PID) < N75PERCENTHEALTHPRICE)
						{
							new HPPERCENT75 = N75PERCENTHEALTHPRICE;
					    	new string[200];
							format(string, sizeof(string), "Sorry, you don't have enough money for this amount of Health, you need to have $%d)!",HPPERCENT75);
							SCM(PID, -1, string);
							return 1;
						}
				   		new PRICE = N75PERCENTHEALTHPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						new Float:HEALTH;
						GetPlayerHealth(PID, HEALTH);
						if(HEALTH > 25.0) return SCM(PID,-1,"You have more than 25 Percent Health, please allow yourself to lose a little bit more Health before purchasing more!");
    					else if(GetPlayerMoney(PID) >= N75PERCENTHEALTHPRICE)
    					{
    					    if(HEALTH < 25.1)
    					    {
    					    	format(string, sizeof(string), "You have purchased 75 percent Health, you have paid $%d and have $%d left!",PRICE, CURRENT);
   					    		SCM(PID, -1, string);
   					    		GivePlayerMoney(PID,-PRICE);
                    			SetPlayerHealth(PID, HEALTH +75);
                    		}
						}
				   	}
				   	ROW 3://==100%==//
				   	{
			  			if(GetPlayerMoney(PID) < N100PERCENTHEALTHPRICE)
						{
							new HPPERCENT100 = N100PERCENTHEALTHPRICE;
					    	new string[200];
							format(string, sizeof(string), "Sorry, you don't have enough money for this amount of Health, you need to have $%d)!",HPPERCENT100);
							SCM(PID, -1, string);
							return 1;
						}
				   		new PRICE = N100PERCENTHEALTHPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						new Float:HEALTH;
						GetPlayerHealth(PID, HEALTH);
						if(HEALTH > 99.9) return SCM(PID,-1,"You already have 100 Percent Health!");
    					else if(GetPlayerMoney(PID) >= N100PERCENTHEALTHPRICE)
    					{
    					    if(HEALTH < 100.0)
    					    {
    					    	if(HEALTH > 75.0)
    					    	{
    					    		format(string, sizeof(string), "You have purchased 100 percent Health, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    		SCM(PID, -1, string);
    					    		GivePlayerMoney(PID,-PRICE);
                    				SetPlayerHealth(PID, 100.0);
								}
								else
								{
							 		SCM(PID,-1,"You already have more than 75 Percent Health, please allow yourself to lose a little bit more Health before purchasing more!");
								}
							}
						}
				   	}
				}
			}
		}
		ROW DIALOG_ARMOR: //==ARMOR==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0: //==25%==//
					{
					    new PRICE = N25PERCENTARMORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new ARMPERCENT25 = N25PERCENTARMORPRICE;
				    	new string[200];
						new Float:ARMOR;
						GetPlayerArmour(PID, ARMOR);
						if(GetPlayerMoney(PID) < N25PERCENTARMORPRICE)
						{
							format(string, sizeof(string), "Sorry, you don't have enough money for this amount of Armor, you need to have $%d)!",ARMPERCENT25);
							SCM(PID, -1, string);
							return 1;
						}
    					else
						{
							if(GetPlayerMoney(PID) >= N25PERCENTARMORPRICE)
    						{
	    					    if(ARMOR < 75.1)
	    					    {
	    					    	format(string, sizeof(string), "You have purchased 25 percent Armor, you have paid $%d and have $%d left!",PRICE, CURRENT);
	   					    		SCM(PID, -1, string);
	   					    		GivePlayerMoney(PID,-PRICE);
	                    			SetPlayerArmour(PID, ARMOR+25);
	                    		}
	                    		else
	                    		{
	                    			format(string, sizeof(string), "You have more than 75 Percent Armor, please allow yourself to lose a little bit more Armor before purchasing more!");
	   					    		SCM(PID, -1, string);
	                    		}
							}
						}
					}
					ROW 1: //==50%==//
   					{
   						if(GetPlayerMoney(PID) < N50PERCENTARMORPRICE)
						{
							new ARMPERCENT50 = N50PERCENTARMORPRICE;
					    	new string[200];
							format(string, sizeof(string), "Sorry, you don't have enough money for this amount of Armor, you need to have $%d)!",ARMPERCENT50);
							SCM(PID, -1, string);
							return 1;
						}
				   		new PRICE = N50PERCENTARMORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						new Float:ARMOR;
						GetPlayerArmour(PID, ARMOR);
						if(ARMOR > 50.0) return SCM(PID,-1,"You already have more than 50 Percent Armor, please select a lower amount of Armor from the store!");
    					else if(GetPlayerMoney(PID) >= N50PERCENTARMORPRICE)
    					{
    					    if(ARMOR < 50.1)
    					    {
  					    		format(string, sizeof(string), "You have purchased 50 percent Armor, you have paid $%d and have $%d left!",PRICE, CURRENT);
   					    		SCM(PID, -1, string);
   					    		GivePlayerMoney(PID,-PRICE);
                    			SetPlayerArmour(PID, ARMOR+50);
                    		}
						}
					}
	   				ROW 2: //==75%==//
				   	{
			  			if(GetPlayerMoney(PID) < N75PERCENTARMORPRICE)
						{
							new ARMPERCENT75 = N75PERCENTARMORPRICE;
					    	new string[200];
							format(string, sizeof(string), "Sorry, you don't have enough money for this amount of Armor, you need to have $%d)!",ARMPERCENT75);
							SCM(PID, -1, string);
							return 1;
						}
				   		new PRICE = N75PERCENTARMORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						new Float:ARMOR;
						GetPlayerArmour(PID, ARMOR);
						if(ARMOR > 25.0) return SCM(PID,-1,"You have more than 25 Percent Armor, please allow yourself to lose a little bit more Armor before purchasing more!");
    					else if(GetPlayerMoney(PID) >= N75PERCENTARMORPRICE)
    					{
    					    if(ARMOR < 25.1)
    					    {
    					    	format(string, sizeof(string), "You have purchased 75 percent Armor, you have paid $%d and have $%d left!",PRICE, CURRENT);
   					    		SCM(PID, -1, string);
   					    		GivePlayerMoney(PID,-PRICE);
                    			SetPlayerArmour(PID, ARMOR +75);
                    		}
						}
				   	}
				   	ROW 3://==100%==//
				   	{
			  			if(GetPlayerMoney(PID) < N100PERCENTARMORPRICE)
						{
							new ARMPERCENT100 = N100PERCENTARMORPRICE;
					    	new string[200];
							format(string, sizeof(string), "Sorry, you don't have enough money for this amount of Armor, you need to have $%d)!",ARMPERCENT100);
							SCM(PID, -1, string);
							return 1;
						}
				   		new PRICE = N100PERCENTARMORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						new Float:ARMOR;
						GetPlayerArmour(PID, ARMOR);
						if(ARMOR > 99.9) return SCM(PID,-1,"You already have 100 Percent Armor!");
    					else if(GetPlayerMoney(PID) >= N100PERCENTARMORPRICE)
    					{
    					    if(ARMOR < 100.0)
    					    {
    					    	if(ARMOR > 75.0)
    					    	{
    					    		format(string, sizeof(string), "You have purchased 100 percent Armor, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    		SCM(PID, -1, string);
    					    		GivePlayerMoney(PID,-PRICE);
                    				SetPlayerArmour(PID, 100.0);
								}
								else
								{
							 		SCM(PID,-1,"You already have more than 75 Percent Armor, please allow yourself to lose a little bit more Armor before purchasing more!");
								}
							}
						}
				   	}
				}
			}
		}
		ROW DIALOG_CARS: //==CARS==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0: //==Bikes==//
					{
						SPD(PID, DIALOG_BIKES, LISTBOX, "Bikes","{BB0000}PizzaBoy\n{BB0000}PCJ-600\n{BB0000}Faggio\n{BB0000}Freeway\n{BB0000}Sanchez\n{BB0000}Quad\n{BB0000}BMX\n{BB0000}Bike\n{BB0000}Mountain Bike\n{BB0000}FCR-900\n{BB0000}NRG-500\n{BB0000}BF-400\n{BB0000}Wayfarer", "Select", "Back");
					}
     				ROW 1: //==Sports==//
   					{
				   		SPD(PID, DIALOG_SPORTS, LISTBOX, "Sports Cars","{BB0000}Buffalo\n{BB0000}Infernus\n{BB0000}Cheetah\n{BB0000}Banshee\n{BB0000}Turismo\n{BB0000}Sabre\n{BB0000}ZR-350\n{BB0000}Hotring Racer 1\n{BB0000}Blista Compact\n{BB0000}Hotring Racer 2\n{BB0000}Hotring Racer 3\n{BB0000}Super GT\n{BB0000}Bullet\n{BB0000}Uranus\n{BB0000}Jester\n{BB0000}Flash\n{BB0000}Euros\n{BB0000}Club\n{BB0000}Alpha\n{BB0000}Phoenix", "Select", "Back");
				   	}
				   	ROW 2: //==Tuning==//
				   	{
				  		SPD(PID, DIALOG_TUNING, LISTBOX, "Tuneable Cars","{BB0000}LoCo Low Co\n{BB0000}Wheel Arch Angels\n{BB0000}Transfender", "Select", "Back");
				   	}
				}
			}
		}
		ROW DIALOG_BIKES: //==BIKES==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==bike==//
				   	{
				   		new PRICE = NPizzaboyPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NPizzaboyPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NPizzaboyPRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NPizzaboy, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
						}
				   	}
				   	ROW 1://==bike==//
				   	{
				   		new PRICE = NPCJ600PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NPCJ600PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NPCJ600PRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NPCJ600, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
						}
				   	}
				   	ROW 2://==bike==//
				   	{
				   		new PRICE = NFaggioPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NFaggioPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NFaggioPRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NFaggio, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
						}
				   	}
				   	ROW 3://==bike==//
				   	{
				   		new PRICE = NFreewayPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NFreewayPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NFreewayPRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NFreeway, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
						}
				   	}
				   	ROW 4://==bike==//
				   	{
				   		new PRICE = NSanchezPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NSanchezPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSanchezPRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NSanchez, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 5://==bike==//
				   	{
				   		new PRICE = NQuadPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NQuadPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NQuadPRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NQuad, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 6://==bike==//
				   	{
				   		new PRICE = NBMXPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBMXPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBMXPRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBMX, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 7://==bike==//
				   	{
				   		new PRICE = NBikePRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBikePRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBikePRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBike, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 8://==bike==//
				   	{
				   		new PRICE = NMountainBikePRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NMountainBikePRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NMountainBikePRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NMountainBike, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 9://==bike==//
				   	{
				   		new PRICE = NFCR900PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NFCR900PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NFCR900PRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NFCR900, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 10://==bike==//
				   	{
				   		new PRICE = NNRG500PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NNRG500PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NNRG500PRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NNRG500, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 11://==bike==//
				   	{
				   		new PRICE = NBF400PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBF400PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBF400PRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBF400, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
						}
				   	}
				   	ROW 12://==bike==//
				   	{
				   		new PRICE = NWayfarerPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NWayfarerPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NWayfarerPRICE)
    					{
    						format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   	    new Float:x, Float:y, Float:z;
					   		new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NWayfarer, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_SPORTS: //==SPORTS CARS==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
				   		new PRICE = NBuffaloPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBuffaloPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBuffaloPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBuffalo, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
						}
				   	}
				   	ROW 1://==car==//
				   	{
				   		new PRICE = NInfernusPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NInfernusPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NInfernusPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NInfernus, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
						}
				   	}
				   	ROW 2://==car==//
				   	{
				   		new PRICE = NCheetahPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NCheetahPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCheetahPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NCheetah, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 3://==car==//
				   	{
				   		new PRICE = NBansheePRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBansheePRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBansheePRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBanshee, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 4://==car==//
				   	{
				   		new PRICE = NTurismoPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NTurismoPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTurismoPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NTurismo, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 5://==car==//
				   	{
				   		new PRICE = NSabrePRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NSabrePRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSabrePRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NSabre, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 6://==car==//
				   	{
				   		new PRICE = NZR350PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NZR350PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NZR350PRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NZR350, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 7://==car==//
				   	{
				   		new PRICE = NHotringRacer1PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NHotringRacer1PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NHotringRacer1PRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NHotringRacer1, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 8://==car==//
				   	{
				   		new PRICE = NBlistaCompactPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBlistaCompactPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBlistaCompactPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBlistaCompact, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 9://==car==//
				   	{
				   		new PRICE = NHotringRacer2PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NHotringRacer2PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NHotringRacer2PRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NHotringRacer2, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 10://==car==//
				   	{
				   		new PRICE = NHotringRacer3PRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NHotringRacer3PRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NHotringRacer3PRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NHotringRacer3, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 11://==car==//
				   	{
				   		new PRICE = NSuperGTPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NSuperGTPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSuperGTPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NSuperGT, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 12://==car==//
				   	{
				   		new PRICE = NBulletPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBulletPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBulletPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBullet, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 13://==car==//
				   	{
				   		new PRICE = NUranusPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NUranusPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NUranusPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NUranus, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 14://==car==//
				   	{
				   		new PRICE = NJesterPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NJesterPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NJesterPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NJester, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 15://==car==//
				   	{
				   		new PRICE = NFlashPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NFlashPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NFlashPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NFlash, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 16://==car==//
				   	{
				   		new PRICE = NEurosPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NEurosPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NEurosPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NEuros, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 17://==car==//
				   	{
				   		new PRICE = NClubPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NClubPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NClubPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NClub, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 18://==car==//
				   	{
				   		new PRICE = NAlphaPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NAlphaPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NAlphaPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NAlpha, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 19://==car==//
				   	{
				   		new PRICE = NPhoenixPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NPhoenixPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NPhoenixPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NPhoenix, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_TUNING: //==TUNEABLE CARS==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==LowCo==//
				   	{
				  		SPD(PID, DIALOG_LOCOLO, LISTBOX, "Low Co LowCo","{BB0000}Voodoo\n{BB0000}Remington\n{BB0000}Slamvan\n{BB0000}Blade\n{BB0000}Tahoma\n{BB0000}Savanna\n{BB0000}Tornado", "Select", "Back");
				   	}
				   	ROW 1://==WheelArch==//
				   	{
				  		SPD(PID, DIALOG_WAATF, LISTBOX, "Wheel Arch Angels","{BB0000}Uranus\n{BB0000}Jester\n{BB0000}Sultan\n{BB0000}Stratum\n{BB0000}Elegy\n{BB0000}Flash", "Select", "Back");
				   	}
				   	ROW 2://==TransFender==//
				   	{
				  		SPD(PID, DIALOG_TRANSF, LISTBOX, "Transfender","{BB0000}4x4\n{BB0000}Utes\n{BB0000}Vans\n{BB0000}Coupes\n{BB0000}Sedans\n{BB0000}Hobo\n{BB0000}Business", "Select", "Back");
				   	}
				}
			}
		}
		ROW DIALOG_LOCOLO: //==Low Co LowCo==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
				   		new PRICE = NVoodooPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NVoodooPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NVoodooPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NVoodoo, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 1://==car==//
				   	{
				   		new PRICE = NRemingtonPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NRemingtonPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NRemingtonPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NRemington, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 2://==car==//
				   	{
				   		new PRICE = NSlamvanPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NSlamvanPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSlamvanPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NSlamvan, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 3://==car==//
				   	{
				   		new PRICE = NBladePRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBladePRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBladePRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBlade, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 4://==car==//
				   	{
				   		new PRICE = NTahomaPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NTahomaPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTahomaPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NTahoma, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 5://==car==//
				   	{
				   		new PRICE = NSavannaPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NSavannaPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSavannaPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NSavanna, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 6://==car==//
				   	{
				   		new PRICE = NTornadoPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NTornadoPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTornadoPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NTornado, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_WAATF: //==Wheel Arch Angels==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
				   		new PRICE = NUranusPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NUranusPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NUranusPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NUranus, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 1://==car==//
				   	{
				   		new PRICE = NJesterPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NJesterPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NJesterPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NJester, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 2://==car==//
				   	{
				   		new PRICE = NSultanPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NSultanPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSultanPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NSultan, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 3://==car==//
				   	{
				   		new PRICE = NStratumPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NStratumPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NStratumPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NStratum, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 4://==car==//
				   	{
				   		new PRICE = NElegyPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NElegyPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NElegyPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NElegy, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 5://==car==//
				   	{
				   		new PRICE = NFlashPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NFlashPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NFlashPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NFlash, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_TRANSF: //==TransFender==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{	
					ROW 0://==car==//
				   	{
				   		SPD(PID, DIALOG_4X4, LISTBOX, "4x4s","{BB0000}Landstalker\n{BB0000}Rancher\n{BB0000}Mesa\n{BB0000}Huntley\n{BB0000}BF-Injection", "Select", "Back");
				   	}
				   	ROW 1://==car==//
				   	{
				   		SPD(PID, DIALOG_UTES, LISTBOX, "Utes","{BB0000}Bobcat\n{BB0000}Picador", "Select", "Back");
				   	}
				   	ROW 2://==car==//
				   	{
				   		SPD(PID, DIALOG_VANS, LISTBOX, "Vans/Wagons","{BB0000}Moonbeam\n{BB0000}Perenniel\n{BB0000}Regina", "Select", "Back");
				   	}
				   	ROW 3://==car==//
				   	{
				   		SPD(PID, DIALOG_COUPES, LISTBOX, "Coupes","{BB0000}Manana\n{BB0000}Esperanto\n{BB0000}Stallion\n{BB0000}Hermes\n{BB0000}Comet\n{BB0000}Virgo\n{BB0000}Majestic\n{BB0000}Buccaneer\n{BB0000}Fortune\n{BB0000}Cadrona\n{BB0000}Feltzer\n{BB0000}Windsor\n{BB0000}Broadway\n{BB0000}Bravura\n{BB0000}Hustler", "Select", "Back");
				   	}
				   	ROW 4://==car==//
				   	{
				   		SPD(PID, DIALOG_SEDANS, LISTBOX, "Sedans","{BB0000}Premier\n{BB0000}Previon\n{BB0000}Admiral\n{BB0000}Glendale\n{BB0000}Oceanic\n{BB0000}Greenwood\n{BB0000}Elegant\n{BB0000}Nebula\n{BB0000}Willard\n{BB0000}Vincent\n{BB0000}Intruder\n{BB0000}Primo\n{BB0000}Sunrise\n{BB0000}Merit\n{BB0000}Stafford\n{BB0000}Emperor\n{BB0000}Washington", "Select", "Back");
				   	}
				   	ROW 5://==car==//
				   	{
				   		SPD(PID, DIALOG_HOBO, LISTBOX, "Hobo Cars","{BB0000}Walton\n{BB0000}Clover\n{BB0000}Tampa", "Select", "Back");
				   	}
				   	ROW 6://==car==//
				   	{
				   		SPD(PID, DIALOG_BUSINESS, LISTBOX, "Business Cars","{BB0000}Stretch", "Select", "Back");
				   	}
				}
			}
		}
		ROW DIALOG_4X4: //==4x4Vehicles==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
				   		new PRICE = NLandstalkerPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NLandstalkerPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NLandstalkerPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NLandstalker, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 1://==car==//
				   	{
				   		new PRICE = NRancherPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NRancherPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NRancherPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NRancher, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 2://==car==//
				   	{
				   		new PRICE = NMesaPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NMesaPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NMesaPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NMesa, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 3://==car==//
				   	{
				   		new PRICE = NHuntleyPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NHuntleyPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NHuntleyPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NHuntley, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 4://==car==//
				   	{
				   		new PRICE = NBFInjectionPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBFInjectionPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBFInjectionPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBFInjection, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_UTES: //==UTEVehicles==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
				   		new PRICE = NBobcatPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBobcatPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBobcatPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBobcat, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 1://==car==//
				   	{
				   		new PRICE = NPicadorPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NPicadorPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NPicadorPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NPicador, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_VANS: //==Vans/Wagon Vehicles==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
				   		new PRICE = NMoonbeamPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NMoonbeamPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NMoonbeamPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NMoonbeam, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 1://==car==//
				   	{
				   		new PRICE = NPerennielPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NPerennielPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NPerennielPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NPerenniel, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 2://==car==//
				   	{
				   		new PRICE = NReginaPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NReginaPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NReginaPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NRegina, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_COUPES: //==CoupeCars==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
				   		new PRICE = NMananaPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NMananaPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NMananaPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NManana, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 1://==car==//
				   	{
				   		new PRICE = NEsperantoPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NEsperantoPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NEsperantoPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NEsperanto, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 2://==car==//
				   	{
				   		new PRICE = NStallionPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NStallionPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NStallionPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NStallion, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 3://==car==//
				   	{
				   		new PRICE = NHermesPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NHermesPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NHermesPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NHermes, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 4://==car==//
				   	{
				   		new PRICE = NCometPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NCometPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCometPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NComet, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 5://==car==//
				   	{
				   		new PRICE = NVirgoPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NVirgoPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NVirgoPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NVirgo, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 6://==car==//
				   	{
				   		new PRICE = NMajesticPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NMajesticPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NMajesticPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NMajestic, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 7://==car==//
				   	{
				   		new PRICE = NBuccaneerPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBuccaneerPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBuccaneerPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBuccaneer, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 8://==car==//
				   	{
				   		new PRICE = NFortunePRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NFortunePRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NFortunePRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NFortune, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 9://==car==//
				   	{
				   		new PRICE = NCadronaPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NCadronaPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCadronaPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NCadrona, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 10://==car==//
				   	{
				   		new PRICE = NFeltzerPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NFeltzerPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NFeltzerPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NFeltzer, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 11://==car==//
				   	{
				   		new PRICE = NWindsorPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NWindsorPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NWindsorPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NWindsor, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 12://==car==//
				   	{
				   		new PRICE = NBroadwayPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBroadwayPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBroadwayPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBroadway, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 13://==car==//
				   	{
				   		new PRICE = NBravuraPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NBravuraPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NBravuraPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NBravura, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 14://==car==//
				   	{
				   		new PRICE = NHustlerPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NHustlerPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NHustlerPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NHustler, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_SEDANS: //==SedanCars==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
				   		new PRICE = NPremierPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NPremierPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NPremierPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NPremier, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 1://==car==//
				   	{
				   		new PRICE = NPrevionPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NPrevionPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NPrevionPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NPrevion, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 2://==car==//
				   	{
				   		new PRICE = NAdmiralPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NAdmiralPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NAdmiralPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NAdmiral, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 3://==car==//
				   	{
				   		new PRICE = NGlendalePRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NGlendalePRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NGlendalePRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NGlendale, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 4://==car==//
				   	{
				   		new PRICE = NOceanicPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NOceanicPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NOceanicPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NOceanic, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 5://==car==//
				   	{
				   		new PRICE = NGreenwoodPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NGreenwoodPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NGreenwoodPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NGreenwood, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 6://==car==//
				   	{
				   		new PRICE = NElegantPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NElegantPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NElegantPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NElegant, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 7://==car==//
				   	{
				   		new PRICE = NNebulaPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NNebulaPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NNebulaPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NNebula, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 8://==car==//
				   	{
				   		new PRICE = NWillardPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NWillardPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NWillardPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NWillard, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 9://==car==//
				   	{
				   		new PRICE = NVincentPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NVincentPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NVincentPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NVincent, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 10://==car==//
				   	{
				   		new PRICE = NIntruderPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NIntruderPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NIntruderPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NIntruder, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 11://==car==//
				   	{
				   		new PRICE = NPrimoPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NPrimoPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NPrimoPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NPrimo, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 12://==car==//
				   	{
				   		new PRICE = NSunrisePRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NSunrisePRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSunrisePRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NSunrise, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 13://==car==//
				   	{
				   		new PRICE = NMeritPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NMeritPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NMeritPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NMerit, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 14://==car==//
				   	{
				   		new PRICE = NStaffordPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NStaffordPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NStaffordPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NStafford, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 15://==car==//
				   	{
				   		new PRICE = NEmperorPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NEmperorPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NEmperorPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NEmperor, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 16://==car==//
				   	{
				   		new PRICE = NWashingtonPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NWashingtonPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NWashingtonPRICE)
    					{
    					    format(string, sizeof(string), "You have purchased a new Vehicle, you have paid $%d and have $%d left!",PRICE, CURRENT);
    					    SCM(PID, -1, string);
    					    GivePlayerMoney(PID,-PRICE);
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GivePlayerMoney(PID,-PRICE);
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NWashington, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_HOBO: //==Hobo Vehicles==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
				   		new PRICE = NWaltonPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NWaltonPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NWaltonPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing this Vehicle, remember to drive safely!");
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NWalton, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 1://==car==//
				   	{
				   		new PRICE = NCloverPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NCloverPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCloverPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing this Vehicle, remember to drive safely!");
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NClover, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				   	ROW 2://==car==//
				   	{
				   		new PRICE = NTampaPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NTampaPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTampaPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing this Vehicle, remember to drive safely!");
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NTampa, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_BUSINESS: //==Hobo Vehicles==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
				   		new PRICE = NStretchPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money for this Vehicle, you need to have $%d, you only have $%d!",PRICE, CURRENT);
				   		if(GetPlayerMoney(PID) < NStretchPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NStretchPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing this Vehicle, remember to drive safely!");
					   		new Float:x, Float:y, Float:z;
	        				new Float:a;
							if(IsPlayerInAnyVehicle(PID) == 1)
							{
								GetXYInFrontOfPlayer(PID, x, y, 8);
							}
							else
							{
						 		GetXYInFrontOfPlayer(PID, x, y, 5);
							}
							GetPlayerFacingAngle(PID, a);
							GetPlayerPos(PID, x, y, z);
					   	    new SelectedVehicle = CreateVehicle(NStretch, x, y, z, a+90, -1, -1, -1);
					   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	    }
				   	}
				}
			}
		}
		ROW DIALOG_SKINMENU:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
				    
					ROW 0:
					{
					    new szdialog[200];
					    strcat(szdialog,"{BB0000}Ballas 1\n{BB0000}Ballas 2\n{BB0000}Ballas 3");
	    				SPD(PID,DIALOG_SKINMENU+1, LISTBOX, "Ballas Skin", szdialog, "Select", "Back");
					}
					ROW 1:
					{
					    new szdialog[300];
					    strcat(szdialog,"{BB0000}Visitor 1\n{BB0000}Visitor 2\n{BB0000}Visitor 3\n{BB0000}Visitor 4\n{BB0000}Visitor 5\n{BB0000}Visitor 6\n");
					    strcat(szdialog,"{BB0000}Visitor 7\n{BB0000}Visitor 8\n{BB0000}Visitor 9\n{BB0000}Visitor 10\n{BB0000}Visitor 11");
	    				SPD(PID,DIALOG_SKINMENU+2, LISTBOX, "Beach Skin", szdialog, "Select", "Back");
					}
					ROW 2:
					{
					    new szdialog[200];
					    strcat(szdialog,"{BB0000}Biker\n{BB0000}Biker A\n{BB0000}Biker B\n{BB0000}Biker C");
	    				SPD(PID,DIALOG_SKINMENU+3, LISTBOX, "Bikers Skin", szdialog, "Select", "Back");
					}
					ROW 3:
					{
					    new szdialog[200];
					    strcat(szdialog,"{BB0000}DaNang 1\n{BB0000}DaNang 2\n{BB0000}DaNang 3");
	    				SPD(PID,DIALOG_SKINMENU+4, LISTBOX, "DaNang Skin", szdialog, "Select", "Back");
					}
					ROW 4:
					{
					    new szdialog[700];
					    strcat(szdialog,"{BB0000}Farm inhabitant 1\n{BB0000}Farm inhabitant 2\n{BB0000}Farm inhabitant 3\n{BB0000}Farm inhabitant 4\n{BB0000}Farm inhabitant 5\n");
					    strcat(szdialog,"{BB0000}Farm inhabitant 6\n{BB0000}Farm inhabitant 7\n{BB0000}Farm inhabitant 8\n{BB0000}Farm inhabitant 9\n{BB0000}Farm inhabitant 10\n");
					    strcat(szdialog,"{BB0000}Farm inhabitant 11\n{BB0000}Farm inhabitant 12\n{BB0000}Farm inhabitant 13\n{BB0000}Farm inhabitant 14\n");
					    strcat(szdialog,"{BB0000}Farmer 1\n{BB0000}Farmer 2\n{BB0000}Farmer 3\n{BB0000}Farmer 4\n{BB0000}Farmer 5\n{BB0000}Farmer 6\n{BB0000}Farmer 7\n{BB0000}Farmer 8\n{BB0000}Farmer 9");
	    				SPD(PID,DIALOG_SKINMENU+5, LISTBOX, "Farm Skin", szdialog, "Select", "Back");
					}
					ROW 5:
					{
					    new szdialog[300];
					    strcat(szdialog,"{BB0000}Denise Robinson\n{BB0000}Barbara Schternvart\n{BB0000}Helena Wankstein\n");
					    strcat(szdialog,"{BB0000}Michelle Cannes\n{BB0000}Katie Zhan\n{BB0000}Millie Perkins");
	    				SPD(PID,DIALOG_SKINMENU+6, LISTBOX, "Girlfriends Skin", szdialog, "Select", "Back");
					}
					ROW 6:
					{
					    new szdialog[200];
					    strcat(szdialog,"{BB0000}CJ\n{BB0000}Fam 1\n");
					    strcat(szdialog,"{BB0000}Fam 2\n{BB0000}Fam 3");
	    				SPD(PID,DIALOG_SKINMENU+7, LISTBOX, "Grove Skin", szdialog, "Select", "Back");
					}
					ROW 7:
					{
						SPD(PID, DIALOG_SKINMENU+8, LISTBOX,"Mafia Skin","{BB0000}Russian Mafia 1\n{BB0000}Russian Mafia 2\n{BB0000}Russian Mafia 3\n{BB0000}Mafia 1\n{BB0000}Mafia 2\n{BB0000}Mafia 3\n{BB0000}Mafia 4","Select", "Back");
					}
					ROW 8:
					{
						SPD(PID, DIALOG_SKINMENU+9, LISTBOX,"New Skin","{BB0000}Tenpenny\n{BB0000}Pulaski\n{BB0000}Hernandez\n{BB0000}Dwayne\n{BB0000}Big Smoke\n{BB0000}Sweet\n{BB0000}Ryder\n{BB0000}Mafia Boss","Select", "Back");
					}
					ROW 9:
					{
						SPD(PID, DIALOG_SKINMENU+10, LISTBOX,"Normal Peds Skin","{BB0000}Normal Ped1\n{BB0000}Normal Ped2\n{BB0000}Normal Ped3\n{BB0000}Normal Ped4\n{BB0000}Normal Ped5\n{BB0000}Normal Ped6\n{BB0000}Normal Ped7\n{BB0000}Normal Ped8\n{BB0000}Normal Ped9\n{BB0000}Normal Ped10\n{BB0000}Normal Ped11\n{BB0000}Normal Ped12\n{BB0000}Normal Ped13\n{BB0000}Normal Ped14\n{BB0000}Normal Ped15","Select", "Back");
					}
					ROW 10:
					{
						SPD(PID, DIALOG_SKINMENU+11, LISTBOX,"Others Skin","{BB0000}Homeless 1\n{BB0000}Homeless 2\n{BB0000}Homeless 3\n{BB0000}Homeless 4\n{BB0000}Homeless 5\n{BB0000}Drug Dealer \n{BB0000}Elvis Wannabee 1\n{BB0000}Elvis Wannabee 2\n{BB0000}Elvis Wannabee 3\n{BB0000}Driver\n{BB0000}Pilot\n{BB0000}Valet\n{BB0000}Afro American\n{BB0000}Mechanist","Select", "Back");
					}
					ROW 11:
					{
						new szdialog[600];
					    strcat(szdialog,"{BB0000}Casino Worker\n{BB0000}Office Worker\n{BB0000}Director\n{BB0000}Secretary 1\n{BB0000}Secretary 2\n{BB0000}Secretary 3\n{BB0000}Coffee man\n");
					    strcat(szdialog,"{BB0000}Cluckin' Bell\n{BB0000}Priest\n{BB0000}Hotel Services \n{BB0000}Tatoo Shop 1\n{BB0000}Tatoo Shop 2\n{BB0000}Ammunation Salesman\n{BB0000}Businessman\n");
					    strcat(szdialog,"{BB0000}Karate Teacher\n{BB0000}Well Stacked Pizza \n{BB0000}BurgerShot Salesman\n{BB0000}Security 1\n{BB0000}Security 2\n{BB0000}Construction Worket 1\n");
					    strcat(szdialog,"{BB0000}Construction Worker 2\n{BB0000}Construction Worker 3\n{BB0000}Clown\n{BB0000}Professor");
	    				SPD(PID,DIALOG_SKINMENU+12, LISTBOX, "Profession Skin", szdialog, "Select", "Back");
					}
					ROW 12:
					{
						SPD(PID, DIALOG_SKINMENU+13, LISTBOX,"Public Services Skin","{BB0000}Federal Agent 1\n{BB0000}Federal Agent 2\n{BB0000}Federal Agent 3\n{BB0000}Federal Agent 4\n{BB0000}Ambulance Personnal 1\n{BB0000}Ambulance Personnal 2\n{BB0000}Ambulance Personnal 3\n{BB0000}Fire Brigade 1\n{BB0000}Fire Brigade 2\n{BB0000}Fire Brigade 3\n{BB0000}LSPD\n{BB0000}SFPD\n{BB0000}LVPD\n{BB0000}BCPD 1\n{BB0000}BCPD 2\n{BB0000}SA Bike Cop\n{BB0000}SWAT\n{BB0000}FBI\n{BB0000}SA Army","Select", "Back");
					}
					ROW 13:
					{
						SPD(PID, DIALOG_SKINMENU+14, LISTBOX,"Rifa Skin","{BB0000}Rifa 1\n{BB0000}Rifa 2\n{BB0000}Rifa 3","Select", "Back");
					}
					ROW 14:
					{
						SPD(PID, DIALOG_SKINMENU+15, LISTBOX,"Sports Skin","{BB0000}Golfer 1\n{BB0000}Golfer 2\n{BB0000}Mountain Climber\n{BB0000}Mountain Biker 1\n{BB0000}Mountain Biker 2\n{BB0000}Boxer 1\n{BB0000}Boxer 2\n{BB0000}Skater\n{BB0000}Jogger\n{BB0000}Skeelerer","Select", "Back");
					}
					ROW 15:
					{
						SPD(PID, DIALOG_SKINMENU+16, LISTBOX,"Triads Skin","{BB0000}Triad 1\n{BB0000}Triad 2\n{BB0000}Triad 3","Select", "Back");
					}
					ROW 16:
					{
						SPD(PID, DIALOG_SKINMENU+17, LISTBOX,"VLA Skin","{BB0000}Aztec 1\n{BB0000}Aztec 2\n{BB0000}Aztec 3","Select", "Back");
					}
					ROW 17:
					{
						SPD(PID, DIALOG_SKINMENU+18, LISTBOX,"Vagos Skin","{BB0000}LS Vagos 1\n{BB0000}LS Vagos 2\n{BB0000}LS Vagos 3","Select", "Back");
					}
					ROW 18:
					{
						SPD(PID, DIALOG_SKINMENU+19, LISTBOX,"Whores Skin","{BB0000}Whore 1\n{BB0000}Whore 2\n{BB0000}Whore 3\n{BB0000}Whore 4\n{BB0000}Whore 5","Select", "Back");
					}
				}
			}
		}
//=============================BALLAS===================================//
    	ROW DIALOG_SKINMENU+1:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 102);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 103);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 104);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
		  	}
		}
//=================================BEACH======================================//
    	ROW DIALOG_SKINMENU+2:
		{
    		if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 138);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 139);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 140);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 145);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 4:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 146);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 5:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 154);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 6:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 251);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 7:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 92);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 8:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 97);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				    ROW 9:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 45);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 10:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 18);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//==================================BIKERS====================================//
		ROW DIALOG_SKINMENU+3:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 100);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 247);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 248);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 254);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//================================DANANG======================================//
		ROW DIALOG_SKINMENU+4:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 121);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 122);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 123);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//==================================FARM======================================//
		ROW DIALOG_SKINMENU+5:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 128);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 129);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 130);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 131);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				    ROW 4:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 132);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 5:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 133);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 6:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 196);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 7:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 197);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 8:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 198);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 9:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 199);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 10:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 31);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 11:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 32);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 12:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 33);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 13:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 34);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 14:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 157);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 15:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 158);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 16:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
						else if(GetPlayerMoney(PID) >= NSKINPRICE)
						{
							SetPlayerSkin(PID, 159);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 17:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 160);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 18:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 161);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 19:
					{
				   		new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 162);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 20:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 200);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 21:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 201);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 22:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 202);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//===============================GIRL FRIENDS=================================//
		ROW DIALOG_SKINMENU+6:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 195);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 190);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 191);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 192);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 4:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 193);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 5:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 194);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//==================================GROVE====================================//
		ROW DIALOG_SKINMENU+7:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 0);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 105);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 106);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 107);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//=================================MAFIA======================================//
		ROW DIALOG_SKINMENU+8:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 111);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 112);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 113);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 124);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 4:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 125);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 5:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 126);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 6:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 127);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//=====================================NEW====================================//
		ROW DIALOG_SKINMENU+9:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 265);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 266);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 267);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 268);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 4:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 269);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 5:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 270);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 6:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 271);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 7:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 272);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//================================NORMAL PEDS=================================//
		ROW DIALOG_SKINMENU+10:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 10);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID,101);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 12);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 13);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 4:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 14);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 5:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID,143);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 6:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 144);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 7:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 17);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 8:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 170);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 9:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 180);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 10:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 184);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 11:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 75);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				    ROW 12:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 216);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 13:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 22);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 14:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 226);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//==================================OTHERS=====================================//
		ROW DIALOG_SKINMENU+11:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 134);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID,135);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 137);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 212);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 4:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 230);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 5:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID,29);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 6:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 82);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 7:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 83);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 8:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 84);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 9:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 255);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 10:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 61);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 11:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 253);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				    ROW 12:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 241);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 13:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 50);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//===============================PROFESSION===================================//
		ROW DIALOG_SKINMENU+12:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 11);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 141);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 147);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 148);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				    ROW 4:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 150);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 5:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 219);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 6:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 153);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 7:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 167);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 8:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 68);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 9:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID,171);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 10:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 176);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 11:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 177);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 12:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 179);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 13:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 187);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 14:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 204);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 15:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 155);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 16:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 205);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 17:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 211);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 18:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 217);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 19:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 260);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 20:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 16);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 21:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 27);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 22:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 264);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 23:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 70);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//===================================PUBLIC===================================//
		ROW DIALOG_SKINMENU+13:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 163);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 164);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 165);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 166);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				    ROW 4:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 274);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 5:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 275);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 6:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 276);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 7:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 277);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 8:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 278);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 9:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 279);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 10:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 280);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 11:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 281);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 12:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 282);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 13:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 283);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 14:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 288);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 15:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 284);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 16:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 285);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 17:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 286);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 18:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 287);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//====================================RIFA====================================//
 		ROW DIALOG_SKINMENU+14:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 173);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 174);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 175);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//==================================SPORTS====================================//
		ROW DIALOG_SKINMENU+15:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 258);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 259);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 26);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 51);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				    ROW 4:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 52);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 5:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 80);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 6:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 81);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 7:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 23);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 8:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 96);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 9:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 99);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//=================================TRIADS=====================================//
 		ROW DIALOG_SKINMENU+16:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 117);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 118);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 120);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//=====================================VLA====================================//
 		ROW DIALOG_SKINMENU+17:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 114);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 115);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 116);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//====================================VAGOS===================================//
 		ROW DIALOG_SKINMENU+18:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 108);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 109);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 110);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
//==================================WHORES====================================//
 		ROW DIALOG_SKINMENU+19:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Grove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 152);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 1:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 207);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 2:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 245);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 3:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 246);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
					ROW 4:
					{
					    new PRICE = NSKINPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new skin, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NSKINPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NSKINPRICE)
    					{
							SetPlayerSkin(PID, 178);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new skin, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
					}
				}
			}
		}
		ROW DIALOG_PLAYERCOLORS:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==GREEN==//
				   	{
				   	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0x33AA33AA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 1://==RED==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0xAA3333AA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
				   		}
					}
				   	ROW 2://==YELLOW==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0xFFFF00AA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 3://==BLUE==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0x0000FFAA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 4://==ORANGE==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0xFF9900AA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 5://==PINK==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0xFF00FFAA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 6://==GOLD==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0xD4A017AA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 7://==AQUA==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0x00FFFFAA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 8://==LIME==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0x00FF00AA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 9://==BLACK==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0x00000000);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 10://==WHITE==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0xFFFFFFFF);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 11://==GRAY==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0x6c6c6cAA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 12://==PURPLE==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0x800080AA);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 13://==DARK RED==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0x8B0000FF);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 14://==INDIGO==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0x4B0082FF);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 15://==LIGHT CORAL==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0xF08080FF);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 16://==LIME GREEN==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0x32CD32FF);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				   	ROW 17://==DEEP PINK==//
				   	{
				  	    new PRICE = NCOLORPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				    	new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name color, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NCOLORPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NCOLORPRICE)
    					{
							SetPlayerColor(PID, 0xFF1493FF);
							GivePlayerMoney(PID,-PRICE);
							format(string, sizeof(string), "You have purchased a new Name color, you have paid $%d and have $%d left!",PRICE, CURRENT);
							SCM(PID,-1,string);
						}
				   	}
				}
			}
		}
		ROW DIALOG_NAMECHANGE:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
  			}
    		else if(ACCEPT)
			{
				if(strlen(inputtext) > 0 || strlen(inputtext) < 24)
	        	{
  					new PRICE = NNAMECHANGEPRICE;
  					new CURRENT = GetPlayerMoney(PID)-PRICE;
				    new string[200];
					format(string, sizeof(string), "Sorry, you don't have enough money to purchase a new name, you need to have $%d, you only have $%d!",PRICE,CURRENT);
					if(GetPlayerMoney(PID) < NNAMECHANGEPRICE) return SCM(PID, -1, string);
					else if(GetPlayerMoney(PID) >= NNAMECHANGEPRICE)
					{
	    				new String[128];
						new playername[MAX_PLAYER_NAME];
						GetPlayerName(PID, playername, sizeof(playername));
			            format(String,sizeof(String),"You have changed your name from %s to %s for $%d and have $%d left, enjoy the name change!",playername,(inputtext),PRICE,CURRENT);
			            SCM(PID,-1,String );
			            SetPlayerName(PID,(inputtext));
			            GivePlayerMoney(PID,-PRICE);
					}
		        }
		        else if(strlen(inputtext) < 3 || strlen(inputtext) > 24)
				{
					new ncdialog[190];
					new nameprice = NNAMECHANGEPRICE;
  					new name[MAX_PLAYER_NAME];
					GetPlayerName(PID, name, sizeof(name));
					format(ncdialog, sizeof(ncdialog), "{BB0000}ERROR: You entered a name that was either too short or too long, please enter a new name of your choice!\n{BB0000}Note: Name changes cost $%d\n\n{BB0000}Current Name:%s",nameprice,name);
					SPD(PID, DIALOG_NAMECHANGE, INPUTBOX, "Name Selection", ncdialog, "Change", "Back");
				}
			}
		}
		ROW DIALOG_TELEPORTS:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:// Los Santos
					{
						SPD(PID, DIALOG_TELEPORTS+1, DIALOG_STYLE_LIST, "Los Santos Teleports", "{BB0000}Los Santos Airport\n{BB0000}Santa Marina\n{BB0000}Grove Street\n{BB0000}City Hall\n{BB0000}Police Station\n{BB0000}Bank\n{BB0000}Ocean Docks\n{BB0000}Crazybob's House\n{BB0000}Jefferson Motel\n{BB0000}Above Los Santos", "Select", "Back");
					}
					ROW 1:// San Fierro
					{
						SPD(PID, DIALOG_TELEPORTS+2, DIALOG_STYLE_LIST, "San Fierro Teleports", "{BB0000}San Fierro Airport\n{BB0000}City Hall\n{BB0000}Bank\n{BB0000}Ocean Flats\n{BB0000}Missionary Hill\n{BB0000}Jizzys Pleasure Dome\n{BB0000}Police Station", "Select", "Cancel");
					}
					ROW 2:// Las Venturas
					{
						SPD(PID, DIALOG_TELEPORTS+3, DIALOG_STYLE_LIST, "Las Venturas Teleports", "{BB0000}Las Venturas Airport\n{BB0000}Area69\n{BB0000}City Hall\n{BB0000}Police Station\n{BB0000}Caligulas Casino\n{BB0000}Starfish Casino\n{BB0000}Bank\n{BB0000}Prickle Pine\n{BB0000}Bandit Stadium\n{BB0000}Last Dime Motel\n{BB0000}Above Las Venturas", "Select", "Back");
   					}
					ROW 3:// Other
					{
						SPD(PID, DIALOG_TELEPORTS+4, DIALOG_STYLE_LIST, "Other Teleports", "{BB0000}Verdant Meadows\n{BB0000}Bayside\n{BB0000}Palominmo Creek\n{BB0000}Montgomery\n{BB0000}Blueberry\n{BB0000}Drylake\n{BB0000}Mount Chilliad Cabin\n{BB0000}Top of Mount Chilliad\n{BB0000}Mount Chilliad", "Select", "Back");
					}
				}
			}
		}
		ROW DIALOG_TELEPORTS+1:// Los Santos
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_TELEPORTS, LISTBOX, "Teleport Selection", "{BB0000}Los Santos\n{BB0000}San Fierro\n{BB0000}Las Venturas\n{BB0000}Other", "Select", "Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:// Airport
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 1934.8811,-2305.5283,13.5469);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Los Santos Airport, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 1934.8811,-2305.5283,13.5469);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Los Santos Airport, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 1://Santa Marina
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 433.1179,-1796.5649,5.5469);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Santa Marina Beach, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 433.1179,-1796.5649,5.5469);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Santa Marina Beach, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 2:// Grove Street
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 2499.8733,-1667.6309,13.3512);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Grove Street, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 2499.8733,-1667.6309,13.3512);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Grove Street, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
   					}
					ROW 3:// City Hall
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 1461.0043,-1019.4626,24.6975);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Los Santos City Hall, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 1461.0043,-1019.4626,24.6975);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Los Santos City Hall, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
    					    
						}
					}
					ROW 4:// Police Station
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 1544.8700,-1675.8081,13.5593);
		   		 				SetPlayerFacingAngle(PID, 90);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Los Santos Police Department, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerPos(PID, 1544.8700,-1675.8081,13.5593);
		   		 				SetPlayerFacingAngle(PID, 90);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Los Santos Police Department, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
    					    
						}
					}
					ROW 5:// Bank
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 595.1895,-1243.1205,18.0844);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Los Santos Bank, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 595.1895,-1243.1205,18.0844);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Los Santos Bank, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 6:// Ocean Docks
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 2791.1782,-2534.6309,13.6303);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Ocean Docks, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 2791.1782,-2534.6309,13.6303);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Ocean Docks, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
   					}
					ROW 7:// Crazybob's House
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 1255.2925,-778.2413,92.0302);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Crazybob's House, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 1255.2925,-778.2413,92.0302);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Crazybob's House, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
   						}
					}
					ROW 8:// Jefferson Motel
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 2229.0200,-1159.8000,25.7981);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Jefferson Motel, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 2229.0200,-1159.8000,25.7981);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Jefferson Motel, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 9:// Above Los Santos
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    format(string, sizeof(string), "You need to exit the vehicle you are in first before teleporting to this location!");
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
							    SetPlayerPos(PID, 1744.1571,-1426.3916,1513.2897);
								SetPlayerFacingAngle(PID, 0);
								GivePlayerWeapon(PID, 46, 1);
								OnSkyDiving[PID]=1;
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to above Los Santos and also brought a Parachute, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
				}
			}
		}
		ROW DIALOG_TELEPORTS+2:// San Fierro
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_TELEPORTS, LISTBOX, "Teleport Selection", "{BB0000}Los Santos\n{BB0000}San Fierro\n{BB0000}Las Venturas\n{BB0000}Other", "Select", "Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:// Airport
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -1315.9419,-223.8595,14.1484);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to San Fierro Airport, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, -1315.9419,-223.8595,14.1484);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to San Fierro Airport, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 1:// City Hall
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -2672.6116,1268.4943,55.9456);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to San Fierro City Hall, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, -2672.6116,1268.4943,55.9456);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to San Fierro City Hall, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 2:// Bank
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -2050.6089,459.3649,35.1719);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to San Fierro Bank, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, -2050.6089,459.3649,35.1719);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to San Fierro Bank, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
   					}
					ROW 3:// Ocean Flats
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -2670.1101,-4.9832,6.1328);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Ocean Flats, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, -2670.1101,-4.9832,6.1328);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Ocean Flats, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 4:// Missionary Hill
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -2515.6768,-611.6651,132.5625);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Missionary Hill, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, -2515.6768,-611.6651,132.5625);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Missionary Hill, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 5:// Jizzy's Pleasure Dome
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -2621.0244,1403.7534,7.0938);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Jizzy's Pleasure Dome, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, -2621.0244,1403.7534,7.0938);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Jizzy's Pleasure Dome, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 6:// Police Station
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -1608.1376,718.9722,12.4356);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to San Fierro Police Station, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, -1608.1376,718.9722,12.4356);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to San Fierro Police Station, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
   					}
				}
			}
		}
		ROW DIALOG_TELEPORTS+3:// Las Venturas
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_TELEPORTS, LISTBOX, "Teleport Selection", "{BB0000}Los Santos\n{BB0000}San Fierro\n{BB0000}Las Venturas\n{BB0000}Other", "Select", "Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:// Airport
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 1487.9703,1736.9537,10.8125);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Las Venturas Airport, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 1487.9703,1736.9537,10.8125);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Las Venturas Airport, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 1:// Area69
					{
      					new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 129.3000, 1920.3000, 20.0);
	        					SetPlayerInterior(PID,0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Area 69, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerPos(PID, 129.3000, 1920.3000, 20.0);
	        					SetPlayerInterior(PID,0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Area 69, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
    					    
						}
					}
					ROW 2:// City Hall
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 2421.7185,1121.9866,10.8125);
		    					SetPlayerFacingAngle(PID, 90);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Las Venturas City Hall, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerPos(PID, 2421.7185,1121.9866,10.8125);
		    					SetPlayerFacingAngle(PID, 90);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Las Venturas City Hall, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
   					}
					ROW 3:// Police Station
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 2287.2561,2426.2576,10.8203);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Las Venturas Police Station, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 2287.2561,2426.2576,10.8203);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Las Venturas Police Station, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 4:// Caligulas Casino
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 2187.8350,1678.5358,11.1094);
		    					SetPlayerFacingAngle(PID, 90);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Caligulas Casino, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerPos(PID, 2187.8350,1678.5358,11.1094);
		    					SetPlayerFacingAngle(PID, 90);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Caligulas Casino, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 5:// Starfish Casino
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 2227.3596,1894.3228,10.6719);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Starfish Casino, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
							    SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 2227.3596,1894.3228,10.6719);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Starfish Casino, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 6:// Bank
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 2463.6680,2240.7524,10.8203);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Las Venturas Bank, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 2463.6680,2240.7524,10.8203);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Las Venturas Bank, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
   					}
					ROW 7:// Prickle Pine
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 1434.6989,2654.4026,11.3926);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Prickle Pine, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 1434.6989,2654.4026,11.3926);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Prickle Pine, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 8:// Bandit Stadium
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 1493.2443,2238.1526,11.0291);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Bandit Stadium, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 1493.2443,2238.1526,11.0291);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Bandit Stadium, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 9:// Last Dime Motel
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 1929.0522,707.8507,10.8203);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the Last Dime Motel, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 1929.0522,707.8507,10.8203);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the Last Dime Motel, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 10:// Above Las Venturas
					{
						new PRICE = NTELEPRICE+150;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    format(string, sizeof(string), "You need to exit the vehicle you are in first before teleporting to this location!");
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerPos(PID, 2201.6697,1997.7933,1500.1992);
								SetPlayerFacingAngle(PID, 0);
								GivePlayerWeapon(PID, 46, 1);
								GivePlayerMoney(PID,-PRICE);
								OnSkyDiving[PID]=1;
								format(string, sizeof(string), "You have purchased a teleport to above Las Venturas and also brought a Parachute, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
				}
			}
		}
		ROW DIALOG_TELEPORTS+4:// Other
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_TELEPORTS, LISTBOX, "Teleport Selection", "{BB0000}Los Santos\n{BB0000}San Fierro\n{BB0000}Las Venturas\n{BB0000}Other", "Select", "Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:// Verdant Meadows
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 414.9159,2532.9700,19.1484);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the Verdant Meadows, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
							    SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 414.9159,2532.9700,19.1484);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the Verdant Meadows, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 1:// Bayside
					{
      					new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -2271.0764, 2317.8457, 4.8202);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the Bayside, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerPos(PID, -2271.0764, 2317.8457, 4.8202);
		    					SetPlayerFacingAngle(PID, 180);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the Bayside, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 2:// Palomino Creek
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Palomino Creek, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 2259.5532, -85.0334, 26.5107);
								return 1;
							}
							else
							{
								SetPlayerPos(PID, 2259.5532, -85.0334, 26.5107);
		    					SetPlayerFacingAngle(PID, 180);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Palomino Creek, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
   					}
					ROW 3:// Montgomery
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    SetPlayerInterior(PID, 0);
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 1377.4314,271.4077,19.5669);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Montgomery, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerInterior(PID, 0);
								SetPlayerPos(PID, 1377.4314,271.4077,19.5669);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Montgomery, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 4:// Blueberry
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
							if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, 183.9907,-108.5440,2.0234);
								SetPlayerInterior(PID, 0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Blue-Berry, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
							    SetPlayerInterior(PID, 0);
								SetPlayerPos(PID,183.9907,-108.5440,2.0234);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Blue-Berry, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 5:// Drylake
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    					    if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -12.7000, 1481.7000, 14.00);
	        					SetPlayerInterior(PID ,0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the Dry Lake, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
								SetPlayerPos(PID, -12.7000, 1481.7000, 14.00);
	        					SetPlayerInterior(PID,0);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the Dry Lake, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
    					    
						}
					}
					ROW 6:// Mount Chilliad Cabin
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
							    new vehicleid = GetPlayerVehicleID(PID);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the Mt Chilliad Cabin, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								SetVehiclePos(vehicleid, -2809.0000, -1516.5000, 142.0000);
								return 1;
							}
							else
							{
							    SetPlayerPos(PID, -2809.0000, -1516.5000, 142.0000);
						    	SetPlayerFacingAngle(PID, 270);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the Mt Chilliad Cabin, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
							    return 1;
							}
						}
					}
					ROW 7:// Top of Mount Chilliad
					{
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
								new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -2238.0000, -1712.2700, 482.0000);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the top of Mt Chilliad, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
    					    	SetPlayerPos(PID, -2238.0000, -1712.2700, 482.0000);
						    	SetPlayerFacingAngle(PID, 90);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to the top of Mt Chilliad, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
						}
					}
					ROW 8:// Mount Chilliad
					{
						
						new PRICE = NTELEPRICE;
				   		new CURRENT = GetPlayerMoney(PID)-PRICE;
				   		new string[200];
						format(string, sizeof(string), "Sorry, you don't have enough money to purchase a Teleport, you need to have $%d, you only have $%d!",PRICE, CURRENT);
						if(GetPlayerMoney(PID) < NTELEPRICE) return SCM(PID, -1, string);
    					else if(GetPlayerMoney(PID) >= NTELEPRICE)
    					{
    						if(IsPlayerInAnyVehicle(PID))
							{
								new vehicleid = GetPlayerVehicleID(PID);
								SetVehiclePos(vehicleid, -2409.5000,-2190.0000,35.0000);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Mt Chilliad, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
							else
							{
    					    	SetPlayerPos(PID, -2409.5000, -2190.0000, 35.0000);
						    	SetPlayerFacingAngle(PID, 270);
								GivePlayerMoney(PID,-PRICE);
								format(string, sizeof(string), "You have purchased a teleport to Mt Chilliad, you have paid $%d and have $%d left!",PRICE, CURRENT);
								SCM(PID,-1,string);
								return 1;
							}
						}
					}
				}
			}
		}
	}
	return 1;
}

Y:money(PID, PAR[],HLP)
{
	GivePlayerMoney(PID,1000000);
	return 1;
}

Y:resetstats(PID, PAR[],HLP)
{
	SetPlayerHealth(PID, 1.0);
	SetPlayerArmour(PID, 0.0);
	ResetPlayerMoney(PID);
	ResetPlayerWeapons(PID);
	SetPlayerSkin(PID, 299);
	return 1;
}

Y:store(PID, PAR[],HLP)
{
	SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Health\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins\n{BB0000}Name Colors\n{BB0000}Name Change\n{BB0000}Teleports", "Select", "Cancel");
	return 1;
}

Y:storehelp(PID, PAR[],HLP)
{
    SPD(PID, DIALOG_STOREHELP, MSGBOX, "Store Help","{BB0000}(/store)\nYou can purchase any of the following.\n-Guns\n-Health\n-Armor\n-Cars\n-Skins\nName Colors\nName Change\nTeleportations\n\nTESTER COMMANDS\n/resetstats\n/money", "Okay","");
    return 1;
}
