/*The creator of this Gamemode is NinjahZ
Credits to NinjahZ for NEasyScript //Just making code shorter :P
Credits to Y_Less For YSI,SSCANF,Foreach,YCMD's
Credits to SA:MP For A_Samp etc
Credits to the following SA-MP scripters for helping
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
*/////////////////////////////////////////////////////////////////////////////////////////////////
//      _                     _            __                _                        		   //
//     / \                   / \          |  ]              (_)                      		  //
//    / _ \     _   __      / _ \     .--.| |  _ .--..--.   __   _ .--.              		 //
//   / ___ \   [ \ [  ]    / ___ \  / /'`\' | [ `.-. .-. | [  | [ `.-. |           			//
// _/ /   \ \_  > '  <   _/ /   \ \_| \__/  |  | | | | | |  | |  | | | |          		   //
//|____| |____|[__]`\_] |____| |____|'.__.;__][___||__||__][___][___||__]        		  //
//                                                                              		 //
//  CREDITS TO Areax for the Admin System >> http://forum.sa-mp.com/member.php?u=197918 //
//=====================================================================================//
#include 					<a_samp>
#include 					<foreach>
#include 					<sscanf2>
#include 					<streamer>
#include 					<YSI\y_ini>
#include 					<YSI\y_commands>
#define 					FP_MASTER
#include					<fairplay>
#include					<KickBan>
#include 					<rLogs>
#include 					<core>
#include 					<float>
#include 					<a_players>
#include 					"../include/gl_common.inc"
#define 					COLOR_GRAD1 					0xB4B5B7FF
#define 					COLOR_GRAD2 					0xBFC0C2FF
#define 					COLOR_GRAD3 					0xCBCCCEFF
#define 					COLOR_GRAD4 					0xD8D8D8FF
#define 					COLOR_GRAD5 					0xE3E3E3FF
#define 					COLOR_GRAD6 					0xF0F0F0FF
#define 					COLOR_NICEGREEN      			0x6EF83CFF
#define 					COLOR_NICERED        			0xFF0606FF
#define 					COLOR_EASY           			0xFFF1AFFF
#define 					COLOR_YELLOW2        			0xDAE368FF
#define 					COLOR_BYELLOW        			0xFFFF80FF
#define 					COLOR_MARONE         			0xA90202FF
#define 					COLOR_CMD            			0xB8FF02FF
#define 					COLOR_PARAM          			0x3FCD02FF
#define 					COLOR_SERVER         			0xAFE7FFFF
#define 					COLOR_VALUE          			0xA3E4FFFF
#define 					COLOR_RULE           			0xF9E8B7FF
#define 					COLOR_RULE2          			0xFBDF89FF
#define 					COLOR_RWHITE         			0xFFFFFFFF
#define 					COLOR_LGREEN         			0xC9FFABFF
#define 					COLOR_LRED           			0xFFA1A1FF
#define 					COLOR_LRED2          			0xC77D87FF
#define 					COLOR_LBLUE          			0x00A5FFFF
#define 					COLOR_GRAD2          			0xBFC0C2FF
#define 					COLOR_REALRED        			0xFF0606FF
#define 					COLOR_FADE1 		 			0xE6E6E6E6
#define 					COLOR_FADE2 		 			0xC8C8C8C8
#define 					COLOR_FADE3 		 			0xAAAAAAAA
#define 					COLOR_FADE4 		 			0x8C8C8C8C
#define 					COLOR_FADE5 		 			0x6E6E6E6E
#define 					COLOR_GREY 						0xAFAFAFAA
#define 					COLOR_MAGENTA 					0xFF00FFFF
#define 					COLOR_FLBLUE 					0x6495EDAA
#define 					COLOR_BROWN 					0XA52A2AAA
#define 					COLOR_CORAL 					0xFF7F50AA
#define 					COLOR_MEDIUMAQUA 				0x83BFBFAA
#define 					COLOR_MEDIUMMAGENTA 			0x8B008BAA
#define 					COLOR_GREY 						0xAFAFAFAA
#define 					COLOR_ACTIVEBORDER 				0xB4B4B4FF
#define 					COLOR_ACTIVECAPTION 			0x99B4D1FF
#define 					COLOR_ACTIVECAPTIONTEXT 		0x000000FF
#define 					COLOR_ALICEBLUE 				0xF0F8FFFF
#define 					COLOR_ANTIQUEWHITE 				0xFAEBD7FF
#define 					COLOR_APPWORKSPACE 				0xABABABFF
#define 					COLOR_AQUA 						0x00FFFFFF
#define 					COLOR_AQUAMARINE 				0x7FFFD4FF
#define 					COLOR_AZURE 					0xF0FFFFFF
#define 					COLOR_BISQUE 					0xFFE4C4FF
#define 					COLOR_BLACK 					0x000000FF
#define 					COLOR_BLANCHEDALMOND 			0xFFEBCDFF
#define 					COLOR_BLUE 						0x0000FFFF
#define 					COLOR_BURLYWOOD 				0xDEB887FF
#define 					COLOR_BUTTONFACE 				0xF0F0F0FF
#define 					COLOR_BUTTONSHADOW 				0xA0A0A0FF
#define 					COLOR_CADETBLUE 				0x5F9EA0FF
#define 					COLOR_CHARTREUSE 				0x7FFF00FF
#define 					COLOR_CONTROL 					0xF0F0F0FF
#define 					COLOR_CONTROLDARK 				0xA0A0A0FF
#define 					COLOR_CONTROLDARKDARK 			0x696969FF
#define 					COLOR_CONTROLLIGHT 				0xE3E3E3FF
#define 					COLOR_CONTROLLIGHTLIGHT 		0xFFFFFFFF
#define 					COLOR_CONTROLTEXT 				0x000000FF
#define 					COLOR_CORNFLOWERBLUE 			0x6495EDFF
#define 					COLOR_CORNSILK 					0xFFF8DCFF
#define 					COLOR_CRIMSON 					0xDC143CFF
#define 					COLOR_CYAN 						0x00FFFFFF
#define 					COLOR_DARKBLUE 					0x00008BFF
#define 					COLOR_DARKCYAN 					0x008B8BFF
#define 					COLOR_DARKGOLDENROD 			0xB8860BFF
#define 					COLOR_DARKGRAY 					0xA9A9A9FF
#define 					COLOR_DARKKHAKI 				0xBDB76BFF
#define 					COLOR_DARKMAGENTA 				0x8B008BFF
#define 					COLOR_DARKOLIVEGREEN 			0x556B2FFF
#define 					COLOR_DARKORCHID 				0x9932CCFF
#define 					COLOR_DARKRED 					0x8B0000FF
#define 					COLOR_DARKSALMON 				0xE9967AFF
#define 					COLOR_DARKSEAGREEN 				0x8FBC8BFF
#define 					COLOR_DARKSLATEBLUE 			0x483D8BFF
#define 					COLOR_DARKSLATEGRAY 			0x2F4F4FFF
#define 					COLOR_DARKTURQUOISE 			0x00CED1FF
#define 					COLOR_DARKVIOLET 				0x9400D3FF
#define 					COLOR_DEEPPINK 					0xFF1493FF
#define 					COLOR_DEEPSKYBLUE 				0x00BFFFFF
#define 					COLOR_DESKTOP 					0x000000FF
#define 					COLOR_DIMGRAY 					0x696969FF
#define 					COLOR_DODGERBLUE 				0x1E90FFFF
#define 					COLOR_FIREBRICK 				0xB22222FF
#define 					COLOR_FLORALWHITE 				0xFFFAF0FF
#define 					COLOR_FORESTGREEN 				0x228B22FF
#define 					COLOR_FUCHSIA 					0xFF00FFFF
#define 					COLOR_GAINSBORO 				0xDCDCDCFF
#define 					COLOR_GHOSTWHITE 				0xF8F8FFFF
#define 					COLOR_GOLD 						0xFFD700FF
#define 					COLOR_GOLDENROD 				0xDAA520FF
#define 					COLOR_GRADIENTACTIVECAPTION 	0xB9D1EAFF
#define 					COLOR_GRADIENTINACTIVECAPTION 	0xD7E4F2FF
#define 					COLOR_GRAY 						0x808080FF
#define 					COLOR_GRAYTEXT 					0x808080FF
#define 					COLOR_GREEN 					0x008000FF
#define 					COLOR_GREENYELLOW 				0xADFF2FFF
#define 					COLOR_HIGHLIGHT 				0x3399FFFF
#define 					COLOR_HIGHLIGHTTEXT 			0xFFFFFFFF
#define 					COLOR_HONEYDEW 					0xF0FFF0FF
#define 					COLOR_HOTTRACK 					0x0066CCFF
#define 					COLOR_INACTIVEBORDER 			0xF4F7FCFF
#define 					COLOR_INACTIVECAPTION 			0xBFCDDBFF
#define 					COLOR_INACTIVECAPTIONTEXT 		0x434E54FF
#define 					COLOR_INDIANRED 				0xCD5C5CFF
#define 					COLOR_INDIGO 					0x4B0082FF
#define 					COLOR_INFO 						0xFFFFE1FF
#define 					COLOR_INFOTEXT 					0x000000FF
#define 					COLOR_IVORY 					0xFFFFF0FF
#define 					COLOR_KHAKI 					0xF0E68CFF
#define 					COLOR_LAVENDER 					0xE6E6FAFF
#define 					COLOR_LAVENDERBLUSH 			0xFFF0F5FF
#define 					COLOR_LAWNGREEN 				0x7CFC00FF
#define 					COLOR_LEMONCHIFFON 				0xFFFACDFF
#define 					COLOR_LIGHTBLUE 				0xADD8E6FF
#define 					COLOR_LIGHTCORAL 				0xF08080FF
#define 					COLOR_LIGHTCYAN 				0xE0FFFFFF
#define 					COLOR_LIGHTGOLDENRODYELLOW 		0xFAFAD2FF
#define 					COLOR_LIGHTGRAY 				0xD3D3D3FF
#define 					COLOR_LIGHTGREEN 				0x90EE90FF
#define 					COLOR_LIGHTPINK 				0xFFB6C1FF
#define 					COLOR_LIGHTSALMON 				0xFFA07AFF
#define 					COLOR_LIGHTSEAGREEN 			0x20B2AAFF
#define 					COLOR_LIGHTSKYBLUE 				0x87CEFAFF
#define 					COLOR_LIGHTSLATEGRAY 			0x778899FF
#define 					COLOR_LIGHTSTEELBLUE 			0xB0C4DEFF
#define 					COLOR_LIGHTYELLOW 				0xFFFFE0FF
#define 					COLOR_LIME 						0x00FF00FF
#define 					COLOR_LIMEGREEN 				0x32CD32FF
#define 					COLOR_LINEN 					0xFAF0E6FF
#define 					COLOR_MAGENTA 					0xFF00FFFF
#define 					COLOR_MAROON 					0x800000FF
#define 					COLOR_MEDIUMAQUAMARINE 			0x66CDAAFF
#define 					COLOR_MEDIUMBLUE 				0x0000CDFF
#define 					COLOR_MEDIUMORCHID 				0xBA55D3FF
#define 					COLOR_MEDIUMPURPLE 				0x9370DBFF
#define 					COLOR_MEDIUMSEAGREEN 			0x3CB371FF
#define 					COLOR_MEDIUMSLATEBLUE 			0x7B68EEFF
#define 					COLOR_MEDIUMSPRINGGREEN 		0x00FA9AFF
#define 					COLOR_MEDIUMTURQUOISE 			0x48D1CCFF
#define 					COLOR_MEDIUMVIOLETRED 			0xC71585FF
#define 					COLOR_MENU 						0xF0F0F0FF
#define 					COLOR_MENUBAR 					0xF0F0F0FF
#define 					COLOR_MENUHIGHLIGHT 			0x3399FFFF
#define 					COLOR_MENUTEXT 					0x000000FF
#define 					COLOR_MIDNIGHTBLUE 				0x191970FF
#define 					COLOR_MINTCREAM 				0xF5FFFAFF
#define 					COLOR_MISTYROSE 				0xFFE4E1FF
#define 					COLOR_MOCCASIN 					0xFFE4B5FF
#define 					COLOR_NAVAJOWHITE 				0xFFDEADFF
#define 					COLOR_NAVY 						0x000080FF
#define 					COLOR_OLDLACE 					0xFDF5E6FF
#define 					COLOR_OLIVE 					0x808000FF
#define 					COLOR_OLIVEDRAB 				0x6B8E23FF
#define 					COLOR_ORANGE 					0xFFA500FF
#define 					COLOR_ORANGERED 				0xFF4500FF
#define 					COLOR_ORCHID 					0xDA70D6FF
#define 					COLOR_PALEGOLDENROD 			0xEEE8AAFF
#define 					COLOR_PALEGREEN 				0x98FB98FF
#define 					COLOR_PALETURQUOISE 			0xAFEEEEFF
#define 					COLOR_PALEVIOLETRED 			0xDB7093FF
#define 					COLOR_PAPAYAWHIP 				0xFFEFD5FF
#define 					COLOR_PEACHPUFF 				0xFFDAB9FF
#define 					COLOR_PERU 						0xCD853FFF
#define 					COLOR_PINK 						0xFFC0CBFF
#define 					COLOR_PLUM 						0xDDA0DDFF
#define 					COLOR_POWDERBLUE 				0xB0E0E6FF
#define 					COLOR_PURPLE 					0x800080FF
#define 					COLOR_RED 						0xFF0000FF
#define 					COLOR_ROSYBROWN 				0xBC8F8FFF
#define 					COLOR_ROYALBLUE 				0x4169E1FF
#define 					COLOR_SADDLEBROWN 				0x8B4513FF
#define 					COLOR_SALMON 					0xFA8072FF
#define 					COLOR_SANDYBROWN 				0xF4A460FF
#define 					COLOR_SCROLLBAR 				0xC8C8C8FF
#define 					COLOR_SEAGREEN 					0x2E8B57FF
#define 					COLOR_SEASHELL 					0xFFF5EEFF
#define 					COLOR_SIENNA 					0xA0522DFF
#define 					COLOR_SILVER 					0xC0C0C0FF
#define 					COLOR_SKYBLUE 					0x87CEEBFF
#define 					COLOR_SLATEBLUE 				0x6A5ACDFF
#define 					COLOR_SLATEGRAY 				0x708090FF
#define 					COLOR_SNOW 						0xFFFAFAFF
#define 					COLOR_SPRINGGREEN 				0x00FF7FFF
#define 					COLOR_STEELBLUE 				0x4682B4FF
#define 					COLOR_TAN 						0xD2B48CFF
#define 					COLOR_TEAL 						0x008080FF
#define 					COLOR_THISTLE 					0xD8BFD8FF
#define 					COLOR_TOMATO 					0xFF6347FF
#define 					COLOR_TRANSPARENT 				0xFFFFFF00
#define 					COLOR_TURQUOISE 				0x40E0D0FF
#define 					COLOR_VIOLET 					0xEE82EEFF
#define 					COLOR_WHEAT 					0xF5DEB3FF
#define 					COLOR_WHITE 					0xFFFFFFFF
#define 					COLOR_WHITESMOKE 				0xF5F5F5FF
#define 					COLOR_WINDOW 					0xFFFFFFFF
#define 					COLOR_WINDOWFRAME 				0x646464FF
#define 					COLOR_WINDOWTEXT 				0x000000FF
#define 					COLOR_YELLOW 					0xFFFF00FF
#define 					COLOR_YELLOWGREEN 				0x9ACD32FF
#define 					STEALTH_ORANGE 					0xFF880000
#define 					STEALTH_OLIVE 					0x66660000
#define 					STEALTH_GREEN 					0x33DD1100
#define 					STEALTH_PINK 					0xFF22EE00
#define 					STEALTH_BLUE 					0x0077BB00
#define 					COL_NICEGREEN      				"{6EF83C}"
#define 					COL_NICERED        				"{FF0606}"
#define 					COL_GREY           				"{AFAFAF}"
#define 					COL_ORANGE         				"{FFAF00}"
#define 					COL_EASY           				"{FFF1AF}"
#define 					COL_WHITE         	 			"{FFFFFF}"
#define 					COL_BLACK          				"{0E0101}"
#define 					COL_RED            				"{A80000}"
#define 					COL_YELLOW         				"{F3FF02}"
#define 					COL_YELLOW2        				"{DAE368}"
#define 					COL_BYELLOW        				"{FFFF80}"
#define 					COL_LIME           				"{B7FF00}"
#define 					COL_CYAN           				"{00FFEE}"
#define 					COL_LIGHTBLUE      				"{00C0FF}"
#define 					COL_BLUE           				"{0049FF}"
#define 					COL_MAGENTA        				"{F300FF}"
#define 					COL_VIOLET         				"{B700FF}"
#define 					COL_PINK           				"{FF00EA}"
#define 					COL_MARONE         				"{A90202}"
#define 					COL_CMD            				"{B8FF02}"
#define 					COL_PARAM          				"{3FCD02}"
#define 					COL_SERVER         				"{AFE7FF}"
#define 					COL_VALUE          				"{A3E4FF}"
#define 					COL_RULE           				"{F9E8B7}"
#define 					COL_RULE2          				"{FBDF89}"
#define 					COL_RWHITE         				"{FFFFFF}"
#define 					COL_LGREEN         				"{C9FFAB}"
#define 					COL_LRED           				"{FFA1A1}"
#define 					COL_LRED2          				"{C77D87}"
#define 					COL_GREEN          				"{00BC2E}"
#define 					COL_LBLUE          				"{00A5FF}"
#define 					COL_GRAD2          				"{BFC0C2}"
#define 					COL_REALRED            			"{FF0606}"
#define 					RED                       		0xAA3333AA
#define 					YELLOW                    		0xFFFF00AA
#define 					PURPLE                    		0x9370DBFF
#define 					WHITE 			 	 			0xFFFFFFFF
#define 					ROUND_MINUTES 					10
#define 					WEAPON_BODY_PART_CHEST 			3
#define 					WEAPON_BODY_PART_CROTCH 		4
#define 					WEAPON_BODY_PART_LEFT_ARM 		5
#define 					WEAPON_BODY_PART_RIGHT_ARM 		6
#define 					WEAPON_BODY_PART_LEFT_LEG 		7
#define 					WEAPON_BODY_PART_RIGHT_LEG 		8
#define 					WEAPON_BODY_PART_HEAD 			9
#define 					numrange 						150
#define 					TIMER_INTERVAL 					150
#define 					NO_PERM                 		"Insufficient permissions"
#define 					SCM								SendClientMessage
#define                     SPD                             ShowPlayerDialog
#define						PASFP                           PlayAudioStreamForPlayer
#define						SASFP   						StopAudioStreamForPlayer
#pragma 					tabsize 						0
#define 					MAX_PING 						1000
#define	 					MAX_FLOODLINES 					12
#define 					MAX_FLOOD_RATE_SECS 			5000
#undef 						MAX_PLAYERS
#define 					MAX_PLAYERS 					50
#define 					DELAY 							5
#define 					INFINITY          				(Float:0x7F800000)
#define 					HOLDING(%0) 					((newkeys & (%0)) == (%0))
#define 					PRESSED(%0) 					(((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
#define 					RELEASED(%0)					(((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))
#define 					REGISTER_DIALOG   				0
#define 					LOGIN_DIALOG      				1
#define 					UserPath 						"/Sniper Wars/Users/%s.ini"
#define 					HELP_DIALOG       				3
#define 					CMDS_DIALOG       				4
#define 					STATS_DIALOG      				5
#define 					DIALOG_SHOP       				6
#define 					RULES_MENU              		7
#define 					HELP_MENU               		8
#define 					HELP_MENUa1               		9
#define 					HELP_MENUa2               		10
#define 					HELP_MENUa3               		11
#define 					HELP_MENUa4               		12
#define 					HELP_MENUa5               		13
#define                     DIALOG_KICK                     14
#define						COMMANDS_DIALOG					15
#define 					DIALOG_RADIO  					1870
#define 					DIALOG_GENRES     				1871
#define 					DIALOG_CURL     				1872
#define						DIALOG_OUTOFCARSETRADIO         1873
#define                     DIALOG_OUTOFCARSR               1874
#define 					DIALOG_POP 						1875
#define 					DIALOG_RAP  					1876
#define 					DIALOG_REGGAE   				1877
#define 					DIALOG_ELECTRONIC  				1878
#define 					DIALOG_ALTERNATIVE 				1880
#define 					DIALOG_BLUES     				1881
#define 					DIALOG_CLASSICAL  				1882
#define 					DIALOG_COUNTRY     				1883
#define 					DIALOG_DECADES     				1884
#define 					DIALOG_EASYLISTENING     		1885
#define 					DIALOG_FOLK     				1886
#define 					DIALOG_INSPIRATIONAL     		1887
#define 					DIALOG_INTERNATIONAL     		1888
#define 					DIALOG_JAZZ     				1889
#define 					DIALOG_LATIN     				1890
#define 					DIALOG_METAL     				1891
#define 					DIALOG_MISC      				1892
#define 					DIALOG_NEWAGE     				1893
#define 					DIALOG_PUBLICRADIO     			1894
#define 					DIALOG_RNBURBAN      			1895
#define 					DIALOG_ROCK     				1896
#define 					DIALOG_TALK     				1897
#define                     DIALOG_TECHNO                   1111
#define                     DIALOG_RADIOHELP                1112
#define 					DIALOG_SETTINGS      			999
#define     				DIALOG_MUSIC        			100
#define 					TEAM_BLUE 						0
#define						TEAM_RED 						1
#define                     TEAM_UNDEFINED                  2
#define 					TEAM_BLUE_COLOR 				0x0077BB00
#define 					TEAM_RED_COLOR 					0xFF0000FF
#define                     TEAM_UNDEFINED_COLOR            0x000000FF
#define 					TEAM_ZONE_BLUE_COLOR 			0x9400D3AA //BLUE
#define 					TEAM_ZONE_RED_COLOR 			0xFFFF00FF //RED
#define 					BTRCRS 							SetPlayerRandomBlueTeamRCSpawn
#define 					RTRCRS 							SetPlayerRandomRedTeamRCSpawn
#define 					BTJMRS 							SetPlayerRandomBlueTeamJMSpawn
#define 					RTJMRS 							SetPlayerRandomRedTeamJMSpawn
#define 					BTLCRS 							SetPlayerRandomBlueTeamLCSpawn
#define 					RTLCRS 							SetPlayerRandomRedTeamLCSpawn
#define 					BTPDRS 							SetPlayerRandomBlueTeamPDSpawn
#define 					RTPDRS 							SetPlayerRandomRedTeamPDSpawn
#define 					BTPLDPTRS 						SetPlayerRandomBlueTeamPLDPTSpawn
#define 					RTPLDPTRS 						SetPlayerRandomRedTeamPLDPTSpawn
#define 					BTDMIRS 						SetPlayerRandomBlueTeamDMISpawn
#define 					RTDMIRS 						SetPlayerRandomRedTeamDMISpawn
//==============================================================================
//==============================================================================
//==============================================================================
native WP_Hash(buffer[],len,const str[]);
//==============================================================================
//==============================================================================
//==============================================================================
enum PlayerInfo
{
    Registered,
    Pass[129],
    Adminlevel,
    Money,
    Scores,
    Kills,
    Deaths
}
new pInfo[MAX_PLAYERS][PlayerInfo];

