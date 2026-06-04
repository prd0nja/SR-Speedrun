main() {
	maps\mp\_load::main();
	getEntArray("trigger_endmap", "targetname")[0].targetname = "endmap_trig";
}