package stuff;

@:publicFields
class CookingPanRGB {
	var black:Color;
	var lime:Color;
	var red:Color;

	public function new(b:Color = 0x333333FF, l:Color = 0xFF33FFFF, r:Color = 0xFF0000FF) {
		black = b;
		lime = l;
		red = r;
	}

	public static function Random() {
		var newCPR = new CookingPanRGB(
			Color.random(Math.floor(Math.random() * 255)),
			Color.random(Math.floor(Math.random() * 255)),
			Color.random(Math.floor(Math.random() * 255))
		);
		if (newCPR.black.luminance < 40) newCPR.black.luminance = 40;
		if (newCPR.black.luminance > 60) newCPR.black.luminance = 20;
		if (newCPR.lime.luminance > 60) newCPR.lime.luminance = 60;
		newCPR.black.aF *= .9;
		newCPR.lime.aF *= .9;
		newCPR.red.luminance += newCPR.red.a;
		newCPR.red.aF = 1;
		return newCPR;
	}
}