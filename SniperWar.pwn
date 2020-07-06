/*The creator of this Gamemode is NinjahZ
Credits to NinjahZ for NEasyScript //Just making code shorter :P
Credits to Y_Less For YSI,SSCANF,Foreach,YCMD's
Credits to SA:MP For A_Samp etc
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

      #######
    /       ###              #
   /         ##             ###
   ##        #               #
    ###
   ## ###      ###  /###    ##        /###     /##  ###  /###
    ### ###     ###/ ####    ##      / ###  / / ###  ###/ #### /
      ### ###    ##   ###    ##     /   ###/ /   ###  ##   ###/
        ### /##  ##    ##    ##    ##    ## ##    ### ##
          #/ /## ##    ##    ##    ##    ## ########  ##
           #/ ## ##    ##    ##    ##    ## #######   ##
            # /  ##    ##    ##    ##    ## ##        ##
  /##        /   ##    ##    ##    ##    ## ####    / ##
 /  ########/    ###   ###   ### / #######   ######/  ###
/     #####       ###   ###   ##/  ######     #####    ###
|                                  ##
 \)                                ##
                                   ##
                                    ##

     ##### /    ##   ###
  ######  /  #####    ###
 /#   /  /     #####   ###
/    /  ##     # ##      ##
    /  ###     #         ##
   ##   ##     #         ##    /###   ###  /###
   ##   ##     #         ##   / ###  / ###/ #### /
   ##   ##     #         ##  /   ###/   ##   ###/
   ##   ##     #         ## ##    ##    ##
   ##   ##     #         ## ##    ##    ##
    ##  ##     #         ## ##    ##    ##
     ## #      #         /  ##    ##    ##
      ###      /##      /   ##    /#    ##
       #######/ #######/     ####/ ##   ###
         ####     ####        ###   ##   ###



                                     ____    _     __     _    ____
                                     |####`--|#|---|##|---|#|--'##|#|
   _                                 |____,--|#|---|##|---|#|--.__|_|
 _|#)_____________________________________,--'EEEEEEEEEEEEEE'_=-.
((_____((_________________________,--------[JW](___(____(____(_==)        _________
                               .--|##,----o  o  o  o  o  o  o__|/`---,-,-'=========`=+==.
                               |##|_Y__,__.-._,__,  __,-.___/ J \ .----.#############|##|
                               |##|              `-.|#|##|#|`===l##\   _\############|##|
                              =======-===l          |_|__|_|     \##`-"__,=======.###|##|
                                                                  \__,"          '======'
*/
//==============================================================================
//==============================================================================
//==============================================================================
#include                    <NinjahZ\NEasyScript>
//==============================================================================
//==============================================================================
//==============================================================================
#define 					DIALOG_REGISTER 			1
#define 					DIALOG_LOGIN 				2
#define 					DIALOG_SUCCESS_1 			3
#define 					DIALOG_SUCCESS_2 			4
#define                     DIALOG_SHOP             	5
#define                     DIALOG_TEAMS            	6
#define                     RULES_MENU              	7
#define                     HELP_MENU               	8
#define                     HELP_MENUa1               	9
#define                     HELP_MENUa2               	10
#define                     HELP_MENUa3               	11
#define                     HELP_MENUa4               	12
#define                     HELP_MENUa5               	13
#define                     DIALOG_A_RULES          	14
#define                     DIALOG_D_RULES          	15
#define                     RULES_ACCEPT            	16
#define                     DIALOG_FIRSTSTART_PACKAGE 	17//Find a use for this
#define                     DIALOG_D_LOGIN              18
//==============================================================================
//==============================================================================
//==============================================================================
#define 					Z 						Website Not Defined!
#define 					X 						Sniper War
#define 					GameMode 				"Sniper War"
#define 					PATH 					"/Sniper Wars/Users/%s.ini"
#define 					RGBToHex(%0,%1,%2,%3) %0 << 24 | %1 << 16 | %2 << 8 | %3
#define 					MAX_PING 				1000
#define	 					MAX_FLOODLINES 			12
#define 					MAX_FLOOD_RATE_SECS 	5000
#define 					DELAY 					5
//==============================================================================
//==============================================================================
//==============================================================================
#define 					TEAM_BLUE 				0
#define						TEAM_RED 				1
#define                     TEAM_NONE               2
#define 					TEAM_BLUE_COLOR 		0x0077BB00
#define 					TEAM_RED_COLOR 			0xFF0000FF
#define 					TEAM_ZONE_BLUE_COLOR 	0x9400D3AA //BLUE
#define 					TEAM_ZONE_RED_COLOR 	0xFFFF00FF //RED
//==============================================================================
//==============================================================================
//==============================================================================
#define COLOR_NICEGREEN      			0x6EF83CFF
#define COLOR_NICERED        			0xFF0606FF
#define COLOR_EASY           			0xFFF1AFFF
#define COLOR_YELLOW2        			0xDAE368FF
#define COLOR_BYELLOW        			0xFFFF80FF
#define COLOR_MARONE         			0xA90202FF
#define COLOR_CMD            			0xB8FF02FF
#define COLOR_PARAM          			0x3FCD02FF
#define COLOR_SERVER         			0xAFE7FFFF
#define COLOR_VALUE          			0xA3E4FFFF
#define COLOR_RULE           			0xF9E8B7FF
#define COLOR_RULE2          			0xFBDF89FF
#define COLOR_RWHITE         			0xFFFFFFFF
#define COLOR_LGREEN         			0xC9FFABFF
#define COLOR_LRED           			0xFFA1A1FF
#define COLOR_LRED2          			0xC77D87FF
#define COLOR_LBLUE          			0x00A5FFFF
#define COLOR_GRAD2          			0xBFC0C2FF
#define COLOR_REALRED        			0xFF0606FF
#define COLOR_FADE1 		 			0xE6E6E6E6
#define COLOR_FADE2 		 			0xC8C8C8C8
#define COLOR_FADE3 		 			0xAAAAAAAA
#define COLOR_FADE4 		 			0x8C8C8C8C
#define COLOR_FADE5 		 			0x6E6E6E6E
#define COLOR_GREY 						0xAFAFAFAA
#define COLOR_MAGENTA 					0xFF00FFFF
#define COLOR_FLBLUE 					0x6495EDAA
#define COLOR_BROWN 					0XA52A2AAA
#define COLOR_CORAL 					0xFF7F50AA
#define COLOR_MEDIUMAQUA 				0x83BFBFAA
#define COLOR_MEDIUMMAGENTA 			0x8B008BAA
#define COLOR_GREY 						0xAFAFAFAA
#define COLOR_ACTIVEBORDER 				0xB4B4B4FF
#define COLOR_ACTIVECAPTION 			0x99B4D1FF
#define COLOR_ACTIVECAPTIONTEXT 		0x000000FF
#define COLOR_ALICEBLUE 				0xF0F8FFFF
#define COLOR_ANTIQUEWHITE 				0xFAEBD7FF
#define COLOR_APPWORKSPACE 				0xABABABFF
#define COLOR_AQUA 						0x00FFFFFF
#define COLOR_AQUAMARINE 				0x7FFFD4FF
#define COLOR_AZURE 					0xF0FFFFFF
#define COLOR_BISQUE 					0xFFE4C4FF
#define COLOR_BLACK 					0x000000FF
#define COLOR_BLANCHEDALMOND 			0xFFEBCDFF
#define COLOR_BLUE 						0x0000FFFF
#define COLOR_BURLYWOOD 				0xDEB887FF
#define COLOR_BUTTONFACE 				0xF0F0F0FF
#define COLOR_BUTTONSHADOW 				0xA0A0A0FF
#define COLOR_CADETBLUE 				0x5F9EA0FF
#define COLOR_CHARTREUSE 				0x7FFF00FF
#define COLOR_CONTROL 					0xF0F0F0FF
#define COLOR_CONTROLDARK 				0xA0A0A0FF
#define COLOR_CONTROLDARKDARK 			0x696969FF
#define COLOR_CONTROLLIGHT 				0xE3E3E3FF
#define COLOR_CONTROLLIGHTLIGHT 		0xFFFFFFFF
#define COLOR_CONTROLTEXT 				0x000000FF
#define COLOR_CORNFLOWERBLUE 			0x6495EDFF
#define COLOR_CORNSILK 					0xFFF8DCFF
#define COLOR_CRIMSON 					0xDC143CFF
#define COLOR_CYAN 						0x00FFFFFF
#define COLOR_DARKBLUE 					0x00008BFF
#define COLOR_DARKCYAN 					0x008B8BFF
#define COLOR_DARKGOLDENROD 			0xB8860BFF
#define COLOR_DARKGRAY 					0xA9A9A9FF
#define COLOR_DARKKHAKI 				0xBDB76BFF
#define COLOR_DARKMAGENTA 				0x8B008BFF
#define COLOR_DARKOLIVEGREEN 			0x556B2FFF
#define COLOR_DARKORCHID 				0x9932CCFF
#define COLOR_DARKRED 					0x8B0000FF
#define COLOR_DARKSALMON 				0xE9967AFF
#define COLOR_DARKSEAGREEN 				0x8FBC8BFF
#define COLOR_DARKSLATEBLUE 			0x483D8BFF
#define COLOR_DARKSLATEGRAY 			0x2F4F4FFF
#define COLOR_DARKTURQUOISE 			0x00CED1FF
#define COLOR_DARKVIOLET 				0x9400D3FF
#define COLOR_DEEPPINK 					0xFF1493FF
#define COLOR_DEEPSKYBLUE 				0x00BFFFFF
#define COLOR_DESKTOP 					0x000000FF
#define COLOR_DIMGRAY 					0x696969FF
#define COLOR_DODGERBLUE 				0x1E90FFFF
#define COLOR_FIREBRICK 				0xB22222FF
#define COLOR_FLORALWHITE 				0xFFFAF0FF
#define COLOR_FORESTGREEN 				0x228B22FF
#define COLOR_FUCHSIA 					0xFF00FFFF
#define COLOR_GAINSBORO 				0xDCDCDCFF
#define COLOR_GHOSTWHITE 				0xF8F8FFFF
#define COLOR_GOLD 						0xFFD700FF
#define COLOR_GOLDENROD 				0xDAA520FF
#define COLOR_GRADIENTACTIVECAPTION 	0xB9D1EAFF
#define COLOR_GRADIENTINACTIVECAPTION 	0xD7E4F2FF
#define COLOR_GRAY 						0x808080FF
#define COLOR_GRAYTEXT 					0x808080FF
#define COLOR_GREEN 					0x008000FF
#define COLOR_GREENYELLOW 				0xADFF2FFF
#define COLOR_HIGHLIGHT 				0x3399FFFF
#define COLOR_HIGHLIGHTTEXT 			0xFFFFFFFF
#define COLOR_HONEYDEW 					0xF0FFF0FF
#define COLOR_HOTTRACK 					0x0066CCFF
#define COLOR_INACTIVEBORDER 			0xF4F7FCFF
#define COLOR_INACTIVECAPTION 			0xBFCDDBFF
#define COLOR_INACTIVECAPTIONTEXT 		0x434E54FF
#define COLOR_INDIANRED 				0xCD5C5CFF
#define COLOR_INDIGO 					0x4B0082FF
#define COLOR_INFO 						0xFFFFE1FF
#define COLOR_INFOTEXT 					0x000000FF
#define COLOR_IVORY 					0xFFFFF0FF
#define COLOR_KHAKI 					0xF0E68CFF
#define COLOR_LAVENDER 					0xE6E6FAFF
#define COLOR_LAVENDERBLUSH 			0xFFF0F5FF
#define COLOR_LAWNGREEN 				0x7CFC00FF
#define COLOR_LEMONCHIFFON 				0xFFFACDFF
#define COLOR_LIGHTBLUE 				0xADD8E6FF
#define COLOR_LIGHTCORAL 				0xF08080FF
#define COLOR_LIGHTCYAN 				0xE0FFFFFF
#define COLOR_LIGHTGOLDENRODYELLOW 		0xFAFAD2FF
#define COLOR_LIGHTGRAY 				0xD3D3D3FF
#define COLOR_LIGHTGREEN 				0x90EE90FF
#define COLOR_LIGHTPINK 				0xFFB6C1FF
#define COLOR_LIGHTSALMON 				0xFFA07AFF
#define COLOR_LIGHTSEAGREEN 			0x20B2AAFF
#define COLOR_LIGHTSKYBLUE 				0x87CEFAFF
#define COLOR_LIGHTSLATEGRAY 			0x778899FF
#define COLOR_LIGHTSTEELBLUE 			0xB0C4DEFF
#define COLOR_LIGHTYELLOW 				0xFFFFE0FF
#define COLOR_LIME 						0x00FF00FF
#define COLOR_LIMEGREEN 				0x32CD32FF
#define COLOR_LINEN 					0xFAF0E6FF
#define COLOR_MAGENTA 					0xFF00FFFF
#define COLOR_MAROON 					0x800000FF
#define COLOR_MEDIUMAQUAMARINE 			0x66CDAAFF
#define COLOR_MEDIUMBLUE 				0x0000CDFF
#define COLOR_MEDIUMORCHID 				0xBA55D3FF
#define COLOR_MEDIUMPURPLE 				0x9370DBFF
#define COLOR_MEDIUMSEAGREEN 			0x3CB371FF
#define COLOR_MEDIUMSLATEBLUE 			0x7B68EEFF
#define COLOR_MEDIUMSPRINGGREEN 		0x00FA9AFF
#define COLOR_MEDIUMTURQUOISE 			0x48D1CCFF
#define COLOR_MEDIUMVIOLETRED 			0xC71585FF
#define COLOR_MENU 						0xF0F0F0FF
#define COLOR_MENUBAR 					0xF0F0F0FF
#define COLOR_MENUHIGHLIGHT 			0x3399FFFF
#define COLOR_MENUTEXT 					0x000000FF
#define COLOR_MIDNIGHTBLUE 				0x191970FF
#define COLOR_MINTCREAM 				0xF5FFFAFF
#define COLOR_MISTYROSE 				0xFFE4E1FF
#define COLOR_MOCCASIN 					0xFFE4B5FF
#define COLOR_NAVAJOWHITE 				0xFFDEADFF
#define COLOR_NAVY 						0x000080FF
#define COLOR_OLDLACE 					0xFDF5E6FF
#define COLOR_OLIVE 					0x808000FF
#define COLOR_OLIVEDRAB 				0x6B8E23FF
#define COLOR_ORANGE 					0xFFA500FF
#define COLOR_ORANGERED 				0xFF4500FF
#define COLOR_ORCHID 					0xDA70D6FF
#define COLOR_PALEGOLDENROD 			0xEEE8AAFF
#define COLOR_PALEGREEN 				0x98FB98FF
#define COLOR_PALETURQUOISE 			0xAFEEEEFF
#define COLOR_PALEVIOLETRED 			0xDB7093FF
#define COLOR_PAPAYAWHIP 				0xFFEFD5FF
#define COLOR_PEACHPUFF 				0xFFDAB9FF
#define COLOR_PERU 						0xCD853FFF
#define COLOR_PINK 						0xFFC0CBFF
#define COLOR_PLUM 						0xDDA0DDFF
#define COLOR_POWDERBLUE 				0xB0E0E6FF
#define COLOR_PURPLE 					0x800080FF
#define COLOR_RED 						0xFF0000FF
#define COLOR_ROSYBROWN 				0xBC8F8FFF
#define COLOR_ROYALBLUE 				0x4169E1FF
#define COLOR_SADDLEBROWN 				0x8B4513FF
#define COLOR_SALMON 					0xFA8072FF
#define COLOR_SANDYBROWN 				0xF4A460FF
#define COLOR_SCROLLBAR 				0xC8C8C8FF
#define COLOR_SEAGREEN 					0x2E8B57FF
#define COLOR_SEASHELL 					0xFFF5EEFF
#define COLOR_SIENNA 					0xA0522DFF
#define COLOR_SILVER 					0xC0C0C0FF
#define COLOR_SKYBLUE 					0x87CEEBFF
#define COLOR_SLATEBLUE 				0x6A5ACDFF
#define COLOR_SLATEGRAY 				0x708090FF
#define COLOR_SNOW 						0xFFFAFAFF
#define COLOR_SPRINGGREEN 				0x00FF7FFF
#define COLOR_STEELBLUE 				0x4682B4FF
#define COLOR_TAN 						0xD2B48CFF
#define COLOR_TEAL 						0x008080FF
#define COLOR_THISTLE 					0xD8BFD8FF
#define COLOR_TOMATO 					0xFF6347FF
#define COLOR_TRANSPARENT 				0xFFFFFF00
#define COLOR_TURQUOISE 				0x40E0D0FF
#define COLOR_VIOLET 					0xEE82EEFF
#define COLOR_WHEAT 					0xF5DEB3FF
#define COLOR_WHITE 					0xFFFFFFFF
#define COLOR_WHITESMOKE 				0xF5F5F5FF
#define COLOR_WINDOW 					0xFFFFFFFF
#define COLOR_WINDOWFRAME 				0x646464FF
#define COLOR_WINDOWTEXT 				0x000000FF
#define COLOR_YELLOW 					0xFFFF00FF
#define COLOR_YELLOWGREEN 				0x9ACD32FF
#define STEALTH_ORANGE 					0xFF880000
#define STEALTH_OLIVE 					0x66660000
#define STEALTH_GREEN 					0x33DD1100
#define STEALTH_PINK 					0xFF22EE00
#define STEALTH_BLUE 					0x0077BB00
#define COL_NICEGREEN      				"{6EF83C}"
#define COL_NICERED        				"{FF0606}"
#define COL_GREY           				"{AFAFAF}"
#define COL_ORANGE         				"{FFAF00}"
#define COL_EASY           				"{FFF1AF}"
#define COL_WHITE         	 			"{FFFFFF}"
#define COL_BLACK          				"{0E0101}"
#define COL_RED            				"{A80000}"
#define COL_YELLOW         				"{F3FF02}"
#define COL_YELLOW2        				"{DAE368}"
#define COL_BYELLOW        				"{FFFF80}"
#define COL_LIME           				"{B7FF00}"
#define COL_CYAN           				"{00FFEE}"
#define COL_LIGHTBLUE      				"{00C0FF}"
#define COL_BLUE           				"{0049FF}"
#define COL_MAGENTA        				"{F300FF}"
#define COL_VIOLET         				"{B700FF}"
#define COL_PINK           				"{FF00EA}"
#define COL_MARONE         				"{A90202}"
#define COL_CMD            				"{B8FF02}"
#define COL_PARAM          				"{3FCD02}"
#define COL_SERVER         				"{AFE7FF}"
#define COL_VALUE          				"{A3E4FF}"
#define COL_RULE           				"{F9E8B7}"
#define COL_RULE2          				"{FBDF89}"
#define COL_RWHITE         				"{FFFFFF}"
#define COL_LGREEN         				"{C9FFAB}"
#define COL_LRED           				"{FFA1A1}"
#define COL_LRED2          				"{C77D87}"
#define COL_GREEN          				"{00BC2E}"
#define COL_LBLUE          				"{00A5FF}"
#define COL_GRAD2          				"{BFC0C2}"
#define COL_REALRED        				"{FF0606}"
#define RED                       		0xAA3333AA
#define YELLOW                    		0xFFFF00AA
#define PURPLE                    		0x9370DBFF
//==============================================================================
//==============================================================================
//==============================================================================
new RandomMSG[][] =
{
    "Welcome To "#X"!",
    "Visit our website at "#Z"!",
    "Play fair and dont break the rules!",
    "Make sure to save us in FAVOURITES!",
    "Make sure to read all the (/rules) upon playing!"
};
new RedTeamZone;
new BlueTeamZone;
new Text: ServerName;
new gTeam[MAX_PLAYERS];
new Timer[MAX_PLAYERS];
new Streak[MAX_PLAYERS];
new FirstSpawn[MAX_PLAYERS];
new rconAttempts[MAX_PLAYERS];
new gPlayerClass[MAX_PLAYERS];
new FloodByPlayer[MAX_PLAYERS];
//==============================================================================
//==============================================================================
//==============================================================================
enum pInfo
{
    pPass[129],
    pVip,
    pMoney,
    pScore,
    pAdmin,
    pKills,
    pDeaths
}
new PlayerInfo[MAX_PLAYERS][pInfo];
//==============================================================================
//==============================================================================
//==============================================================================
stock UserPath(playerid)
{
    new string[128],playername[MAX_PLAYER_NAME];
    GetPlayerName(playerid,playername,sizeof(playername));
    format(string,sizeof(string),PATH,playername);
    return string;
}

