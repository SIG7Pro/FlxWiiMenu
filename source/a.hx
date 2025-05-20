package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class WiiMenuMain extends FlxState
{
		var alpha:Float = 1; // Taken from the HF Snippets page. https://snippets.haxeflixel.com/sprites/alpha/
		var alphaDir:Int = -1;

	override public function create()
	{
		bgColor = 5;

		super.create();

		var warnText = new FlxSprite();
		warnText.loadGraphic("assets/images/HealthAndSafety/WarningUSA.png");
		warnText.screenCenter();
		warnText.alpha = 0.5;
		trace("Add Health and Safety Warning.");
		add(warnText);

		var buttonPrompt = new FlxSprite();
		buttonPrompt.loadGraphic("assets/images/HealthAndSafety/ButtonPrompt.png");
		buttonPrompt.screenCenter(X);
		buttonPrompt.y = FlxG.height - 88;
		trace("Add Button Prompt (Press A to continue.)");
		add(buttonPrompt);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		alpha += 0.02 * alphaDir;

		if (alpha > 1)
			alphaDir = -1;
		else if (alpha < 0)
			alphaDir = 1;

		// buttonPrompt.alpha = alpha; // Controls the alpha for the button prompt.
		FlxG.autoPause = false;

		// Detect if either the W key or the up arrow key is pressed
		if (FlxG.keys.anyPressed([A, Z]))
		{
			FlxG.switchState(new WiiMenuMain());
			trace("Opening Wii Menu.");
		}
	}
}