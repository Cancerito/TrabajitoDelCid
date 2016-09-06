package states;

import assets.Player;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class PlayState extends FlxState
{
	private var player:Player;
	private var timer:Float = 0;
	
	
	override public function create():Void
	{
		super.create();
		
		player = new Player(80, 130);
		
		add(player);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (timer > 3){
			timer = 0;
		}
		else{
			timer += elapsed;
		}
	}
}