stock udb_hash(buf[]) {
    new length=strlen(buf);
    new s1 = 1;
    new s2 = 0;
    new n;
    for (n=0; n<length; n++)
    {
       s1 = (s1 + buf[n]) % 65521;
       s2 = (s2 + s1)     % 65521;
    }
    return (s2 << 16) + s1;
}

stock SendTeamMessage(teamid, message[]) // This is a stock function, it pretty much allows you to use "SendTeamMessage(teamid, message[])"
{
    for(new i = 0; i < MAX_PLAYERS; i++) // This is a loop it loops through the total players that your server would allow.
    {
        if(IsPlayerConnected(i) && gTeam[i] == teamid) // This checks if the player is connected and if there team matches the teamid.
        {
            SendClientMessage(i, 0xFFFFFFFF, message); // This will send the message to the team.
        }
    }
    return 1;
}

stock Name(playerid)
{
    new name[24];
    GetPlayerName(playerid, name, 24);
    return name;
}

stock GivePlayerScore(playerid, score)
{
    SetPlayerScore(playerid, GetPlayerScore(playerid)+score);
    return 1;
}

stock KickWithMessage(playerid, color, message[])
{
    SendClientMessage(playerid, color, message);
    SetTimerEx("KickPublic", 1000, 0, "d", playerid); 	//Delay of 1 second before kicking the player so he recieves the message
}

