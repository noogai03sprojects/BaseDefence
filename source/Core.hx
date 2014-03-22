package;
import flash.errors.ArgumentError;
import flixel.FlxSprite;

/**
 * ...
 * @author Noogai03
 */
class Core extends FlxSprite 
{

	public function new(X:Float, Y:Float) 
	{
		super(X, Y);
		loadGraphic("assets/images/core.png", true, false, 16, 32);
		
		animation.add("pump", [0, 0, 1, 2, 3, 4, 5, 6, 6, 6, 5, 4, 3, 2, 1, 0], 10, true);
		animation.play("pump");
		
		width = 14;
		height = 10;
		offset.x = 1;
		offset.y = 22;
	}
	
}