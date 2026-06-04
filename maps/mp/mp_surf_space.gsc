#include surf\_util;

main() {
	getEntArray("trigger_endmap", "targetname")[0].targetname = "endmap_trig";
	maps\mp\_load::main();

	level._effects[ "teleport" ] = loadFx( "custom/surf_space_teleport" );

	fxTeleporters = getEntArray( "trigger_teleport_fx", "targetname" );
	for( i = 0; i < fxTeleporters.size; i++ )
		fxTeleporters[i] thread surf\_mod::teleporter();

	thread teleportFx();

	creditsLines = [];
	creditsLines[ creditsLines.size ] = "--- ^3Surf Space^7 ---";
	creditsLines[ creditsLines.size ] = "--- ^3Created by ^2atrX^7 ---";
	credits( creditsLines );
}

teleportFx() {
	teleporters = getEntArray( "trigger_teleport_fx", "targetname" );
	teleporters[ teleporters.size ] = getEnt( "trigger_endmap", "targetname" );
	for( i = 0; i < teleporters.size; i++ ) {
		playLoopedFx( level._effects[ "teleport" ], 85, teleporters[i].origin - ( 0, 0, 64 ) );
	}
}