new RandomMSG[][] =
{
    "{0049FF}SERVER: {00A5FF}Welcome To {0049FF}Sniper War TDM!",
    "{0049FF}SERVER: {00A5FF}Visit our website at {0049FF}Forum.Sa-Mp.com!",
    "{0049FF}SERVER: {00A5FF}Play fair and dont break the rules!",
    "{0049FF}SERVER: {00A5FF}Make sure to save us in FAVOURITES!",
    "{0049FF}SERVER: {00A5FF}Make sure to read all the {0049FF}[ /Rules ]{00A5FF} upon playing!",
    "{0049FF}SERVER: {00A5FF}To find out all the commands available,type {0049FF}[ /Help ]",
    "{0049FF}SERVER: {00A5FF}To Report a Hacker simply {0049FF}[ /Report ]{00A5FF} it!",
    "{0049FF}SERVER: {00A5FF}To see a list of all Online Admin's,type{0049FF}[ /Admins ]{00A5FF}"
};
forward upScore(playerid);

new Text:Timeleft;
new Text:CurrentMap;
new Text:Log;
new Text:TeamScore;

new timeleft = ROUND_MINUTES;
new roundtimer;
new seconds=0;
new MAP = 0;
new maptimer;
new fc[MAX_PLAYERS];
new SPAWNED[MAX_PLAYERS];
new Float:HEALTH[MAX_PLAYERS];
new ALLOWCHAT[MAX_PLAYERS];
new CHECKSPAM[MAX_PLAYERS];
new REDKILLS=0;
new BLUEKILLS=0;

forward Second();
forward ChangeMap();
forward FloodCheck(playerid);

new fKills;
new eKills;
new Text:Score1;
new Spree[MAX_PLAYERS];
new bus;
new gatestats;
new DialogHostname = 1000;
new DialogGamemode = 1001;
new DialogMapname = 1002;
new DialogWeburl = 1003;
new DialogRconpass = 1004;
new DialogReset = 1005;
new Text:Textdraw0;
new Text:Textdraw1;
new Text:Textdraw2;
new Text:Textdraw3;
new Text:Textdraw4;
new Text:Textdraw5;
new Text:Textdraw6;
new Text:Textdraw7;
new Warned[MAX_PLAYERS];
new BanWarned[MAX_PLAYERS];
new maxPlayers;
new Muted[MAX_PLAYERS];
new MuteTime[MAX_PLAYERS];
new unmute[MAX_PLAYERS];
new Text: ServerName;
new gTeam[MAX_PLAYERS];
new Timer[MAX_PLAYERS];
new Streak[MAX_PLAYERS];
new rconAttempts[MAX_PLAYERS];
new gPlayerClass[MAX_PLAYERS];
new FloodByPlayer[MAX_PLAYERS];
//==============================================================================//
//==============================================================================//
//==============================================================================//

//=================================Random Spawns================================//

//======RC Battlefield Map======//
new Float:RedTeamRCRandomSpawns[10][4] = {
    {-973.5748, 1080.5066, 1344.9911, 85.2609},
    {-974.1147, 1078.9847, 1344.9885, 85.2609},
    {-974.6940, 1077.2397, 1344.9858, 85.2609},
    {-974.9780, 1075.3998, 1344.9895, 91.8410},
    {-975.4444, 1073.9126, 1344.9888, 89.0210},
    {-975.0948, 1071.5247, 1344.9895, 89.0210},
    {-975.5975, 1069.6199, 1344.9885, 89.0210},
    {-976.0765, 1068.1102, 1344.9874, 89.0210},
    {-976.1094, 1066.2621, 1344.9900, 89.0210},
    {-976.0048, 1064.1754, 1344.9895, 89.0210}
};

new Float:BlueTeamRCRandomSpawns[10][4] = {
    {-1133.6245, 1037.4701, 1345.7446, 278.2761},
    {-1133.4700, 1039.8145, 1345.7478, 273.2628},
    {-1133.1245, 1042.0516, 1345.7478, 273.2628},
    {-1132.7894, 1044.1230, 1345.7476, 273.2628},
    {-1132.4633, 1046.6809, 1345.7554, 273.2628},
    {-1132.1117, 1048.5112, 1345.7500, 273.2628},
    {-1131.7700, 1050.1018, 1345.7478, 273.2628},
    {-1131.4286, 1051.3604, 1345.7462, 273.2628},
    {1131.0404, 1052.5400, 1345.7432, 273.2628},
    {1130.7424, 1054.3011, 1345.7496, 273.2628}
};
//=====Jefferson Motel Map=====//
new Float:RedTeamJMRandomSpawns[10][4] = {
    {2228.0088, -1150.9839, 1025.7969, 66.1240},
    {2225.0303, -1152.4833, 1025.7969, 34.7671},
    {2223.7908, -1141.3932, 1025.7969, 179.8417},
    {2214.4253, -1155.1652, 1025.7969, 300.1629},
    {2218.0869, -1149.3048, 1025.7969, 341.5000},
    {2225.9512, -1144.2197, 1025.7969, 178.9018},
    {2225.6465, -1151.0306, 1025.7969, 20.0637},
    {2221.8567, -1149.3287, 1025.7969, 303.3197},
    {2219.6506, -1147.9225, 1025.7969, 233.1324},
    {2220.7302, -1153.2443, 1025.7969, 323.9999}
};

new Float:BlueTeamJMRandomSpawns[10][4] = {
    {2239.2585, -1195.3994, 1033.7969, 335.9066},
    {2238.9641, -1189.8126, 1033.7969, 288.9062},
    {2240.2766, -1180.8379, 1033.7969, 256.3192},
    {2242.1113, -1184.9618, 1033.7969, 189.8920},
    {2242.1563, -1188.2250, 1033.7969, 272.9261},
    {2249.2651, -1188.7397, 1029.8043, 95.2645},
    {2243.9451, -1184.4443, 1029.7969, 56.4108},
    {2236.4888, -1187.6685, 1029.8043, 93.6978},
    {2235.2231, -1194.5159, 1029.8043, 344.9701},
    {2239.1711, -1194.5815, 1029.7969, 346.8501}
};
//=====Liberty City Map=====//
new Float:RedTeamLCRandomSpawns[10][4] = {
    {-793.8769, 490.1839, 1376.1953, 0.6836},
    {-795.3246, 490.6584, 1376.1953, 358.8036},
    {-792.5710, 493.3309, 1376.1953, 303.3431},
    {-790.7125, 490.8252, 1376.1953, 3.1904},
    {-786.0811, 490.5385, 1376.1953, 18.2305},
    {-786.6083, 489.4959, 1376.1953, 262.2726},
    {-784.7266, 488.5961, 1376.1953, 328.0733},
    {-780.1469, 488.3790, 1376.1953, 38.5739},
    {-778.9043, 491.2058, 1376.5900, 52.3607},
    {-778.9230, 494.6921, 1376.5900, 47.3474}
};

new Float:BlueTeamLCRandomSpawns[10][4] = {
    {-778.9452, 496.0824, 1371.7490, 21.0037},
    {-780.3964, 496.2497, 1371.7490, 358.7568},
    {-791.9618, 508.2775, 1367.3672, 216.5255},
    {-786.5402, 507.7274, 1367.3672, 139.7581},
    {-787.6532, 504.4076, 1367.3672, 139.7581},
    {-804.5108, 509.8223, 1360.5065, 187.0719},
    {-825.2458, 529.7258, 1357.1016, 89.6243},
    {-839.3307, 531.1426, 1357.0887, 161.0649},
    {-843.1517, 516.8390, 1358.5509, 242.2190},
    {-841.5493, 488.4966, 1357.9193, 275.7460}
};
//=====Pleasure Dome Map=====//
new Float:RedTeamPDRandomSpawns[10][4] = {
    {-2674.2307, 1430.5277, 912.4063, 180.2019},
    {-2670.6052, 1430.3231, 912.4063, 184.9019},
    {-2666.8489, 1430.1797, 912.4063, 184.9019},
    {-2663.7673, 1429.9911, 912.4063, 184.9019},
    {-2657.4150, 1429.8483, 912.4063, 184.9019},
    {-2657.4150, 1429.8483, 912.4063, 184.9019},
    {-2655.4673, 1429.0643, 912.4063, 184.9019},
    {-2652.4971, 1429.1230, 912.4114, 178.6352},
    {-2659.7603, 1428.8230, 912.4114, 178.6352},
    {-2666.8369, 1428.5377, 912.4063, 178.6352}
};

new Float:BlueTeamPDRandomSpawns[10][4] = {
    {-2648.8284, 1389.5557, 912.4063, 357.1902},
    {-2651.0891, 1390.2021, 912.4063, 357.1902},
    {-2653.4536, 1390.7736, 912.4063, 357.1902},
    {-2655.8140, 1391.0667, 912.4063, 357.1902},
    {-2662.2197, 1389.4558, 912.4063, 15.3637},
    {-2665.4287, 1393.0864, 912.4063, 15.3637},
    {-2669.2166, 1392.2483, 912.4114, 353.1168},
    {-2672.8093, 1391.9623, 912.4063, 353.1168},
    {-2674.8323, 1393.1029, 912.4114, 353.1168},
    {-2672.7605, 1392.8137, 912.4063, 353.1168}
};
//=====Plumbing Department Map=====//
new Float:RedTeamPLDPTRandomSpawns[10][4] = {
    {351.8016, 216.0795, 1008.3828, 183.5785},
    {353.3646, 215.7089, 1008.3828, 183.5785},
    {355.1441, 215.3667, 1008.3828, 183.5785},
    {356.9739, 215.3013, 1008.3828, 183.5785},
    {361.1024, 214.9460, 1008.3828, 183.5785},
    {361.5633, 214.9404, 1008.3828, 183.5785},
    {363.3055, 215.0676, 1008.3828, 183.5785},
    {365.3447, 214.9568, 1008.3828, 183.5785},
    {366.7343, 214.6483, 1008.3828, 183.5785},
    {367.7952, 214.2412, 1008.3828, 183.5785}
};

new Float:BlueTeamPLDPTRandomSpawns[10][4] = {
    {346.6571, 161.1444, 1025.7891, 258.8260},
    {346.6478, 162.3937, 1025.7891, 269.7927},
    {347.1415, 163.2229, 1025.7891, 269.7927},
    {347.6362, 163.9859, 1025.7891, 269.7927},
    {352.7755, 175.0558, 1025.7891, 180.1786},
    {353.6527, 174.5498, 1025.7964, 180.1786},
    {355.0580, 174.1234, 1025.7891, 180.1786},
    {357.1251, 173.1809, 1025.7891, 180.1786},
    {355.6140, 149.2745, 1025.7891, 352.4902},
    {354.1783, 149.9792, 1025.7964, 352.4902}
};
//=====Deathmatch Island Map=====//
new Float:RedTeamDMIRandomSpawns[10][4] = {
    {3071.8862, -1717.9785, 1.7078, 309.3196},
    {3074.4309, -1717.7855, 1.7078, 310.8863},
    {3076.7312, -1718.5811, 1.7078, 310.8863},
    {3071.7810, -1714.3933, 1.7078, 310.8863},
    {3071.8660, -1711.7695, 1.7078, 310.8863},
    {3074.6648, -1713.2449, 1.7078, 310.8863},
    {3078.1218, -1715.0884, 1.7078, 310.8863},
    {3080.7358, -1717.4458, 1.7078, 310.8863},
    {3081.5000, -1719.3252, 1.7078, 310.8863},
    {3072.2456, -1711.4199, 1.7078, 310.8863}
};

new Float:BlueTeamDMIRandomSpawns[10][4] = {
    {3183.8328, -1627.3057, 1.7078, 145.7581},
    {3184.6968, -1629.6892, 1.7078, 145.7581},
    {3180.0366, -1627.1129, 1.7078, 145.7581},
    {3175.7168, -1628.9872, 1.7078, 145.7581},
    {3178.7727, -1632.8300, 1.7078, 145.7581},
    {3181.1453, -1636.9087, 1.7078, 145.7581},
    {3184.5527, -1639.1949, 1.7078, 145.7581},
    {3184.4307, -1642.1876, 1.7078, 145.7581},
    {3173.9629, -1634.7666, 1.7078, 145.7581},
    {3177.3828, -1637.5637, 1.7078, 145.7581}
};

//============================================================================//

stock UpdateTeamScore()
{
	new score[128];
	if(REDKILLS >= BLUEKILLS)
	{
		format(score,sizeof(score),"~r~Red Team: ~w~%d~n~~b~Blue Team: ~w~%d",REDKILLS,BLUEKILLS);
		TextDrawSetString(TeamScore,score);
	}
	else
	{
		format(score,sizeof(score),"~b~Blue Team: ~w~%d~n~~r~Red Team: ~w~%d",BLUEKILLS,REDKILLS);
		TextDrawSetString(TeamScore,score);
	}
}

stock FreezeAll()
{
	for(new i=0; i<MAX_PLAYERS; i++)
	{
	    TogglePlayerControllable(i,0);
	}
}

stock UnFreezeAll()
{
	for(new i=0; i<MAX_PLAYERS; i++)
	{
	    TogglePlayerControllable(i,1);
	}
}

stock RespawnAll()
{
	for(new i=0; i<MAX_PLAYERS; i++)
	{
	    TogglePlayerSpectating(i,1);
	    SPAWNED[i] = 0;
	    TogglePlayerSpectating(i,0);
	}
}

stock IsPlayerFlooding(playerid)
{
	if(CHECKSPAM[playerid] >= 3) return 1;
	else return CHECKSPAM[playerid] = 0;
}

stock SetPlayerHP(playerid,Float:amount)
{
	HEALTH[playerid] = amount;
	SetPlayerHealth(playerid,amount);
}

stock AdminTeleport(playerid,Float:fX, Float:fY, Float:fZ)
{
    SetPlayerInterior(playerid,0);
    SetPlayerPos(playerid, fX, fY, fZ);
    return 1;
}

stock Slap(playerid)
{
   	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid,X,Y,Z);
	SetPlayerPos(playerid,X,Y,Z+5.5);
	return 1;
}

stock GetName(playerid)
{
    new
    name[24];
    GetPlayerName(playerid, name, sizeof(name));
    return name;
}

stock SendTeamMessage(teamid, message[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if(IsPlayerConnected(i) && gTeam[i] == teamid)
        {
            SendClientMessage(i, 0xFFFFFFFF, message);
        }
    }
    return 1;
}

stock Path(playerid)
{
    new str[128],name[MAX_PLAYER_NAME];
    GetPlayerName(playerid,name,sizeof(name));
    format(str,sizeof(str),UserPath,name);
    return str;
}

stock GivePlayerScore(playerid, Score)
{
    SetPlayerScore(playerid, GetPlayerScore(playerid) + Score);
    return Score;
}

stock SendAdminMessage(color, const string[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
    if(pInfo[i][Adminlevel] != 0)
    SendClientMessage(i, color, string);
    }
    return 1;
}

stock SendAdminGameText(const string[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
    if(pInfo[i][Adminlevel] != 0)
    GameTextForPlayer(i, string, 2000, 5);
    }
    return 1;
}

stock KickWithMessage(playerid, color, message[])
{
    SendClientMessage(playerid, color, message);
    SetTimerEx("KickPublic", 1000, 0, "d", playerid);
}

