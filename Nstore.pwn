/*
              ,,              ,,            ,,
`7MN.   `7MF' db              db          `7MM        MMM"""AMV
  MMN.    M                                 MM        M'   AMV
  M YMb   M `7MM  `7MMpMMMb.`7MM  ,6"Yb.    MMpMMMb.  '   AMV
  M  `MN. M   MM    MM    MM  MM 8)   MM    MM    MM     AMV
  M   `MM.M   MM    MM    MM  MM  ,pm9MM    MM    MM    AMV   ,
  M     YMM   MM    MM    MM  MM 8M   MM    MM    MM   AMV   ,M
.JML.    YM .JMML..JMML  JMML.MM `Moo9^Yo..JMML  JMML.AMVmmmmMM
                           QO MP
                           `bmP

Credits to Me (NinjahZ) - Making Script
Credits to SA-MP Team - for a_samp
Credits to Y_less for YSI/y_Commands
*/
////////////////////////////////////////////////////////////////////////////////
//--------------------------[ FILTERSCRIPT ]------------------------------------
#define 					FILTERSCRIPT
//--------------------------[ GENERAL INCLUDES ]--------------------------------
#include 					<a_samp>
#include 					<YSI\y_commands>
//--------------------------[ COLOR ]-------------------------------------------
#define 					COLOR_RED 							0xFF0000FF
//--------------------------[ CUSTOM DEFINES ]----------------------------------
#define 					SCM									SendClientMessage
#define                     SPD                                 ShowPlayerDialog
#define						PASFP                               PlayAudioStreamForPlayer
#define						SASFP   							StopAudioStreamForPlayer
#define                     LISTBOX								DIALOG_STYLE_LIST
#define                     MSGBOX								DIALOG_STYLE_MSGBOX
#define                     PID									playerid
#define                     ROW                                 case
#define                     PAR	                               	params
#define                     HLP                                 help
#define                     Y                                   YCMD
#define                     ACCEPT                            	response
#define                     LI                                  listitem
#define                     DI                                  dialogid
#define                     IT                                  inputtext
//--------------------------[ GUN AMMO AMOUNT ]---------------------------------
#define						AMMOAMOUNT                          1
//--------------------------[ GUN PRICES ]--------------------------------------
#define						N9MMPRICE                           1
#define 					SILENCED9MMPRICE                    1
#define 					DESERTEAGLEPRICE                    1
#define 					SHOTGUNPRICE                        1
#define 					SAWNOFFSHOTGUNPRICE                 1
#define 					COMBATSHOTGUNPRICE                  1
#define 					UZIPRICE                            1
#define 					MP5PRICE                            1
#define 					AK47PRICE                           1
#define 					M4PRICE                             1
#define 					TEC9PRICE                           1
#define 					COUNTRYRIFLEPRICE                   1
#define 					SNIPERPRICE                         1
//--------------------------[ ARMOR PRICES ]------------------------------------
#define                     N25PERCENTARMORPRICE                1
#define                     N50PERCENTARMORPRICE                1
#define                     N75PERCENTARMORPRICE                1
#define                     N100PERCENTARMORPRICE               1
//--------------------------[ SKIN PRICES ]-------------------------------------
//--------------------------[ DIALOGS ]-----------------------------------------
#define 					DIALOG_STORE  						100
#define 					DIALOG_GUNS                         200
#define 					DIALOG_ARMOR     					300
#define						DIALOG_CARS				            400
#define                     DIALOG_CARCATEGORY                  500
#define                     DIALOG_BIKES		                600
#define                     DIALOG_SPORTS		                700
#define                     DIALOG_TUNING		                800
#define                     DIALOG_TRANSF		                900
#define                     DIALOG_LOCOLO		                1000
#define                     DIALOG_WAATF		                1100
#define				   		DIALOG_4X4							1200
#define				   		DIALOG_UTES							1300
#define				   		DIALOG_TRUCKS						1400
#define				   		DIALOG_VANS							1500
#define				   		DIALOG_COUPES						1600
#define				   		DIALOG_SEDANS						1700
#define				   		DIALOG_HOBO							1800
#define				   		DIALOG_BUSINESS						1900
#define                     DIALOG_SKINMENU		                2000
#define                     DIALOG_STOREHELP                    3000
//--------------------------[ CAR PRICES ]--------------------------------------
//THIS IS POSSIBLE USING THE SAME FORMAT AS THE Guns, BUT AS THERE IS ALOT OF
//CARS I DID NOT WANT TO DO THIS MYSELF, I AM SORRY BUT IT WILL TAKE ALOT OF TIME
//IF YOU DO NEED THEM DEFINED, YOU CAN USE WHAT IS HERE ALREADY FROM Guns.
//--------------------------[ BIKES ]-------------------------------------------
#define                     NPizzaboy                           448
#define                     NPCJ-600                            461
#define                     NFaggio                             462
#define                     NFreeway                            463
#define                     NSanchez                            468
#define                     NQuad                             	471
#define                     NBMX                             	481
#define                     NBike                             	509
#define                     NMountainBike                       510
#define                     NFCR900                            521//
#define                     NNRG500                            522//
#define                     NBF400                             581//
#define                     NWayfarer                           586
//--------------------------[ SPORTSCARS ]--------------------------------------
#define                     NBuffalo                            402
#define                     NInfernus                           411
#define                     NCheetah                            415
#define                     NBanshee                            429
#define                     NTurismo                            451
#define                     NSabre                             	475
#define                     NZR350                             477//
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
//--------------------------[ LOCOCARS ]----------------------------------------
#define                     NVoodoo                             412
#define                     NRemington                          534
#define                     NSlamvan                            535
#define                     NBlade                             	536
#define                     NTahoma                             566
#define                     NSavanna                            567
#define                     NTornado                            576
//--------------------------[ ARCHCARS ]----------------------------------------
#define                     NSultan                            	560
#define                     NStratum                            561
#define                     NElegy                             	562
//--------------------------[ 4X4 CARS ]----------------------------------------
#define                     NLandstalker                        400
#define                     NRancher                            489
#define                     NMesa                            	500
#define                     NHuntley                            579
#define                     NBobcat                            	422
#define                     NPicador                            600
#define                     NBFInjection                       	424//
//--------------------------[ SEDAN CARS ]--------------------------------------
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
//--------------------------[ VANS/WAGON CARS ]---------------------------------
#define                     NMoonbeam                           418
#define                     NPerenniel                          404
#define                     NRegina                             479
//--------------------------[ HOBO CARS ]---------------------------------------
#define                     NWalton                             478
#define                     NClover                             542
#define                     NTampa                             	549
//--------------------------[ COUPES CARS ]-------------------------------------
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
//--------------------------[ BUSINESS CARS ]-----------------------------------
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

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Store System v1 by NinjahZ Loaded!");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
    print("\n--------------------------------------");
    print("Store System v1 by NinjahZ Unloaded!");
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
  				SCM(PID, COLOR_RED, "You exited the Store.");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0: //==Guns==//
					{
   						SPD(PID, DIALOG_GUNS, LISTBOX, "Gun Selection","{BB0000}9mm\n{BB0000}Silenced 9mm\n{BB0000}Desert Eagle\n{BB0000}Shotgun\n{BB0000}SawnOff Shotgun\n{BB0000}Combat Shotgun\n{BB0000}Micro SMG/Uzi\n{BB0000}MP5\n{BB0000}AK-47\n{BB0000}M4\n{BB0000}Tec-9\n{BB0000}Country Rifle\n{BB0000}Sniper Rifle", "Select", "Back");
					}
					ROW 1: //==Armor==//
   					{
				   		SPD(PID, DIALOG_ARMOR, LISTBOX, "Armor Selection","{BB0000}25 Percent\n{BB0000}50 Percent\n{BB0000}75 Percent\n{BB0000}100 Percent", "Select", "Back");
				   	}
				   	ROW 2: //==Cars==//
				   	{
				  		SPD(PID, DIALOG_CARS, LISTBOX, "Car Selection","{BB0000}Bikes\n{BB0000}Sport Cars\n{BB0000}Tuneable Cars", "Select", "Back");
				   	}
				   	ROW 3://==Skins==//
				   	{
				  		SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
				   	}
				}
			}
		}
		ROW DIALOG_GUNS: //==GUNS==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0: //==9mm==//
					{
						if(GetPlayerMoney(PID) < N9MMPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= N9MMPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a 9mm, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 22, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-N9MMPRICE);
						}
					}
					ROW 1: //==Silenced 9mm==//
   					{
				   		if(GetPlayerMoney(PID) < SILENCED9MMPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= SILENCED9MMPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a Silenced 9mm, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 23, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-SILENCED9MMPRICE);
						}
				   	}
				   	ROW 2: //==DesertEagle==//
				   	{
				  		if(GetPlayerMoney(PID) < DESERTEAGLEPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= DESERTEAGLEPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a Desert Eagle, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 24, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-DESERTEAGLEPRICE);
						}
				   	}
				   	ROW 3://==Shotgun==//
				   	{
			  			if(GetPlayerMoney(PID) < SHOTGUNPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= SHOTGUNPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a Shotgun, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 25, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-SHOTGUNPRICE);
						}
				   	}
				   	ROW 4://==SawnOff==//
				   	{
				   	    if(GetPlayerMoney(PID) < SAWNOFFSHOTGUNPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= SAWNOFFSHOTGUNPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a Sawn Off Shotgun, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 26, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-SAWNOFFSHOTGUNPRICE);
						}
				   	}
				   	ROW 5://==Combat Shotgun==//
				   	{
				   	    if(GetPlayerMoney(PID) < COMBATSHOTGUNPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= COMBATSHOTGUNPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a Combat Shotgun, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 27, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-COMBATSHOTGUNPRICE);
						}
				   	}
				   	ROW 6://==Micro SMG/Uzi==//
				   	{
				   		if(GetPlayerMoney(PID) < UZIPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= UZIPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing an Uzi, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 28, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-UZIPRICE);
						}
				   	}
				   	ROW 7://==MP5==//
				   	{
				   		if(GetPlayerMoney(PID) < MP5PRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= MP5PRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a MP5, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 29, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-MP5PRICE);
						}
				   	}
				   	ROW 8://==AK-47==//
				   	{
				   		if(GetPlayerMoney(PID) < AK47PRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= AK47PRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing an AK-47, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 30, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-AK47PRICE);
						}
				   	}
				   	ROW 9://==M4==//
				   	{
				   		if(GetPlayerMoney(PID) < M4PRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= M4PRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a M4, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 31, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-M4PRICE);
						}
				   	}
				   	ROW 10://==Tec-9==//
				   	{
				   		if(GetPlayerMoney(PID) < TEC9PRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= TEC9PRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a Tec-9, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 32, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-TEC9PRICE);
						}
				   	}
				   	ROW 11://==CountryRifle==//
				   	{
				   		if(GetPlayerMoney(PID) < COUNTRYRIFLEPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= COUNTRYRIFLEPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a Country Rifle, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 33, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-COUNTRYRIFLEPRICE);
						}
				   	}
				   	ROW 12://==SniperRifle==//
				   	{
				   		if(GetPlayerMoney(PID) < SNIPERPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this Gun!");
    					else if(GetPlayerMoney(PID) >= SNIPERPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing a SniperRifle, remember to AIM precisely at your target!");
                    		GivePlayerWeapon(PID, 34, AMMOAMOUNT);
                    		GivePlayerMoney(PID,-SNIPERPRICE);
						}
				   	}
				}
			}
		}
		ROW DIALOG_ARMOR: //==ARMOR==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0: //==25%==//
					{
						if(GetPlayerMoney(PID) < N25PERCENTARMORPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this amount of Armor!");
    					else if(GetPlayerMoney(PID) >= N25PERCENTARMORPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing 25 Percent Armor, remember to be careful in dangerous Zones!");
                    		SetPlayerArmour(PID, 25.0);
                    		GivePlayerMoney(PID,-N25PERCENTARMORPRICE);
						}
   						
					}
					ROW 1: //==50%==//
   					{
   						if(GetPlayerMoney(PID) < N50PERCENTARMORPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this amount of Armor!");
    					else if(GetPlayerMoney(PID) >= N50PERCENTARMORPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing 50 Percent Armor, remember to be careful in dangerous Zones!");
                    		SetPlayerArmour(PID, 50.0);
                    		GivePlayerMoney(PID,-N50PERCENTARMORPRICE);
						}
					}
	   				ROW 2: //==75%==//
				   	{
			  			if(GetPlayerMoney(PID) < N75PERCENTARMORPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this amount of Armor!");
    					else if(GetPlayerMoney(PID) >= N75PERCENTARMORPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing 75 Percent Armor, remember to be careful in dangerous Zones!");
                    		SetPlayerArmour(PID, 75.0);
                    		GivePlayerMoney(PID,-N75PERCENTARMORPRICE);
						}
				   	}
				   	ROW 3://==100%==//
				   	{
			  			if(GetPlayerMoney(PID) < N100PERCENTARMORPRICE) return SCM (PID,-1, "Sorry, you don't have enough money for this amount of Armor!");
    					else if(GetPlayerMoney(PID) >= N100PERCENTARMORPRICE)
    					{
    					    SCM(PID,-1, "Thank you for purchasing 100 Percent Armor, remember to be careful in dangerous Zones!");
                    		SetPlayerArmour(PID, 100.0);
                    		GivePlayerMoney(PID,-N100PERCENTARMORPRICE);
						}
				   	}
				}
			}
		}
		ROW DIALOG_CARS: //==CARS==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
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
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==bike==//
				   	{
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
				   	ROW 1://==bike==//
				   	{
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
				   	    new SelectedVehicle = CreateVehicle(NPCJ-600, x, y, z, a+90, -1, -1, -1);
				   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	}
				   	ROW 2://==bike==//
				   	{
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
				   	ROW 3://==bike==//
				   	{
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
				   	ROW 4://==bike==//
				   	{
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
				   	ROW 5://==bike==//
				   	{
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
				   	ROW 6://==bike==//
				   	{
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
				   	ROW 7://==bike==//
				   	{
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
				   	ROW 8://==bike==//
				   	{
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
				   	ROW 9://==bike==//
				   	{
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
				   	ROW 10://==bike==//
				   	{
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
				   	ROW 11://==bike==//
				   	{
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
				   	ROW 12://==bike==//
				   	{
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
		ROW DIALOG_SPORTS: //==SPORTS CARS==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
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
				   	ROW 1://==car==//
				   	{
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
				   	ROW 2://==car==//
				   	{
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
				   	ROW 3://==car==//
				   	{
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
				   	ROW 4://==car==//
				   	{
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
				   	ROW 5://==car==//
				   	{
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
				   	ROW 6://==car==//
				   	{
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
				   	ROW 7://==car==//
				   	{
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
				   	ROW 8://==car==//
				   	{
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
				   	ROW 9://==car==//
				   	{
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
				   	ROW 10://==car==//
				   	{
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
				   	ROW 11://==car==//
				   	{
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
				   	ROW 12://==car==//
				   	{
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
				   	ROW 13://==car==//
				   	{
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
				   	ROW 14://==car==//
				   	{
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
				   	ROW 15://==car==//
				   	{
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
				   	ROW 16://==car==//
				   	{
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
				   	ROW 17://==car==//
				   	{
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
				   	ROW 18://==car==//
				   	{
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
				   	ROW 19://==car==//
				   	{
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
		ROW DIALOG_TUNING: //==TUNEABLE CARS==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
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
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
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
				   	ROW 1://==car==//
				   	{
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
				   	ROW 2://==car==//
				   	{
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
				   	ROW 3://==car==//
				   	{
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
				   	ROW 4://==car==//
				   	{
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
				   	ROW 5://==car==//
				   	{
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
				   	ROW 6://==car==//
				   	{
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
		ROW DIALOG_WAATF: //==Wheel Arch Angels==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
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
				   	ROW 1://==car==//
				   	{
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
				   	ROW 2://==car==//
				   	{
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
				   	ROW 3://==car==//
				   	{
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
				   	ROW 4://==car==//
				   	{
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
				   	ROW 5://==car==//
				   	{
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
		ROW DIALOG_TRANSF: //==TransFender==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
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
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
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
				   	ROW 1://==car==//
				   	{
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
				   	ROW 2://==car==//
				   	{
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
				   	ROW 3://==car==//
				   	{
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
				   	ROW 4://==car==//
				   	{
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
		ROW DIALOG_UTES: //==UTEVehicles==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
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
				   	ROW 1://==car==//
				   	{
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
		ROW DIALOG_VANS: //==Vans/Wagon Vehicles==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
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
				   	ROW 1://==car==//
				   	{
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
				   	ROW 2://==car==//
				   	{
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
		ROW DIALOG_COUPES: //==CoupeCars==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
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
				   	ROW 1://==car==//
				   	{
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
				   	ROW 2://==car==//
				   	{
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
				   	ROW 3://==car==//
				   	{
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
				   	ROW 4://==car==//
				   	{
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
				   	ROW 5://==car==//
				   	{
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
				   	ROW 6://==car==//
				   	{
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
				   	ROW 7://==car==//
				   	{
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
				   	ROW 8://==car==//
				   	{
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
				   	ROW 9://==car==//
				   	{
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
				   	ROW 10://==car==//
				   	{
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
				   	ROW 11://==car==//
				   	{
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
				   	ROW 12://==car==//
				   	{
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
				   	ROW 13://==car==//
				   	{
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
				   	ROW 14://==car==//
				   	{
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
		ROW DIALOG_SEDANS: //==SedanCars==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
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
				   	ROW 1://==car==//
				   	{
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
				   	ROW 2://==car==//
				   	{
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
				   	ROW 3://==car==//
				   	{
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
				   	ROW 4://==car==//
				   	{
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
				   	ROW 5://==car==//
				   	{
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
				   	ROW 6://==car==//
				   	{
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
				   	ROW 7://==car==//
				   	{
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
				   	ROW 8://==car==//
				   	{
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
				   	ROW 9://==car==//
				   	{
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
				   	ROW 10://==car==//
				   	{
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
				   	ROW 11://==car==//
				   	{
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
				   	ROW 12://==car==//
				   	{
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
				   	ROW 13://==car==//
				   	{
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
				   	ROW 14://==car==//
				   	{
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
				   	ROW 15://==car==//
				   	{
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
				   	ROW 16://==car==//
				   	{
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
				   	    new SelectedVehicle = CreateVehicle(NWashington, x, y, z, a+90, -1, -1, -1);
				   	    LinkVehicleToInterior(SelectedVehicle, GetPlayerInterior(PID));
				   	}
				}
			}
		}
		ROW DIALOG_HOBO: //==Hobo Vehicles==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
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
				   	ROW 1://==car==//
				   	{
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
				   	ROW 2://==car==//
				   	{
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
		ROW DIALOG_BUSINESS: //==Hobo Vehicles==//
		{
  			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
  			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0://==car==//
				   	{
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
		ROW DIALOG_SKINMENU:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
  			{
  				SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
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
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 102);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 103);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 104);
					}
				}
		  	}
		}
//=================================BEACH======================================//
    	ROW DIALOG_SKINMENU+2:
		{
    		if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 138);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 139);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 140);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 145);
					}
					ROW 4:
					{
						SetPlayerSkin(PID, 146);
					}
					ROW 5:
					{
						SetPlayerSkin(PID, 154);
					}
					ROW 6:
					{
						SetPlayerSkin(PID, 251);
					}
					ROW 7:
					{
						SetPlayerSkin(PID, 92);
					}
					ROW 8:
					{
						SetPlayerSkin(PID, 97);
					}
				    ROW 9:
					{
						SetPlayerSkin(PID, 45);
					}
					ROW 10:
					{
						SetPlayerSkin(PID, 18);
					}
				}
			}
		}
//==================================BIKERS====================================//
		ROW DIALOG_SKINMENU+3:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 100);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 247);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 248);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 254);
					}
				}
			}
		}
//================================DANANG======================================//
		ROW DIALOG_SKINMENU+4:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 121);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 122);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 123);
					}
				}
			}
		}
//==================================FARM======================================//
		ROW DIALOG_SKINMENU+5:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 128);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 129);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 130);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 131);
					}
				    ROW 4:
					{
						SetPlayerSkin(PID, 132);
					}
					ROW 5:
					{
						SetPlayerSkin(PID, 133);
					}
					ROW 6:
					{
						SetPlayerSkin(PID, 196);
					}
					ROW 7:
					{
						SetPlayerSkin(PID, 197);
					}
					ROW 8:
					{
						SetPlayerSkin(PID, 198);
					}
					ROW 9:
					{
						SetPlayerSkin(PID, 199);
					}
					ROW 10:
					{
						SetPlayerSkin(PID, 31);
					}
					ROW 11:
					{
						SetPlayerSkin(PID, 32);
					}
					ROW 12:
					{
						SetPlayerSkin(PID, 33);
					}
					ROW 13:
					{
						SetPlayerSkin(PID, 34);
					}
					ROW 14:
					{
						SetPlayerSkin(PID, 157);
					}
					ROW 15:
					{
						SetPlayerSkin(PID, 158);
					}
					ROW 16:
					{
						SetPlayerSkin(PID, 159);
					}
					ROW 17:
					{
						SetPlayerSkin(PID, 160);
					}
					ROW 18:
					{
						SetPlayerSkin(PID, 161);
					}
					ROW 19:
					{
						SetPlayerSkin(PID, 162);
					}
					ROW 20:
					{
						SetPlayerSkin(PID, 200);
					}
					ROW 21:
					{
						SetPlayerSkin(PID, 201);
					}
					ROW 22:
					{
						SetPlayerSkin(PID, 202);
					}
				}
			}
		}
//===============================GIRL FRIENDS=================================//
		ROW DIALOG_SKINMENU+6:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 195);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 190);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 191);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 192);
					}
					ROW 4:
					{
						SetPlayerSkin(PID, 193);
					}
					ROW 5:
					{
						SetPlayerSkin(PID, 194);
					}
				}
			}
		}
//==================================GROOVE====================================//
		ROW DIALOG_SKINMENU+7:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 0);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 105);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 106);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 107);
					}
				}
			}
		}
//=================================MAFIA======================================//
		ROW DIALOG_SKINMENU+8:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 111);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 112);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 113);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 124);
					}
					ROW 4:
					{
						SetPlayerSkin(PID, 125);
					}
					ROW 5:
					{
						SetPlayerSkin(PID, 126);
					}
					ROW 6:
					{
						SetPlayerSkin(PID, 127);
					}
				}
			}
		}
//=====================================NEW====================================//
		ROW DIALOG_SKINMENU+9:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 265);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 266);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 267);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 268);
					}
					ROW 4:
					{
						SetPlayerSkin(PID, 269);
					}
					ROW 5:
					{
						SetPlayerSkin(PID, 270);
					}
					ROW 6:
					{
						SetPlayerSkin(PID, 271);
					}
					ROW 7:
					{
						SetPlayerSkin(PID, 272);
					}
				}
			}
		}
//================================NORMAL PEDS=================================//
		ROW DIALOG_SKINMENU+10:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 10);
					}
					ROW 1:
					{
						SetPlayerSkin(PID,101);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 12);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 13);
					}
					ROW 4:
					{
						SetPlayerSkin(PID, 14);
					}
					ROW 5:
					{
						SetPlayerSkin(PID,143);
					}
					ROW 6:
					{
						SetPlayerSkin(PID, 144);
					}
					ROW 7:
					{
						SetPlayerSkin(PID, 17);
					}
					ROW 8:
					{
						SetPlayerSkin(PID, 170);
					}
					ROW 9:
					{
						SetPlayerSkin(PID, 180);
					}
					ROW 10:
					{
						SetPlayerSkin(PID, 184);
					}
					ROW 11:
					{
						SetPlayerSkin(PID, 75);
					}
				    ROW 12:
					{
						SetPlayerSkin(PID, 216);
					}
					ROW 13:
					{
						SetPlayerSkin(PID, 22);
					}
					ROW 14:
					{
						SetPlayerSkin(PID, 226);
					}
				}
			}
		}
//==================================OTHERS=====================================//
		ROW DIALOG_SKINMENU+11:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 134);
					}
					ROW 1:
					{
						SetPlayerSkin(PID,135);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 137);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 212);
					}
					ROW 4:
					{
						SetPlayerSkin(PID, 230);
					}
					ROW 5:
					{
						SetPlayerSkin(PID,29);
					}
					ROW 6:
					{
						SetPlayerSkin(PID, 82);
					}
					ROW 7:
					{
						SetPlayerSkin(PID, 83);
					}
					ROW 8:
					{
						SetPlayerSkin(PID, 84);
					}
					ROW 9:
					{
						SetPlayerSkin(PID, 255);
					}
					ROW 10:
					{
						SetPlayerSkin(PID, 61);
					}
					ROW 11:
					{
						SetPlayerSkin(PID, 253);
					}
				    ROW 12:
					{
						SetPlayerSkin(PID, 241);
					}
					ROW 13:
					{
						SetPlayerSkin(PID, 50);
					}
				}
			}
		}