stock GetTeamName(playerid)
{
	new str[66];
	if(gTeam[playerid] == TEAM_BLUE) str =  ("Blue Team");
	else if(gTeam[playerid] == TEAM_RED) str =  ("Red Team");
	return str;
}

stock GetName(playerid)
{
 	new pnameid[24];
 	GetPlayerName(playerid,pnameid,24);
 	return pnameid;
}

stock PlayerName(playerid)
{
    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));
    return name;
}

stock PlayerName2(playerid)
{
  	new name[255];
  	GetPlayerName(playerid, name, 255);
  	return name;
}

stock GetTeamCount(teamid)
{
    new playercount = 0;
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if(GetPlayerState(i) == PLAYER_STATE_NONE) continue;
        if(gTeam[i] != teamid) continue;
        playercount++;
    }
    return playercount;
}
//==============================================================================
//==============================================================================
//==============================================================================
forward LoadUser_data(playerid,name[],value[]);
public LoadUser_data(playerid,name[],value[])
{
    INI_Int("Password",PlayerInfo[playerid][pPass]);
    INI_Int("ViPLevel",PlayerInfo[playerid][pVip]);
    INI_Int("Money",PlayerInfo[playerid][pMoney]);
    INI_Int("Score",PlayerInfo[playerid][pScore]);
    INI_Int("AdminLevel",PlayerInfo[playerid][pAdmin]);
    INI_Int("Kills",PlayerInfo[playerid][pKills]);
    INI_Int("Deaths",PlayerInfo[playerid][pDeaths]);
    return 1;
}
//==============================================================================
//==============================================================================
//==============================================================================
main()
{
        print("====================\n");
        print("= Sniper War V:2.6 =\n");
        print("====================\n");
}

