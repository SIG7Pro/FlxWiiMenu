package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class WiiMenuMain extends FlxState
{
	trace("Successfully opened the Wii Menu.");
	override public function create(){

		var drop = new FlxSprite();
		drop.loadGraphic("assets/images/WiiMenu/bgGrey.png");
		drop.screenCenter();
		drop.scale.x = 1.5;
		drop.scale.y = 1.5;
		trace("Spawned Background.");

		var bgElem1 = new FlxSprite();
		bgElem1.loadGraphic("assets/images/WiiMenu/Dialog_bg.png");
		bgElem.scale.x = 1.5;
		trace("Spawned Element 1.");

		// Button Spawning Time

		var Settings = new FlxSprite();
		Settings.loadGraphic("assets/images/WiiMenu/buttons/memory_management.png");
		Settings.x = 33 - 5;
		Settings.y = 345;
		trace("Spawned Settings Button.");

		var SDMenu = new FlxSprite();
		SDMenu.loadGraphic("assets/images/WiiMenu/buttons/no_sd_card_inserted.png");
		SDMenu.x = 150;
		SDMenu.y = 380;
		SDMenu.scale.x = 0.9167;
		SDMenu.scale.y = 0.9167;
		trace("Spawned SD Card.");

		var MB = new FlxSprite();
		MB.loadGraphic("assets/images/WiiMenu/buttons/message_board.png");
		MB.x = 497;
		MB.y = 345;
		trace("Spawned Message Board Button.");

		add(drop);
		add(bgElem1);
		add(Settings);
		add(SDMenu);
		add(MB);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
