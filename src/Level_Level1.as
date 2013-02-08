//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	public class Level_Level1 extends BaseLevel
	{
		//Embedded media...
		[Embed(source="../assets/mapCSV_Level1_BG.csv", mimeType="application/octet-stream")] public var CSV_Level1BG:Class;
		[Embed(source="../assets/tiles-city.png")] public var Img_Level1BG:Class;
		[Embed(source="../assets/mapCSV_Level1_BGTop.csv", mimeType="application/octet-stream")] public var CSV_Level1BGTop:Class;
		[Embed(source="../assets/tiles-city.png")] public var Img_Level1BGTop:Class;
		[Embed(source="../assets/mapCSV_Level1_Foreground.csv", mimeType="application/octet-stream")] public var CSV_Level1Foreground:Class;
		[Embed(source="../assets/tiles-city.png")] public var Img_Level1Foreground:Class;
		[Embed(source="../assets/mapCSV_Level1_Close_Camera.csv", mimeType="application/octet-stream")] public var CSV_Level1Close_Camera:Class;
		[Embed(source="../assets/tiles-city.png")] public var Img_Level1Close_Camera:Class;

		//Tilemaps
		public var layerLevel1BG:FlxTilemap;
		public var layerLevel1BGTop:FlxTilemap;
		public var layerLevel1Foreground:FlxTilemap;
		public var layerLevel1Close_Camera:FlxTilemap;

		//Sprites


		public function Level_Level1(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			super();
			// Generate maps.
			layerLevel1BG = new FlxTilemap;
			layerLevel1BG.loadMap( new CSV_Level1BG, Img_Level1BG, 16,16 );
			layerLevel1BG.x = 0.000000;
			layerLevel1BG.y = 0.000000;
			layerLevel1BG.scrollFactor.x = 8.000000;
			layerLevel1BG.scrollFactor.y = 8.000000;
			layerLevel1BG.collideIndex = 1;
			layerLevel1BG.drawIndex = 1;
			layerLevel1BGTop = new FlxTilemap;
			layerLevel1BGTop.loadMap( new CSV_Level1BG-Top, Img_Level1BG-Top, 16,16 );
			layerLevel1BGTop.x = 0.000000;
			layerLevel1BGTop.y = 0.000000;
			layerLevel1BGTop.scrollFactor.x = 8.000000;
			layerLevel1BGTop.scrollFactor.y = 8.000000;
			layerLevel1BGTop.collideIndex = 1;
			layerLevel1BGTop.drawIndex = 1;
			layerLevel1Foreground = new FlxTilemap;
			layerLevel1Foreground.loadMap( new CSV_Level1Foreground, Img_Level1Foreground, 16,16 );
			layerLevel1Foreground.x = 0.000000;
			layerLevel1Foreground.y = 0.000000;
			layerLevel1Foreground.scrollFactor.x = 8.000000;
			layerLevel1Foreground.scrollFactor.y = 8.000000;
			layerLevel1Foreground.collideIndex = 1;
			layerLevel1Foreground.drawIndex = 1;
			layerLevel1Close_Camera = new FlxTilemap;
			layerLevel1Close_Camera.loadMap( new CSV_Level1Close_Camera, Img_Level1Close_Camera, 16,16 );
			layerLevel1Close_Camera.x = 0.000000;
			layerLevel1Close_Camera.y = 0.000000;
			layerLevel1Close_Camera.scrollFactor.x = 8.000000;
			layerLevel1Close_Camera.scrollFactor.y = 8.000000;
			layerLevel1Close_Camera.collideIndex = 1;
			layerLevel1Close_Camera.drawIndex = 1;

			//Add layers to the master group in correct order.
			masterLayer.add(layerLevel1BG);
			masterLayer.add(layerLevel1BG-Top);
			masterLayer.add(layerLevel1Foreground);
			masterLayer.add(layerLevel1Close_Camera);


			if ( addToStage )
			{
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerLevel1Foreground;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 960;
			boundsMaxY = 480;

		}


	}
}