public OnGameModeInit()
{
    AddPlayerClass(176,2299.720458,-1822.533691,13.546875,0.899181,34,1,0,0,0,0);//Blue Team
    AddPlayerClass(19,2489.009765,-1551.414062,24.055065,90.223564,34,1,0,0,0,0);//Red Team
    ServerName = TextDrawCreate(5.0, 431.0, "NinjahZ Sniper-War TeamDeathmatch v2.6");
	TextDrawUseBox(ServerName, false);
    RedTeamZone = GangZoneCreate(2417.757, -1733.182, 2520.434, -1638.437);
    BlueTeamZone = GangZoneCreate(2113.53, -1725.287, 2174.376, -1638.437);
    ShowNameTags(1);
	ShowPlayerMarkers(0);
	UsePlayerPedAnims();
    DisableInteriorEnterExits();
    SetTimer("SendMSG", 1000*60*2, true);
	SetGameModeText("Sniper War V:2.6");
}

public OnGameModeExit()
{
    return 1;
}

public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid,COLOR_RED, "Welcome to Sniper War");
    SendClientMessage(playerid, COLOR_RED,"Gamemode Scripted by NinjahZ");
    TextDrawShowForPlayer(playerid, ServerName);
    Streak[playerid] = 0;
    if(fexist(UserPath(playerid)))
    {
        INI_ParseFile(UserPath(playerid), "LoadUser_%s", .bExtra = true, .extra = playerid);
        ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD,""COL_BLUE"Login",""COL_LIGHTBLUE"Welcome Back %d\nThis name is Registered already\nType your password below to login.","Login","Quit");
    }
    else
    {
        ShowPlayerDialog(playerid, DIALOG_REGISTER, DIALOG_STYLE_PASSWORD,""COL_BLUE"Register",""COL_LIGHTBLUE"Type your password below to register a new account.","Register","Quit");
    }
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    Streak[playerid] = 0;
    TextDrawHideForPlayer(playerid, ServerName);
	printf("OnPlayerDisconnect(%d has left the server[leaving])", playerid);
    new INI:File = INI_Open(UserPath(playerid));
 	INI_SetTag(File,"Player Data");
    INI_WriteInt(File,"ViPLevel",PlayerInfo[playerid][pVip]);
    INI_WriteInt(File,"Money",PlayerInfo[playerid][pMoney]);
    INI_WriteInt(File,"Score",PlayerInfo[playerid][pScore]);
    INI_WriteInt(File,"AdminLevel",PlayerInfo[playerid][pAdmin]);
    INI_WriteInt(File,"Kills",PlayerInfo[playerid][pKills]);
    INI_WriteInt(File,"Deaths",PlayerInfo[playerid][pDeaths]);
    INI_Close(File);
    KillTimer(Timer[playerid]);
    return 1;
}

