package assets;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class Player extends FlxSprite
{

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		makeGraphic(10,12);
		
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.D){
			if(x<150){
			x += 2;
			}
		}
		if (FlxG.keys.pressed.A){
			if (x > 0){
			x -= 2;
			}
		}
		if (FlxG.keys.justPressed.SPACE){
			FlxG.state.add(new Bullet(x+width/2, y));	
		}
		
		
	}
	
}