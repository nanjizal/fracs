package fracs;
import fracs.Pi2pi;
import fracs.ZeroTo2Pi;
class Angles{
    public inline static function pi2pi( angle: Float ): Float {
        var a = ( angle + Math.PI ) % ( 2 * Math.PI );
        return ( a >= 0 )? a - Math.PI: a + Math.PI;
    }
    public inline static function zeroto2pi( angle: Float ): Float {
        var a = angle % ( 2 * Math.PI );
        return ( a >= 0 )? a : ( a + 2 * Math.PI );
    }
    public inline static function zerotoMinus2pi( angle: Float ): Float {
        var a = angle % ( 2 * Math.PI );
        var a = ( a >= 0 )? a: ( a + 2 * Math.PI );
        return -( Math.PI*2 - a );
    }    
    public inline static function difference( a: Float, b: Float ): Float {
        var za: ZeroTo2pi = a;
        var zb: ZeroTo2pi = b;
        var fa: Float = a;
        var fb: Float = b;
        var alpha = Math.abs( a - b );
        var clockwise = a < b;
        return ( clockwise )? alpha: -alpha;
    }
    public inline static function differenceClockWise( a: Float, b: Float ){
        var dif = difference( a, b );
        return ( dif > 0 )? dif: 180 + dif; 
    }
    public inline static function differenceAntiClockwise( a: Float, b: Float ){
        var dif = difference( a, b );
        return ( dif < 0 )? -dif: 180 - dif; 
    }
}