stock GetTeamName(playerid)
{
	new str[66];
	if(gTeam[playerid] == TEAM_BLUE) str =  ("Blue Team");
	else if(gTeam[playerid] == TEAM_RED) str =  ("Red Team");
	return str;
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

stock IsPlayerSpawned(playerid)
{
	switch(GetPlayerState(playerid))
	{
		case 1..8: return true;
	}
	return false;
}

stock IsPlayerAiming(playerid)
{
	new index = GetPlayerAnimationIndex(playerid);
	switch(index)
	{
		case 1167, 1161, 1163, 1160, 1162, 363, 360, 1069, 1070, 1159, 1158,
		1453, 1331, 1449, 220, 1643, 1365, 640, 1196, 1133: return 1;
	}
	return 0;
}
//==============================================================================
//==============================================================================
//==============================================================================
forward loadaccount_user(playerid, name[], value[]);

public loadaccount_user(playerid, name[], value[])
{
    INI_Int("Registered" ,pInfo[playerid][Registered]);
    INI_String("Password", pInfo[playerid][Pass], 129);
    INI_Int("AdminLevel" ,pInfo[playerid][Adminlevel]);
    INI_Int("Money", pInfo[playerid][Money]);
    INI_Int("Scores", pInfo[playerid][Scores]);
    INI_Int("Kills", pInfo[playerid][Kills]);
    INI_Int("Deaths", pInfo[playerid][Deaths]);
    return 1;
}
forward AntiSpawnKill(playerid);

public AntiSpawnKill(playerid)
{
    SetPlayerHealth(playerid, 100);
    SendClientMessage(playerid, COLOR_WHITE, "{FF8000}[ANTI-SPAWN]: Anti-Spawn Kill {FFFFFF}protection over!");
    return 1;
}

forward UnMuteMe(playerid);

public UnMuteMe(playerid)
{
   Muted[playerid] = 0;
   MuteTime[playerid] = 0;
   new string[200];
   format(string, sizeof(string), "[SYSTEM]: %s(ID:%d) has been UnMuted!", GetName(playerid), playerid);
   SendClientMessageToAll(COLOR_PURPLE, string);
   return 1;
}
//==============================================================================
//==============================================================================
//==============================================================================
main()
{
        print("====================\n");
        print("= Sniper War V:1.0 =\n");
        print("====================\n");
}

public OnGameModeInit()
{
    Timeleft = TextDrawCreate(550.0,100.0,"00:00");
    TextDrawFont(Timeleft,2);
    TextDrawUseBox(Timeleft,1);
    TextDrawBoxColor(Timeleft,0x000000AA);
    TextDrawTextSize(Timeleft,1.0,60.0);
    TextDrawAlignment(Timeleft,2);
    CurrentMap = TextDrawCreate(550.0,80.0,"RC Battlefield");
    TextDrawFont(CurrentMap,2);
    TextDrawUseBox(CurrentMap,1);
    TextDrawBoxColor(CurrentMap,0x000000FF);
    TextDrawTextSize(CurrentMap,1.0,110.0);
    TextDrawAlignment(CurrentMap,2);
    TextDrawLetterSize(CurrentMap,0.25,1.75);
    Log = TextDrawCreate(100.0,415.0,"-~n~-~n~-");
    TextDrawFont(Log,1);
    TextDrawUseBox(Log,1);
    TextDrawBoxColor(Log,0x000000FF);
    TextDrawTextSize(Log,1.0,225.0);
    TextDrawAlignment(Log,2);
    TextDrawLetterSize(Log,0.17,1.25);
    TeamScore = TextDrawCreate(540.0,40.0,"~g~Red Team: ~w~0~n~~p~Blue Team: ~w~0");
    TextDrawFont(TeamScore,2);
    TextDrawSetShadow(TeamScore,0);
	TextDrawSetOutline(TeamScore,1);
 	TextDrawLetterSize(TeamScore,0.17,1.25);
	CreateObject(12814,3082.8999000,-1649.0000000,0.7000000,0.0000000,0.0000000,0.0000000); //object(cuntyeland04) (1)
	CreateObject(12814,3112.8999000,-1648.9000000,0.7000000,0.0000000,0.0000000,0.0000000); //object(cuntyeland04) (2)
	CreateObject(12814,3112.6001000,-1698.4000000,0.7000000,0.0000000,0.0000000,0.0000000); //object(cuntyeland04) (3)
	CreateObject(12814,3083.1001000,-1697.2000000,0.7000000,0.0000000,0.0000000,0.0000000); //object(cuntyeland04) (4)
	CreateObject(12814,3142.3999000,-1698.4000000,0.7000000,0.0000000,0.0000000,0.0000000); //object(cuntyeland04) (5)
	CreateObject(12814,3142.5000000,-1648.6000000,0.7000000,0.0000000,0.0000000,0.0000000); //object(cuntyeland04) (6)
	CreateObject(12814,3172.5000000,-1649.1000000,0.7000000,0.0000000,0.0000000,0.0000000); //object(cuntyeland04) (7)
	CreateObject(12814,3171.8000000,-1698.4000000,0.7000000,0.0000000,0.0000000,0.0000000); //object(cuntyeland04) (8)
	CreateObject(744,3152.1001000,-1621.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (1)
	CreateObject(744,3155.1001000,-1621.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (2)
	CreateObject(744,3159.2000000,-1622.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (3)
	CreateObject(744,3164.0000000,-1621.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (4)
	CreateObject(744,3168.8999000,-1622.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (5)
	CreateObject(744,3173.8000000,-1622.5000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (6)
	CreateObject(744,3178.2000000,-1622.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (7)
	CreateObject(744,3181.2000000,-1623.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (8)
	CreateObject(744,3185.1001000,-1624.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (9)
	CreateObject(744,3188.3000000,-1628.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (10)
	CreateObject(744,3188.8000000,-1631.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (11)
	CreateObject(744,3189.3999000,-1634.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (12)
	CreateObject(744,3188.2000000,-1637.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (13)
	CreateObject(744,3188.8999000,-1641.6000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (14)
	CreateObject(744,3188.7000000,-1644.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (15)
	CreateObject(744,3188.6001000,-1648.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (16)
	CreateObject(744,3189.2000000,-1651.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (17)
	CreateObject(744,3189.0000000,-1655.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (18)
	CreateObject(744,3189.8000000,-1659.4000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (19)
	CreateObject(744,3189.5000000,-1661.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (20)
	CreateObject(744,3190.3000000,-1665.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (21)
	CreateObject(744,3189.8999000,-1668.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (22)
	CreateObject(744,3190.3999000,-1672.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (23)
	CreateObject(744,3190.3999000,-1676.6000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (24)
	CreateObject(744,3190.0000000,-1680.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (25)
	CreateObject(744,3189.6001000,-1683.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (26)
	CreateObject(744,3189.8999000,-1688.6000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (27)
	CreateObject(744,3190.2000000,-1693.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (28)
	CreateObject(744,3189.7000000,-1697.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (29)
	CreateObject(744,3188.0000000,-1692.4000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (30)
	CreateObject(744,3187.3999000,-1685.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (31)
	CreateObject(744,3187.3999000,-1678.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (32)
	CreateObject(744,3187.8000000,-1673.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (33)
	CreateObject(744,3186.8999000,-1667.4000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (34)
	CreateObject(744,3187.7000000,-1700.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (35)
	CreateObject(744,3189.3999000,-1703.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (36)
	CreateObject(744,3187.3999000,-1703.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (37)
	CreateObject(744,3187.3000000,-1707.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (38)
	CreateObject(744,3187.6001000,-1708.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (39)
	CreateObject(744,3187.8999000,-1711.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (40)
	CreateObject(744,3187.8000000,-1713.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (41)
	CreateObject(744,3187.6001000,-1715.5000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (42)
	CreateObject(744,3188.1001000,-1718.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (43)
	CreateObject(744,3187.7000000,-1720.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (44)
	CreateObject(744,3186.8000000,-1723.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (45)
	CreateObject(744,3187.8000000,-1722.4000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (46)
	CreateObject(744,3183.1001000,-1724.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (47)
	CreateObject(744,3179.8999000,-1725.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (48)
	CreateObject(744,3176.5000000,-1724.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (49)
	CreateObject(744,3173.3999000,-1724.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (50)
	CreateObject(744,3169.5000000,-1723.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (51)
	CreateObject(744,3166.6001000,-1724.4000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (52)
	CreateObject(744,3162.8999000,-1724.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (53)
	CreateObject(744,3160.7000000,-1724.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (54)
	CreateObject(744,3157.2000000,-1723.6000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (55)
	CreateObject(744,3153.6001000,-1723.4000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (56)
	CreateObject(744,3150.2000000,-1723.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (57)
	CreateObject(744,3146.8000000,-1724.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (58)
	CreateObject(744,3141.8999000,-1723.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (59)
	CreateObject(744,3137.3000000,-1724.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (60)
	CreateObject(744,3132.8999000,-1723.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (61)
	CreateObject(744,3128.5000000,-1723.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (62)
	CreateObject(744,3123.7000000,-1724.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (63)
	CreateObject(744,3119.8000000,-1723.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (64)
	CreateObject(744,3117.5000000,-1723.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (65)
	CreateObject(744,3114.1001000,-1723.6000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (66)
	CreateObject(744,3111.0000000,-1724.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (67)
	CreateObject(744,3107.3999000,-1724.4000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (68)
	CreateObject(744,3104.3999000,-1724.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (69)
	CreateObject(744,3101.2000000,-1724.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (70)
	CreateObject(744,3097.8000000,-1723.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (71)
	CreateObject(744,3094.6001000,-1723.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (72)
	CreateObject(744,3091.1001000,-1723.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (73)
	CreateObject(744,3088.3000000,-1723.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (74)
	CreateObject(744,3085.1001000,-1723.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (75)
	CreateObject(744,3082.3000000,-1723.5000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (76)
	CreateObject(744,3079.5000000,-1723.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (77)
	CreateObject(744,3077.3000000,-1723.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (78)
	CreateObject(744,3074.6001000,-1722.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (79)
	CreateObject(744,3071.6001000,-1722.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (80)
	CreateObject(744,3069.7000000,-1722.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (81)
	CreateObject(744,3068.5000000,-1719.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (82)
	CreateObject(744,3068.2000000,-1715.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (83)
	CreateObject(744,3068.3000000,-1712.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (84)
	CreateObject(744,3068.3000000,-1710.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (85)
	CreateObject(744,3068.3000000,-1707.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (86)
	CreateObject(744,3068.2000000,-1703.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (87)
	CreateObject(744,3068.0000000,-1700.6000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (88)
	CreateObject(744,3068.3000000,-1697.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (89)
	CreateObject(744,3068.3000000,-1694.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (90)
	CreateObject(744,3067.7000000,-1690.6000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (91)
	CreateObject(744,3068.1001000,-1686.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (92)
	CreateObject(744,3068.0000000,-1684.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (93)
	CreateObject(744,3068.0000000,-1681.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (94)
	CreateObject(744,3068.3000000,-1678.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (95)
	CreateObject(744,3069.0000000,-1675.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (96)
	CreateObject(744,3068.7000000,-1672.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (97)
	CreateObject(744,3068.0000000,-1669.2000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (98)
	CreateObject(744,3068.7000000,-1665.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (99)
	CreateObject(744,3068.8999000,-1661.6000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (100)
	CreateObject(744,3068.5000000,-1658.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (101)
	CreateObject(744,3068.3999000,-1654.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (102)
	CreateObject(744,3068.5000000,-1651.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (103)
	CreateObject(744,3068.1001000,-1647.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (104)
	CreateObject(744,3068.2000000,-1643.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (105)
	CreateObject(744,3067.8000000,-1639.5000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (106)
	CreateObject(744,3068.3000000,-1636.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (107)
	CreateObject(744,3068.8000000,-1631.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (108)
	CreateObject(744,3068.2000000,-1627.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (109)
	CreateObject(744,3070.2000000,-1624.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (110)
	CreateObject(744,3073.3000000,-1624.4000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (111)
	CreateObject(744,3076.3999000,-1624.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (112)
	CreateObject(744,3079.0000000,-1625.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (113)
	CreateObject(744,3082.6001000,-1625.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (114)
	CreateObject(744,3085.7000000,-1625.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (115)
	CreateObject(744,3089.6001000,-1625.5000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (116)
	CreateObject(744,3093.7000000,-1625.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (117)
	CreateObject(744,3097.8000000,-1625.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (118)
	CreateObject(744,3101.0000000,-1625.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (119)
	CreateObject(744,3105.8000000,-1625.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (120)
	CreateObject(744,3110.0000000,-1625.3000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (121)
	CreateObject(744,3114.3000000,-1625.0000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (122)
	CreateObject(744,3118.5000000,-1623.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (123)
	CreateObject(744,3122.0000000,-1623.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (124)
	CreateObject(744,3125.0000000,-1623.7000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (125)
	CreateObject(744,3128.8000000,-1623.6000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (126)
	CreateObject(744,3131.8999000,-1624.4000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (127)
	CreateObject(744,3135.3000000,-1622.8000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (128)
	CreateObject(744,3139.3000000,-1622.6000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (129)
	CreateObject(744,3143.1001000,-1622.5000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (130)
	CreateObject(744,3147.8000000,-1622.5000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (131)
	CreateObject(3402,3135.0000000,-1703.9000000,0.7000000,0.0000000,0.0000000,0.0000000); //object(sw_tempbarn01) (1)
	CreateObject(3402,3105.2000000,-1703.9000000,0.7000000,0.0000000,0.0000000,0.0000000); //object(sw_tempbarn01) (2)
	CreateObject(3419,3143.6001000,-1689.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(ce_logbarn02) (1)
	CreateObject(3419,3113.6001000,-1689.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(ce_logbarn02) (2)
	CreateObject(3361,3085.2000000,-1703.7000000,2.2000000,0.0000000,0.0000000,180.0000000); //object(cxref_woodstair) (1)
	CreateObject(3361,3153.7000000,-1703.9000000,2.2000000,0.0000000,0.0000000,0.0000000); //object(cxref_woodstair) (2)
	CreateObject(3749,3147.8999000,-1638.4000000,6.6000000,0.0000000,0.0000000,90.0000000); //object(clubgate01_lax) (1)
	CreateObject(3749,3100.3999000,-1638.5000000,6.6000000,0.0000000,0.0000000,90.0000000); //object(clubgate01_lax) (2)
	CreateObject(10841,3133.8000000,-1646.5000000,8.6000000,0.0000000,0.0000000,0.0000000); //object(drydock1_sfse01) (1)
	CreateObject(10841,3111.3000000,-1646.5000000,8.6000000,0.0000000,0.0000000,0.0000000); //object(drydock1_sfse01) (2)
	CreateObject(10841,3135.3999000,-1629.9000000,8.6000000,0.0000000,0.0000000,0.0000000); //object(drydock1_sfse01) (3)
	CreateObject(10841,3113.5000000,-1629.9000000,8.6000000,0.0000000,0.0000000,0.0000000); //object(drydock1_sfse01) (4)
	CreateObject(10841,3149.1001000,-1680.5000000,8.6000000,0.0000000,0.0000000,90.0000000); //object(drydock1_sfse01) (6)
	CreateObject(10841,3149.0000000,-1685.7000000,8.6000000,0.0000000,0.0000000,90.0000000); //object(drydock1_sfse01) (7)
	CreateObject(10841,3099.5000000,-1659.1000000,8.6000000,0.0000000,0.0000000,90.0000000); //object(drydock1_sfse01) (8)
	CreateObject(3502,3114.3999000,-1654.2000000,2.6000000,0.0000000,0.0000000,90.0000000); //object(vgsn_con_tube) (1)
	CreateObject(3502,3136.8999000,-1667.5000000,2.6000000,0.0000000,0.0000000,90.0000000); //object(vgsn_con_tube) (2)
	CreateObject(3502,3128.2000000,-1668.1000000,2.6000000,0.0000000,0.0000000,100.0000000); //object(vgsn_con_tube) (3)
	CreateObject(3502,3120.8000000,-1670.7000000,2.6000000,0.0000000,0.0000000,120.0000000); //object(vgsn_con_tube) (4)
	CreateObject(3502,3126.6001000,-1657.7000000,2.6000000,0.0000000,0.0000000,119.9980000); //object(vgsn_con_tube) (5)
	CreateObject(3643,3139.3999000,-1653.8000000,6.6000000,0.0000000,0.0000000,0.0000000); //object(la_chem_piping) (1)
	CreateObject(942,3124.5000000,-1712.7000000,3.2000000,0.0000000,0.0000000,0.0000000); //object(cj_df_unit_2) (1)
	CreateObject(942,3094.5000000,-1712.8000000,3.2000000,0.0000000,0.0000000,0.0000000); //object(cj_df_unit_2) (7)
	CreateObject(3378,3152.8000000,-1680.7000000,1.9000000,0.0000000,0.0000000,0.0000000); //object(ce_beerpile01) (1)
	CreateObject(3378,3095.7000000,-1659.5000000,1.9000000,0.0000000,0.0000000,0.0000000); //object(ce_beerpile01) (2)
	CreateObject(16322,3132.3999000,-1712.4000000,4.8000000,0.0000000,0.0000000,0.0000000); //object(a51_plat) (1)
	CreateObject(16322,3103.2000000,-1712.5000000,4.8000000,0.0000000,0.0000000,180.0000000); //object(a51_plat) (2)
	CreateObject(744,3152.2000000,-1627.1000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (132)
	CreateObject(744,3149.2000000,-1626.9000000,0.0000000,0.0000000,0.0000000,0.0000000); //object(sm_scrub_rock4) (133)
	//168 objects
    roundtimer = SetTimer("Second",1000,true);
    DisableInteriorEnterExits();
    SendRconCommand("mapname RC Battlefield");
    ShowPlayerMarkers(PLAYER_MARKERS_MODE_OFF);
    AddPlayerClass(19,-1132.0251,1041.6741,1345.7401,271.0460,34,75,0,0,0,0); // Red
    //AddPlayerClass(19,-1132.0251,1041.6741,1345.7401,271.0460,34,75,0,0,0,0); // Red
    //AddPlayerClass(19,-1132.0251,1041.6741,1345.7401,271.0460,34,75,0,0,0,0); // Red

    AddPlayerClass(176,-973.3190,1077.4526,1344.9951,90.9010,34,75,0,0,0,0); // Blue
    //AddPlayerClass(176,-973.3190,1077.4526,1344.9951,90.9010,34,500,24,200,0,0); // Blue
    //AddPlayerClass(176,-973.3190,1077.4526,1344.9951,90.9010,34,500,24,200,0,0); // Blue
    //mall
	CreateDynamicObject(944,1088.8000000,-1460.6000000,29.8000000,0.0000000,0.0000000,60.0000000); //object(packing_carates04) (1)
	CreateDynamicObject(944,1079.0000000,-1469.7000000,29.8000000,0.0000000,0.0000000,60.0000000); //object(packing_carates04) (2)
	CreateDynamicObject(944,1080.2000000,-1454.0000000,29.8000000,0.0000000,0.0000000,0.0000000); //object(packing_carates04) (3)
	CreateDynamicObject(18260,1082.0000000,-1439.2000000,30.5000000,0.0000000,0.0000000,60.0000000); //object(crates01) (1)
	CreateDynamicObject(18260,1172.3000000,-1455.7000000,30.5000000,0.0000000,0.0000000,250.0000000); //object(crates01) (2)
	CreateDynamicObject(944,1171.5000000,-1436.5000000,29.8000000,0.0000000,0.0000000,270.0000000); //object(packing_carates04) (4)
	CreateDynamicObject(944,1177.1000000,-1445.0000000,29.8000000,0.0000000,0.0000000,270.0000000); //object(packing_carates04) (5)
	CreateDynamicObject(944,1177.2000000,-1467.7000000,29.8000000,0.0000000,0.0000000,0.0000000); //object(packing_carates04) (6)
	CreateDynamicObject(12857,1073.6000000,-1497.1000000,26.4000000,0.0000000,0.0000000,0.0000000); //object(ce_bridge02) (1)
	CreateDynamicObject(18260,1095.6000000,-1546.6000000,30.5000000,0.0000000,0.0000000,59.9960000); //object(crates01) (3)
	CreateDynamicObject(18260,1072.2000000,-1515.7000000,30.5000000,0.0000000,0.0000000,90.0000000); //object(crates01) (4)
	CreateDynamicObject(18260,1063.4000000,-1548.2000000,30.5000000,0.0000000,0.0000000,90.0000000); //object(crates01) (5)
	CreateDynamicObject(18260,1168.5000000,-1523.3000000,30.5000000,0.0000000,0.0000000,250.0000000); //object(crates01) (6)
	CreateDynamicObject(18260,1152.9000000,-1548.1000000,30.5000000,0.0000000,0.0000000,250.0000000); //object(crates01) (7)
	CreateDynamicObject(18260,1171.8000000,-1542.0000000,30.5000000,0.0000000,0.0000000,250.0000000); //object(crates01) (8)
	//===[Gates]===//
	bus = CreateObject(980, 2432.5, -1657.9000244141, 15.199999809265, 0, 0, 272);// Gate
	//objects
	CreateObject(987, 2433.1000976563, -1636, 12.39999961853, 0, 0, 271.5);
	CreateObject(3475, 2433.3999023438, -1633.1999511719, 14.800000190735, 0, 0, 1.25);
	CreateObject(3578, 2480.3000488281, -1653.1999511719, 13.199999809265, 0, 0, 0);
	CreateObject(3578, 2488.1999511719, -1653.3000488281, 13.199999809265, 0, 0, 0);
	CreateObject(987, 2435.3999023438, -1628.1999511719, 12.89999961853, 0, 0, 0);
	CreateObject(987, 2447.5, -1628.4000244141, 13.60000038147, 0, 0, 0);
	CreateObject(987, 2459.5, -1628.6999511719, 14.5, 0, 0, 0);
	CreateObject(987, 2471.1999511719, -1629, 14.89999961853, 0, 0, 0);
	CreateObject(987, 2482.3999023438, -1628.9000244141, 15.39999961853, 0, 0, 0);
	CreateObject(987, 2494.3000488281, -1628.5999755859, 16, 0, 0, 2);
	CreateObject(987, 2506.1999511719, -1628.3000488281, 16.5, 0, 0, 1.99951171875);   CreateObject(987, 2518, -1628.0999755859, 16.799999237061, 0, 0, 1.99951171875);
	CreateObject(987, 2529.8000488281, -1628.0999755859, 16.799999237061, 0, 0, 1.99951171875);
	CreateObject(987, 2465.3999023438, -1722.5999755859, 12.5, 0, 0, 2);
	CreateObject(987, 2453.3999023438, -1722.9000244141, 12.699999809265, 0, 0, 1.99951171875);
	CreateObject(987, 2441.1999511719, -1722.6999511719, 12.800000190735, 0, 0, 1.99951171875);
	CreateObject(975, 2480.1999511719, -1722.1999511719, 14.199999809265, 0, 0, 0);
	CreateObject(8656, 2540.6999511719, -1705.0999755859, 13.60000038147, 0, 0, 0);
	CreateObject(8656, 2520.3999023438, -1722, 13.699999809265, 0, 0, 270);
	CreateObject(8656, 2520.3999023438, -1722, 16, 0, 0, 270);
	CreateObject(991, 2540.8999023438, -1717.5, 16, 0, 0, 270);
	CreateObject(991, 2541, -1713.1999511719, 16, 0, 0, 270);
	CreateObject(991, 2537.6999511719, -1721.6999511719, 16, 0, 0, 196.5);
	CreateObject(1271, 2507.3000488281, -1659.0999755859, 12.89999961853, 0, 0, 0);
	CreateObject(1271, 2507.3000488281, -1659.9000244141, 12.89999961853, 0, 0, 2);
	CreateObject(1337, 2507.3000488281, -1658.8000488281, 13.5, 0, 0, 276);
	CreateObject(1271, 2508.1000976563, -1659.8000488281, 12.89999961853, 0, 0, 1.99951171875);
	CreateObject(1271, 2508, -1659.0999755859, 12.89999961853, 0, 0, 1.99951171875);
	CreateObject(1337, 2507.8000488281, -1660.0999755859, 13.5, 0, 0, 0);
	CreateObject(1337, 2508.3999023438, -1659.4000244141, 13.5, 0, 0, 0);
	AddStaticVehicleEx(470,2476.5000000,-1656.0999756,13.3999996,0.0000000,3,3,15); //Patriot
	AddStaticVehicleEx(470,2480.3999023,-1656.0999756,13.3999996,0.0000000,3,3,15); //Patriot
	AddStaticVehicleEx(470,2484.1999512,-1656.0999756,13.3999996,0.0000000,3,3,15); //Patriot
	AddStaticVehicleEx(470,2488.1000977,-1656.0000000,13.5000000,0.0000000,3,3,15); //Patriot
	AddStaticVehicleEx(470,2491.3000488,-1655.8000488,13.5000000,0.0000000,3,3,15); //Patriot
	AddStaticVehicleEx(492,2509.8000488,-1667.1999512,13.5000000,10.0000000,-1,3,15); //Greenwood
	AddStaticVehicleEx(492,2509.6999512,-1673.8000488,13.3000002,340.0000000,2,-1,15); //Greenwood
	AddStaticVehicleEx(492,2505.8999023,-1679.8000488,13.3999996,313.9975586,16,-1,15); //Greenwood
	AddStaticVehicleEx(560,2491.1000977,-1682.0999756,13.1000004,0.0000000,3,-1,15); //Sultan
	AddStaticVehicleEx(560,2487.3999023,-1681.5999756,13.1000004,0.0000000,-1,29,15); //Sultan
	AddStaticVehicleEx(560,2483.3000488,-1681.8000488,13.1000004,0.0000000,-1,-1,15); //Sultan
	AddStaticVehicleEx(487,2525.3000488,-1677.3000488,20.2000008,0.0000000,3,-1,15); //Maverick
	AddStaticVehicleEx(487,2535.0000000,-1678.0000000,20.2000008,0.0000000,-1,3,15); //Maverick
	CreateObject(987, 2431.3000488281, -1668.9000244141, 12.699999809265, 0, 0, 272);
	CreateObject(3475, 2431.6000976563, -1667.3000488281, 14.89999961853, 0, 0, 0);
	CreateObject(3749, 2432.6000976563, -1657.9000244141, 18.200000762939, 0, 0, 272);
	CreateObject(17062, 2398.3999023438, -1570.5999755859, 218, 11, 0, 19);
	CreateObject(17062, 2471.8000488281, -1741.6999511719, 192.10000610352, 10.997314453125, 0, 18.494873046875);
	CreateObject(10780, 2328.1000976563, -1428.8000488281, 231.80000305176, 0, 0, 198);
	CreateObject(972, 2291.5, -1422.9000244141, 228.19999694824, 0, 0, 16);
	CreateObject(972, 2319.3999023438, -1373.6999511719, 228.19999694824, 0, 0, 287.99609375);
	CreateObject(17062, 2553.19921875, -1931.099609375, 164.60000610352, 10.997314453125, 0, 18.484497070313);
	CreateObject(17062, 2702.5, -2168.1000976563, 137.5, 10.997314453125, 0, 32.481079101563);
	CreateObject(1633, 2600.1999511719, -2030.8000488281, 146.89999389648, 0, 0, 220);
	CreateObject(8355, 2836.1000976563, -2318.6999511719, 89.900001525879, 0, 0, 46);
	CreateObject(8355, 2919, -2402, 90, 0, 0, 45.999755859375);
	CreateObject(8354, 3024.3999023438, -2471.1999511719, 90.099998474121, 0, 0, 136);
	CreateObject(8355, 2939.3000488281, -2565.1999511719, 90.199996948242, 0, 0, 319.99975585938);
	CreateObject(8355, 2858.6000976563, -2660.6999511719, 89.199996948242, 0, 0, 319.99877929688);
	CreateObject(8343, 2774.3999023438, -2713.6999511719, 80.199996948242, 0, 0, 140);
	CreateObject(8355, 2699.6999511719, -2693.3999023438, 80.199996948242, 0, 0, 53.998779296875);
	CreateObject(8355, 2589.1000976563, -2613.5, 80.199996948242, 0, 0, 53.997802734375);
	CreateObject(8355, 2505.5, -2552.6000976563, 80, 0, 0, 53.997802734375);
	CreateObject(8344, 2408.6999511719, -2510.8000488281, 78, 0, 0, 234);
	CreateObject(8355, 2297.8999023438, -2496.8999023438, 78, 0, 0, 91.997802734375);
    Textdraw0 = TextDrawCreate(641.375000, 1.500000, "usebox");
    TextDrawLetterSize(Textdraw0, 0.000000, 12.711111);
    TextDrawTextSize(Textdraw0, -2.000000, 0.000000);
    TextDrawAlignment(Textdraw0, 3);
    TextDrawColor(Textdraw0, 0);
    TextDrawUseBox(Textdraw0, true);
    TextDrawBoxColor(Textdraw0, 102);
    TextDrawSetShadow(Textdraw0, 0);
    TextDrawSetOutline(Textdraw0, -315);
    TextDrawFont(Textdraw0, 0);
	Textdraw1 = TextDrawCreate(186.875000, 88.666793, "Sniper War TDM");
 	TextDrawLetterSize(Textdraw1, 0.613124, 2.731662);
  	TextDrawAlignment(Textdraw1, 1);
  	TextDrawColor(Textdraw1, -1);
   	TextDrawSetShadow(Textdraw1, 0);
   	TextDrawSetOutline(Textdraw1, 1);
   	TextDrawBackgroundColor(Textdraw1, 51);
   	TextDrawFont(Textdraw1, 3);
   	TextDrawSetProportional(Textdraw1, 1);

	Textdraw2 = TextDrawCreate(641.375000, 314.166687, "usebox");
	TextDrawLetterSize(Textdraw2, 0.000000, 14.655550);
	TextDrawTextSize(Textdraw2, -2.000000, 0.000000);
	TextDrawAlignment(Textdraw2, 3);
	TextDrawColor(Textdraw2, 0);
	TextDrawUseBox(Textdraw2, true);
	TextDrawBoxColor(Textdraw2, 102);
	TextDrawSetShadow(Textdraw2, 0);
	TextDrawSetOutline(Textdraw2, 0);
	TextDrawFont(Textdraw2, 1);

	Textdraw3 = TextDrawCreate(231.875000, 323.750518, "www.forum.sa-mp.com");
	TextDrawLetterSize(Textdraw3, 0.744997, 1.903331);
	TextDrawAlignment(Textdraw3, 1);
	TextDrawColor(Textdraw3, -1);
	TextDrawSetShadow(Textdraw3, 0);
	TextDrawSetOutline(Textdraw3, 2);
	TextDrawBackgroundColor(Textdraw3, 51);
	TextDrawFont(Textdraw3, 0);
	TextDrawSetProportional(Textdraw3, 1);

	Textdraw4 = TextDrawCreate(-1.125000, 117.000068, "usebox");
	TextDrawLetterSize(Textdraw4, 0.131870, -0.003611);
	TextDrawTextSize(Textdraw4, 637.375000, 0.000000);
	TextDrawAlignment(Textdraw4, 1);
	TextDrawColor(Textdraw4, 0);
	TextDrawUseBox(Textdraw4, true);
	TextDrawBoxColor(Textdraw4, 102);
	TextDrawSetShadow(Textdraw4, 0);
	TextDrawSetOutline(Textdraw4, 0);
	TextDrawFont(Textdraw4, 0);

	Textdraw5 = TextDrawCreate(637.000000, 314.750061, "usebox");
	TextDrawLetterSize(Textdraw5, 0.000000, 0.007402);
	TextDrawTextSize(Textdraw5, -6.375000, 0.000000);
	TextDrawAlignment(Textdraw5, 3);
	TextDrawColor(Textdraw5, 0);
	TextDrawUseBox(Textdraw5, true);
	TextDrawBoxColor(Textdraw5, 102);
	TextDrawSetShadow(Textdraw5, 0);
	TextDrawSetOutline(Textdraw5, 0);
	TextDrawFont(Textdraw5, 0);

	Textdraw6 = TextDrawCreate(641.375000, 401.083312, "usebox");
	TextDrawLetterSize(Textdraw6, 0.000000, 4.998147);
	TextDrawTextSize(Textdraw6, -1.375000, 0.000000);
	TextDrawAlignment(Textdraw6, 3);
	TextDrawColor(Textdraw6, 0);
	TextDrawUseBox(Textdraw6, true);
	TextDrawBoxColor(Textdraw6, 255);
	TextDrawSetShadow(Textdraw6, 0);
	TextDrawSetOutline(Textdraw6, 0);
	TextDrawFont(Textdraw6, 0);

	Textdraw7 = TextDrawCreate(640.125000, 1.500000, "usebox");
	TextDrawLetterSize(Textdraw7, 0.000000, 4.868515);
	TextDrawTextSize(Textdraw7, -1.375000, 0.000000);
	TextDrawAlignment(Textdraw7, 3);
	TextDrawColor(Textdraw7, 255);
	TextDrawUseBox(Textdraw7, true);
    TextDrawBoxColor(Textdraw7, 255);
	TextDrawSetShadow(Textdraw7, 0);
	TextDrawSetOutline(Textdraw7, 0);
	TextDrawFont(Textdraw7, 0);
    maxPlayers = GetMaxPlayers();
    SetTimer("CheckHeadShot", TIMER_INTERVAL, 1);
    SetTimer("GameCount", 1000, true);
    SetTimer("UpdateFirstPerson", 200, true);
    //AddPlayerClass(176,2299.720458,-1822.533691,13.546875,0.899181,34,1,0,0,0,0);//Blue Team
	//AddPlayerClass(19,2489.009765,-1551.414062,24.055065,90.223564,34,1,0,0,0,0);//Red Team
    ServerName = TextDrawCreate(5.0, 431.0, "NinjahZ Sniper-War TeamDeathmatch v1.0");
	TextDrawUseBox(ServerName, false);
    ShowNameTags(0);
	ShowPlayerMarkers(0);
	UsePlayerPedAnims();
    SetTimer("SendMSG", 1000*60*2, true);
	SetGameModeText("Sniper War V:1.0");

    Score1 = TextDrawCreate(521.000000,100.000000,"~g~ CT: ~w~0  ~r~T: ~w~0");
    TextDrawAlignment(Score1,0);
    TextDrawBackgroundColor(Score1,0x000000ff);
    TextDrawFont(Score1,3);
    TextDrawLetterSize(Score1,0.599999,1.800000);
    TextDrawColor(Score1,0xffffffff);
    TextDrawSetOutline(Score1,1);
    TextDrawSetProportional(Score1,1);
    TextDrawSetShadow(Score1,1);
	return 1;
}

public OnGameModeExit()
{
	TextDrawHideForAll(Score1);
	TextDrawDestroy(Score1);
    return 1;
}

public upScore(playerid)
{
        new score[128];
		format(score, 64, "~b~Blue:~w~ %d~n~~r~Red:~w~ %d", eKills, fKills);
    	TextDrawSetString(Score1, score);
    	foreach(Player,i)
    	{
	       TextDrawShowForPlayer(i, Score1);
 	    }
        return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
    SCM(playerid, COLOR_RED, "You can select a radio station with (/setradio)");
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
    SASFP(playerid);
	return 1;
}

public OnPlayerConnect(playerid)
{
    new str[128];
	SetPlayerColor(playerid,-1);
	SPAWNED[playerid] = 0;
	ALLOWCHAT[playerid] = 1;
	CHECKSPAM[playerid] = 0;
	fc[playerid] = SetTimerEx("FloodCheck",3000,true,"i",playerid);
	format(str,sizeof(str),"~w~%s ~g~connected.~w~",GetName(playerid));
    PlayAudioStreamForPlayer(playerid, "https://dl.dropbox.com/u/79029899/GTA%20San%20Andreas%20CJ%20rap.mp3");
	TextDrawShowForPlayer(playerid,Textdraw0);
	TextDrawShowForPlayer(playerid,Textdraw1);
	TextDrawShowForPlayer(playerid,Textdraw2);
	TextDrawShowForPlayer(playerid,Textdraw3);
	TextDrawShowForPlayer(playerid,Textdraw4);
	TextDrawShowForPlayer(playerid,Textdraw5);
	TextDrawShowForPlayer(playerid,Textdraw6);
    TextDrawShowForPlayer(playerid,Textdraw7);
    Streak[playerid] = 0;
    new string2[200];
    format(string2, sizeof(string2), "*[JOIN]: {09F709}%s(ID:%d) has joined the Server!*", GetName(playerid), playerid);
    SendClientMessageToAll(COLOR_GREEN ,string2);

	new string[300];
	new string1[300];
	new registerid;
	new loginid;
    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));
    if(fexist(Path(playerid)))
    {
    INI_ParseFile(Path(playerid), "loadaccount_%s", .bExtra = true, .extra = playerid);
    format(string1, sizeof(string1), "{00A5FF}Welcome Back {00A5FF}%s!\n\n{00A5FF}Please type below your password to login!", GetName(loginid), loginid);
    ShowPlayerDialog(playerid, LOGIN_DIALOG, DIALOG_STYLE_INPUT, "{0049FF}Login:", string1, "Login", "Quit");
    }
    else
    {
    format(string, sizeof(string), "{00A5FF}Hello %s!\n\n{00A5FF}Please type below your password{00A5FF}, to create a new account!", GetName(registerid), registerid);
    ShowPlayerDialog(playerid, REGISTER_DIALOG, DIALOG_STYLE_INPUT, "{0049FF}Register:", string, "Register", "Quit");
    return 1;
    }
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    new str[128];
    SetPlayerColor(playerid,-1);
	SPAWNED[playerid] = 0;
	ALLOWCHAT[playerid] = 1;
	CHECKSPAM[playerid] = 0;
	KillTimer(fc[playerid]);
	switch(reason)
	{
	   case 0: format(str,sizeof(str),"~w~%s ~r~disconnected(Timeout/Crash).~w~",GetName(playerid));
	   case 1: format(str,sizeof(str),"~w~%s ~r~disconnected(Quit).~w~",GetName(playerid));
	   case 2: format(str,sizeof(str),"~w~%s ~r~disconnected(Kicked/Banned).~w~",GetName(playerid));
	}
	Streak[playerid] = 0;
    TextDrawHideForPlayer(playerid, ServerName);
    new string[150];
    switch(reason)
    {
    case 0: format(string, sizeof string, "[CRASH]: %s(ID:%d) has crashed from the server!", GetName(playerid), playerid);
    case 1: format(string, sizeof string, "[LEFT]: %s(ID:%d) has left the server!", GetName(playerid), playerid);
    case 2: format(string, sizeof string, "[KICK/BAN]: %s(ID:%d) has been kicked/banned from the server!", GetName(playerid), playerid);
    }
    SendClientMessageToAll(COLOR_GREEN, string);

    new INI:file = INI_Open(Path(playerid));
    INI_SetTag(file, "Player's Data");
    INI_WriteInt(file, "AdminLevel", pInfo[playerid][Adminlevel]);
    INI_WriteInt(file, "Money", GetPlayerMoney(playerid));
    INI_WriteInt(file, "Scores", GetPlayerScore(playerid));
    INI_WriteInt(file, "Kills", pInfo[playerid][Kills]);
    INI_WriteInt(file, "Deaths", pInfo[playerid][Deaths]);
    INI_Close(file);
    KillTimer(Timer[playerid]);
    return 1;
}

public OnPlayerSpawn(playerid)
{
	TextDrawHideForPlayer(playerid, Textdraw0);
	TextDrawHideForPlayer(playerid, Textdraw1);
	TextDrawHideForPlayer(playerid, Textdraw2);
	TextDrawHideForPlayer(playerid, Textdraw3);
	TextDrawHideForPlayer(playerid, Textdraw4);
	TextDrawHideForPlayer(playerid, Textdraw5);
	TextDrawHideForPlayer(playerid, Textdraw6);
	TextDrawHideForPlayer(playerid, Textdraw7);
    StopAudioStreamForPlayer(playerid);
	new str[128];
	if(MAP == 0) // Default map(RC Battlefield)
	{
	    SetPlayerInterior(playerid,10);
	    ResetPlayerWeapons(playerid);
	    if(gPlayerClass[playerid] == TEAM_BLUE)
	    {
	        TogglePlayerControllable(playerid, 1);
	        BTRCRS(playerid);
   			GivePlayerWeapon(playerid, 34, 75);
	        SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You have joined the Blue Team");
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");

	    }
	    else if(gPlayerClass[playerid] == TEAM_RED)
	    {
	        TogglePlayerControllable(playerid, 1);
	        RTRCRS(playerid);
			GivePlayerWeapon(playerid, 34, 75);
	        SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You have joined the Red Team");
            SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");
		}
	}
	else if(MAP == 1) // Jefferson Motel
	{
	    SetPlayerInterior(playerid,15);
	    if(gPlayerClass[playerid] == TEAM_BLUE)
	    {
	        TogglePlayerControllable(playerid, 1);
	        BTJMRS(playerid);
   			GivePlayerWeapon(playerid, 34, 75);
	        SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You have joined the Blue Team");
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");

	    }
	    else if(gPlayerClass[playerid] == TEAM_RED)
	    {
	        RTJMRS(playerid);
	        TogglePlayerControllable(playerid, 1);
			GivePlayerWeapon(playerid, 34, 75);
	        SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You have joined the Red Team");
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");
		}
	}
	else if(MAP == 2) //Liberty City
	{
   		SetPlayerInterior(playerid,1);
		if(gPlayerClass[playerid] == TEAM_BLUE)
 		{
 		    BTLCRS(playerid);
  			TogglePlayerControllable(playerid, 1);
			GivePlayerWeapon(playerid, 34, 75);
  			SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You have joined the Blue Team");
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");
  		}
  		else if(gPlayerClass[playerid] == TEAM_RED)
   		{
   		    RTLCRS(playerid);
	        TogglePlayerControllable(playerid, 1);
			GivePlayerWeapon(playerid, 34, 75);
	        SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You have joined the Red Team");
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");
		}
	}
	else if(MAP == 3) //Pleasure Dome
	{
   		SetPlayerInterior(playerid,2);
		if(gPlayerClass[playerid] == TEAM_BLUE)
 		{
 		    BTPDRS(playerid);
  			TogglePlayerControllable(playerid, 1);
			GivePlayerWeapon(playerid, 34, 75);
  			SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You have joined the Blue Team");
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");
  		}
  		else if(gPlayerClass[playerid] == TEAM_RED)
   		{
   		    RTPDRS(playerid);
	        TogglePlayerControllable(playerid, 1);
			GivePlayerWeapon(playerid, 34, 75);
	        SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You have joined the Red Team");
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");
		}
	}
	else if(MAP == 4) // Planning Department
	{
 		SetPlayerInterior(playerid,3);
		if(gPlayerClass[playerid] == TEAM_BLUE)
 		{
 		    BTPLDPTRS(playerid);
  			TogglePlayerControllable(playerid, 1);
			GivePlayerWeapon(playerid, 34, 75);
  			SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You have joined the Blue Team");
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");
  		}
  		else if(gPlayerClass[playerid] == TEAM_RED)
   		{
   		    RTPLDPTRS(playerid);
	        TogglePlayerControllable(playerid, 1);
			GivePlayerWeapon(playerid, 34, 75);
	        SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You have joined the Red Team");
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");
		}
	}
	else if(MAP == 5) // TDM Island
	{
	    SetPlayerInterior(playerid,0);
		if(gPlayerClass[playerid] == TEAM_BLUE)
 		{
 		    BTDMIRS(playerid);
  			TogglePlayerControllable(playerid, 1);
			GivePlayerWeapon(playerid, 34, 75);
  			SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You have joined the Blue Team");
			SendClientMessage(playerid, COLOR_BLUE, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");
  		}
  		else if(gPlayerClass[playerid] == TEAM_RED)
   		{
   		    RTDMIRS(playerid);
	        TogglePlayerControllable(playerid, 1);
			GivePlayerWeapon(playerid, 34, 75);
	        SetPlayerHealth(playerid, INFINITY);
			SetTimerEx("AntiSpawnKill", 10000, false, "i", playerid);
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You have joined the Red Team");
			SendClientMessage(playerid, COLOR_RED, "{0049FF}SERVER:{00A5FF}You are protected by Anti-Spawn Kill,for 10 seconds!");
		}
	}
	SPAWNED[playerid] = 1;
	format(str,sizeof(str),"%s ~b~spawned.~w~",GetName(playerid));
	return 1;
}



public OnPlayerDeath(playerid, killerid, reason)
{
	GameTextForPlayer(playerid, "~g~ You Died!", 3000, 5);
    GameTextForPlayer(killerid, "~g~Good job! +$250 ~w~& ~b~+2 score", 3000, 3);
    SendDeathMessage(killerid, playerid, reason);
    if(gTeam[killerid] == TEAM_BLUE)
    {
        eKills ++;
        BLUEKILLS++;
    }
    else if(gTeam[killerid] == TEAM_RED)
    {
        fKills ++;
        REDKILLS++;
    }
        if(GetPVarInt(playerid, "Sniped") == 1)
    {
        SetPVarInt(playerid, "Sniped", 0);
        GameTextForPlayer(playerid, "~r~Ouch, Headshot", 3000, 3);
        GameTextForPlayer(killerid, "~r~Nice, Headshot", 3000, 3);
    }
    if(gTeam[killerid] == gTeam[playerid])
    {
        SendClientMessage(killerid, COLOR_RED, "You have killed a teammate, resulting a loss of $1000 and 4 score.");
        GameTextForPlayer(killerid, "~r~ -$1000/-4 Score", 3000, 3);
        GivePlayerMoney(killerid, -1000);
        GivePlayerScore(killerid, -4);
    }
    pInfo[killerid][Kills] ++;
    pInfo[playerid][Deaths] ++;
    SetPlayerScore(killerid, GetPlayerScore(killerid) + 2);
    GivePlayerMoney(killerid, 250);
	Spree[playerid] = 0;
	new spstring[128];
	if(killerid != INVALID_PLAYER_ID)
	{
		Spree[killerid] ++;
		if(Spree[killerid] == 5)
		{
			format(spstring,sizeof spstring,"%s[%d] has made a 5 Kill Spree", PlayerName(killerid), killerid);
			SendClientMessageToAll(COLOR_BLUE, spstring);
			SetPlayerScore(killerid, GetPlayerScore(killerid) +3);
			SendClientMessage(killerid, COLOR_RED, "You have made a 5 Kill Spree, you get +3 score");
		}
		else if(Spree[killerid] == 10)
		{
			format(spstring,sizeof spstring,"%s[%d] has made a 10 Kill Spree", PlayerName(killerid), killerid);
			SendClientMessageToAll(COLOR_BLUE, spstring);
			SetPlayerScore(killerid, GetPlayerScore(killerid) +5);
			SendClientMessage(killerid, COLOR_RED, "You have made a 10 Kill Spree, you get +5 score");
		}
		else if(Spree[killerid] == 20)
		{
		    format(spstring,sizeof spstring,"%s[%d] has made a 20 Kill Spree", PlayerName(killerid), killerid);
		    SendClientMessageToAll(COLOR_BLUE, spstring);
	   		SetPlayerScore(killerid, GetPlayerScore(killerid) +7);
			SendClientMessage(killerid, COLOR_RED, "You have made a 20 Kill Spree, you get +7 score");
		}
	}
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

forward CheckHeadShot();
public CheckHeadShot()
{
    new
        index;
    for(new playerid; playerid < maxPlayers; playerid++)
    {
        if(IsPlayerConnected(playerid))
        {
        if(GetPlayerWeapon(playerid) == 34 )
        {
        index = GetPlayerAnimationIndex(playerid);
        if(index == 1173 || index == 1175 || index == 1177 || index == 1178)
        {
                SetPVarInt(playerid, "Sniped", 1);
                SetPlayerHealth(playerid, -37);
                }
            }
        }
    }
    return 1;
}

forward BanExPublic(playerid, reason[]);
public BanExPublic(playerid, reason[])
{
    BanEx(playerid, reason);
}

stock BanExWithMessage(playerid, color, message[], reason[])
{
    //reason - The ban reason to be used for BanEx.
    SendClientMessage(playerid, color, message);
    SetTimerEx("BanExPublic", 1000, false, "d", playerid, reason);
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return 1;
}

public OnPlayerUnfairPlay(playerid, playType)
{
    switch(playType)
    {
        case FP_HIGH_PING:
        {
            ShowPlayerDialog(playerid,DIALOG_KICK, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Kicked***",""COL_LIGHTBLUE"You have been Kicked because you have a Very high ping","Ok","");
            Kick(playerid);
        }

        case FP_WEAPON_HACK:
        {
            return 1;
        }

        case FP_VEHICLE_SPEED_HACK:
        {
            ShowPlayerDialog(playerid,DIALOG_KICK, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Kicked***",""COL_LIGHTBLUE"You have been Banned\nBecause you used: Vehicle Speed Hack","Ok","");
            BanExWithMessage(playerid, 0xFF0000FF, "You have been Banned!", "Speed Hack");
        }

        case FP_JETPACK_HACK:
        {
            ShowPlayerDialog(playerid,DIALOG_KICK, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Banned***",""COL_LIGHTBLUE"You have been Banned\nBecause you used: Jetpack Hack","Ok","");
            BanExWithMessage(playerid, 0xFF0000FF, "You have been Banned!", "Jet-Pack Hack");
        }

        case FP_SWEARING:
        {
            ShowPlayerDialog(playerid,DIALOG_KICK, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Kicked***",""COL_LIGHTBLUE"You have been Kicked\nBecause you: Swore in Chat","Ok","");
            Kick(playerid);
        }

        case FP_FLY_HACK:
        {
            ShowPlayerDialog(playerid,DIALOG_KICK, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Banned***",""COL_LIGHTBLUE"You have been Banned\nBecause you used: Fly Hack","Ok","");
            BanExWithMessage(playerid, 0xFF0000FF, "You have been Banned!", "Fly Hack");
        }

        case FP_CHAT_SPAM:
        {
            ShowPlayerDialog(playerid,DIALOG_KICK, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Kicked***",""COL_LIGHTBLUE"You have been Kicked\nBecause you: Spammed in Chat","Ok","");
            Kick(playerid);
        }

        case FP_AFK:
        {
            ShowPlayerDialog(playerid,DIALOG_KICK, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Kicked***",""COL_LIGHTBLUE"You have been Kicked\nBecause you: Went AFK in a TDM Server","Ok","");
            Kick(playerid);
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
            ShowPlayerDialog(playerid,DIALOG_KICK, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Kicked***",""COL_LIGHTBLUE"You have been Kicked\nBecause you: HelliBladed ","Ok","");
            Kick(playerid);
        }

        case FP_VEHICLE_MOD_HACK:
        {
            ShowPlayerDialog(playerid,DIALOG_KICK, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Banned***",""COL_LIGHTBLUE"You have been Banned\nBecause you used: Vehicle Mod Hack","Ok","");
            BanExWithMessage(playerid, 0xFF0000FF, "You have been Banned!", "Vehicle-Modification Hack");
        }

        case FP_SERVER_AD:
        {
            ShowPlayerDialog(playerid,DIALOG_KICK, DIALOG_STYLE_MSGBOX,""COL_BLUE"***Banned***",""COL_LIGHTBLUE"You have been Banned\nBecause you: Promoted another Server","Ok","");
            BanExWithMessage(playerid, 0xFF0000FF, "You have been Banned!", "Sever Advertisement");
        }


        case FP_TELEPORT_HACK:
        {
			return 1;
        }
    }
    return 1;
}

public ChangeMap()
{
	KillTimer(maptimer);
	KillTimer(roundtimer);
	seconds = 0;
 	REDKILLS=0;
  	BLUEKILLS=0;
   	UpdateTeamScore();
	if(MAP == 0)
	{
	    MAP = 1;
	    timeleft = ROUND_MINUTES;
        roundtimer = SetTimer("Second",1000,true);
        RespawnAll();
        UnFreezeAll();
		TextDrawSetString(CurrentMap,"Jefferson Motel");
		SendRconCommand("mapname Jefferson Motel");
		SendClientMessageToAll(-1,"SERVER: {F9E8B7}Map changed.");
	}
	else if(MAP == 1)
	{
		MAP = 2;
 		timeleft = ROUND_MINUTES;
        roundtimer = SetTimer("Second",1000,true);
        RespawnAll();
        UnFreezeAll();
		TextDrawSetString(CurrentMap,"Liberty City");
		SendRconCommand("mapname Liberty City");
		SendClientMessageToAll(-1,"SERVER: {F9E8B7}Map changed.");
	}
	else if(MAP == 2)
	{
		MAP = 3;
 		timeleft = ROUND_MINUTES;
        roundtimer = SetTimer("Second",1000,true);
        RespawnAll();
        UnFreezeAll();
		TextDrawSetString(CurrentMap,"Pleasure Domes");
		SendRconCommand("mapname Pleasure Domes");
		SendClientMessageToAll(-1,"SERVER: {F9E8B7}Map changed.");
	}
	else if(MAP == 3)
	{
	    MAP = 4;
 		timeleft = ROUND_MINUTES;
        roundtimer = SetTimer("Second",1000,true);
        RespawnAll();
        UnFreezeAll();
		TextDrawSetString(CurrentMap,"Planning Dept.");
		SendRconCommand("mapname Planning Department");
		SendClientMessageToAll(-1,"SERVER: {F9E8B7}Map changed.");
	}
	else if(MAP == 4)
	{
 		MAP = 5;
 		timeleft = ROUND_MINUTES;
        roundtimer = SetTimer("Second",1000,true);
        RespawnAll();
        UnFreezeAll();
		TextDrawSetString(CurrentMap,"TDM Island");
		SendRconCommand("mapname TDM Island");
		SendClientMessageToAll(-1,"SERVER: {F9E8B7}Map changed.");
	}
	else if(MAP == 5)
	{
		MAP = 0;
 		timeleft = ROUND_MINUTES;
        roundtimer = SetTimer("Second",1000,true);
        RespawnAll();
        UnFreezeAll();
		TextDrawSetString(CurrentMap,"RC Battlefield");
		SendRconCommand("mapname RC Battlefield");
		SendClientMessageToAll(-1,"SERVER: {F9E8B7}Map changed.");
	}
	UnFreezeAll();
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
    if(IsPlayerAdmin(playerid)) return AdminTeleport(playerid,Float:fX, Float:fY, Float:fZ);
    else return 0;
}

public Second()
{
	new timestr[32];
	seconds--;
	if(seconds <= 0)
	{
		if(timeleft <= 0)
		{
  			KillTimer(roundtimer);
	 		seconds = 0;
			timeleft = 0;
			FreezeAll();
			SendClientMessageToAll(-1,"SERVER: {F9E8B7}Changing map...");
			maptimer = SetTimer("ChangeMap",5000,false);
		}
		else
  		{
	    	seconds = 59;
			timeleft--;
		}
	}
	format(timestr,sizeof(timestr),"%02d:%02d",timeleft,seconds);
	TextDrawSetString(Timeleft,timestr);
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
public KickPublic(playerid)
{
	Kick(playerid);
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

public OnVehicleDeath(vehicleid, killerid)
{
    SASFP(killerid);
	return 1;
}

public OnPlayerText(playerid, text[])
{
    new TeamMessage[128];
    GetPlayerName(playerid, TeamMessage, MAX_PLAYER_NAME);
    switch(gTeam[playerid])
    {
        case 0:
        {
            format(TeamMessage,sizeof(TeamMessage),"{0049FF}[Blue Team Chat]{00A5FF}%s:{FFFFFF} %s",TeamMessage,text);
            SendTeamMessage(0,TeamMessage);
        }
        case 1:
        {
            format(TeamMessage,sizeof(TeamMessage),"{A80000}[Red Team Chat]{FF0000}%s:{FFFFFF} %s",TeamMessage,text);
            SendTeamMessage(1,TeamMessage);
        }
    }
    if (text[0] == '#')
    {
    if(pInfo[playerid][Adminlevel] < 1)
    {
    SendClientMessage(playerid, COLOR_RED, "[ERROR]: This is An ADMIN Chat!");
    return 0;
    }
    new ADMINMessage[128];
    GetPlayerName(playerid, ADMINMessage, MAX_PLAYER_NAME);
    format(ADMINMessage , sizeof ADMINMessage, "ADMIN Chat: %s: %s" , ADMINMessage, text[1]);
    for (new i; i<MAX_PLAYERS; i++)
    {
    if (!IsPlayerConnected(i)) continue;
    if(pInfo[i][Adminlevel] < 1) continue;
    SendClientMessage(i, COLOR_GREEN, ADMINMessage);
    }
    return 0;
    }
    if(Muted[playerid] == 1)
	{
	SendClientMessage(playerid, COLOR_RED, "[SYSTEM]: You can't Speak, You are Muted!");
	return 0;
	}
	return 0;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
    if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER ) SASFP(playerid);
    if(newstate == PLAYER_STATE_PASSENGER || newstate == PLAYER_STATE_DRIVER) SetPlayerArmedWeapon(playerid, 0);
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if( IsPlayerSpawned(playerid) && (PRESSED(KEY_FIRE)))
	{
	    if (gTeam[playerid] == TEAM_BLUE)
	    {
	        ShowPlayerMarkers(1);
	        SetPlayerMarkerForPlayer(TEAM_RED,TEAM_BLUE,COLOR_RED );
		}
		else if (gTeam[playerid] == TEAM_RED)
    	{
    	    ShowPlayerMarkers(1);
    	    SetPlayerMarkerForPlayer(TEAM_RED,TEAM_BLUE,COLOR_RED );
		}
	}
	else if( IsPlayerSpawned(playerid) && (HOLDING(KEY_FIRE)))
	{
 		if (gTeam[playerid] == TEAM_BLUE)
 		{
 			ShowPlayerMarkers(1);
 			SetPlayerMarkerForPlayer(TEAM_RED,TEAM_BLUE,COLOR_RED );
		}
		else if (gTeam[playerid] == TEAM_RED)
		{
 			ShowPlayerMarkers(1);
 			SetPlayerMarkerForPlayer(TEAM_RED,TEAM_BLUE,COLOR_RED );
		}
		return 1;
  	}
	if( IsPlayerSpawned(playerid) && !IsPlayerInAnyVehicle(playerid) && (PRESSED(KEY_HANDBRAKE) || RELEASED(KEY_HANDBRAKE)) )
	{
		if(IsPlayerAiming(playerid))
		{
		    ShowPlayerMarkers(0);
		}
	}
  	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
    new acount = GetTeamCount(TEAM_BLUE);
    new bcount = GetTeamCount(TEAM_RED);
    new ccount = GetTeamCount(TEAM_UNDEFINED);
    switch(gTeam[playerid])
    {
        case TEAM_BLUE:
        {
            if(acount > bcount)
            {
                GameTextForPlayer(playerid, "~b~ Blue Team is Full!", 3000, 5);
                return 0;
            }
            else if(acount == bcount)
            {
                return 1;
			}
            else if(ccount > acount)
            {
                return 1;
            }
            else if(ccount > bcount)
            {
                return 1;
            }
            else if(ccount > acount || bcount)
            {
                return 1;
            }
        }
        case TEAM_RED:
        {
            if(bcount > acount)
            {
                GameTextForPlayer(playerid, "~r~ Red Team is Full!", 3000, 5);
                return 0;
            }
            else if(acount == bcount)
            {
                return 1;
			}
            else if(ccount > acount)
            {
                return 1;
            }
            else if(ccount > bcount)
            {
                return 1;
            }
            else if(ccount > acount || bcount)
            {
                return 1;
            }
        }
    }
    return 1;
}

public OnPlayerUpdate(playerid)
{
	new weaponid = GetPlayerWeapon(playerid);//This will cause the "weaponid not defined" Error
	new Nam[MAX_PLAYER_NAME];//Miss weapon id 34 == sniper
	new str[128];
	if(weaponid == 1) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a BRASSKNUCKLE!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 2) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a GOLFCLUB!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 3) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a NITESTICK!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 4) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning  Brass Knuckles!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 5) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Golf Club!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 6) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Nightstick!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 7) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Knife!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 8) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Baseball Bat!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 9) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Shovel!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 10) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Pool Cue!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 11) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Katana!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 12) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Chainsaw!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 13) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Purple Dildo!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 14) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Dildo!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 15) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Vibrator!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 16) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Silver Vibrator!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 17) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning Flowers!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 18) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Cane!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 19) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Grenade!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 20) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning Tear Gas!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 21) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Molotov Cocktail!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 22) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a 9mm!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 23) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Silenced 9mm!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 24) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Desert Eagle!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 25) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Shotgun!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 26) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Sawnoff Shotgun!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 27) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Combat Shotgun!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 28) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Micro SMG/Uzi!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 29) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a MP5!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 30) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a AK-47!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 31) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a M4!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 32) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Tec-9!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 33) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Country Rifle!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 35) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a RPG!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 36) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a HS Rocket!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 37) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Flamethrower!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 38) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Minigun!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 39) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Satchel Charge!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 40) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Detonator!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 41) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Spraycan!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 42) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Fire Extinguisher!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 43) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Camera!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 44) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning Night Vision Goggles!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 45) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning Thermal Goggles!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}

	if(weaponid == 46) // The weapon ID
	{
		GetPlayerName(playerid,Nam,sizeof(Nam));
		format(str,sizeof(str),"ANTI WEAPON HACK: %s has been banned from server for spawning a Parachute!",Nam);
		SendClientMessageToAll(0xFF0000FF,str);// Sends message to everyone
		BanEx(playerid,"ANTI WEAPON HACK: Weapon Hack!");
	}
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_MUSIC)
    {
    	if(!response) return 1;
     	if(!strlen(inputtext)) return ShowPlayerDialog(playerid,DIALOG_MUSIC,DIALOG_STYLE_INPUT,"Youtube Player", "Please input the URL of the song you want (Example: wwww.youtube.com/watch?v=VID Change the VID!)","Play","Cancel");
      	if(strfind(inputtext,"www.youtube.com",true) == -1) return ShowPlayerDialog(playerid,DIALOG_MUSIC,DIALOG_STYLE_INPUT,"Youtube", "Please input the URL of the song you want (Example: wwww.youtube.com/watch?v=VID Change the VID!)","Play","Cancel");
       	new localURL[128];
       	strmid(localURL,inputtext,strfind(inputtext, "v=")+2,strfind(inputtext, "v=")+19);
        new localString[128];
        format(localString, 128, "http://mwrserver.com/youtube.php?videoid=%s",localURL);
        for(new i; i != MAX_PLAYERS; i++) PlayAudioStreamForPlayer(i,localString);
	}
    if(dialogid == DIALOG_SETTINGS)
    {
    if(!response)return 0;
    if(response)
    {
    if(listitem == 0)return ShowPlayerDialog(playerid, DialogHostname, DIALOG_STYLE_INPUT, "Change {FF0000}HostName", "Enter new Hostname:", "Enter", "Back");
    if(listitem == 1)return ShowPlayerDialog(playerid, DialogGamemode, DIALOG_STYLE_INPUT, "Change {FF0000}GameMode", "Enter new Gamemode name:", "Enter", "Back");
    if(listitem == 2)return ShowPlayerDialog(playerid, DialogMapname, DIALOG_STYLE_INPUT, "Change {FF0000}MapName", "Enter new Mapname:", "Enter", "Back");
    if(listitem == 3)return ShowPlayerDialog(playerid, DialogWeburl, DIALOG_STYLE_INPUT, "Change {FF0000}Web URL", "Enter new Web URL:", "Enter", "Back");
    if(listitem == 4)return ShowPlayerDialog(playerid, DialogRconpass, DIALOG_STYLE_INPUT, "Change {FF0000}RCON Password", "Enter new RCON Password:", "Enter", "Back");
    if(listitem == 5)return ShowPlayerDialog(playerid, DialogReset, DIALOG_STYLE_MSGBOX, "Reset {FF0000}Server", "Do you really want to restart server ?", "Yes", "No");
    }
    }
    if(dialogid == DialogReset)
    {
    if(!response)return ShowPlayerDialog(playerid, DIALOG_SETTINGS, DIALOG_STYLE_LIST, "Server Settings", "{FF0000}1. {FFFFFF}- Change Hostname\n{FF0000}2. {FFFFFF}- Change Gamemode Text\n{FF0000}3. {FFFFFF}- Change Mapname\n{FF0000}4. {FFFFFF}- Change Web URL\n{FF0000}5. {FFFFFF}- Change RCON Password\n{FF0000}6. {FFFFFF}- Restart Server", "Continue", "Close");
  		    if(response)
 	      {
        SendRconCommand("gmx");
    GameTextForAll("~g~Server ~w~is ~r~restarting~w~, ~w~Please, wait...", 5000, 5);
    WriteInLog("IGS/Logs/ResetServer.log", "", "%s has Reseted the Server", GetName(playerid));
    }
    }
    if(dialogid == DialogHostname)
    {
    if(!response)return ShowPlayerDialog(playerid, DIALOG_SETTINGS, DIALOG_STYLE_LIST, "Server Settings", "{FF0000}1. {FFFFFF}- Change Hostname\n{FF0000}2. {FFFFFF}- Change Gamemode Text\n{FF0000}3. {FFFFFF}- Change Mapname\n{FF0000}4. {FFFFFF}- Change Web URL\n{FF0000}5. {FFFFFF}- Change RCON Password\n{FF0000}6. {FFFFFF}- Restart Server", "Continue", "Close");
        if(response)
        {
        new Hostname[100]; new string[150];
    format(Hostname, sizeof(Hostname), "hostname %s", inputtext);
    SendRconCommand(Hostname);
    format(string, sizeof(string), "~g~Hostname ~w~has been changed to: ~b~%s", inputtext);
    GameTextForPlayer(playerid, string, 4000, 5);
    WriteInLog("IGS/Logs/ChangeHostname.log", "", "%s has changed the Hostname to: %s", GetName(playerid), inputtext);
    }
    }
    if(dialogid == DialogGamemode)
    {
    if(!response)return ShowPlayerDialog(playerid, DIALOG_SETTINGS, DIALOG_STYLE_LIST, "Server Settings", "{FF0000}1. {FFFFFF}- Change Hostname\n{FF0000}2. {FFFFFF}- Change Gamemode Text\n{FF0000}3. {FFFFFF}- Change Mapname\n{FF0000}4. {FFFFFF}- Change Web URL\n{FF0000}5. {FFFFFF}- Change RCON Password\n{FF0000}6. {FFFFFF}- Restart Server", "Continue", "Close");
        if(response)
        {
    new Gamemode[100]; new string[150];
    format(Gamemode, sizeof(Gamemode), "gamemodetext %s", inputtext);
    SendRconCommand(Gamemode);
    format(string, sizeof(string), "~g~Gamemode Text ~w~has been changed to: ~b~%s", inputtext);
    GameTextForPlayer(playerid, string, 4000, 5);
    WriteInLog("IGS/Logs/ChangeGamemodetext.log", "", "%s has changed the Gamemode Text to: %s", GetName(playerid), inputtext);
    }
    }
    if(dialogid == DialogMapname)
    {
    if(!response)return ShowPlayerDialog(playerid, DIALOG_SETTINGS, DIALOG_STYLE_LIST, "Server Settings", "{FF0000}1. {FFFFFF}- Change Hostname\n{FF0000}2. {FFFFFF}- Change Gamemode Text\n{FF0000}3. {FFFFFF}- Change Mapname\n{FF0000}4. {FFFFFF}- Change Web URL\n{FF0000}5. {FFFFFF}- Change RCON Password\n{FF0000}6. {FFFFFF}- Restart Server", "Continue", "Close");
        if(response)
        {
        new Mapname[100]; new string[150];
    format(Mapname, sizeof(Mapname), "mapname %s", inputtext);
    SendRconCommand(Mapname);
    format(string, sizeof(string), "~g~Mapname ~w~has been changed to: ~b~%s", inputtext);
    GameTextForPlayer(playerid, string, 4000, 5);
    WriteInLog("IGS/Logs/ChangeMapname.log", "", "%s has changed the Mapname to: %s", GetName(playerid), inputtext);
    }
    }
    if(dialogid == DialogWeburl)
    {
    if(!response)return ShowPlayerDialog(playerid, DIALOG_SETTINGS, DIALOG_STYLE_LIST, "Server Settings", "{FF0000}1. {FFFFFF}- Change Hostname\n{FF0000}2. {FFFFFF}- Change Gamemode Text\n{FF0000}3. {FFFFFF}- Change Mapname\n{FF0000}4. {FFFFFF}- Change Web URL\n{FF0000}5. {FFFFFF}- Change RCON Password\n{FF0000}6. {FFFFFF}- Restart Server", "Continue", "Close");
        if(response)
        {
        new Weburl[150]; new string[150];
    format(Weburl, sizeof(Weburl), "weburl %s", inputtext);
    SendRconCommand(Weburl);
    format(string, sizeof(string), "~g~Web URL ~w~has been changed to: ~b~%s", inputtext);
    GameTextForPlayer(playerid, string, 4000, 5);
    WriteInLog("IGS/Logs/ChangeWeburl.log", "", "%s has changed the Web URL to: %s", GetName(playerid), inputtext);
    }
    }
    if(dialogid == DialogRconpass)
    {
    if(!response)return ShowPlayerDialog(playerid, DIALOG_SETTINGS, DIALOG_STYLE_LIST, "Server Settings", "{FF0000}1. {FFFFFF}- Change Hostname\n{FF0000}2. {FFFFFF}- Change Gamemode Text\n{FF0000}3. {FFFFFF}- Change Mapname\n{FF0000}4. {FFFFFF}- Change Web URL\n{FF0000}5. {FFFFFF}- Change RCON Password\n{FF0000}6. {FFFFFF}- Restart Server", "Continue", "Close");
        if(response)
        {
        new Rconpass[50]; new string[150];
    format(Rconpass, sizeof(Rconpass), "rcon_password %s", inputtext);
    SendRconCommand(Rconpass);
    format(string, sizeof(string), "~g~RCON Password ~w~has been changed to: ~b~%s", inputtext);
    GameTextForPlayer(playerid, string, 4000, 5);
    WriteInLog("IGS/Logs/ChangeRconpass.log", "", "%s has changed the RCON password to: %s", GetName(playerid), inputtext);
    }
    }
    if(dialogid == REGISTER_DIALOG)
    {
    if(!response)return Kick(playerid);
    if(response)
    {
    if(!strlen(inputtext))
    {
    new string[300];
    new registerid;
    format(string, sizeof(string), "{00A5FF}Hello %s!\n\n{00A5FF}Please type below your password{00A5FF}, to create a new account!", GetName(registerid), registerid);
    ShowPlayerDialog(playerid, REGISTER_DIALOG, DIALOG_STYLE_INPUT, "{0049FF}Register:", string, "Register", "Quit");
    return 1;
    }
    new hashpass[129];
    WP_Hash(hashpass, sizeof(hashpass), inputtext);
    new INI:file = INI_Open(Path(playerid));
    INI_SetTag(file, "Player's Data");
    INI_WriteInt(file, "Registered", 1);
    INI_WriteString(file, "Password", hashpass);
    INI_WriteInt(file, "AdminLevel", 0);
    INI_WriteInt(file, "Money", 0);
    INI_WriteInt(file, "Scores", 0);
    INI_WriteInt(file, "Kills", 0);
    INI_WriteInt(file, "Deaths", 0);
    INI_Close(file);
    new rstring[200];
    new registerid;
    format(rstring, sizeof(rstring), "{0049FF}[SERVER]:{00A5FF}You have been successfully Registered!{FFFFFF} [Name: %s] [Password: %s]", GetName(registerid), inputtext);
    SendClientMessage(playerid, COLOR_GREEN, rstring);
    return 1;
    }
    }
    if(dialogid == LOGIN_DIALOG)
    {
    if(!response)return Kick(playerid);
    if(response)
    {
    new hashpass[129];
    WP_Hash(hashpass, sizeof(hashpass), inputtext);
    if(!strcmp(hashpass, pInfo[playerid][Pass]))
    {
    new loginid;
	new lstring[300];
    INI_ParseFile(Path(playerid), "loadaccount_%s", .bExtra = true, .extra = playerid);
    SetPlayerScore(playerid, pInfo[playerid][Scores]);
    GivePlayerMoney(playerid, pInfo[playerid][Money]);
    format(lstring, sizeof(lstring), "{0049FF}[SERVER]: {00A5FF}You have been successfully Logged in!{FFFFFF} [Name: %s ] [Score: %d] [Money: %d] [Admin: %d]", GetName(loginid), pInfo[playerid][Scores], pInfo[playerid][Money], pInfo[playerid][Adminlevel]);
    SendClientMessage(playerid, COLOR_GREEN, lstring);
    ShowPlayerDialog(playerid, 2, DIALOG_STYLE_MSGBOX, "{FF8000}Rules:","No Heli/Car Killing!\n\nNo Team Killing!\n\nNo Cheating/Hacking!\n\nNo Flooding!\n\nNo Spamming!\n\nNo Insulting!\n\nRespect Everyone!","Accept","Decline");
 		 }
    else
    {
   	new string1[300];
   	new loginid;
    format(string1, sizeof(string1), "{0049FF}Welcome Back {FFFFFF}%s(ID:%d)!\n\n{FFFFFF}You have typed {FF0000}wrong password{FFFFFF}!\nTry again, to load your DATA!", GetName(loginid), loginid);
    ShowPlayerDialog(playerid, LOGIN_DIALOG, DIALOG_STYLE_INPUT, "{FF0000}(Wrong Password) {00FF00}Login:", string1, "Login", "Quit");
    SendClientMessage(playerid, COLOR_RED, "[ERROR]: Wrong Password! Please, try again.");
  	 }
		  }
    }
	if (dialogid == DIALOG_GENRES) //==RADIOSTATION==//
		{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==PoP==//
			{
			    if(!IsPlayerInAnyVehicle(playerid)) return SPD(playerid, DIALOG_OUTOFCARSR, DIALOG_STYLE_MSGBOX, "Stop Radio","You must be in a vehicle to stop a custom Radio station!", "Okay", "Cancel");
                SPD(playerid,DIALOG_POP, DIALOG_STYLE_LIST, "Pop Radio Selection", "{BB0000}Power 181.FM\n{BB0000}Radio Paloma\n{BB0000}MUSIK.MAIN\n{BB0000}.977 The Hitz Channel\n{BB0000}Lux.FM\n{BB0000}Radio VHR\n{BB0000}ChartHits.FM\n{BB0000}Sky.FM\n{BB0000}PRO.FM", "Listen", "Cancel");
            }
			if(listitem == 1) //==RaP==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_RAP, DIALOG_STYLE_LIST, "Rap Radio Selection", "{BB0000}HOT 108 JAMZ\n{BB0000}MUSIK.JAM\n{BB0000}181.FM The BEAT\n{BB0000}Smoothbeats\n{BB0000}108.FM THE HITLIST\n{BB0000}TrueHipHop\n{BB0000}A1Jamz\n{BB0000}True Beats\n{BB0000}MKM URBAN\n{BB0000}G'D Up Radio", "Listen", "Cancel");
            }
            if(listitem == 2) //==Reggae==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_REGGAE, DIALOG_STYLE_LIST, "Reggae Radio Selection", "{BB0000}RRS.FM\n{BB0000}La Grosse\n{BB0000}BigUpRadio\n{BB0000}RaggaKings\n{BB0000}PONdENDS\n{BB0000}Reggae141\n{BB0000}RRR.FM\n{BB0000}1.FM ReggaeTrade\n{BB0000}Black Roots Radio", "Listen", "Cancel");
            }
            if(listitem == 3) //==Electronic==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_ELECTRONIC, DIALOG_STYLE_LIST, "Electronic Radio Selection", "{BB0000}TechnoBase\n{BB0000}VocalTrance\n{BB0000}M.H Funky\n{BB0000}TC.FM\n{BB0000}HouseTime.FM\n{BB0000}Dubstep.FM\n{BB0000}54House.FM\n{BB0000}DrumStep.FM\n{BB0000}HardBase.FM\n{BB0000}Techno4Ever.FM", "Listen", "Cancel");
            }
            if(listitem == 4) //==Alternative==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_ALTERNATIVE, DIALOG_STYLE_LIST, "Alternative Radio Selection", "{BB0000}Idobi Radio\n{BB0000}181.FM The Buzz\n{BB0000}RauteMusik.FM\n{BB0000}FM4\n{BB0000}ChroniX Radio\n{BB0000}Pinguin Radio\n{BB0000}KEXP\n{BB0000}KCRW Simulcas\n{BB0000}Metal Only\n{BB0000}1.FM Channel X", "Listen", "Cancel");
            }
            if(listitem == 5) //==Blues==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_BLUES, DIALOG_STYLE_LIST, "Blues Radio Selection", "{BB0000}1.FM Blues\n{BB0000}BellyUp4Blues\n{BB0000}CALMRADIO\n{BB0000}KOQS Blues\n{BB0000}GotRadio\n{BB0000}Radioio Blues\n{BB0000}Polski Radio\n{BB0000}Big Blue Swing\n{BB0000}City Sounds Radio", "Listen", "Cancel");
            }
            if(listitem == 6) //==Classical==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_CLASSICAL, DIALOG_STYLE_LIST, "Classical Radio Selection", "{BB0000}Classical 102\n{BB0000}Iowa Public Radio\n{BB0000}181.FM Classic Hits\n{BB0000}Cinemix\n{BB0000}Venice Classic Radio\n{BB0000}Sky.FM Piano\n{BB0000}SKY.FM Mostly Classic\n{BB0000}Adagio.FM\n{BB0000}Classical 96.3FM CFMZ\n{BB0000}Abacus.FM Mozart Piano", "Listen", "Cancel");
            }
            if(listitem == 7) //==Country==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_COUNTRY, DIALOG_STYLE_LIST, "Country Radio Selection", "{BB0000}181.FM Kickin' Country\n{BB0000}Allways Country\n{BB0000}Country 108\n{BB0000}181.FM Highway\n{BB0000}HPR1.FM\n{BB0000}Radio Positiva\n{BB0000}1.FM Country\n{BB0000}Boot Liquor\n{BB0000}Absolute COUNTRY Hits\n{BB0000}181.FM Real Country", "Listen", "Cancel");
            }
            if(listitem == 8) //==Decades==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_DECADES, DIALOG_STYLE_LIST, "Decades Radio Selection", "{BB0000}101.6 Big R Radio\n{BB0000}The Hawk Big R Radio\n{BB0000}100.7 The Mix\n{BB0000}Vintage Jazz\n{BB0000}Oldies104\n{BB0000}1.FM 50's N 60's\n{BB0000}The Doo-Wop Express\n{BB0000}Beatless Radio\n{BB0000}1.FM 80's Channel\n{BB0000}SKY.FM 80's", "Listen", "Cancel");
            }
            if(listitem == 9) //==EasyListening==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_EASYLISTENING, DIALOG_STYLE_LIST, "EasyListening Radio Selection", "{BB0000}Slow Radio\n{BB0000}MUSIK.LOUNGE\n{BB0000}Blue.FM\n{BB0000}SKY.FM\n{BB0000}Radio227\n{BB0000}COOL93\n{BB0000}KLUX 89.5HD\n{BB0000}AbidingRadio\n{BB0000}Louge Radio\n{BB0000}1.FM The Chillout Lounge", "Listen", "Cancel");
            }
            if(listitem == 10) //==Folk==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_FOLK, DIALOG_STYLE_LIST, "Folk Radio Selection", "{BB0000}Free Vermont\n{BB0000}Pink Narodna Muzika\n{BB0000}Dzungla Radio\n{BB0000}Folk Alley\n{BB0000}Radio BN\n{BB0000}Radio Glas Drine\n{BB0000}COOL Radio\n{BB0000}Antioch OT\n{BB0000}A&P-R Network\n{BB0000}New Age SKY.FM", "Listen", "Cancel");
            }
            if(listitem == 11) //==Inspirational==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_INSPIRATIONAL, DIALOG_STYLE_LIST, "Inspirational Radio Selection", "{BB0000}Russian Christian Radio\n{BB0000}AbidingRadio\n{BB0000}1 NATION FM\n{BB0000}XL Radio\n{BB0000}Radio Lumiere\n{BB0000}Ancient Faith\n{BB0000}Bautista Radio\n{BB0000}Radio Nueva\n{BB0000}ChristianRock\n{BB0000}FBC Radio", "Listen", "Cancel");
            }
            if(listitem == 12) //==International==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_INTERNATIONAL, DIALOG_STYLE_LIST, "International Radio Selection", "{BB0000} Radioparty\n{BB0000} Dronezone\n{BB0000} Energy.FM\n{BB0000} Pulseradio", "Listen", "Cancel");
            }
            if(listitem == 13) //==Jazz==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_JAZZ, DIALOG_STYLE_LIST, "Jazz Radio Selection", "{BB0000} Radioparty\n{BB0000} Dronezone\n{BB0000} Energy.FM\n{BB0000} Pulseradio", "Listen", "Cancel");
            }
            if(listitem == 14) //==Latin==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_LATIN, DIALOG_STYLE_LIST, "Latin Radio Selection", "{BB0000} Radioparty\n{BB0000} Dronezone\n{BB0000} Energy.FM\n{BB0000} Pulseradio", "Listen", "Cancel");
            }
            if(listitem == 15) //==Metal==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_METAL, DIALOG_STYLE_LIST, "Metal Radio Selection", "{BB0000} Radioparty\n{BB0000} Dronezone\n{BB0000} Energy.FM\n{BB0000} Pulseradio", "Listen", "Cancel");
            }
            if(listitem == 16) //==Misc==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_MISC, DIALOG_STYLE_LIST, "Misc Radio Selection", "{BB0000} Radioparty\n{BB0000} Dronezone\n{BB0000} Energy.FM\n{BB0000} Pulseradio", "Listen", "Cancel");
            }
            if(listitem == 17) //==NewAge==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_NEWAGE, DIALOG_STYLE_LIST, "NewAge Radio Selection", "{BB0000} Radioparty\n{BB0000} Dronezone\n{BB0000} Energy.FM\n{BB0000} Pulseradio", "Listen", "Cancel");
            }
            if(listitem == 18) //==PublicRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_PUBLICRADIO, DIALOG_STYLE_LIST, "Public Radio Selection", "{BB0000} Radioparty\n{BB0000} Dronezone\n{BB0000} Energy.FM\n{BB0000} Pulseradio", "Listen", "Cancel");
            }
            if(listitem == 19) //==UrbanRnB==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_RNBURBAN, DIALOG_STYLE_LIST, "Urban RnB Radio Selection", "{BB0000} Radioparty\n{BB0000} Dronezone\n{BB0000} Energy.FM\n{BB0000} Pulseradio", "Listen", "Cancel");
            }
            if(listitem == 20) //==Rock==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_ROCK, DIALOG_STYLE_LIST, "Rock Radio Selection", "{BB0000} Radioparty\n{BB0000} Dronezone\n{BB0000} Energy.FM\n{BB0000} Pulseradio", "Listen", "Cancel");
            }
            if(listitem == 21) //==Talk==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid,DIALOG_TALK, DIALOG_STYLE_LIST, "Talk Radio Selection", "{BB0000} Radioparty\n{BB0000} Dronezone\n{BB0000} Energy.FM\n{BB0000} Pulseradio", "Listen", "Cancel");
            }
		}
	}
	if (dialogid == DIALOG_POP) //==POP==//
	{
	    if(!response) // If they clicked the right button
        {
            if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
            SCM(playerid, COLOR_RED, "You Canceled the PoP Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==POWER=181.FM==//
			{
       if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
				PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=19972");
			}
			if(listitem == 1) //==Radio=Paloma==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=217087");
            }
            if(listitem == 2) //==MUSIK.MAIN==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=12337");
            }
            if(listitem == 3) //==.977=The=Hitz=Channel==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://tunein.com/radio/977-Todays-Hits-s48940/");
			}
			if(listitem == 4) //==Lux.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://tunein.com/radio/Lux-FM-1031-s55142/");
			}
			if(listitem == 5) //==Radio=VHR==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://tunein.com/radio/Radio-VHR-Schlager-s54381/");
			}
			if(listitem == 6) //==ChartHits.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://www.1.fm/station/top40");
			}
			if(listitem == 7) //==SKY.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=728272");
			}
			if(listitem == 8) //==Pop=Radio=One==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=128879");
			}
		}
	}
	if (dialogid == DIALOG_RAP) //==RAP==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
            SendClientMessage(playerid, COLOR_RED, "You Canceled the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==HOT 108 JAMZ==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
				PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1281016");
			}
			if(listitem == 1) //==MUSIK.JAM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1269742");
            }
            if(listitem == 2) //==181.FM THE BEAT==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=166078");
            }
            if(listitem == 3) //==Smoothbeats==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9054");
            }
            if(listitem == 4) //==181.FM THE HITLIST==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1282490");
            }
            if(listitem == 5) //==TrueHipHop==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3083251");
            }
            if(listitem == 6) //==A1JAMZ==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=49567");
            }
            if(listitem == 7) //==True Beats==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1267461");
            }
            if(listitem == 8) //==MKM URBAN==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1818926");
            }
            if(listitem == 9) //==G'D Up Radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1504548");
            }
		}
	}
	if (dialogid == DIALOG_REGGAE) //==REGGAE==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
            SendClientMessage(playerid, COLOR_RED, "You Canceled the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RRS.FM==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
				PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=695657");
			}
			if(listitem == 1) //==La Grosse==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=5661");
            }
            if(listitem == 2) //==BigUpRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1269793");
            }
            if(listitem == 3) //==RaggaKings==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=123431");
            }
            if(listitem == 4) //==PONdENDS==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=221874");
            }
            if(listitem == 5) //==Reggae141==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1280855");
            }
            if(listitem == 6) //==RRR.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1266989");
            }
            if(listitem == 7) //==1.FM ReggaeTrade==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1272779");
            }
            if(listitem == 8) //==BlackRoots Radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=231554");
            }
		}
	}
	if (dialogid == DIALOG_ELECTRONIC) //==Electronic==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
            SendClientMessage(playerid, COLOR_RED, "You Canceled the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==TechnoBase.FM==//
			{
      			 if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1377200");
			}
			if(listitem == 1) //==Vocal Trance==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1177953");
            }
            if(listitem == 2) //==MUSIK.HOUSE Funky==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=2128868");
            }
            if(listitem == 3) //==Trance Channel==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1193516");
            }
            if(listitem == 4) //==HouseTime.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1377360");
            }
            if(listitem == 5) //==Dubstep.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=7225");
            }
            if(listitem == 6) //==54House.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=2808203");
            }
            if(listitem == 7) //==MUSIK.DRUMSTEP==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=46883");
            }
            if(listitem == 8) //==HardBase.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1377430");
            }
            if(listitem == 9) //==Techno4EverMain.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=226769");
            }
		}
	}
	if (dialogid == DIALOG_ALTERNATIVE) //==ALTERNATIVE==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==Idobi Radio==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=21585");
			}
			if(listitem == 1) //==181.FM The Buzz==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=37586");
            }
            if(listitem == 2) //==FM4==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=581319");
            }
            if(listitem == 3) //==CHRONIX==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1377260");
            }
            if(listitem == 4) //==Pinguin Radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=199753");
            }
            if(listitem == 5) //==KEXP==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1272835");
            }
            if(listitem == 6) //==KCRW Simulcas==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1269598");
            }
            if(listitem == 7) //==Metal Only==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=477309");
            }
            if(listitem == 8) //==1.FM Channel X==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1274225");
            }
   		}
	}
	if (dialogid == DIALOG_BLUES) //==Blues==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==1.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1270282");
            }
            if(listitem == 1) //==bellyupblues==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=11408");
            }
            if(listitem == 2) //==calmradio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=205177");
            }
            if(listitem == 3) //==koqx==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1271824");
            }
            if(listitem == 4) //==gotradio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=533805");
            }
            if(listitem == 5) //==radioio blues==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1278494");
            }
            if(listitem == 6) //==polskie radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1044755");
            }
            if(listitem == 7) //==big blue swing==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1377377");
            }
            if(listitem == 8) //==city sounds radio blues==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=20151");
            }
   		}
	}
	if (dialogid == DIALOG_CLASSICAL) //==Classical==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==Classical 102==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1676910");
			}
			if(listitem == 1) //==Iowa Public Radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=177883");
            }
            if(listitem == 2) //==181.FM classical hits==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==Cinemix==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=614375");
            }
            if(listitem == 4) //==Venice Classic Radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1704166");
            }
            if(listitem == 5) //==Solo Piano SKY.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=600682");
            }
            if(listitem == 6) //==Mostly Classical==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=744232");
            }
            if(listitem == 7) //==Adagio.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=212505");
            }
            if(listitem == 8) //==Classical 96.3FM CFMZ==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=2271823");
            }
            if(listitem == 9) //==Abacus.fm Mozart Piano==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=119965");
            }
   		}
	}
	if (dialogid == DIALOG_COUNTRY) //==Country==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==181.FM==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1283687");
			}
			if(listitem == 1) //==Always Country==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1274260");
            }
            if(listitem == 2) //==Country 108==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=668943");
            }
            if(listitem == 3) //==Highway 181==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=147942");
            }
            if(listitem == 4) //==HPR1==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1270526");
            }
            if(listitem == 5) //==Radio Positiva Sertaneja==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=2890335");
            }
            if(listitem == 6) //==1.FM Country==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1274603");
            }
            if(listitem == 7) //==Boot Liquor==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1377561");
            }
            if(listitem == 8) //==Absolute COUNTRY Hits==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1268458");
            }
            if(listitem == 9) //==181.FM Real Country==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=163622");
            }
   		}
	}
	if (dialogid == DIALOG_DECADES) //==Decades==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==Big R Radio Warm 101.6==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=33097");
			}
			if(listitem == 1) //==Big R Radio The Hawk==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=211531");
            }
            if(listitem == 2) //==Big R Radio 100.7 The Mix==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=61826");
            }
            if(listitem == 3) //==Abacus.fm Vintage Jazz==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=242774");
            }
            if(listitem == 4) //==Oldies104==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1271826");
            }
            if(listitem == 5) //==1.FM 50s and 60s==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=37833");
            }
            if(listitem == 6) //==The Doo-Wop Express==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=727560");
            }
            if(listitem == 7) //==Beatles Radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1273220");
            }
            if(listitem == 8) //==1.FM 80s Channel==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1274599");
            }
            if(listitem == 9) //==SKY.FM 80s==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=737152");
            }
   		}
	}
	if (dialogid == DIALOG_EASYLISTENING) //==Easy Listening==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==Slow Radio==//
			{
				if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1658657");
			}
			if(listitem == 1) //==MUSIK.LOUNGE==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=130940");
            }
            if(listitem == 2) //==Blue FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=48138");
            }
            if(listitem == 3) //==SKY.FM Mostly Classical==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=744232");
            }
            if(listitem == 4) //==Radio227 Easy Listening==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=2313198");
            }
            if(listitem == 5) //==COOL93==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=63135");
            }
            if(listitem == 6) //==KLUX 89.5HD==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1697");
            }
            if(listitem == 7) //==AbidingRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=470854");
            }
            if(listitem == 8) //==Lounge Radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1288934");
            }
            if(listitem == 9) //==1.FM The Chillout Lounge==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1268725");
            }
   		}
	}
	if (dialogid == DIALOG_FOLK) //==Folk==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==Radio Free Vermont==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=168942");
			}
			if(listitem == 1) //==Pink Narodna Muzika==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=883729");
            }
            if(listitem == 2) //==Dzungla Radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1279638");
            }
            if(listitem == 3) //==Folk Alley==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1273365");
            }
            if(listitem == 4) //==Radio BN==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=29949");
            }
            if(listitem == 5) //==Radio Glas Drine==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1841408");
            }
            if(listitem == 6) //==COOL radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=550002");
            }
            if(listitem == 7) //==AM 1710 Antioch OT==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=2699");
            }
            if(listitem == 8) //==A&P Radio Network==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=563824");
            }
            if(listitem == 9) //==New Age SKY.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=412093");
            }
   		}
	}
	if (dialogid == DIALOG_INSPIRATIONAL) //==Inspirational==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==Russian Christian Radio==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1280598");
			}
			if(listitem == 1) //==AbidingRadio INSTRUMENTAL==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=470854");
            }
            if(listitem == 2) //==1-ONE NATION FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1988533");
            }
            if(listitem == 3) //==XL Radio Gurbani Kirtan==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=272693");
            }
            if(listitem == 4) //==Radio Lumiere Miami==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=341387");
            }
            if(listitem == 5) //==Ancient Faith Music==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=2010550");
            }
            if(listitem == 6) //==Bautista Radio 89.7 FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=347942");
            }
            if(listitem == 7) //==Radio Nueva Vida==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=208506");
            }
            if(listitem == 8) //==ChristianRock==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=1266649");
            }
            if(listitem == 9) //==FBC Radio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=95154");
            }
   		}
	}
	if (dialogid == DIALOG_INTERNATIONAL) //==TECHNO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RadioParty==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3732");
			}
			if(listitem == 1) //==DroneZone==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=69013");
            }
            if(listitem == 2) //==Energy.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
   		}
	}
	if (dialogid == DIALOG_JAZZ) //==TECHNO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RadioParty==//
			{
       			if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3732");
			}
			if(listitem == 1) //==DroneZone==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=69013");
            }
            if(listitem == 2) //==Energy.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
   		}
	}
	if (dialogid == DIALOG_LATIN) //==TECHNO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RadioParty==//
			{
			    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3732");
			}
			if(listitem == 1) //==DroneZone==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=69013");
            }
            if(listitem == 2) //==Energy.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
   		}
	}
	if (dialogid == DIALOG_METAL) //==TECHNO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RadioParty==//
			{
			    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3732");
			}
			if(listitem == 1) //==DroneZone==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=69013");
            }
            if(listitem == 2) //==Energy.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
   		}
	}
	if (dialogid == DIALOG_MISC) //==TECHNO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RadioParty==//
			{
			    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3732");
			}
			if(listitem == 1) //==DroneZone==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=69013");
            }
            if(listitem == 2) //==Energy.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
   		}
	}
	if (dialogid == DIALOG_NEWAGE) //==TECHNO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RadioParty==//
			{
			    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3732");
			}
			if(listitem == 1) //==DroneZone==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=69013");
            }
            if(listitem == 2) //==Energy.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
   		}
	}
	if (dialogid == DIALOG_PUBLICRADIO) //==TECHNO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RadioParty==//
			{
			    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3732");
			}
			if(listitem == 1) //==DroneZone==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=69013");
            }
            if(listitem == 2) //==Energy.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
   		}
	}
	if (dialogid == DIALOG_RNBURBAN) //==TECHNO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RadioParty==//
			{
			    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3732");
			}
			if(listitem == 1) //==DroneZone==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=69013");
            }
            if(listitem == 2) //==Energy.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
   		}
	}
	if (dialogid == DIALOG_ROCK) //==TECHNO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RadioParty==//
			{
			    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3732");
			}
			if(listitem == 1) //==DroneZone==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=69013");
            }
            if(listitem == 2) //==Energy.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
   		}
	}
	if (dialogid == DIALOG_TALK) //==TECHNO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==RadioParty==//
			{
			    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3732");
			}
			if(listitem == 1) //==DroneZone==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=69013");
            }
            if(listitem == 2) //==Energy.FM==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=9455066");
            }
            if(listitem == 3) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
            if(listitem == 4) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
            if(listitem == 5) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
            if(listitem == 6) //==PulseRadio==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                PASFP(playerid,"http://yp.shoutcast.com/sbin/tunein-station.pls?id=3026");
            }
   		}
	}

	if (dialogid == DIALOG_RADIO) //==RADIO==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You exited the Radio Selection.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==Genres==//
			{
			    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a custom Radio station!");
                SPD(playerid, DIALOG_GENRES, DIALOG_STYLE_LIST, "Radio Selection","{BB0000}Pop\n{BB0000}Rap\n{BB0000}Reggae\n{BB0000}Dubstep\n{BB0000}Techno\n{BB0000}Alternative\n{BB0000}Blues\n{BB0000}Classical\n{BB0000}Country\n{BB0000}Decades\n{BB0000}Easy Listening\n{BB0000}Folk\n{BB0000}Inspirational\n{BB0000}International\n{BB0000}Jazz\n{BB0000}Latin\n{BB0000}Metal\n{BB0000}Misc\n{BB0000}NewAge\n{BB0000}Public Radio\n{BB0000}RnB/Urban\n{BB0000}Rock\n{BB0000}Talk", "Select", "Cancel");
			}
			if(listitem == 1) //==Insert-URL==//
            {
                if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "You must be in a vehicle to select a Custom URL Radio station!");
                SPD(playerid,DIALOG_CURL,DIALOG_STYLE_INPUT,"Input URL","Type your URL here.","Listen","Cancel");
            }
            if(listitem == 2) //==Stop=Radio==//
            {
            if(!IsPlayerInAnyVehicle(playerid)) return SPD(playerid, DIALOG_OUTOFCARSR, DIALOG_STYLE_MSGBOX, "Stop Radio","You must be in a vehicle to stop a custom Radio station!", "Okay", "Cancel");
			SASFP(playerid);
            }
   		}
	}
	if (dialogid == DIALOG_SHOP) //==SHOP==//
	{
	    if(!response) // If they clicked 'Cancel' or pressed esc
        {
            SCM(playerid, COLOR_RED, "You decided not to purchase anything.");
        }
		if(response) //means if they clicked left button
		{
			if(listitem == 0) //==Sniper=80=Rounds==//
			{
			    GivePlayerMoney(playerid, -1000);
			    GivePlayerWeapon(playerid, 34, 80);
			}
			if(listitem == 1) //==Full=Armour==//
            {
                GivePlayerMoney(playerid, -500);
                SetPlayerArmour(playerid, 100.0);
            }
   		}
	}
	if(dialogid == DIALOG_CURL)
	{
	    	if(!response) // If they clicked 'Cancel' or pressed esc
        	{
           	 	SCM(playerid, COLOR_RED, "You exited the Custom-URL Selection.");
        	}
        	if(strlen(inputtext) < 64 || strlen(inputtext) > 0)
        	{
            	PASFP(playerid, inputtext);
        	}
	}
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

