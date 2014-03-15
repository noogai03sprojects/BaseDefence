package;
import flash.errors.Error;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.tile.FlxTilemap;
import openfl.Assets;

/**
 * ...
 * @author Noogai03
 */
class TopDownLevel extends FlxGroup
{
	private static inline var TILE_WIDTH = 16;
	private static inline var TILE_HEIGHT = 16;
	
	var state: FlxState;
	
	var ground : FlxTilemap;
	var walls:FlxTilemap;
	
	var player:Player;
	
	public function new(_state : FlxState) 
	{
		super();
		state = _state;
		
		ground = new FlxTilemap();
		walls = new FlxTilemap();	
		
		player = new Player(100, 100);
		
		add(ground);		
		add(walls);
		
		add(player.bullets);
		add(player);
			
		ground.loadMap(Assets.getText("assets/data/groundLevel.txt"), "assets/images/tiles.png", TILE_WIDTH, TILE_HEIGHT);
		walls.loadMap(Assets.getText("assets/data/wallLevel.txt"), "assets/images/tiles.png", TILE_WIDTH, TILE_HEIGHT);	
		
		
		FlxG.camera.zoom = 3;		
		FlxG.camera.follow(player, FlxCamera.STYLE_TOPDOWN_TIGHT, null, 3);
		
	}	
	
	override public function update():Void 
	{
		FlxG.collide(player, walls);
		super.update();
	}
	
}