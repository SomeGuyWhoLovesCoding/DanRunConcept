package stuff;

@:publicFields
class TrackerFile {
	static var file:sys.io.FileOutput;
	static var enemyBuffer:haxe.io.Bytes;

	static function init() { // This used to have a time argument but due to a little "disagreement" (joking) I decided to remove that and replace it with more modular code (joking once again cuz Dan constantly lies about the most serious shit imaginable)
		file = sys.io.File.write('tracked_${UtilShit.time()}.bin');
		var time = UtilShit.time();
		file.writeInt32(time.low);
		file.writeInt32(time.high);
	}

	static function putTime() {
		var time = UtilShit.time();
		file.writeInt32(time.low);
		file.writeInt32(time.high);
	}

	static function close() {
		file.close();
	}

	static function addEnemyElement(elem:EnemyElement) {
		enemyBuffer = haxe.io.Bytes.alloc(68);
		enemyBuffer.setInt64(0, elem.type.low);
		enemyBuffer.setInt64(8, elem.type.high);
		enemyBuffer.setInt64(16, elem.strengthAcceleration.low);
		enemyBuffer.setInt64(24, elem.strengthAcceleration.high);
		enemyBuffer.setInt64(32, elem.speedAcceleration.low);
		enemyBuffer.setInt64(40, elem.speedAcceleration.high);
		enemyBuffer.setInt64(48, elem.size.low);
		enemyBuffer.setInt64(56, elem.size.high);
		enemyBuffer.setInt32(64, elem.placementX);
	}

	static function addPanElement(elem:CookingPanElement) {
		enemyBuffer = haxe.io.Bytes.alloc(33);
		enemyBuffer.setInt64(0, elem.type.low);
		enemyBuffer.setInt64(8, elem.type.high);
		enemyBuffer.set(16, elem.isVanilla ? 0 : 1);
		enemyBuffer.setInt32(17, elem.colorValues.black);
		enemyBuffer.setInt32(21, elem.colorValues.lime);
		enemyBuffer.setInt32(25, elem.colorValues.red);
		enemyBuffer.setInt32(29, elem.placementX);
	}

	static function forfeitElement() {
		file.write(enemyBuffer);
		enemyBuffer = null;
	}
}