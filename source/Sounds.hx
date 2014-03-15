package;
import flixel.FlxG;
import flixel.system.FlxSound;

/**
 * ...
 * @author Noogai03
 */
class Sounds 
{	
	static public var Shotgun_Fire:FlxSound;
	
	static public var Shotgun_Reload:FlxSound;
	
	static public function loadSounds()
	{
		Shotgun_Fire = FlxG.sound.load("assets/sounds/shotgun_fire.wav");
		Shotgun_Reload = FlxG.sound.load("assets/sounds/shotgun_reload.wav");
	}
}