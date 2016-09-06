package assets;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class Bullet extends FlxSprite
{

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		makeGraphic(1, 2);
	}
	
	override public function update(elapsed:Float):Void
	{
	super.update(elapsed);
		y--;
	if (y < 0){
		destroy();
		}
	}
}