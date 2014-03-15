package;
import flixel.FlxSprite;
import flixel.util.FlxAngle;

/**
 * ...
 * @author Noogai03
 */
class Bullet extends FlxSprite 
{
	static inline var MOVE_SPEED = 400;
	public function new(X:Float, Y:Float, _angle:Float) 
	{
		super(X, Y);
		loadGraphic("assets/images/bullet.png");
				
		this.angle = _angle;
		
		velocity.x = MOVE_SPEED * Math.cos(angle);
		velocity.y = MOVE_SPEED * Math.sin(angle);
		
	}
	
	override private function set_angle(Value:Float):Float 
	{
		//velocity.x = MOVE_SPEED * Math.cos(angle);
		//velocity.y = MOVE_SPEED * Math.sin(angle);
		
		velocity = FlxAngle.getCartesianCoords(MOVE_SPEED, angle);
		return super.set_angle(Value);
	}
	
	override public function update():Void 
	{
		if (!isOnScreen())
			kill();
		super.update();
	}
	
	override public function kill():Void 
	{		
		super.kill();
	}
	
}