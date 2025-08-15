package stuff;

class MathD {
    public static function Randomold(time:Float):Int128 {
        var val = (Int128.fromFloat(time * 1000) * 3000) * Int128Helper.maxValue;
        return val < 0 ? -val : val;
    } // i hate you


	/** Return a random integer between 'from' and 'to', inclusive. */
	public static inline function Random(from:Int, to:Int):Int128
	{
		return from + Math.floor(((to - from + 1) * Math.random()));
	}
}