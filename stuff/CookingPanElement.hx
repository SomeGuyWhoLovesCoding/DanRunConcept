package stuff;

@:publicFields
class CookingPanElement extends DanRunElement {
	var type:Int128;
	var isVanilla:Bool;
	var colorValues:CookingPanRGB;
	var placementX:Int;
	public function new() {
		super();
		type = /*MathD.Random(0, UtilShit.level())*/Std.int(Math.random() * UtilShit.level());
		isVanilla = type == 0;
		colorValues = isVanilla ? new CookingPanRGB() : CookingPanRGB.Random();
		placementX = Std.int(Math.random() * Map.BOARD_WIDTH);

		TrackerFile.putTime();
		TrackerFile.addPanElement(this);
		TrackerFile.forfeitElement();
	}
}