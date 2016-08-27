package extension.notifications;

#if macro
import haxe.macro.Expr;
#end

class PrimeLoader {
	#if cpp
	public static function __init__() {
		cpp.Lib.pushDllSearchPath("project/ndll/" + cpp.Lib.getBinDirectory());
	}
	#end
	
	public static inline macro function load(inName2:Expr, inSig:Expr) {
		return macro cpp.Prime.load("samcodesnotifications", $inName2, $inSig, false);
	}
}