public OnPlayerUnfairPlay(playerid, playType)
{
    switch(playType)
    {
        case FP_HIGH_PING:
        {
        }

        case FP_WEAPON_HACK:
        {
        }

        case FP_VEHICLE_SPEED_HACK:
        {
        }

        case FP_JETPACK_HACK:
        {
        }

        case FP_SWEARING:
        {
        }

        case FP_FLY_HACK:
        {
        }

        case FP_CHAT_SPAM:
        {
        }

        case FP_AFK:
        {
        }

        case FP_TABBING:
        {
        }

        case FP_NINJA_JACK:
        {
        }

        case FP_CAR_RAM:
        {
        }

        case FP_HELIBLADE:
        {
        }

        case FP_VEHICLE_MOD_HACK:
        {
        }

        case FP_SERVER_AD:
        {
        }

        case FP_FAKE_KILL:
        {
        }

        case FP_TELEPORT_HACK:
        {
        }
    }
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    GivePlayerMoney(playerid, PlayerInfo[playerid][pMoney]);
    GivePlayerScore(playerid, PlayerInfo[playerid][pScore]);
    SetPlayerPos(playerid,220.3261,1822.9734,7.5368);
	SetPlayerCameraLookAt(playerid,220.3261,1822.9734,7.5368);
	SetPlayerCameraPos(playerid,226.7491,1823.0441,7.4141);
	SetPlayerFacingAngle(playerid, 270 );
	ApplyAnimation(playerid,"SNIPER","WEAPON_sniper",4.0,1,0,0,0,-1);
	ApplyAnimation(playerid,"RIFLE","RIFLE_fire",4.0,1,0,0,0,-1);
	CreateExplosion(212.9525,1822.9084,6.4141, 11, 10.0);

 	switch(classid)
	{
 		case 0:
 		{
	 		SetPlayerTeam( playerid, TEAM_BLUE );
		 	gTeam[playerid] = TEAM_BLUE;
    		SetPlayerSkin(playerid, 176);
   		 	GameTextForPlayer(playerid,"~b~Blue Team",2000,4);
		 	SetPlayerColor(playerid, TEAM_BLUE_COLOR);
 		}
		case 1:
	 	{
 	 		SetPlayerTeam( playerid, TEAM_RED );
		 	gTeam[playerid] = TEAM_RED;
  	 		SetPlayerSkin(playerid, 19);
   		 	GameTextForPlayer(playerid,"~r~Red Team",2000,4);
		 	SetPlayerColor(playerid, TEAM_RED_COLOR);

        		 }
	}
	return 1;
}

