package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;
import flixel.group.FlxTypedGroup;
import flixel.util.FlxAngle;
import flixel.util.FlxPoint;
import flixel.util.FlxRandom;

/**
 * ...
 * @author Noogai03
 */
class Player extends FlxSprite 
{
	var moveSpeed : Float = 800;
	
	var direction:Int;
	//var lastDirection:Int = 1;
	public static inline var RIGHT:Int = 0;
	public static inline var DOWN: Int = 1;
	public static inline var LEFT:Int = 2;
	public static inline var UP:Int = 3;
	var walking:Bool = false;
	
	var fireTimer : Float = 0;
	var fireDelay : Float = 1.5;
	
	public var bullets:FlxTypedGroup<Bullet>;
	
	public function new(X:Float, Y:Float) 
	{
		super(X, Y);
		
		loadGraphic("assets/images/player.png", true, false, 16, 16);
		
		bullets = new FlxTypedGroup<Bullet>();
		
		maxVelocity.x = 100;
		maxVelocity.y = 100;
		drag.set(moveSpeed * 2, moveSpeed * 2);
		
		FlxG.debugger.visible = true;
		
		width = 12;
		height = 6;
		offset.x = 2;
		offset.y = 10;
		direction = DOWN;
		
		animation.add("downWalk", [0, 1, 2, 3], 10, true);
		animation.add("leftWalk", [4, 5, 6, 7], 10, true);
		animation.add("upWalk", [8, 9, 10, 11], 10, true);
		animation.add("rightWalk", [12, 13, 14, 15], 10, true);
		
		animation.add("down", [0], 30, true);
		animation.add("left", [4], 30, true);
		animation.add("up", [8], 30, true);
		animation.add("right", [12], 30, true);
	}
	
	
	override public function update():Void 
	{
		acceleration.set(0, 0);
		walking = false;
		fireTimer -= FlxG.elapsed;
		
		handleInput();	
		
		
		
		//lastDirection = direction;
		super.update();
	}
	
	function recycleBullet() : Bullet
	{
		var bul:Bullet = bullets.getFirstAvailable();
		
		if (bul == null)
		{
			bul = new Bullet(0, 0, 0);
			bullets.add(bul);
		}
		
		return bul;
	}
	
	function handleInput()
	{
		if (FlxG.keys.anyPressed(["A", "LEFT"]))
		{
			acceleration.x = -moveSpeed;
			direction = LEFT;
			walking = true;
		}
		if (FlxG.keys.anyPressed(["D", "RIGHT"]))
		{
			acceleration.x = moveSpeed;		
			direction = RIGHT;
			walking = true;
		}
		if (FlxG.keys.anyPressed(["W", "UP"]))
		{
			acceleration.y = -moveSpeed;
			direction = UP;
			walking = true;
		}
		if (FlxG.keys.anyPressed(["S", "DOWN"]))
		{
			acceleration.y = moveSpeed;		
			direction = DOWN;
			walking = true;
		}
		if (FlxG.keys.justPressed.X)
		{
			fire();
		}
		
		switch (direction)
		{
				case DOWN:
					if (walking)
					{
						animation.play("downWalk", false);
					}
					else
					{
						animation.play("down", true);
					}
					
				case LEFT:
					if (walking)
					{
						animation.play("leftWalk", false);
					}
					else
					{
						animation.play("left", true);
					}
					
				case UP:
					if (walking)
					{
						animation.play("upWalk", false);
					}
					else
					{
						animation.play("up", true);
					}
					
				case RIGHT:
					if (walking)
					{
						animation.play("rightWalk", false);
					}
					else
					{
						animation.play("right", true);
					}
								
		}	
	}
	
	function fire() 
	{
		if (fireTimer <= 0)
		{
			for (i in 0...5)
			{
				var bul:Bullet = recycleBullet();
				bul.reset(x, y);
				//bul.reset(getGraphicMidpoint().x, getGraphicMidpoint().y);
				switch(direction)
				{
					case DOWN:
						bul.angle = 90;
					case UP:
						bul.angle = -90;
					case RIGHT:
						bul.angle = 0;
					case LEFT:
						bul.angle = 180;
				}
				bul.angle += FlxRandom.floatRanged( -30, 30);
			}
			
			Sounds.Shotgun_Fire.play(true);
			Sounds.Shotgun_Fire.onComplete = Reload;
			
			FlxG.camera.shake();
			//FlxG.camera.
			
			fireTimer = fireDelay;
		}
	}
	
	public static function Reload() : Void
	{
		Sounds.Shotgun_Reload.play(true);
	}
	
}