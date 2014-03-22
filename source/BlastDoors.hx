package;
import flixel.FlxSprite;

/**
 * ...
 * @author Noogai03
 */
class BlastDoors extends FlxSprite 
{
	//public var opened:Bool = true;
	public function new(X:Float, Y:Float) 
	{
		super (X, Y);
		loadGraphic("assets/images/blastdoors.png", true, false, 32, 32);
		animation.add("open", [0, 1, 2, 3], 20, false);
		animation.add("close", [3, 2, 1, 0], 20, false);
		
		
		immovable = true;
	}
	
	public function close()
	{
		animation.play("close", true);
		//opened = false;
	}
	
	public function open()
	{
		animation.play("open", true);
		//opened = true;
	}
	
}