public OnPlayerSpawn(playerid)
{
    RemoveBuildingForPlayer(playerid, 3695, 2239.9297, -1790.6953, 17.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 3695, 2282.9922, -1790.6953, 17.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 3695, 2314.8203, -1790.6953, 17.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 3695, 2352.7188, -1790.6953, 17.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 3695, 2387.8203, -1790.6953, 17.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 2220.4375, -1777.2734, 16.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2229.0469, -1810.0313, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2226.1641, -1807.3281, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2226.1641, -1801.8672, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2230.4141, -1815.1484, 11.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2234.4844, -1817.9297, 12.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2226.1641, -1791.0000, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2226.1641, -1796.4531, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 3584, 2239.9297, -1790.6953, 17.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2226.1641, -1775.5078, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2226.1641, -1780.9844, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2228.6719, -1767.2734, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2226.1641, -1770.0469, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1307, 2232.5156, -1766.0547, 12.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 1307, 2249.8672, -1815.4141, 12.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 669, 2254.7266, -1827.4375, 12.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 2259.9453, -1796.0703, 16.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2258.3438, -1804.7422, 12.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2259.2656, -1773.2422, 11.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 17886, 2264.0391, -1789.2578, 20.7734, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2265.2969, -1791.0000, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2265.2969, -1796.4531, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2265.2969, -1807.3281, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2265.2969, -1801.8672, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2265.2969, -1770.0469, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2265.2969, -1775.5078, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2265.2969, -1780.9844, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2275.3906, -1820.7266, 12.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2268.1875, -1810.0313, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2273.6953, -1810.0313, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 3584, 2282.9922, -1790.6953, 17.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2267.8125, -1767.2734, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2273.3359, -1767.3438, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2271.6484, -1772.3984, 8.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2285.7578, -1762.1250, 12.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 2297.8984, -1793.8203, 16.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2297.3828, -1798.5391, 8.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1307, 2293.6250, -1760.6172, 12.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2297.1484, -1775.8750, 8.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2305.0625, -1810.0313, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2302.1719, -1807.3281, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2302.1719, -1801.8672, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2302.1719, -1791.0000, 13.1563, 0.25);
 	RemoveBuildingForPlayer(playerid, 1408, 2302.1719, -1796.4531, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 3584, 2314.8203, -1790.6953, 17.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2302.1719, -1775.5078, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2302.1719, -1770.0469, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2302.1719, -1780.9844, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2304.7813, -1767.3828, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1307, 2322.6484, -1815.4141, 12.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2332.8281, -1817.7109, 12.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2341.7578, -1810.0313, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2338.8672, -1807.3281, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2341.7578, -1817.7266, 8.3594, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2338.8672, -1801.8672, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 2335.6484, -1796.6328, 16.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2338.8672, -1791.0000, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2338.8672, -1796.4531, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2334.7109, -1785.0625, 12.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2338.8672, -1775.5078, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2338.8672, -1780.9844, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 17887, 2343.6094, -1784.5078, 20.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2338.8672, -1770.0469, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2341.3828, -1767.2734, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 669, 2329.1875, -1765.5234, 12.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2349.6172, -1763.3438, 11.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 3584, 2352.7188, -1790.6953, 17.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2367.6484, -1802.7969, 8.3594, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2367.6484, -1780.7734, 11.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2374.1016, -1800.4688, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2374.1016, -1805.9297, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2374.1016, -1780.9844, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2374.1016, -1789.6016, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2374.1016, -1795.0547, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2376.6172, -1767.2734, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2374.1016, -1770.0469, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1408, 2374.1016, -1775.5078, 13.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 3584, 2387.8203, -1790.6953, 17.0078, 0.25);
    if(gPlayerClass[playerid] == TEAM_BLUE)
    {
        TogglePlayerControllable(playerid, 1);
        ResetPlayerWeapons(playerid);
        GivePlayerWeapon(playerid, 34, 80);
    }
    else if(gPlayerClass[playerid] == TEAM_RED)
    {
        TogglePlayerControllable(playerid, 1);
        ResetPlayerWeapons(playerid);
        GivePlayerWeapon(playerid, 34, 80);
    }
    if(FirstSpawn[playerid] == 1)
	{
		SendClientMessage(playerid, -1,"Please select your Free Package");
		FirstSpawn[playerid] = 0;
		ShowPlayerDialog(playerid, DIALOG_FIRSTSTART_PACKAGE, DIALOG_STYLE_LIST,"{6EF83C}Choose A Package:", "{56C0DC}Full Armour\n{56C0DC}$10,000\n{56C0DC}Double Ammo", "Choose","");
	}
    ShowPlayerDialog(playerid, RULES_ACCEPT, DIALOG_STYLE_MSGBOX, "Read & Accept or get Kicked!", "No Buying Guns From Ammunation (AutoBan)\nNo Hacking\nNo AimBot\nNo Glitching\nNo Advertising\nNo asking for Admin\nNo Spawn Killing\nNo Money Farming\nNo Spamming\nMost of all >> DO NOT ANNOY THE ADMINS!", "Accept","Leave Server");
	GangZoneShowForPlayer(playerid,RedTeamZone, 0xFF000096);
	GangZoneShowForPlayer(playerid,BlueTeamZone, 0x0000FF96);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
    if(gTeam[killerid] == gTeam[playerid])
    {
        SendClientMessage(killerid, COLOR_RED, "You have killed a teammate, resulting a loss of $1000 and 4 score.");
        PlayerInfo[killerid][pMoney] -= 0;
        SetPlayerScore(killerid, PlayerInfo[killerid][pScore] - 0);
    }
    else if(gTeam[killerid] != gTeam[playerid])
    {
        PlayerInfo[playerid][pMoney] -=100;
        PlayerInfo[killerid][pMoney] +=100;
        SetPlayerScore(playerid, PlayerInfo[playerid][pScore]-0);
        SetPlayerScore(killerid, PlayerInfo[killerid][pScore]+1);
    }
    SendDeathMessage(killerid, playerid, reason);
    Streak[playerid] = 0;
  	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
    if(!success)
    {
        new playersIP[17], playerid;
        for(; playerid < MAX_PLAYERS; playerid++)
        {
            GetPlayerIp(playerid, playersIP, 17);
            if(!strcmp(ip, playersIP))
            {
                break;
            }
        }
        rconAttempts[playerid]++;
        if(rconAttempts[playerid] >= 2)
        {
            Ban(playerid);
        }
    }
    return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch( dialogid )
    {
        case DIALOG_REGISTER:
        {
            if (!response) return Kick(playerid);
            if(response)
            {
                if(!strlen(inputtext)) return ShowPlayerDialog(playerid, DIALOG_REGISTER, DIALOG_STYLE_INPUT, ""COL_WHITE"Error",""COL_RED"You have entered an invalid password.\n"COL_WHITE"Type your password below to register a new account.","Register","Quit");
                new INI:File = INI_Open(UserPath(playerid));
                INI_SetTag(File,"Player Data");
                INI_WriteInt(File,"Password",udb_hash(inputtext));
                INI_WriteInt(File,"ViPLevel",0);
                INI_WriteInt(File,"Money",0);
                INI_WriteInt(File,"Score",0);
                INI_WriteInt(File,"AdminLevel",0);
                INI_WriteInt(File,"Kills",0);
                INI_WriteInt(File,"Deaths",0);
                INI_Close(File);
            }
        }

        case DIALOG_LOGIN:
        {
            if(!response)
			{
				Kick(playerid);
				ShowPlayerDialog(playerid,DIALOG_D_LOGIN, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Kicked***",""COL_LIGHTBLUE"You have been Kicked because you decided not to Login","Ok","");
			}
            if(response)
            {
                if(udb_hash(inputtext) == PlayerInfo[playerid][pPass])
                {
                    INI_ParseFile(UserPath(playerid), "LoadUser_%s", .bExtra = true, .extra = playerid);
                    ShowPlayerDialog(playerid, DIALOG_SUCCESS_2, DIALOG_STYLE_MSGBOX,""COL_BLUE"Success!",""COL_LIGHTBLUE"You have successfully logged in!","Ok","");
                }
                else
                {
                    ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_INPUT,""COL_BLUE"Login",""COL_LIGHTBLUE"You have entered an incorrect password.\n"COL_WHITE"Type your password below to login.","Login","Quit");
                }
                return 1;
            }
        }
	}
	
   	switch( listitem )
   	{
		case DIALOG_TEAMS:
        {
        	if ( !response ) return Kick ( playerid );
      	 	if(response)
			{
				if(listitem == 0)
				{
				    SetPlayerTeam( playerid, TEAM_BLUE );
	   				gTeam[playerid] = TEAM_BLUE;
	             	SetPlayerSkin(playerid, 176);
        		 	GameTextForPlayer(playerid,"~b~Blue Team",2000,4);
    			 	SetPlayerColor(playerid, TEAM_BLUE_COLOR);
      		 	}
 				if(listitem == 1)
				{
    				SetPlayerTeam( playerid, TEAM_RED );
				 	gTeam[playerid] = TEAM_RED;
            	 	SetPlayerSkin(playerid, 19);
        		 	GameTextForPlayer(playerid,"~r~Red Team",2000,4);
     			 	SetPlayerColor(playerid, TEAM_RED_COLOR);
				}
			}
      	}
	}
	switch( listitem )
   	{
	   	case DIALOG_SHOP:
   		{
    		if ( !response ) return SendClientMessage(playerid, -1, "You exited the Shop Menu!");
      	 	if(response)
			{
		 		if(listitem == 0)
				{
				    if(GetPlayerMoney(playerid) > 999)
					{
						GivePlayerMoney(playerid, -1000);
						GivePlayerWeapon(playerid, 34,80);
						SendClientMessage(playerid, -1, "You Have Bought 80 Shell's of Sniper Ammo");
					}
					else
					{
						SendClientMessage(playerid, -1, "ERROR: You Don't Have Enough Money To Buy A Sniper!");
					}
				}
 		 		if(listitem == 1)
				{
				    if(GetPlayerMoney(playerid) > 499)
					{
						SetPlayerArmour(playerid,100.00);
						GivePlayerMoney(playerid, -500);
						SendClientMessage(playerid, -1, "You Have Brought Full Armor");
					}
					else
					{
						SendClientMessage(playerid, -1, "ERROR: You Don't Have Enough Money To Buy Armor!");
					}
				}
				return 1;
			}
      	}
	}
	return 1;
}