public OnPlayerGiveDamage(playerid, damagedid, Float: amount, weaponid)
{
	new Float: X, Float: Y, Float: Z;
	if(IsPlayerInAnyVehicle(playerid))
	{
	GetPlayerPos(playerid, X, Y, Z);
	SetPlayerPos(damagedid, X+5, Y, Z);
	}
    return 1;
}

/*public OnPlayerCommandReceived(playerid, cmdtext[])
{
	new string[150];
	new name;
    format(string, sizeof(string), "{C0C0C0}*__* %s[ID:%d] Has Typed: %s", GetName(name), playerid, cmdtext);
    SendAdminMessage(COLOR_GREY, string);
    return 1;
}*/

public OnPlayerRequestClass(playerid, classid)
{
	SPAWNED[playerid] = 0;
   	TextDrawShowForPlayer(playerid,Timeleft);
   	TextDrawShowForPlayer(playerid,CurrentMap);
   	TextDrawShowForPlayer(playerid,Log);
   	TextDrawShowForPlayer(playerid,TeamScore);

	SetPlayerInterior(playerid,1);
	SetPlayerPos(playerid,292.9160,-30.6521,1001.5156);
	SetPlayerCameraPos(playerid,293.1492,-37.2610,1001.5156);
	SetPlayerCameraLookAt(playerid,292.9160,-30.6521,1001.5156);
	SetPlayerFacingAngle(playerid,177.3484);

 	switch(classid)
	{
 		case 0:
 		{
   			//SetPlayerPos(playerid,220.3261,1822.9734,7.5368);
			//SetPlayerCameraLookAt(playerid,220.3261,1822.9734,7.5368);
			//SetPlayerCameraPos(playerid,226.7491,1823.0441,7.4141);
			//SetPlayerFacingAngle(playerid, 270 );
 		    CreateExplosion(212.9525,1822.9084,6.4141, 11, 10.0);
	 		SetPlayerTeam( playerid, TEAM_BLUE );
		 	gTeam[playerid] = TEAM_BLUE;
    		SetPlayerSkin(playerid, 176);
   		 	GameTextForPlayer(playerid,"~b~Blue Team",2000,4);
		 	SetPlayerColor(playerid, TEAM_BLUE_COLOR);
 		}
		case 1:
	 	{
	 	    //SetPlayerPos(playerid,220.3261,1822.9734,7.5368);
			//SetPlayerCameraLookAt(playerid,220.3261,1822.9734,7.5368);
			//SetPlayerCameraPos(playerid,226.7491,1823.0441,7.4141);
			//SetPlayerFacingAngle(playerid, 270 );
			CreateExplosion(212.9525,1822.9084,6.4141, 11, 10.0);
 	 		SetPlayerTeam( playerid, TEAM_RED );
		 	gTeam[playerid] = TEAM_RED;
  	 		SetPlayerSkin(playerid, 19);
   		 	GameTextForPlayer(playerid,"~r~Red Team",2000,4);
		 	SetPlayerColor(playerid, TEAM_RED_COLOR);
		}
	}
	return 1;
}
YCMD:admins(playerid,params[],help)
{
    new count = 0, string[256];
    for(new i = 0; i < MAX_PLAYERS; i ++)
    {
    if(IsPlayerConnected(i))
    {
    if(pInfo[i][Adminlevel] == 1)
    {
    format(string, sizeof(string),"- %s%s | (ID:%d) | Admin Level 1", string, GetName(i), i);
    count++;
    }
    if(pInfo[i][Adminlevel] == 2)
    {
    format(string, sizeof(string),"- %s%s | (ID:%d) | Admin Level 2", string, GetName(i), i);
    count++;
    }
    if(pInfo[i][Adminlevel] == 3)
    {
    format(string, sizeof(string),"- %s%s | (ID:%d) | Admin Level 3", string, GetName(i), i);
    count++;
    }
    if(pInfo[i][Adminlevel] == 4)
    {
    format(string, sizeof(string),"- %s%s | (ID:%d) | Admin Level 4", string, GetName(i), i);
    count++;
    }
    if(pInfo[i][Adminlevel] == 5)
    {
    format(string, sizeof(string),"- %s%s | (ID:%d) | Admin Level 5", string, GetName(i), i);
    count++;
    }
    }
    }
    if(count == 0)
    {
    SendClientMessage(playerid, COLOR_GREEN, "");
	SendClientMessage(playerid, COLOR_GREEN, "|======== Online Admins =======|");
    SendClientMessage(playerid, COLOR_WHITE, "|   No Admins Online at Time!  |");
    SendClientMessage(playerid, COLOR_GREEN, "|==============================|");
    }
    else
    {
    SendClientMessage(playerid, COLOR_GREEN, "");
    SendClientMessage(playerid, COLOR_GREEN, "|======== Online Admins =======|");
    SendClientMessage(playerid, COLOR_WHITE, string);
    SendClientMessage(playerid, COLOR_GREEN, "|==============================|");
    }
    return 1;
}
YCMD:report(playerid,params[],help)
{
    new hacker; new reason[50]; new string[200]; new str[200];
    if(sscanf(params, "us[50]", hacker, reason))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /report {FF0000}[PlayerID] {FF0000}[Reason]");
    if(!IsPlayerConnected(hacker))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    format(string, sizeof(string), "[REPORT]: {800080}%s(ID:%d) {FFFFFF}has Reported {800080}%s(ID:%d) {FFFFFF}|| Reason: {800080}%s", GetName(playerid), playerid, GetName(hacker), hacker, reason);
    SendAdminMessage(COLOR_RED, string);
    format(str, sizeof(str), "[SYSTEM]: {FFFFFF}You have Reported {800080}%s(ID:%d) {FFFFFF}|| Reason: {800080}%s", GetName(hacker), hacker, reason);
    SendClientMessage(playerid, COLOR_GREEN, str);
    SendAdminGameText("~w~New ~g~Report!");
    return 1;
}
YCMD:stats(playerid,params[],help)
{
	new string[250];
	format(string, sizeof(string), "{FFFFFF}Your Stats:\n\n{FF0000}Kills: {FFFFFF}%d\n{FF0000}Deaths: {FFFFFF}%d\n{FF0000}Score: {FFFFFF}%d\n{FF0000}Money: {FFFFFF}%d\n{FF0000}Admin Level: {FFFFFF}%d\n", pInfo[playerid][Kills], pInfo[playerid][Deaths], GetPlayerScore(playerid), GetPlayerMoney(playerid), pInfo[playerid][Adminlevel]);
    ShowPlayerDialog(playerid, 5, DIALOG_STYLE_MSGBOX, "{FF8000}Your Stats:", string, "Ok", "");
	return 1;
}
//============================================================================//
//==========================ADMINS_CMDS=======================================//
//============================================================================//
YCMD:getip(playerid,params[],help)
{
	new targetid; new string[150]; new ip[50];
	if(pInfo[playerid][Adminlevel] < 1)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
	if(sscanf(params, "u", targetid))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /getip {FF0000}[PlayerID]");
	if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
	GetPlayerIp(targetid, ip, 50);
	format(string, sizeof(string), "[ADMIN]: %s(ID:%d)'s Ip is: %s", GetName(targetid), targetid, ip);
	SendClientMessage(playerid, COLOR_PURPLE, string);
	return 1;
}
YCMD:pay(playerid,params[],help)
{
	new player, cash;
	if(sscanf(params, "rd", player, cash))
	{
		SendClientMessage(playerid,RED,"Usage: /pay (PartofName|ID) (Amount");
	    return 1;
	}

	if(IsPlayerConnected(player) && player != INVALID_PLAYER_ID)
	{
    	if(GetPlayerMoney(playerid) < cash)
		{
			SendClientMessage(playerid, RED, "You don't have that much!");
			return 1;
		}
    	if(cash < 1000 || cash > 1000000)
		{
			SendClientMessage(playerid, RED, "Cash must be $1,000 - $1,000,000");
			return 1;
		}
    	if(player == playerid)
		{
			SendClientMessage(playerid, RED, "You really want to pay yourself?... lol");
			return 1;
		}
		new string[128];
      	GivePlayerMoney(playerid, -cash);
      	GivePlayerMoney(player, cash);
        format(string,sizeof(string),"%s paid you $%d", GetName(playerid), cash);
        SendClientMessage(player,YELLOW,string);
        SendClientMessage(playerid,YELLOW,"Successfully paid the money!");
    }
    else
    {
        SendClientMessage(playerid, RED, NO_PERM);
    }
	return 1;
}
YCMD:warn(playerid,params[],help)
{
    new targetid; new string[200]; new reason[60];
    if(pInfo[playerid][Adminlevel] < 1)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
    if(sscanf(params, "us[60]", targetid, reason))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /warn {FF0000}[PlayerID] [Reason]");
	if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    Warned[targetid] ++;
    format(string, sizeof(string), "{80FF00}[ADMIN]: {DFF709}%s(ID:%d) has Warned %s(ID:%d)! {FFFFFF}[Reason: %s] (%i/3)", GetName(playerid), playerid, GetName(targetid), targetid, reason, Warned[targetid]);
    SendClientMessageToAll(COLOR_YELLOW, string);
    if(Warned[targetid] == 3)
    {
    format(string, sizeof string, "{80FF00}[ADMIN]: {DFF709}%s(ID:%d) has been Kicked from the Server! {FFFFFF}[Reason: %s] (3/3)", GetName(targetid), targetid, reason);
    SendClientMessageToAll(COLOR_YELLOW, string);
    Kick(targetid);
    }
    return 1;
}
YCMD:banwarn(playerid,params[],help)
{
    new targetid; new string[200]; new reason[60];
    if(pInfo[playerid][Adminlevel] < 2)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 2");
    if(sscanf(params, "us[60]", targetid, reason))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /banwarn {FF0000}[PlayerID] [Reason]");
	if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    BanWarned[targetid] ++;
    format(string, sizeof(string), "{80FF00}[ADMIN]: {DFF709}%s(ID:%d) has Ban-Warned %s(ID:%d)! {FFFFFF}[Reason: %s] (%i/3)", GetName(playerid), playerid, GetName(targetid), targetid, reason, BanWarned[targetid]);
    SendClientMessageToAll(COLOR_YELLOW, string);
    if(BanWarned[targetid] == 3)
    {
    format(string, sizeof string, "{80FF00}[ADMIN]: {DFF709}%s(ID:%d) has been Banned from the Server! {FFFFFF}[Reason: %s] (3/3)", GetName(targetid), targetid, reason);
    SendClientMessageToAll(COLOR_YELLOW, string);
    Ban(targetid);
    }
    return 1;
}
YCMD:goto(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 1) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
    new targetid, Float:X, Float:Y, Float:Z, string[150];
    if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /goto {FF0000}[PlayerID]");
    if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    GetPlayerPos(targetid, X, Y, Z);
    SetPlayerPos(playerid, X, Y+1, Z);
    format(string, sizeof(string), "[ADMIN]: %s(ID:%d) has Teleported himself to %s(ID:%d)!", GetName(playerid), playerid, GetName(targetid), targetid);
    SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:gethere(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 1) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
    new targetid, Float:X, Float:Y, Float:Z, string[150];
    if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /get {FF0000}[PlayerID]");
    if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    GetPlayerPos(playerid, X, Y, Z);
    SetPlayerPos(targetid, X, Y+1, Z);
    format(string, sizeof(string), "[ADMIN]: %s(ID:%d) has Teleported %s(ID:%d) to him!", GetName(playerid), playerid, GetName(targetid), targetid);
    SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:heal(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 1) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
    new targetid, string[100];
    if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /heal {FF0000}[PlayerID]");
    if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    SetPlayerHealth(targetid, 100.0);
    format(string, sizeof(string), "[ADMIN]: %s(ID:%d) has Healed %s(ID:%d)!", GetName(playerid), playerid, GetName(targetid), targetid);
    SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:armour(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 1) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
    new targetid, string[100];
    if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /armour {FF0000}[PlayerID]");
    if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    SetPlayerArmour(targetid, 100.0);
    format(string, sizeof(string), "[ADMIN]: %s(ID:%d) has Armoured %s(ID:%d)!", GetName(playerid), playerid, GetName(targetid), targetid);
    SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:announce(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 1) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
    new text[60];
    if(sscanf(params,"s[60]",text))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /announce {FF0000}[Text]");
    GameTextForAll(text, 3000, 5);
    return 1;
}
YCMD:ann(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 1) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
    new text[60];
    if(sscanf(params,"s[60]",text))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /announce {FF0000}[Text]");
    GameTextForAll(text, 3000, 5);
    return 1;
}
YCMD:fixveh(playerid,params[],help)
{
	new string[160];
    if(pInfo[playerid][Adminlevel] < 1) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
   	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't in any Vehicle!");
    RepairVehicle(GetPlayerVehicleID(playerid));
   	GameTextForPlayer(playerid, "~g~Fixed!", 3000, 5);
	format(string, sizeof(string), "[ADMIN]: %s has Fixed his Vehicle!", GetName(playerid));
	SendClientMessageToAll(COLOR_YELLOW, string);
    return 1;
}
YCMD:flipveh(playerid,params[],help)
{
    new veh;
    new Float:angle;
    new string[160];
    if(pInfo[playerid][Adminlevel] < 1) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
	if(!IsPlayerInAnyVehicle(playerid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You are not in any vehicle!");
    veh = GetPlayerVehicleID(playerid);
    GetVehicleZAngle(veh, angle);
    SetVehicleZAngle(veh, angle);
	GameTextForPlayer(playerid, "~g~Flipped!", 3000, 5);
	format(string, sizeof(string), "[ADMIN]: %s has Flipped his Vehicle!", GetName(playerid));
	SendClientMessageToAll(COLOR_YELLOW, string);
    return 1;
}
YCMD:makeadmin(playerid,params[],help)
{
    new targetid;
    new level;
    new string[200];
    if(pInfo[playerid][Adminlevel] < 5) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 5");
    if(sscanf(params, "ui", targetid, level))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /setadmin {FF0000}[PlayerID] [Level]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    if(level < 0 || level > 5)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: Invalid Admin Level (0-5)!");
    pInfo[targetid][Adminlevel] = level;
    format(string, sizeof(string), "{80FF00}[ADMIN]: {FF8000}%s(ID:%d) {FFFFFF}has changed {FF8000}%s(ID:%d){FFFFFF}'s Admin Level to {FF8000}%i{FFFFFF}!", GetName(playerid), playerid, GetName(targetid), targetid, level);
    SendClientMessageToAll(COLOR_WHITE, string);
    new INI:file = INI_Open(Path(playerid));
    INI_SetTag(file, "Player's Data");
    INI_WriteInt(file, "AdminLevel", pInfo[targetid][Adminlevel]);
    return 1;
}
YCMD:ban(playerid,params[],help)
{
    new targetid;
    new reason;
    new string[200];
    if(pInfo[playerid][Adminlevel] < 3) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
    if(sscanf(params, "us[50]", targetid, reason))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /ban {FF0000}[PlayerID] [Reason]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    format(string, sizeof string, "{80FF00}[ADMIN]: {DFF709}%s(ID:%d) has Banned %s(ID:%d) from the Server! {FFFFFF}[Reason: %s]", GetName(playerid), playerid, GetName(targetid), targetid, reason);
    SendClientMessageToAll(COLOR_YELLOW, string);
    Ban(targetid);
    return 1;
}
YCMD:kick(playerid,params[],help)
{
    new targetid;
    new reason[50];
    new string[200];
    if(pInfo[playerid][Adminlevel] < 2) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 2");
    if(sscanf(params, "us", targetid, reason))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /kick {FF0000}[PlayerID] [Reason]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    format(string, sizeof string, "{80FF00}[ADMIN]: {DFF709}%s(ID:%d) has Kicked %s(ID:%d) from the Server! {FFFFFF}[Reason: %s]", GetName(playerid), playerid, GetName(targetid), targetid, reason);
    SendClientMessageToAll(COLOR_YELLOW, string);
    Kick(targetid);
    return 1;
}
YCMD:cchat(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 2)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 2");
    for( new i = 0; i <= 100; i ++ ) SendClientMessageToAll( COLOR_WHITE, "" );
	return 1;
}
YCMD:explode(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
    new string[200], targetid, Float:x, Float:y, Float:z;
    if(sscanf(params, "u", targetid))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /explode {FF0000}[PlayerID]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    GetPlayerPos(targetid, x, y, z);
    CreateExplosion(x, y, z, 12, 10.0);
    format(string,sizeof(string), "[ADMIN]: You have Exploded %s(ID:%d)!", GetName(targetid), targetid);
    SendClientMessage(playerid, COLOR_PURPLE, string);
    return 1;
}
YCMD:sethealth(playerid,params[],help)
{
    new hp;
    new targetid;
    new string[200];
    if(pInfo[playerid][Adminlevel] < 2)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 2");
    if(sscanf(params, "ud", targetid, hp))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /sethealth {FF0000}[PlayerID] [Health]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    SetPlayerHealth(targetid, hp);
    format(string, sizeof(string), "[ADMIN]: %s(ID:%d) has Setted %s(ID:%d)'s Health to %d HP!", GetName(playerid), playerid, GetName(targetid), targetid, hp);
    SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:setarmour(playerid,params[],help)
{
    new hp;
    new targetid;
    new string[200];
    if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
    if(sscanf(params, "ud", targetid, hp))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /setarmour {FF0000}[PlayerID] [Armour]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    SetPlayerArmour(targetid, hp);
    format(string, sizeof(string), "[ADMIN]: %s(ID:%d) has Setted %s(ID:%d)'s Armour to %d HP!", GetName(playerid), playerid, GetName(targetid), targetid, hp);
    SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:akill(playerid,params[],help)
{
    new string[150], targetid;
    if(pInfo[playerid][Adminlevel] < 4)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 4");
    if(sscanf(params, "u", targetid))return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /akill {FF0000}[PlayerID]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    SetPlayerHealth(targetid, -1);
    format(string, sizeof(string), "[ADMIN]: You have A-Killed %s(ID:%d)!", GetName(targetid), targetid);
    SendClientMessage(playerid, COLOR_RED, string);
    return 1;
}
YCMD:givemoney(playerid,params[],help)
{
    new string[200], targetid, money;
    if(pInfo[playerid][Adminlevel] < 2)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 2");
    if(sscanf(params, "ud", targetid, money)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /givemoney {FF0000}[PlayerID] [Money]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    GivePlayerMoney(targetid, money);
    format(string, sizeof(string), "[ADMIN]: %s(ID:%d) has given $%d of Cash to %s(ID:%d)!", GetName(playerid), playerid, money, GetName(targetid), targetid);
    SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:setscore(playerid,params[],help)
{
    new string[200], targetid, score;
    if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
    if(sscanf(params, "ud", targetid, score)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /setscore {FF0000}[PlayerID] [Score]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    SetPlayerScore(targetid, score);
    format(string, sizeof(string), "[ADMIN]: %s(ID:%d) has given %d Score to %s(ID:%d)!", GetName(playerid), playerid, score, GetName(targetid), targetid);
    SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:slap(playerid,params[],help)
{
	new string[150], targetid;
    if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
	if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /slap {FF0000}[PlayerID]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    new Float:Pos[4];
    GetPlayerPos(targetid, Pos[0], Pos[1], Pos[2]);
    SetPlayerPos(targetid, Pos[0], Pos[1], Pos[2]+20);
    format(string, sizeof(string), "[ADMIN]: You have Slapped %s(ID:%d)!", GetName(targetid), targetid);
	SendClientMessage(playerid, COLOR_PURPLE, string);
    return 1;
}
YCMD:burn(playerid,params[],help)
{
    new string[128], targetid, Float:x, Float:y, Float:z;
    if(pInfo[playerid][Adminlevel] < 2)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 2");
    if(sscanf(params, "u", targetid)) SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /burn {FF0000}[PlayerID]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    GetPlayerPos(targetid, x, y, z);
    CreateExplosion(x, y, z, 1, 10.0);
    format(string,sizeof(string), "[ADMIN]: You have Burned %s(ID:%d)!", GetName(targetid), targetid);
    SendClientMessage(playerid, COLOR_PURPLE, string);
    return 1;
}
YCMD:resetmoney(playerid,params[],help)
{
	new string[150], targetid;
    if(pInfo[playerid][Adminlevel] < 4)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 4");
	if(sscanf(params, "us", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /resetmoney {FF0000}[PlayerID]");
	if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
	ResetPlayerMoney(targetid);
    format(string, sizeof(string), "[ADMIN]: You have Setted %s(ID:%d)'s Money To 0!", GetName(targetid), targetid);
	SendClientMessage(playerid, COLOR_PURPLE, string);
	return 1;
}
YCMD:resetscore(playerid,params[],help)
{
	new string[150], targetid;
    if(pInfo[playerid][Adminlevel] < 4)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 4");
	if(sscanf(params, "us", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /resetscore {FF0000}[PlayerID]");
	if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
	ResetPlayerMoney(targetid);
    format(string, sizeof(string), "[ADMIN]: You have Setted %s(ID:%d)'s Score To 0!", GetName(targetid), targetid);
	SendClientMessage(playerid, COLOR_PURPLE, string);
	return 1;
}
YCMD:mute(playerid,params[],help)
{
    new targetid, time, string[200], reason[50];
    if(pInfo[playerid][Adminlevel] < 2)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 2");
    if(sscanf(params, "dds[30]", targetid, time, reason)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /mute {FF0000}[PlayerID] [Time (Minutes)] [Reason]");
    if(!IsPlayerConnected(targetid))return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    if(Muted[targetid] == 1)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: This player is already Muted!");
    Muted[targetid] = 1;
    MuteTime[playerid] = time*60000;
    format(string, sizeof(string),"[ADMIN]: %s(ID:%d) has Muted %s(ID:%d) for %i Minute(s)! {FFFFFF}[Reason: %s]", GetName(playerid), playerid, GetName(targetid), targetid, time, reason);
    SendClientMessageToAll(COLOR_PURPLE, string);
    unmute[targetid] = SetTimerEx("UnMuteMe", MuteTime[playerid], false, "d", playerid);
    return 1;
}
YCMD:unmute(playerid,params[],help)
{
    new targetid, string[150];
    if(pInfo[playerid][Adminlevel] < 2)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 2");
    if(sscanf(params, "d", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /unmute {FF0000}[PlayerID]");
    if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    if(Muted[targetid] == 0) return SendClientMessage(playerid, COLOR_RED,"[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}Muted!");
    Muted[targetid] = 0;
    MuteTime[targetid] = 0;
    format(string, sizeof(string),"[ADMIN]: %s(ID:%d) has UnMuted %s(ID:%d)!", GetName(playerid), playerid, GetName(targetid), targetid);
    SendClientMessageToAll(COLOR_PURPLE, string);
    KillTimer(unmute[targetid]);
    return 1;
}
YCMD:playerinfo(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 1)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 1");
    new targetid, string[120], str[120], string1[120], str1[120];
    if(sscanf(params, "d", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /playerinfo {FF0000}[PlayerID]");
    if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    new Float:health, Float:armour, Float:x, Float:y, Float:z;
    GetPlayerPos(targetid, x, y, z);
	GetPlayerArmour(targetid, armour);
	GetPlayerHealth(targetid, health);
	format(string, sizeof(string), "| ======== %s(ID:%d)'s Informations ======== |", GetName(targetid), targetid);
	SendClientMessage(playerid, -1, string);
	format(str, sizeof(str), "{FFFFFF}Health: {FF8000}%1f {FFFFFF}Armour: {FF8000}%1f {FFFFFF}Money: {FF8000}$%d {FFFFFF}Score: {FF8000}%d", health, armour, GetPlayerMoney(targetid), GetPlayerScore(targetid));
	SendClientMessage(playerid, -1, str);
	format(string1, sizeof(string1), "{FFFFFF}Position: {FF8000}%1f, %1f, %1f", x, y, z);
	SendClientMessage(playerid, -1, string1);
	format(str1, sizeof(str1), "{FFFFFF}Kills: {FF8000}%d {FFFFFF}Deaths: {FF8000}%d", pInfo[targetid][Kills], pInfo[targetid][Deaths]);
	SendClientMessage(playerid, -1, str1);
    return 1;
}

YCMD:help(playerid,params[],help)
{
    if(gTeam[playerid] == TEAM_BLUE)
	{
		SendClientMessage(playerid, COLOR_BLUE,"|***Sever Commands***| --- [ /ServerFeatures ] [ /Credits ] [ /Admins ] [ /Report ]");
    	SendClientMessage(playerid, COLOR_BLUE,"|***Team Commands***| --- [ /Teams ] [ /MyTeam ] [ /ChangeTeam ]");
    	SendClientMessage(playerid, COLOR_BLUE,"|***Player Commands***| --- [ /Stats ] [ /Pm ] [ /Kill ] [ /Shop ]");
    	SendClientMessage(playerid, COLOR_BLUE,"|***Radio Commands***| --- [ /RadioHelp ] [ /SetRadio ]");
	}
	if(gTeam[playerid] == TEAM_RED)
	{
		SendClientMessage(playerid, COLOR_RED,"|***Sever Commands***| --- [ /ServerFeatures ] [ /Credits ] [ /Admins ] [ /Report ]");
    	SendClientMessage(playerid, COLOR_RED,"|***Team Commands***| --- [ /Teams ] [ /MyTeam ] [ /ChangeTeam ]");
    	SendClientMessage(playerid, COLOR_RED,"|***Player Commands***| --- [ /Stats ] [ /Pm ] [ /Kill ] [ /Shop ]");
    	SendClientMessage(playerid, COLOR_RED,"|***Radio Commands***| --- [ /RadioHelp ] [ /SetRadio ]");
	}
	return 1;
}

YCMD:setskin(playerid,params[],help)
{
	new skinid, targetid, string[200];
    if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
	if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
	if(sscanf(params, "ui", targetid, skinid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /setskin {FF0000}[PlayerID] [SkinID]");
    if(skinid < 0 || skinid > 299) return  SendClientMessage(playerid, COLOR_RED, "[ERROR]: Invalid skin Model! (0-299)");
	SetPlayerSkin(targetid, skinid);
	format(string, sizeof(string), "[ADMIN]: %s(ID:%d) has Set %s(ID:%d)'s Skin to ID %d!", GetName(playerid), playerid, GetName(targetid), targetid, skinid);
	SendClientMessageToAll(COLOR_PURPLE, string);
	return 1;
}
YCMD:disarm(playerid,params[],help)
{
	new targetid;
	new string[200];
    if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
	if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
	if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /disarm {FF0000}[PlayerID]");
    ResetPlayerWeapons(targetid);
    format(string,sizeof(string),"[ADMIN]: %s(ID:%d) has Disarmed %s(ID:%d)!", GetName(playerid), playerid, GetName(targetid), targetid);
    SendClientMessageToAll(COLOR_PURPLE, string);
   	GameTextForPlayer(targetid, "~b~You Have Been Disarmed!", 2000, 3);
   	return 1;
}
YCMD:healall(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
	for(new i = 0; i < MAX_PLAYERS; i++)
	SetPlayerHealth(i,100.0);
	GameTextForAll("~w~ALL ~g~HEALED!", 2000, 4);
	return 1;
}
YCMD:armourall(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
	for(new i = 0; i < MAX_PLAYERS; i++)
	SetPlayerArmour(i,100.0);
	GameTextForAll("~w~ALL ~g~ARMOURED!", 2000, 4);
	return 1;
}
YCMD:freeze(playerid,params[],help)
{
	new string[150], targetid;
    if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
	if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
	if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /freeze {FF0000}[PlayerID]");
    TogglePlayerControllable(targetid, 0);
    format(string, sizeof(string),"[ADMIN]: %s(ID:%d) has Frozen %s(ID:%d)!", GetName(playerid), playerid, GetName(targetid), targetid);
    SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:unfreeze(playerid,params[],help)
{
	new string[150], targetid;
    if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
	if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
	if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /unfreeze {FF0000}[PlayerID]");
    TogglePlayerControllable(targetid, 1);
    format(string, sizeof(string),"[ADMIN]: %s(ID:%d) has UnFrozen %s(ID:%d)!", GetName(playerid), playerid, GetName(targetid), targetid);
    SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:giveweap(playerid,params[],help)
{
	new targetid;
	new weaponid;
	new ammo;
	new string[200];
	if(pInfo[playerid][Adminlevel] < 3)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 3");
	if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, COLOR_RED, "[ERROR]: {FFFFFF}This player is {FF0000}NOT {FFFFFF}connected!");
    if(sscanf(params, "uii", targetid, weaponid, ammo)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /giveweap {FF0000}[PlayerID] [WeaponID] [Ammount]");
    GivePlayerWeapon(targetid, weaponid, ammo);
	format(string, sizeof(string), "[ADMIN]: %s(ID:%d) has Given %s(ID:%d) a Weapon ID %d with %d Ammounts!", GetName(playerid), playerid, GetName(targetid), targetid, weaponid, ammo);
	SendClientMessageToAll(COLOR_PURPLE, string);
    return 1;
}
YCMD:setweather(playerid,params[],help)
{
	new weather;
	new string[200];
	if(pInfo[playerid][Adminlevel] < 2)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 2");
    if(sscanf(params, "i", weather)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /setweather {FF0000}[WeatherID]");
    if(weather < 0 || weather > 45) return  SendClientMessage(playerid, COLOR_RED, "[ERROR]: Invalid weather ID! (0-45)");
	SetWeather(weather);
    format(string, sizeof(string), "[ADMIN]: %(ID:%d)s has changed Weather To ID %d!", GetName(playerid), playerid, weather);
   	SendClientMessageToAll(COLOR_PURPLE, string);
	return 1;
}
YCMD:settime(playerid,params[],help)
{
	new time;
	new string[200];
	if(pInfo[playerid][Adminlevel] < 2)return SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin level 2");
    if(sscanf(params, "i", time)) return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: /settime {FF0000}[TimeID]");
    if(time < 0 || time > 24) return  SendClientMessage(playerid, COLOR_RED, "[ERROR]: Invalid time ID! (0-24)");
	SetWorldTime(time);
    format(string, sizeof(string), "[ADMIN]: %(ID:%d)s has changed Time To ID %d!", GetName(playerid), playerid, time);
   	SendClientMessageToAll(COLOR_PURPLE, string);
	return 1;
}
YCMD:ahelp(playerid,params[],help)
{
	// ADMIN LVL 0 COMMANDS//
    if(pInfo[playerid][Adminlevel] == 0)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin!");
	}
	
	// ADMIN LVL 1 COMMANDS//
	if(pInfo[playerid][Adminlevel] == 1)
	{
		SendClientMessage(playerid, COLOR_GREEN, "| ========= Admin Commands ========= |");
		SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 1: {FFFFFF}/(text), /getip, /warn, /heal, /get, /goto, /armour, /announce(/ann), /fix, /flip, /playerinfo, /youtube, /achangeteam, /atb, /atr");
	}
	
	// ADMIN LVL 2 COMMANDS//
    if(pInfo[playerid][Adminlevel] == 2)
	{
		SendClientMessage(playerid, COLOR_GREEN, "| ========= Admin Commands ========= |");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 1: {FFFFFF}/(text), /getip, /warn, /heal, /get, /goto, /armour, /announce(/ann), /fix, /flip, /playerinfo, /youtube, /achangeteam, /atb, /atr");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 2: {FFFFFF}/banwarn, /kick, /cchat, /sethealth, /givemoney, /burn, /mute, /unmute, /sethealth, /armour, /setweather, /settime");
	}
	
	// ADMIN LVL 3 COMMANDS//
    if(pInfo[playerid][Adminlevel] == 3)
    {
		SendClientMessage(playerid, COLOR_GREEN, "| ========= Admin Commands ========= |");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 1: {FFFFFF}/(text), /getip, /warn, /heal, /get, /goto, /armour, /announce(/ann), /fix, /flip, /playerinfo, /youtube, /achangeteam, /atb, /atr");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 2: {FFFFFF}/banwarn, /kick, /cchat, /sethealth, /givemoney, /burn, /mute, /unmute, /sethealth, /armour, /setweather, /settime");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 3: {FFFFFF}/ban, /explode, /setscore, /slap, /setskin, /setarmour, /giveweap, /disarm, /healall, /armourall, /freeze, /unfreeze");
	}
	
	// ADMIN LVL 4 COMMANDS//
    if(pInfo[playerid][Adminlevel] == 4)
	{
		SendClientMessage(playerid, COLOR_GREEN, "| ========= Admin Commands ========= |");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 1: {FFFFFF}/(text), /getip, /warn, /heal, /get, /goto, /armour, /announce(/ann), /fix, /flip, /playerinfo, /youtube, /achangeteam, /atb, /atr");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 2: {FFFFFF}/banwarn, /kick, /cchat, /sethealth, /givemoney, /burn, /mute, /unmute, /sethealth, /armour, /setweather, /settime");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 3: {FFFFFF}/ban, /explode, /setscore, /slap, /setskin, /setarmour, /giveweap, /disarm, /healall, /armourall, /freeze, /unfreeze");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 4: {FFFFFF}/akill, /resetscore, /resetmoney");
	}
	
	// ADMIN LVL 5 COMMANDS//
    if(pInfo[playerid][Adminlevel] == 5)
	{
		SendClientMessage(playerid, COLOR_GREEN, "| ========= Admin Commands ========= |");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 1: {FFFFFF}/(text), /getip, /warn, /heal, /get, /goto, /armour, /announce(/ann), /fix, /flip, /playerinfo, /youtube, /achangeteam, /atb, /atr");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 2: {FFFFFF}/banwarn, /kick, /cchat, /sethealth, /givemoney, /burn, /mute, /unmute, /sethealth, /armour, /setweather, /settime");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 3: {FFFFFF}/ban, /explode, /setscore, /slap, /setskin, /setarmour, /giveweap, /disarm, /healall, /armourall, /freeze, /unfreeze");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 4: {FFFFFF}/akill, /resetscore, /resetmoney");
    	SendClientMessage(playerid, COLOR_YELLOW, "Admin Level 5: {FFFFFF}/setadmin, /editserver");
	}
	return 1;
}

YCMD:credits(playerid,params[],help)
{
	 SendClientMessage(playerid, -1,"Secret Project Sniper War TDM      ");
	 SendClientMessage(playerid, -1,"NinjahZ 	 - GM Scripter			");
	 SendClientMessage(playerid, -1,"Y_Less  	 - YSI/Foreach/Sscanf   ");
	 SendClientMessage(playerid, -1,"Kush    	 - Login/Register System");
	 SendClientMessage(playerid, -1,"SA-MP-Forum - General Code Help    ");
	 return 1;
}

YCMD:serverfeatures(playerid,params[],help)
{
    SendClientMessage(playerid, -1,"|***Server Features***|");
    SendClientMessage(playerid, -1,"Y_INI Saving System");
    SendClientMessage(playerid, -1,"Login/Register System");
    SendClientMessage(playerid, -1,"AntiCheat/Hack");
    SendClientMessage(playerid, -1,"YCMD Command Processor");
    SendClientMessage(playerid, -1,"Admin System");
    SendClientMessage(playerid, -1,"Two Teams RED/BLUE");
    SendClientMessage(playerid, -1,"Mapping/Bases (Credits to Mappers)");
    SendClientMessage(playerid, -1,"Complete Creation from New.Pwn (Credits to NinjahZ");
    SendClientMessage(playerid, -1,"Do [ /Credits ] To find the Main Scripter of this Gamemode!");
    return 1;
}

YCMD:shop(playerid,params[],help)
{
    ShowPlayerDialog(playerid, DIALOG_SHOP, DIALOG_STYLE_LIST, "Sniper War Shop","Sniper(80 Bullets) $1,000\nFull Armor $500", "Buy","Cancel");
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
    if(isnull(params)) return SendClientMessage(playerid, 0xFFFFFFF,"ERROR: /g [text]");
    format(string, sizeof(string), "(( %s{FFFFFF}: %s ))", sendername, params);
    if(gTeam[playerid] == TEAM_BLUE)
	{
    	SendClientMessageToAll(0x0077BB00, string);
	}
	else if(gTeam[playerid] == TEAM_RED)
	{
	    SendClientMessageToAll(0xFF0000FF, string);
	}
    return 1;
}

YCMD:myteam(playerid, params[],help)
{
	if(gTeam[playerid] == TEAM_BLUE)
	{
		SendClientMessage(playerid, COLOR_GREEN,"SERVER: You are in the {0049FF}Blue Team");
	}
	else if(gTeam[playerid] == TEAM_RED)
	{
		SendClientMessage(playerid, COLOR_GREEN,"SERVER: You are in the {A80000}Red Team");
	}
 	else if(gTeam[playerid] == TEAM_UNDEFINED)
	{
   	    SendClientMessage(playerid, COLOR_GREEN,"SERVER: You have not chosen a Team!");
	}
	return 1;
}

YCMD:atb(playerid, params[],help)
{
    if(pInfo[playerid][Adminlevel] <1)
    {
        SendClientMessage(playerid, COLOR_RED,"SERVER: You are not an Admin!");
	}
	else if(pInfo[playerid][Adminlevel] >0)
    {
   		SendClientMessage(playerid, COLOR_GREEN,"SERVER: You are now{0049FF} Team Blue [ /myteam ]");
    	GameTextForPlayer(playerid,"~b~Blue Team",2000,4);
		SetPlayerTeam( playerid, TEAM_BLUE );
		gTeam[playerid] = TEAM_BLUE;
		SetPlayerColor(playerid, TEAM_BLUE_COLOR);
		SetPlayerSkin(playerid, 176);
	}
	return 1;
}

YCMD:atr(playerid, params[],help)
{
    if(pInfo[playerid][Adminlevel] <1)
    {
        SendClientMessage(playerid, COLOR_RED,"SERVER: You are not an Admin!");
	}
	else if(pInfo[playerid][Adminlevel] >0)
    {
   		SendClientMessage(playerid, COLOR_GREEN,"SERVER: You are now{A80000} Team Red [ /myteam ]");
    	GameTextForPlayer(playerid,"~r~Red Team",2000,4);
		SetPlayerTeam( playerid, TEAM_RED );
		gTeam[playerid] = TEAM_RED;
		SetPlayerColor(playerid, TEAM_RED_COLOR);
		SetPlayerSkin(playerid, 19);
	}
	return 1;
}

YCMD:achangeteam(playerid, params[],help)
{
    if(pInfo[playerid][Adminlevel] <1)
    {
        SendClientMessage(playerid, COLOR_RED,"SERVER: You are not an Admin!");
	}
	if(pInfo[playerid][Adminlevel] >0)
    {
		if(gTeam[playerid] == TEAM_BLUE)
		{
	    	SendClientMessage(playerid, COLOR_GREEN,"SERVER: You are now{A80000} Team Red [ /myteam ]");
	    	GameTextForPlayer(playerid,"~r~Red Team",2000,4);
	    	CreateExplosion(212.9525,1822.9084,6.4141, 11, 10.0);
			SetPlayerTeam( playerid, TEAM_RED );
			gTeam[playerid] = TEAM_RED;
			SetPlayerColor(playerid, TEAM_RED_COLOR);
			SetPlayerSkin(playerid, 19);
		}
		else if(gTeam[playerid] == TEAM_RED)
		{
	    	SendClientMessage(playerid, COLOR_GREEN,"SERVER: You are now{0049FF} Team Blue [ /myteam ]");
	    	GameTextForPlayer(playerid,"~b~Blue Team",2000,4);
	    	CreateExplosion(212.9525,1822.9084,6.4141, 11, 10.0);
			SetPlayerTeam( playerid, TEAM_BLUE );
			gTeam[playerid] = TEAM_BLUE;
			SetPlayerColor(playerid, TEAM_BLUE_COLOR);
			SetPlayerSkin(playerid, 176);
		}
 		else if(gTeam[playerid] == TEAM_UNDEFINED)
		{
			SendClientMessage(playerid, COLOR_GREEN,"SERVER: You are not currently in a Team, for a specific team [ /ATB|/ATR ]");
		}
	}
	return 1;
}

YCMD:teams(playerid, params[],help)
{
   new team1count = GetTeamCount(TEAM_BLUE);
   new team2count = GetTeamCount(TEAM_RED);
   new str[500];
   SendClientMessage(playerid, COLOR_GREEN,"Sniper War Teams");
   format(str, sizeof(str),"Blue Team: %d Players", team1count);
   SendClientMessage(playerid, TEAM_BLUE_COLOR, str);
   format(str, sizeof(str),"Red Team : %d Players", team2count);
   SendClientMessage(playerid, TEAM_RED_COLOR, str);
   return 1;
}

YCMD:changeteam(playerid, params[],help)
{
    SetPlayerHealth(playerid, -1);
    SetPlayerTeam( playerid, TEAM_UNDEFINED );
	ForceClassSelection(playerid);
	SendClientMessage(playerid, COLOR_GREEN, "You can now choose a new Team!");
	return 1;
}

YCMD:setradio(playerid, params[],help)
{
    if(!IsPlayerInAnyVehicle(playerid)) return SPD(playerid, DIALOG_OUTOFCARSETRADIO, DIALOG_STYLE_MSGBOX, "Set Radio","You must be in a vehicle to set a custom Radio station!", "Okay", "Cancel");
	SPD(playerid, DIALOG_RADIO, DIALOG_STYLE_LIST, "Radio Selection","{BB0000}Genres\n{BB0000}Insert-URL\n{BB0000}Stop Radio", "Select", "Cancel");
	return 1;
}

YCMD:radiohelp(playerid, params[],help)
{
    SPD(playerid, DIALOG_RADIOHELP, DIALOG_STYLE_MSGBOX, "Radio Help","{BB0000}(/setradio)", "Okay", "Cancel");
    return 1;
}

YCMD:editserver(playerid, params[],help)
{
    if(pInfo[playerid][Adminlevel] == 0)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin");
	}
	else if(pInfo[playerid][Adminlevel] == 1)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't  Admin LVL 5");
	}
	else if(pInfo[playerid][Adminlevel] == 2)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't Admin LVL 5");
	}
	else if(pInfo[playerid][Adminlevel] == 3)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't Admin LVL 5");
	}
	else if(pInfo[playerid][Adminlevel] == 4)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't Admin LVL 5");
	}
	else if(pInfo[playerid][Adminlevel] == 5)
	{
		ShowPlayerDialog(playerid, DIALOG_SETTINGS, DIALOG_STYLE_LIST, "Server Settings", "{FF0000}1. {FFFFFF}- Change Hostname\n{FF0000}2. {FFFFFF}- Change Gamemode Text\n{FF0000}3. {FFFFFF}- Change Mapname\n{FF0000}4. {FFFFFF}- Change Web URL\n{FF0000}5. {FFFFFF}- Change RCON Password\n{FF0000}6. {FFFFFF}- Restart Server", "Continue", "Close");
	}
 	return 1;
}

YCMD:youtube(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] > 0)
	{
		ShowPlayerDialog(playerid,DIALOG_MUSIC,DIALOG_STYLE_INPUT,"Youtube Player", "Please input the URL of the song you want (Example: wwww.youtube.com/watch?v=VID Change the VID!)","Play","Cancel");
	}
		else
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin.");
	}
	return 1;
}

YCMD:gate(playerid,params[],help)
{
	if(gatestats == 0)// if the gate is closed
 	{
  		MoveObject(bus,2433.1000976563, -1636, 12.39999961853,2.0);
    	SendClientMessage(playerid, COLOR_RED, "Gate opening....");
    	gatestats = 1; // gate is opened
	}
 	else// else, if the gate is open
  	{
   		MoveObject(bus,2432.5, -1657.9000244141, 15.199999809265,2.0);
   		SendClientMessage(playerid, COLOR_RED, "Gate closing....");
   		gatestats = 0; // gate is closed
   	}
   	return 1;
}

YCMD:changemap(playerid,params[],help)
{
    if(pInfo[playerid][Adminlevel] == 0)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't an Admin");
	}
	else if(pInfo[playerid][Adminlevel] == 1)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't  Admin LVL 5");
	}
	else if(pInfo[playerid][Adminlevel] == 2)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't Admin LVL 5");
	}
	else if(pInfo[playerid][Adminlevel] == 3)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't Admin LVL 5");
	}
	else if(pInfo[playerid][Adminlevel] == 4)
	{
		SendClientMessage(playerid, COLOR_RED, "[ERROR]: You aren't Admin LVL 5");
	}
	else if(pInfo[playerid][Adminlevel] == 5)
	{
		ChangeMap();
		SendClientMessage(playerid, COLOR_RED, "[System]: Map Successfully Changed!");
		SendClientMessageToAll(-1, "[System]: An Admin has skipped this Map!");
	}
 	return 1;
}
//============================================================================//
//============================================================================//
//============================================================================//

//=====FOWARD FUNCTION SPAWN RANDOM=====//

//=====RC Battlefield=====//
forward SetPlayerRandomRedTeamRCSpawn(playerid); // Forwarding the function
public SetPlayerRandomRedTeamRCSpawn(playerid) // Setting it up
{
    new rand = random(sizeof(RedTeamRCRandomSpawns)); // Making it select random options instead of a definite one
    SetPlayerPos(playerid, RedTeamRCRandomSpawns[rand][0], RedTeamRCRandomSpawns[rand][1], RedTeamRCRandomSpawns[rand][2]); // [rand] means random, [0] = X, [1] = Y, [2] = Z
    return 1;
}


forward SetPlayerRandomBlueTeamRCSpawn(playerid);
public SetPlayerRandomBlueTeamRCSpawn(playerid)
{
    new rand = random(sizeof(BlueTeamRCRandomSpawns));
    SetPlayerPos(playerid, BlueTeamRCRandomSpawns[rand][0], BlueTeamRCRandomSpawns[rand][1], BlueTeamRCRandomSpawns[rand][2]);
    return 1;
}

//=====Jefferson Motel=====//
forward SetPlayerRandomRedTeamJMSpawn(playerid); // Forwarding the function
public SetPlayerRandomRedTeamJMSpawn(playerid) // Setting it up
{
    new rand = random(sizeof(RedTeamJMRandomSpawns)); // Making it select random options instead of a definite one
    SetPlayerPos(playerid, RedTeamJMRandomSpawns[rand][0], RedTeamJMRandomSpawns[rand][1], RedTeamJMRandomSpawns[rand][2]); // [rand] means random, [0] = X, [1] = Y, [2] = Z
    return 1;
}


forward SetPlayerRandomBlueTeamJMSpawn(playerid);
public SetPlayerRandomBlueTeamJMSpawn(playerid)
{
    new rand = random(sizeof(BlueTeamJMRandomSpawns));
    SetPlayerPos(playerid, BlueTeamJMRandomSpawns[rand][0], BlueTeamJMRandomSpawns[rand][1], BlueTeamJMRandomSpawns[rand][2]);
    return 1;
}

//=====Liberty City=====//
forward SetPlayerRandomRedTeamLCSpawn(playerid); // Forwarding the function
public SetPlayerRandomRedTeamLCSpawn(playerid) // Setting it up
{
    new rand = random(sizeof(RedTeamLCRandomSpawns)); // Making it select random options instead of a definite one
    SetPlayerPos(playerid, RedTeamLCRandomSpawns[rand][0], RedTeamLCRandomSpawns[rand][1], RedTeamLCRandomSpawns[rand][2]); // [rand] means random, [0] = X, [1] = Y, [2] = Z
    return 1;
}


forward SetPlayerRandomBlueTeamLCSpawn(playerid);
public SetPlayerRandomBlueTeamLCSpawn(playerid)
{
    new rand = random(sizeof(BlueTeamLCRandomSpawns));
    SetPlayerPos(playerid, BlueTeamLCRandomSpawns[rand][0], BlueTeamLCRandomSpawns[rand][1], BlueTeamLCRandomSpawns[rand][2]);
    return 1;
}

//=====Pleasure Dome=====//
forward SetPlayerRandomRedTeamPDSpawn(playerid); // Forwarding the function
public SetPlayerRandomRedTeamPDSpawn(playerid) // Setting it up
{
    new rand = random(sizeof(RedTeamPDRandomSpawns)); // Making it select random options instead of a definite one
    SetPlayerPos(playerid, RedTeamPDRandomSpawns[rand][0], RedTeamPDRandomSpawns[rand][1], RedTeamPDRandomSpawns[rand][2]); // [rand] means random, [0] = X, [1] = Y, [2] = Z
    return 1;
}


forward SetPlayerRandomBlueTeamPDSpawn(playerid);
public SetPlayerRandomBlueTeamPDSpawn(playerid)
{
    new rand = random(sizeof(BlueTeamPDRandomSpawns));
    SetPlayerPos(playerid, BlueTeamPDRandomSpawns[rand][0], BlueTeamPDRandomSpawns[rand][1], BlueTeamPDRandomSpawns[rand][2]);
    return 1;
}

//=====Planning Department=====//
forward SetPlayerRandomRedTeamPLDPTSpawn(playerid); // Forwarding the function
public SetPlayerRandomRedTeamPLDPTSpawn(playerid) // Setting it up
{
    new rand = random(sizeof(RedTeamPLDPTRandomSpawns)); // Making it select random options instead of a definite one
    SetPlayerPos(playerid, RedTeamPLDPTRandomSpawns[rand][0], RedTeamPLDPTRandomSpawns[rand][1], RedTeamPLDPTRandomSpawns[rand][2]); // [rand] means random, [0] = X, [1] = Y, [2] = Z
    return 1;
}


forward SetPlayerRandomBlueTeamPLDPTSpawn(playerid);
public SetPlayerRandomBlueTeamPLDPTSpawn(playerid)
{
    new rand = random(sizeof(BlueTeamPLDPTRandomSpawns));
    SetPlayerPos(playerid, BlueTeamPLDPTRandomSpawns[rand][0], BlueTeamPLDPTRandomSpawns[rand][1], BlueTeamPLDPTRandomSpawns[rand][2]);
    return 1;
}

//=====Team Deathmatch Island=====//
forward SetPlayerRandomRedTeamDMISpawn(playerid); // Forwarding the function
public SetPlayerRandomRedTeamDMISpawn(playerid) // Setting it up
{
    new rand = random(sizeof(RedTeamDMIRandomSpawns)); // Making it select random options instead of a definite one
    SetPlayerPos(playerid, RedTeamDMIRandomSpawns[rand][0], RedTeamDMIRandomSpawns[rand][1], RedTeamDMIRandomSpawns[rand][2]); // [rand] means random, [0] = X, [1] = Y, [2] = Z
    return 1;
}


forward SetPlayerRandomBlueTeamDMISpawn(playerid);
public SetPlayerRandomBlueTeamDMISpawn(playerid)
{
    new rand = random(sizeof(BlueTeamDMIRandomSpawns));
    SetPlayerPos(playerid, BlueTeamDMIRandomSpawns[rand][0], BlueTeamDMIRandomSpawns[rand][1], BlueTeamDMIRandomSpawns[rand][2]);
    return 1;
}
