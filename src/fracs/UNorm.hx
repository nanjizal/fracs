package fracs;
/**
  UNorm limits values between 0 -> 1
  untested
**/

@:transitive
abstract UNorm( Float ) from Float to Float {
	public inline function new( no: Float ){
        this = clamp( no );	
    }
	@:op(-A) private inline function negate():Float
	    return -( this: Float );

	@:op(A + B) private static inline function add(a:UNorm, b:UNorm):UNorm
		return clamp((a : Float) + (b : Float));

	@:op(A + B) @:commutative private static inline function addFloat(a:UNorm, b:Float):UNorm
		return clamp((a : UNorm) + (b : Float));

	@:op(A + B) @:commutative private static inline function addInt(a:UNorm, b:Int):UNorm
		return clamp((a : UNorm) + (b : Int));

	@:op(A - B) private static inline function sub(a:UNorm, b:UNorm):UNorm
		return clamp((a : Float) - (b : Float));

	@:op(A - B) private static inline function subFloat(a:UNorm, b:Float):UNorm
		return clamp((a : Float) - (b : Float));

	@:op(A - B) private static inline function floatSub(a:Float, b:UNorm):UNorm
		return clamp((a : Float) - (b : Float));

	@:op(A - B) private static inline function subInt(a:UNorm, b:Int):UNorm
		return clamp((a : Float) - (b : Int));

	@:op(A - B) private static inline function intSub(a:Int, b:UNorm):UNorm
		return clamp((a : Int) - (b : Float)); 
  
	@:op(A * B) @:commutative private static inline function mulFloat(a:UNorm, b:Float):UNorm
		return return clamp((a : Float) * (b : Float));
  
	@:op(A * B) private static function mul(a:UNorm, b:UNorm):UNorm
		return return clamp((a : Float) * (b : Float));

	@:op(A * B) @:commutative private static function mulInt(a:UNorm, b:Int):UNorm
		return return clamp((a : Float) * (b : Int));

	@:op(A / B) private static function div(a:UNorm, b:UNorm):Float
		return return clamp((a : Float) / (b : Float));                                       

	@:op(A / B) private static function divFloat(a:UNorm, b:Float):UNorm
        return return clamp((a : Float) / (b : Float)); 

	@:op(A / B) private static function FloatDiv(a:Float, b:UNorm):UNorm
        return return clamp((a : Float) / (b : Float)); 

	@:op(A / B) private static function divInt(a:UNorm, b:Int):UNorm
        return return clamp((a : Float) / (b : Int)); 

    @:op(A / B) private static function intDiv(a:Int, b:UNorm):UNorm
        return return clamp((a : Int) / (b : Float)); 
    
    // 	 mod ommitted

	@:op(A == B) private static function eq(a:UNorm, b:UNorm):Bool;

	@:op(A == B) @:commutative private static function eqInt(a:UNorm, b:Int):Bool;

	@:op(A == B) @:commutative private static function eqFloat(a:UNorm, b:Float):Bool;

	@:op(A != B) private static function neq(a:UNorm, b:UNorm):Bool;

	@:op(A != B) @:commutative private static function neqInt(a:UNorm, b:Int):Bool;

	@:op(A != B) @:commutative private static function neqFloat(a:UNorm, b:Float):Bool;

	@:op(A < B) private static function lt(a:UNorm, b:UNorm):Bool;

	@:op(A < B) private static function ltInt(a:UNorm, b:Int):Bool;

	@:op(A < B) private static function intLt(a:Int, b:UNorm):Bool;

	@:op(A < B) private static function ltFloat(a:UNorm, b:Float):Bool;

	@:op(A < B) private static function floatLt(a:Float, b:UNorm):Bool;

	@:op(A <= B) private static function lte(a:UNorm, b:UNorm):Bool;

	@:op(A <= B) private static function lteInt(a:UNorm, b:Int):Bool;

	@:op(A <= B) private static function intLte(a:Int, b:UNorm):Bool;

	@:op(A <= B) private static function lteFloat(a:UNorm, b:Float):Bool;

	@:op(A <= B) private static function floatLte(a:Float, b:UNorm):Bool;

	@:op(A > B) private static function gt(a:UNorm, b:UNorm):Bool;

	@:op(A > B) private static function gtInt(a:UNorm, b:Int):Bool;

	@:op(A > B) private static function intGt(a:Int, b:UNorm):Bool;

	@:op(A > B) private static function gtFloat(a:UNorm, b:Float):Bool;

	@:op(A > B) private static function floatGt(a:Float, b:UNorm):Bool;

	@:op(A >= B) private static function gte(a:UNorm, b:UNorm):Bool;

	@:op(A >= B) private static function gteInt(a:UNorm, b:Int):Bool;

	@:op(A >= B) private static function intGte(a:Int, b:UNorm):Bool;

	@:op(A >= B) private static function gteFloat(a:UNorm, b:Float):Bool;

	@:op(A >= B) private static function floatGte(a:Float, b:UNorm):Bool;

	@:to private inline function toInt():Int
		return cast( this: Float );
  
	static function clamp( x: Float ): UNorm {
        return  if( x < 0. ){
                    ( 0.: UNorm );
                } else if( x > 1. ){
                    ( 1.: UNorm );
                } else {
                    ( x: UNorm );
                }
	}
  
}
 
