package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.group.FlxGroup; // importar esta cosa IMPORTANTE

/*
 este es un ejemplo de la comicion para que funcione con todos los enemigos que tenememos y no haya que comparar pociciones
 con cada uno por separado
  */
class MenuState extends FlxState
{
	private var enemigo:FlxSprite;
	private var jugador:FlxSprite;
	private var grupoEnemigo:FlxGroup;//haces un array de enemigos
	
	override public function create():Void
	{
		super.create();
		
		grupoEnemigo = new FlxGroup();
		Reg.grupoBalasEnemigos = new FlxGroup();
		for (i in 0...5) // usas el for para llenarlo
	{
		
		var enemigo:FlxSprite = new FlxSprite(100 + i* 100,100); // la brujeria del mas es para separarlos
		enemigo.makeGraphic(64, 64);
		
		grupoEnemigo.add(enemigo);
		}
		
		jugador = new FlxSprite(100, 300);
		jugador.makeGraphic(64, 64, 0xFFFFFF00);
		add(grupoEnemigo);
		add (Reg.grupoBalasEnemigos);
		add(jugador);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		if (FlxG.keys.pressed.A)
			jugador.x -= 3;
		if (FlxG.keys.pressed.D)
			jugador.x += 3;
		if (FlxG.keys.pressed.W)
			jugador.y -= 3;
		if (FlxG.keys.pressed.S)
			jugador.y += 3;	
		
		for (i in 0...grupoEnemigo.length)
		{
			if(FlxG.overlap(jugador, grupoEnemigo.members[i]))
			trace("Choca contra Enemigo#" + i); // verificar que funciona 
		}
			
			
	}
}
