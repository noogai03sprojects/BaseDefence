package;
import flash.errors.Error;
import flixel.FlxBasic;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.group.FlxTypedGroup.FlxTypedGroup;
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
	var blastDoors:FlxTypedGroup<BlastDoors>;
	var doorsOpen:Bool;
	
	var enemies:FlxGroup;
	
	var core:Core;
	
	public function new(_state : FlxState) 
	{
		super();
		state = _state;
		
		
		enemies = new FlxGroup();
		ground = new FlxTilemap();
		walls = new FlxTilemap();	
		blastDoors = new FlxTypedGroup<BlastDoors>();
		blastDoors.add(new BlastDoors(384, 288));
		blastDoors.add(new BlastDoors(384, 464));
		
		doorsOpen = false;
		toggleDoors();
		
		player = new Player(350, 360);
		
		add(ground);		
		add(walls);		
		
		add(blastDoors);
		
		add(enemies);
		
		
		add(player.bullets);
		add(player);
			
		ground.loadMap(Assets.getText("assets/data/csv/ground.csv"), "assets/images/tiles.png", TILE_WIDTH, TILE_HEIGHT);
		walls.loadMap(Assets.getText("assets/data/csv/walls.csv"), "assets/images/tiles.png", TILE_WIDTH, TILE_HEIGHT);	
		
		
		core = new Core(396, 386);
		add(core);
		
		var enemy:Enemy = recycleEnemy();
		enemy.initPaths(walls, core);
		
		FlxG.camera.zoom = 3;		
		FlxG.camera.follow(player, FlxCamera.STYLE_LOCKON, null, 5);
		//FlxG.camera.deadzone = null;
		
	}	
	
	function recycleEnemy() 
	{
		var enemy:Enemy = cast enemies.getFirstAvailable(Enemy); 
		if (enemy == null)
		{
			enemy = new Enemy(0, 0);
			enemies.add(enemy);
		}
		return enemy;
	}
	
	override public function update():Void 
	{
		if (FlxG.keys.justPressed.O)
		{
			doorsOpen = !doorsOpen;
			toggleDoors();			
		}
		
		
		FlxG.collide(player, walls);
		FlxG.collide(player.bullets, walls, hitWall);
		if (!doorsOpen)
			FlxG.collide(blastDoors, player);
		super.update();
	}
	function toggleDoors()
	{
		if (doorsOpen)
		{
			blastDoors.callAll("open");			
		}
		else
		{
			blastDoors.callAll("close");			
		}		
	}
	
	//{ callbacks
	
	function hitWall(A:FlxBasic, B:FlxBasic)
	{
		A.kill();
	}
	
	//}
	
}