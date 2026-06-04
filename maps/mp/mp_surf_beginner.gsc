#include surf\_util;

main() {
	getEntArray("trigger_endmap", "targetname")[0].targetname = "endmap_trig";
	maps\mp\_load::main();

	// Bhop has improved a lot, we no longer need boosters here
	boosters = getEntArray( "trigger_boost", "targetname" );
	for( i = 0; i < boosters.size; i++ )
		boosters[i] delete();

	// Fix booster speeds through script because I cba to recompile the entire map
	/*
	boosters = getEntArray( "trigger_boost", "targetname" );
	for( i = 0; i < boosters.size; i++ )
		boosters[i].target = "0 500 50";
	*/

	creditsLines = [];
	creditsLines[ creditsLines.size ] = "--- ^3Surf Beginner^7 ---";
	creditsLines[ creditsLines.size ] = "--- ^3Originally created for CS:GO by ^2Kiiru^7 ---";
	creditsLines[ creditsLines.size ] = "--- ^3Ported to CoD4 by ^2JWofles & atrX^7 ---";
	credits( creditsLines );
}