package  
{
	
	//THINGS TO DO: Move all DAME files unto a MAP folder, then move all tile files locally, export CSV, then copy to assets folder keep the tiles there... Then import as instructed and debug!
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.*;
	
	public class PlayState extends FlxState
	{
		private var player:Player;
		private var floor:FlxTileblock;
		private var level:Level_Level1;
		private var platform:FlxTileblock;
		private var minText:FlxText;
		
		public function PlayState() {
			
		}
		
		override public function create():void
		{
			FlxG.bgColor = 0xff144954;
			
			level = new Level_Level1;
			
			player = new Player(51, 373);
			
			minText = new FlxText(0, 0, 320, "Streng");
			
			floor = new FlxTileblock(0, 208, 320, 32);
			floor.makeGraphic(320, 32, 0xff689c16);
			
			platform = new FlxTileblock(180, 160, 128, 16);
			platform.makeGraphic(128, 16, 0xff689c16);
			
			add(player);
			add(level);
			add(platform);
			add(minText);
			
			//	Tell flixel how big our game world is
			FlxG.worldBounds = new FlxRect(0, 0, level.width, level.height);
			
			//	Don't let the camera wander off the edges of the map
			FlxG.camera.setBounds(0, 0, level.width, level.height);
			
			//	The camera will follow the player
			FlxG.camera.follow(player, FlxCamera.STYLE_PLATFORMER);
			
			//	These are debugger watches. Bring up the debug console (the ' key by default) and you'll see their values in real-time as you play
			FlxG.watch(player.acceleration, "x", "ax");
			FlxG.watch(player.velocity, "x", "vx");
			FlxG.watch(player.velocity, "y", "vy");
		}
		
		
		
		override public function update():void
			{
				super.update();
				minText.text = "No key"
				FlxG.collide(player, level);
				FlxG.collide(player, platform);
				
			}
	}

}