//===============================PROFESSION===================================//
		ROW DIALOG_SKINMENU+12:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 11);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 141);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 147);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 148);
					}
				    ROW 4:
					{
						SetPlayerSkin(PID, 150);
					}
					ROW 5:
					{
						SetPlayerSkin(PID, 219);
					}
					ROW 6:
					{
						SetPlayerSkin(PID, 153);
					}
					ROW 7:
					{
						SetPlayerSkin(PID, 167);
					}
					ROW 8:
					{
						SetPlayerSkin(PID, 68);
					}
					ROW 9:
					{
						SetPlayerSkin(PID,171);
					}
					ROW 10:
					{
						SetPlayerSkin(PID, 176);
					}
					ROW 11:
					{
						SetPlayerSkin(PID, 177);
					}
					ROW 12:
					{
						SetPlayerSkin(PID, 179);
					}
					ROW 13:
					{
						SetPlayerSkin(PID, 187);
					}
					ROW 14:
					{
						SetPlayerSkin(PID, 204);
					}
					ROW 15:
					{
						SetPlayerSkin(PID, 155);
					}
					ROW 16:
					{
						SetPlayerSkin(PID, 205);
					}
					ROW 17:
					{
						SetPlayerSkin(PID, 211);
					}
					ROW 18:
					{
						SetPlayerSkin(PID, 217);
					}
					ROW 19:
					{
						SetPlayerSkin(PID, 260);
					}
					ROW 20:
					{
						SetPlayerSkin(PID, 16);
					}
					ROW 21:
					{
						SetPlayerSkin(PID, 27);
					}
					ROW 22:
					{
						SetPlayerSkin(PID, 264);
					}
					ROW 23:
					{
						SetPlayerSkin(PID, 70);
					}
				}
			}
		}
