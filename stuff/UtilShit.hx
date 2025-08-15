package stuff;


class UtilShit {
	public static function time():haxe.Int64 {
		return haxe.Int64.fromFloat(Sys.time() * 100);
	}

	public static function level() {
		return 80;
	}
}