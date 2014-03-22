package;
import flixel.FlxSprite;
import flixel.tile.FlxTilemap;
import flixel.util.FlxPath;
import flixel.util.FlxPoint;

/**
 * ...
 * @author Noogai03
 */
class Enemy extends FlxSprite 
{
	var path:FlxPath;
	
	static inline var MOVE_SPEED = 50;
	
	public function new(X:Float, Y:Float) 
	{
		super(X, Y);
		loadGraphic("assets/images/enemy.png", true, false, 16, 16);
		animation.add("walk", [0, 1, 2, 3], 15);
		animation.play("walk");
		
		width = 14;
		height = 6;
		offset.x = 1;
		offset.y = 10;
		
	}
	
	/**
	 * Find the path to the core
	 * @param	map The tilemap
	 * @param	core The core.
	 */
	public function initPaths(map:FlxTilemap, core:Core)
	{
		path = FlxPath.recycle();
		//path.
		var centre:FlxPoint = new FlxPoint(x + 8, y + 8);
		var coreCentre:FlxPoint = new FlxPoint(core.x + 8, core.y + 20);
		
		var points:Array<FlxPoint> = map.findPath(centre, coreCentre, true, false, true);
		path.run(this, points, MOVE_SPEED);
	}
	
}