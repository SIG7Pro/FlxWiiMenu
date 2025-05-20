package;

import flixel.FlxG;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, WarningState));
	}

	public function update(elapsed:Float)
	{
		FlxG.autoPause = false;
	}
}
