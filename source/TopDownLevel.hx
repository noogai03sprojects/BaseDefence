package;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.tile.FlxTilemap;

/**
 * ...
 * @author Noogai03
 */
class TopDownLevel extends FlxGroup
{
	var state: FlxState;
	
	var ground : FlxTilemap;
	
	public function new(_state : FlxState) 
	{
		state = _state;
		
		ground = new FlxTilemap();
		
	}
	
}