forward FloodCheck(playerid);
public FloodCheck(playerid)
{
    if(FloodByPlayer[playerid] >= MAX_FLOODLINES)
    {
        GameTextForPlayer(playerid, "~g~Dont Spam !", 3000, 3);
    }
    else FloodByPlayer[playerid] = 0;
    return 1;
}

forward KickPublic(playerid);
public KickPublic(playerid) { Kick(playerid); }

forward spawnkill(playerid);
public spawnkill(playerid)
{
	SetPlayerHealth(playerid,100.0);
    SendClientMessage(playerid,COLOR_RED,"Anti-Spawn-Kill is over");
}

forward SendMSG();
public SendMSG()
{
    new randMSG = random(sizeof(RandomMSG));
    SendClientMessageToAll(YELLOW, RandomMSG[randMSG]);
}

forward CheckPing(playerid);
public CheckPing(playerid)
{
	if(GetPlayerPing(playerid) > MAX_PING) Kick(playerid);
}

public OnPlayerText(playerid,text[])
{//To add more team colors in,just make a 3rd case and use same method as case 0 and 1 ~NinjahZ
    new string[124],name[24];
    GetPlayerName(playerid,name,sizeof(name));
    switch(gTeam[playerid])
    {
        case 0:
        {
            format(string,sizeof(string),"{0049FF}[Blue Team Chat] %s: %s",name,text);
            SendTeamMessage(0,string);
        }
        case 1:
        {
            format(string,sizeof(string),"{FF0000}[Red Team Chat] %s: %s",name,text);
            SendTeamMessage(1,string);
        }
    }
    return 0;
}

public OnPlayerUpdate(playerid)
{
	new weaponid = GetPlayerWeapon(playerid);//This will cause the "weaponid not defined" Error
	new Nam[MAX_PLAYER_NAME];//Miss weapon id 34 == sniper
	new str[128];
	if(weaponid == 1) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 2) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 3) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 4) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 5) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 6) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 7) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 8) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 9) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 10) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 11) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 12) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 13) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 14) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 15) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 16) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 17) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 18) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 19) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 20) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 21) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 22) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 23) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 24) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 25) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 26) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 27) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 28) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 29) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 30) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 31) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 32) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 33) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 35) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 36) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 37) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 38) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 39) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 40) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 41) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 42) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 43) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 44) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 45) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 46) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a bad weapon!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}
	return 1;
}

YCMD:credits(playerid,params[],help)
{
	 SendClientMessage(playerid, -1,"Secret Project Sniper War TDM");
	 SendClientMessage(playerid, -1,"NinjahZ - GM Scripter");
	 SendClientMessage(playerid, -1,"Y_Less - YSI/Foreach ETC");
	 SendClientMessage(playerid, -1,"Kush   - Login/Register System  ");
	 return 1;
}

YCMD:serverfeatures(playerid,params[],help)
{
    SendClientMessage(playerid, -1,"Server Features           ");
    SendClientMessage(playerid, -1,"*Login/Register      Y_Ini");
    SendClientMessage(playerid, -1,"*Two Teams      RED & BLUE");
    SendClientMessage(playerid, -1,"*Anti-Spawnkill System    ");
    SendClientMessage(playerid, -1,"*Laser System             ");
    SendClientMessage(playerid, -1,"*Kill Streak System       ");
    SendClientMessage(playerid, -1,"*Anti-Team kill System    ");
    SendClientMessage(playerid, -1,"*Random Messages          ");
    SendClientMessage(playerid, -1,"*Anti-Flood System        ");
    SendClientMessage(playerid, -1,"*Ping Kick System         ");
    SendClientMessage(playerid, -1,"*Team chat Only           ");
    SendClientMessage(playerid, -1,"*Radio System             ");
    SendClientMessage(playerid, -1,"*YCMD Admin Commands      ");
    return 1;
}