//===================================PUBLIC===================================//
		ROW DIALOG_SKINMENU+13:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 163);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 164);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 165);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 166);
					}
				    ROW 4:
					{
						SetPlayerSkin(PID, 274);
					}
					ROW 5:
					{
						SetPlayerSkin(PID, 275);
					}
					ROW 6:
					{
						SetPlayerSkin(PID, 276);
					}
					ROW 7:
					{
						SetPlayerSkin(PID, 277);
					}
					ROW 8:
					{
						SetPlayerSkin(PID, 278);
					}
					ROW 9:
					{
						SetPlayerSkin(PID, 279);
					}
					ROW 10:
					{
						SetPlayerSkin(PID, 280);
					}
					ROW 11:
					{
						SetPlayerSkin(PID, 281);
					}
					ROW 12:
					{
						SetPlayerSkin(PID, 282);
					}
					ROW 13:
					{
						SetPlayerSkin(PID, 283);
					}
					ROW 14:
					{
						SetPlayerSkin(PID, 288);
					}
					ROW 15:
					{
						SetPlayerSkin(PID, 284);
					}
					ROW 16:
					{
						SetPlayerSkin(PID, 285);
					}
					ROW 17:
					{
						SetPlayerSkin(PID, 286);
					}
					ROW 18:
					{
						SetPlayerSkin(PID, 287);
					}
				}
			}
		}
