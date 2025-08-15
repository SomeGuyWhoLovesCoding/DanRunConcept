package;

class Main {
	static function main() {
		TrackerFile.init();
		for (i in 0...100) {
			var enemy:EnemyElement = new EnemyElement();
			Sys.println('Enemy Type: ' + enemy.type);
			Sys.println('Enemy Strength: ' + enemy.strengthAcceleration);
			Sys.println('Enemy Speed: ' + enemy.speedAcceleration);
			Sys.println('Enemy Size: ' + enemy.size);
			Sys.println('Enemy PlacementX: ' + enemy.placementX);
			var cooking:CookingPanElement = new CookingPanElement();
			Sys.println('Cooking Pan Type: ' + cooking.type);
			Sys.println('Is that Cooking Pan Dan\'s?: ' + cooking.isVanilla);
			if (cooking.isVanilla) {
				Sys.println('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
			}
			Sys.println('Cooking Pan Color: ' + (cooking.colorValues.black + ", " + cooking.colorValues.lime + ", " + cooking.colorValues.red));
			Sys.println('Cooking Pan PlacementX: ' + cooking.placementX);
		}
		TrackerFile.close();
	}
}