YCMD:pm(playerid,params[],help)
{
    new str[256], str2[256], id, Name1[MAX_PLAYER_NAME], Name2[MAX_PLAYER_NAME];
    if(sscanf(params, "us", id, str2))
    {
        SendClientMessage(playerid, 0xFF0000FF, "Usage: /pm <id> <message>");
        return 1;
    }
    if(!IsPlayerConnected(id)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: Player not connected");
    if(playerid == id) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: You cannot pm yourself!");
    {
        GetPlayerName(playerid, Name1, sizeof(Name1));
        GetPlayerName(id, Name2, sizeof(Name2));
        format(str, sizeof(str), "PM To %s(ID %d): %s", Name2, id, str2);
        SendClientMessage(playerid, 0xFF0000FF, str);
        format(str, sizeof(str), "PM From %s(ID %d): %s", Name1, playerid, str2);
        SendClientMessage(id, 0xFF0000FF, str);
    }
    return 1;
}

YCMD:help(playerid,params[],help)
{
	if(PlayerInfo[playerid][pAdmin] == 0)
	{
		ShowPlayerDialog(playerid, HELP_MENU, DIALOG_STYLE_MSGBOX, "Sniper War Help", "***Chat Commands***\n[/G(MainChat)]\n***Server Help***\n[/Rules]\n***Team Help***\n[/MyTeam] [/ChangeTeam] [/Teams]\n***Player Help***\n[/Shop] [/Kill]", "Okay","");
	}
	else
	if(PlayerInfo[playerid][pAdmin] == 1)
	{
		ShowPlayerDialog(playerid, HELP_MENUa1, DIALOG_STYLE_MSGBOX, "Sniper War Help", "***Chat Commands***\n[/G(MainChat)]\n***Server Help***\n[/Rules]\n***Team Help***\n[/MyTeam] [/ChangeTeam] [/Teams]\n***Player Help***\n[/Shop] [/Kill]", "Okay","");
	}
	else
	if(PlayerInfo[playerid][pAdmin] == 2)
	{
		ShowPlayerDialog(playerid, HELP_MENUa2, DIALOG_STYLE_MSGBOX, "Sniper War Help", "***Chat Commands***\n[/G(MainChat)]\n***Server Help***\n[/Rules]\n***Team Help***\n[/MyTeam] [/ChangeTeam] [/Teams]\n***Player Help***\n[/Shop] [/Kill]", "Okay","");
	}
	else
	if(PlayerInfo[playerid][pAdmin] == 3)
	{
		ShowPlayerDialog(playerid, HELP_MENUa3, DIALOG_STYLE_MSGBOX, "Sniper War Help", "***Chat Commands***\n[/G(MainChat)]\n***Server Help***\n[/Rules]\n***Team Help***\n[/MyTeam] [/ChangeTeam] [/Teams]\n***Player Help***\n[/Shop] [/Kill]", "Okay","");
	}
	else
	if(PlayerInfo[playerid][pAdmin] == 4)
	{
		ShowPlayerDialog(playerid, HELP_MENUa4, DIALOG_STYLE_MSGBOX, "Sniper War Help", "***Chat Commands***\n[/G(MainChat)]\n***Server Help***\n[/Rules]\n***Team Help***\n[/MyTeam] [/ChangeTeam] [/Teams]\n***Player Help***\n[/Shop] [/Kill]", "Okay","");
	}
	else
	if(PlayerInfo[playerid][pAdmin] == 5)
	{
		ShowPlayerDialog(playerid, HELP_MENUa5, DIALOG_STYLE_MSGBOX, "Sniper War Help", "***Chat Commands***\n[/G(MainChat)]\n***Server Help***\n[/Rules]\n***Team Help***\n[/MyTeam] [/ChangeTeam] [/Teams]\n***Player Help***\n[/Shop] [/Kill]", "Okay","");
	}
	return 1;
}

YCMD:kill(playerid,params[],help)
{
	if(GetPlayerMoney(playerid) > -1)
	{
		SendClientMessage(playerid,RED, "ERROR: You are not in debt,you have something to live for!");
	}
    else
	if(GetPlayerMoney(playerid) < 0)
	{
	    SetPlayerHealth(playerid, 0.0);
		SendClientMessage(playerid, RED, "You just killed yourself");
	}
    return 1;
}

YCMD:shop(playerid,params[],help)
{
    ShowPlayerDialog(playerid, DIALOG_SHOP, DIALOG_STYLE_LIST, "Sniper War Shop", "Sniper $1,000\nFull Armour $500", "Buy","Cancel");
	return 1;
}

YCMD:rules(playerid,params[],help)
{
	ShowPlayerDialog(playerid, RULES_MENU, DIALOG_STYLE_MSGBOX, "Server Rules", "No Buying Guns From Ammunation (Banned 2 Days )\nNo Hacking Or Advertising ( Banned 2 Days )\nDont Use Cheat's/Illegal Program's ( Banned 5 Days )\nNo Cbugging ( Kicked )\nNo Insulting other Player ( Kicked )\nNo Car Ramming or HeliKilling ( Kicked )\nNo Using 3rd Party Tools ( Banned 3 Days )\nPlease Follow these rules ( If Not Banned 1 Weeks )", "Accept","");
	return 1;
}

YCMD:g(playerid,params[],help)
{
    new sendername[MAX_PLAYER_NAME], string[56];
    GetPlayerName(playerid, sendername, sizeof(sendername));
    if(isnull(params)) return SendClientMessage(playerid, 0xFFFFFFF,"Syntax error.Correct usage: /g [text]");
    format(string, sizeof(string), "(( %s: %s ))", sendername, params);
    SendClientMessageToAll(0xFFFFFFF, string);
    return 1;
}

YCMD:heal(playerid,params[],help)
{
    new targetid;
    if(sscanf(params,"u", targetid)) return SendClientMessage(playerid, 0xFFFFFFF,"Syntax error.Correct usage: /heal [PlayerID]");
    if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, 0xFFFFFFF,"That player is not connected to the server!");
    SetPlayerHealth(targetid, 100);
    return 1;
}

YCMD:myteam(playerid, params[],help)
{
	if(gTeam[playerid] == TEAM_BLUE)
	{
		SendClientMessage(playerid, -1, "SERVER: You are in the Blue Team");
	}
	else if(gTeam[playerid] == TEAM_RED)
	{
		SendClientMessage(playerid, -1, "SERVER: You are in the Red Team");
	}
	return 1;
}

YCMD:teams(playerid, params[],help)
{
   new team1count = GetTeamCount(TEAM_BLUE);
   new team2count = GetTeamCount(TEAM_RED);
   new str[500];
   SendClientMessage(playerid, COLOR_ORANGE,"Sniper War Teams");
   format(str, sizeof(str),"Blue Team: %d Players", team1count);
   SendClientMessage(playerid, TEAM_BLUE_COLOR, str);
   format(str, sizeof(str),"Red Team : %d Players", team2count);
   SendClientMessage(playerid, TEAM_RED_COLOR, str);
   return 1;
}

YCMD:changeteam(playerid, params[],help)
{
	ForceClassSelection(playerid);
	SendClientMessage(playerid, COLOR_RED, "Choose your new team after next death!");
	return 1;
}