//====================================RIFA====================================//
 		ROW DIALOG_SKINMENU+14:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 173);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 174);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 175);
					}
				}
			}
		}
//==================================SPORTS====================================//
		ROW DIALOG_SKINMENU+15:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 258);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 259);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 26);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 51);
					}
				    ROW 4:
					{
						SetPlayerSkin(PID, 52);
					}
					ROW 5:
					{
						SetPlayerSkin(PID, 80);
					}
					ROW 6:
					{
						SetPlayerSkin(PID, 81);
					}
					ROW 7:
					{
						SetPlayerSkin(PID, 23);
					}
					ROW 8:
					{
						SetPlayerSkin(PID, 96);
					}
					ROW 9:
					{
						SetPlayerSkin(PID, 99);
					}
				}
			}
		}
//=================================TRIADS=====================================//
 		ROW DIALOG_SKINMENU+16:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 117);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 118);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 120);
					}
				}
			}
		}
//=====================================VLA====================================//
 		ROW DIALOG_SKINMENU+17:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 114);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 115);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 116);
					}
				}
			}
		}
//====================================VAGOS===================================//
 		ROW DIALOG_SKINMENU+18:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 108);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 109);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 110);
					}
				}
			}
		}
//==================================WHORES====================================//
 		ROW DIALOG_SKINMENU+19:
		{
			if(!ACCEPT) // If they clicked 'Cancel' or pressed esc
			{
				SPD(PID, DIALOG_SKINMENU, LISTBOX, "Skin Selection", "{BB0000}Ballas\n{BB0000}Beach\n{BB0000}Bikers\n{BB0000}DaNang\n{BB0000}Farm\n{BB0000}Girlfriends\n{BB0000}Groove\n{BB0000}Mafia\n{BB0000}New\n{BB0000}Normal Peds\n{BB0000}Others\n{BB0000}Profession\n{BB0000}Public Services\n{BB0000}Rifa\n{BB0000}Sports\n{BB0000}Triads\n{BB0000}VLA\n{BB0000}Vagos\n{BB0000}Whores","Select","Back");
			}
			else if(ACCEPT) //means if they clicked left button
			{
				switch(LI)
				{
					ROW 0:
					{
						SetPlayerSkin(PID, 152);
					}
					ROW 1:
					{
						SetPlayerSkin(PID, 207);
					}
					ROW 2:
					{
						SetPlayerSkin(PID, 245);
					}
					ROW 3:
					{
						SetPlayerSkin(PID, 246);
					}
					ROW 4:
					{
						SetPlayerSkin(PID, 178);
					}
				}
			}
		}
	}
	return 1;
}

Y:store(PID, PAR[],HLP)
{
	SPD(PID, DIALOG_STORE, LISTBOX, "Store Items","{BB0000}Guns\n{BB0000}Armor\n{BB0000}Cars\n{BB0000}Skins", "Select", "Cancel");
	return 1;
}

Y:storehelp(PID, PAR[],HLP)
{
    SPD(PID, DIALOG_STOREHELP, MSGBOX, "Store Help","{BB0000}(/store)\nYou can purchase any of the following.\n-Guns\n-Armor\n-Cars\n-Skins", "Okay","");
    return 1;
}
