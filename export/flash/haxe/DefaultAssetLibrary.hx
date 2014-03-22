package;


import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.MovieClip;
import flash.text.Font;
import flash.media.Sound;
import flash.net.URLRequest;
import flash.utils.ByteArray;
import haxe.Unserializer;
import openfl.Assets;

#if (flash || js)
import flash.display.Loader;
import flash.events.Event;
import flash.net.URLLoader;
#end

#if ios
import openfl.utils.SystemPath;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public static var className (default, null) = new Map <String, Dynamic> ();
	public static var path (default, null) = new Map <String, String> ();
	public static var type (default, null) = new Map <String, AssetType> ();
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		className.set ("assets/data/csv/ground.csv", __ASSET__assets_data_csv_ground_csv);
		type.set ("assets/data/csv/ground.csv", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/data/csv/walls.csv", __ASSET__assets_data_csv_walls_csv);
		type.set ("assets/data/csv/walls.csv", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/data/groundLevel.txt", __ASSET__assets_data_groundlevel_txt);
		type.set ("assets/data/groundLevel.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/data/layer1.csv", __ASSET__assets_data_layer1_csv);
		type.set ("assets/data/layer1.csv", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/data/lol.txt", __ASSET__assets_data_lol_txt);
		type.set ("assets/data/lol.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/data/map.dam", __ASSET__assets_data_map_dam);
		type.set ("assets/data/map.dam", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/data/map.dam.bak", __ASSET__assets_data_map_dam_bak);
		type.set ("assets/data/map.dam.bak", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/data/tiles.png", __ASSET__assets_data_tiles_png);
		type.set ("assets/data/tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/data/tiles.pyxel", __ASSET__assets_data_tiles_pyxel);
		type.set ("assets/data/tiles.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/data/tiles.txt", __ASSET__assets_data_tiles_txt);
		type.set ("assets/data/tiles.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/data/tiles0.txt", __ASSET__assets_data_tiles0_txt);
		type.set ("assets/data/tiles0.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/data/tiles1.txt", __ASSET__assets_data_tiles1_txt);
		type.set ("assets/data/tiles1.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/data/wallLevel.txt", __ASSET__assets_data_walllevel_txt);
		type.set ("assets/data/wallLevel.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/blastdoors.png", __ASSET__assets_images_blastdoors_png);
		type.set ("assets/images/blastdoors.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/blastdoors.pyxel", __ASSET__assets_images_blastdoors_pyxel);
		type.set ("assets/images/blastdoors.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/bullet.png", __ASSET__assets_images_bullet_png);
		type.set ("assets/images/bullet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/bullet.pyxel", __ASSET__assets_images_bullet_pyxel);
		type.set ("assets/images/bullet.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/core.png", __ASSET__assets_images_core_png);
		type.set ("assets/images/core.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/core.pyxel", __ASSET__assets_images_core_pyxel);
		type.set ("assets/images/core.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/enemy.png", __ASSET__assets_images_enemy_png);
		type.set ("assets/images/enemy.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/enemy.pyxel", __ASSET__assets_images_enemy_pyxel);
		type.set ("assets/images/enemy.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/player.png", __ASSET__assets_images_player_png);
		type.set ("assets/images/player.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/player.pyxel", __ASSET__assets_images_player_pyxel);
		type.set ("assets/images/player.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/tiles.png", __ASSET__assets_images_tiles_png);
		type.set ("assets/images/tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/tiles.png.bak", __ASSET__assets_images_tiles_png_bak);
		type.set ("assets/images/tiles.png.bak", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/sounds/aup/fire.aup", __ASSET__assets_sounds_aup_fire_aup);
		type.set ("assets/sounds/aup/fire.aup", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/fire_data/e00/d00/e0000713.au", __ASSET__assets_sounds_aup_fire_data_e00_d00_e0000713_au);
		type.set ("assets/sounds/aup/fire_data/e00/d00/e0000713.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/fire_data/e00/d00/e0000c9c.au", __ASSET__assets_sounds_aup_fire_data_e00_d00_e0000c9c_au);
		type.set ("assets/sounds/aup/fire_data/e00/d00/e0000c9c.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/loadShell.aup", __ASSET__assets_sounds_aup_loadshell_aup);
		type.set ("assets/sounds/aup/loadShell.aup", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/loadShell_data/e00/d00/e00005f8.au", __ASSET__assets_sounds_aup_loadshell_data_e00_d00_e00005f8_au);
		type.set ("assets/sounds/aup/loadShell_data/e00/d00/e00005f8.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/loadShell_data/e00/d00/e000098a.au", __ASSET__assets_sounds_aup_loadshell_data_e00_d00_e000098a_au);
		type.set ("assets/sounds/aup/loadShell_data/e00/d00/e000098a.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/reload.aup", __ASSET__assets_sounds_aup_reload_aup);
		type.set ("assets/sounds/aup/reload.aup", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/reload_data/e00/d00/e00000d0.au", __ASSET__assets_sounds_aup_reload_data_e00_d00_e00000d0_au);
		type.set ("assets/sounds/aup/reload_data/e00/d00/e00000d0.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/reload_data/e00/d00/e00002d5.au", __ASSET__assets_sounds_aup_reload_data_e00_d00_e00002d5_au);
		type.set ("assets/sounds/aup/reload_data/e00/d00/e00002d5.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/reload_data/e00/d00/e00004aa.au", __ASSET__assets_sounds_aup_reload_data_e00_d00_e00004aa_au);
		type.set ("assets/sounds/aup/reload_data/e00/d00/e00004aa.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/reload_data/e00/d00/e0000c59.au", __ASSET__assets_sounds_aup_reload_data_e00_d00_e0000c59_au);
		type.set ("assets/sounds/aup/reload_data/e00/d00/e0000c59.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/shotgun.aup", __ASSET__assets_sounds_aup_shotgun_aup);
		type.set ("assets/sounds/aup/shotgun.aup", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/shotgun_data/e00/d00/e000017f.au", __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e000017f_au);
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e000017f.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/shotgun_data/e00/d00/e00001b4.au", __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e00001b4_au);
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e00001b4.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000504.au", __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e0000504_au);
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000504.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000a4d.au", __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e0000a4d_au);
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000a4d.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000b7d.au", __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e0000b7d_au);
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000b7d.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000d99.au", __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e0000d99_au);
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000d99.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/sounds/shotgun_fire.wav", __ASSET__assets_sounds_shotgun_fire_wav);
		type.set ("assets/sounds/shotgun_fire.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/shotgun_load_shell.wav", __ASSET__assets_sounds_shotgun_load_shell_wav);
		type.set ("assets/sounds/shotgun_load_shell.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/shotgun_RAW.mp3", __ASSET__assets_sounds_shotgun_raw_mp3);
		type.set ("assets/sounds/shotgun_RAW.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
		className.set ("assets/sounds/shotgun_reload.wav", __ASSET__assets_sounds_shotgun_reload_wav);
		type.set ("assets/sounds/shotgun_reload.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		
		#elseif html5
		
		path.set ("assets/data/csv/ground.csv", "assets/data/csv/ground.csv");
		type.set ("assets/data/csv/ground.csv", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/data/csv/walls.csv", "assets/data/csv/walls.csv");
		type.set ("assets/data/csv/walls.csv", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
		type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		path.set ("assets/data/groundLevel.txt", "assets/data/groundLevel.txt");
		type.set ("assets/data/groundLevel.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		path.set ("assets/data/layer1.csv", "assets/data/layer1.csv");
		type.set ("assets/data/layer1.csv", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/data/lol.txt", "assets/data/lol.txt");
		type.set ("assets/data/lol.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		path.set ("assets/data/map.dam", "assets/data/map.dam");
		type.set ("assets/data/map.dam", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/data/map.dam.bak", "assets/data/map.dam.bak");
		type.set ("assets/data/map.dam.bak", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/data/tiles.png", "assets/data/tiles.png");
		type.set ("assets/data/tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/data/tiles.pyxel", "assets/data/tiles.pyxel");
		type.set ("assets/data/tiles.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/data/tiles.txt", "assets/data/tiles.txt");
		type.set ("assets/data/tiles.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		path.set ("assets/data/tiles0.txt", "assets/data/tiles0.txt");
		type.set ("assets/data/tiles0.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		path.set ("assets/data/tiles1.txt", "assets/data/tiles1.txt");
		type.set ("assets/data/tiles1.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		path.set ("assets/data/wallLevel.txt", "assets/data/wallLevel.txt");
		type.set ("assets/data/wallLevel.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		path.set ("assets/images/blastdoors.png", "assets/images/blastdoors.png");
		type.set ("assets/images/blastdoors.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/blastdoors.pyxel", "assets/images/blastdoors.pyxel");
		type.set ("assets/images/blastdoors.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/images/bullet.png", "assets/images/bullet.png");
		type.set ("assets/images/bullet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/bullet.pyxel", "assets/images/bullet.pyxel");
		type.set ("assets/images/bullet.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/images/core.png", "assets/images/core.png");
		type.set ("assets/images/core.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/core.pyxel", "assets/images/core.pyxel");
		type.set ("assets/images/core.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/images/enemy.png", "assets/images/enemy.png");
		type.set ("assets/images/enemy.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/enemy.pyxel", "assets/images/enemy.pyxel");
		type.set ("assets/images/enemy.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
		type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		path.set ("assets/images/player.png", "assets/images/player.png");
		type.set ("assets/images/player.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/player.pyxel", "assets/images/player.pyxel");
		type.set ("assets/images/player.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/images/tiles.png", "assets/images/tiles.png");
		type.set ("assets/images/tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/tiles.png.bak", "assets/images/tiles.png.bak");
		type.set ("assets/images/tiles.png.bak", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
		type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		path.set ("assets/sounds/aup/fire.aup", "assets/sounds/aup/fire.aup");
		type.set ("assets/sounds/aup/fire.aup", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/fire_data/e00/d00/e0000713.au", "assets/sounds/aup/fire_data/e00/d00/e0000713.au");
		type.set ("assets/sounds/aup/fire_data/e00/d00/e0000713.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/fire_data/e00/d00/e0000c9c.au", "assets/sounds/aup/fire_data/e00/d00/e0000c9c.au");
		type.set ("assets/sounds/aup/fire_data/e00/d00/e0000c9c.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/loadShell.aup", "assets/sounds/aup/loadShell.aup");
		type.set ("assets/sounds/aup/loadShell.aup", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/loadShell_data/e00/d00/e00005f8.au", "assets/sounds/aup/loadShell_data/e00/d00/e00005f8.au");
		type.set ("assets/sounds/aup/loadShell_data/e00/d00/e00005f8.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/loadShell_data/e00/d00/e000098a.au", "assets/sounds/aup/loadShell_data/e00/d00/e000098a.au");
		type.set ("assets/sounds/aup/loadShell_data/e00/d00/e000098a.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/reload.aup", "assets/sounds/aup/reload.aup");
		type.set ("assets/sounds/aup/reload.aup", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/reload_data/e00/d00/e00000d0.au", "assets/sounds/aup/reload_data/e00/d00/e00000d0.au");
		type.set ("assets/sounds/aup/reload_data/e00/d00/e00000d0.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/reload_data/e00/d00/e00002d5.au", "assets/sounds/aup/reload_data/e00/d00/e00002d5.au");
		type.set ("assets/sounds/aup/reload_data/e00/d00/e00002d5.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/reload_data/e00/d00/e00004aa.au", "assets/sounds/aup/reload_data/e00/d00/e00004aa.au");
		type.set ("assets/sounds/aup/reload_data/e00/d00/e00004aa.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/reload_data/e00/d00/e0000c59.au", "assets/sounds/aup/reload_data/e00/d00/e0000c59.au");
		type.set ("assets/sounds/aup/reload_data/e00/d00/e0000c59.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/shotgun.aup", "assets/sounds/aup/shotgun.aup");
		type.set ("assets/sounds/aup/shotgun.aup", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/shotgun_data/e00/d00/e000017f.au", "assets/sounds/aup/shotgun_data/e00/d00/e000017f.au");
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e000017f.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/shotgun_data/e00/d00/e00001b4.au", "assets/sounds/aup/shotgun_data/e00/d00/e00001b4.au");
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e00001b4.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000504.au", "assets/sounds/aup/shotgun_data/e00/d00/e0000504.au");
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000504.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000a4d.au", "assets/sounds/aup/shotgun_data/e00/d00/e0000a4d.au");
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000a4d.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000b7d.au", "assets/sounds/aup/shotgun_data/e00/d00/e0000b7d.au");
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000b7d.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000d99.au", "assets/sounds/aup/shotgun_data/e00/d00/e0000d99.au");
		type.set ("assets/sounds/aup/shotgun_data/e00/d00/e0000d99.au", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("assets/sounds/shotgun_fire.wav", "assets/sounds/shotgun_fire.wav");
		type.set ("assets/sounds/shotgun_fire.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		path.set ("assets/sounds/shotgun_load_shell.wav", "assets/sounds/shotgun_load_shell.wav");
		type.set ("assets/sounds/shotgun_load_shell.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		path.set ("assets/sounds/shotgun_RAW.mp3", "assets/sounds/shotgun_RAW.mp3");
		type.set ("assets/sounds/shotgun_RAW.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
		path.set ("assets/sounds/shotgun_reload.wav", "assets/sounds/shotgun_reload.wav");
		type.set ("assets/sounds/shotgun_reload.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		
		#else
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<AssetData> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							path.set (asset.id, asset.path);
							type.set (asset.id, asset.type);
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest");
				
			}
			
		} catch (e:Dynamic) {
			
			trace ("Warning: Could not load asset manifest");
			
		}
		
		#end
		
	}
	
	
	public override function exists (id:String, type:AssetType):Bool {
		
		var assetType = DefaultAssetLibrary.type.get (id);
		
		#if pixi
		
		if (assetType == IMAGE) {
			
			return true;
			
		} else {
			
			return false;
			
		}
		
		#end
		
		if (assetType != null) {
			
			if (assetType == type || ((type == SOUND || type == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && type == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (type == BINARY || type == null) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getBitmapData (id:String):BitmapData {
		
		#if pixi
		
		return BitmapData.fromImage (path.get (id));
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), BitmapData);
		
		#elseif js
		
		return cast (ApplicationMain.loaders.get (path.get (id)).contentLoaderInfo.content, Bitmap).bitmapData;
		
		#else
		
		return BitmapData.load (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if pixi
		
		return null;
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif js
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}

		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if pixi
		
		return null;
		
		#elseif (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		return new Font (path.get (id));
		
		#end
		
	}
	
	
	public override function getMusic (id:String):Sound {
		
		#if pixi
		
		//return null;		
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}
	
	
	public override function getPath (id:String):String {
		
		#if ios
		
		return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		#else
		
		return path.get (id);
		
		#end
		
	}
	
	
	public override function getSound (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:AssetType):Bool {
		
		#if flash
		
		if (type != AssetType.MUSIC && type != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function loadBitmapData (id:String, handler:BitmapData -> Void):Void {
		
		#if pixi
		
		handler (getBitmapData (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBitmapData (id));
			
		}
		
		#else
		
		handler (getBitmapData (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if pixi
		
		handler (getBytes (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadFont (id:String, handler:Font -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getFont (id));
			
		//}
		
		#else
		
		handler (getFont (id));
		
		#end
		
	}
	
	
	public override function loadMusic (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}
	
	
	public override function loadSound (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getSound (id));
			
		//}
		
		#else
		
		handler (getSound (id));
		
		#end
		
	}
	
	
}


#if pixi
#elseif flash

class __ASSET__assets_data_csv_ground_csv extends flash.utils.ByteArray { }
class __ASSET__assets_data_csv_walls_csv extends flash.utils.ByteArray { }
class __ASSET__assets_data_data_goes_here_txt extends flash.utils.ByteArray { }
class __ASSET__assets_data_groundlevel_txt extends flash.utils.ByteArray { }
class __ASSET__assets_data_layer1_csv extends flash.utils.ByteArray { }
class __ASSET__assets_data_lol_txt extends flash.utils.ByteArray { }
class __ASSET__assets_data_map_dam extends flash.utils.ByteArray { }
class __ASSET__assets_data_map_dam_bak extends flash.utils.ByteArray { }
class __ASSET__assets_data_tiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_data_tiles_pyxel extends flash.utils.ByteArray { }
class __ASSET__assets_data_tiles_txt extends flash.utils.ByteArray { }
class __ASSET__assets_data_tiles0_txt extends flash.utils.ByteArray { }
class __ASSET__assets_data_tiles1_txt extends flash.utils.ByteArray { }
class __ASSET__assets_data_walllevel_txt extends flash.utils.ByteArray { }
class __ASSET__assets_images_blastdoors_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_blastdoors_pyxel extends flash.utils.ByteArray { }
class __ASSET__assets_images_bullet_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_bullet_pyxel extends flash.utils.ByteArray { }
class __ASSET__assets_images_core_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_core_pyxel extends flash.utils.ByteArray { }
class __ASSET__assets_images_enemy_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_enemy_pyxel extends flash.utils.ByteArray { }
class __ASSET__assets_images_images_go_here_txt extends flash.utils.ByteArray { }
class __ASSET__assets_images_player_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_player_pyxel extends flash.utils.ByteArray { }
class __ASSET__assets_images_tiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_tiles_png_bak extends flash.utils.ByteArray { }
class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_fire_aup extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_fire_data_e00_d00_e0000713_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_fire_data_e00_d00_e0000c9c_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_loadshell_aup extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_loadshell_data_e00_d00_e00005f8_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_loadshell_data_e00_d00_e000098a_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_reload_aup extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_reload_data_e00_d00_e00000d0_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_reload_data_e00_d00_e00002d5_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_reload_data_e00_d00_e00004aa_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_reload_data_e00_d00_e0000c59_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_shotgun_aup extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e000017f_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e00001b4_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e0000504_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e0000a4d_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e0000b7d_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_aup_shotgun_data_e00_d00_e0000d99_au extends flash.utils.ByteArray { }
class __ASSET__assets_sounds_shotgun_fire_wav extends flash.media.Sound { }
class __ASSET__assets_sounds_shotgun_load_shell_wav extends flash.media.Sound { }
class __ASSET__assets_sounds_shotgun_raw_mp3 extends flash.media.Sound { }
class __ASSET__assets_sounds_shotgun_reload_wav extends flash.media.Sound { }


#elseif html5





















































#end