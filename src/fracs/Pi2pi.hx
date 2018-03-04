package fracs;
import fracs.Fraction;
@forward
abstract Pi2pi( Float ) to Float {
    // private can't create directly
    inline 
    function new( f: Float ){
        this = f;
    }
    @:from
    static inline public 
    function fromFloat( f: Float ) {
        var out: Float = 0;
        if( f > 0 ){
            if( f < Math.PI ) {
                out = f;
            } else {
                out = f % ( 2*Math.PI );
                if( out > Math.PI ) out = -(2*Math.PI) + out;
            }
        } else if( f < 0 ){
            if( f > -Math.PI ){
                out = f;
            } else {
                out = f % ( -2*Math.PI );
                if( out < -Math.PI ) out = (2*Math.PI) + out;
            }
        }
        return new Pi2pi( out );
    }
    @:op(A + B)
    public function additionPi( b: Pi2pi ): Pi2pi {
        var f: Float = this + b;
        var p: Pi2pi = f;
        return f; 
    }
    @:op(A - B)
    public function subtractionPi( b: Pi2pi ): Pi2pi {
        var f: Float = this;
        var f2: Float = b;
        f -= f2;
        var p: Pi2pi = f;
        return f;
    }
    @:op(A / B)
    public function dividePi( b: Pi2pi ): Pi2pi {
        var f: Float = this;
        var f2: Float = b;
        f /= f2;
        var p: Pi2pi = f;
        return f; 
    }
    @:op(A * B)
    public function timesPi( b: Pi2pi ): Pi2pi {
        var f: Float = this;
        var f2: Float = b;
        f *= f2;
        var p: Pi2pi = f;
        return f; 
    }
    @:op(A + B)
    public function addition( b: Float ): Pi2pi {
        var f: Float = this;
        f += b;
        var p: Pi2pi = f;
        return f; 
    }
    @:op(A - B)
    public function subtraction( b: Float ): Pi2pi {
        var f: Float = this;
        f -= b;
        var p: Pi2pi = f;
        return f; 
    }
    @:op(A / B)
    public function divide( b: Float ): Pi2pi {
        var f: Float = this;
        f /= b;
        var p: Pi2pi = f;
        return f; 
    }
    @:op(A * B)
    public function times( b: Float ): Pi2pi {
        var f: Float = this;
        f *= b;
        var p: Pi2pi = f;
        return f; 
    }
    public var degrees( get, set ): Float;
    public inline 
    function get_degrees(): Float{
        var f: Float = this;
        return f*180/Math.PI;
    }
    public inline 
    function set_degrees( val:Float ): Float {
        this = Math.PI*val/180;
        return val;
    }
    @:from
    inline static
    function fromFraction( val: Fraction ):Pi2pi {
        return new Pi2pi( val.toFloat()*Math.PI );
    }
    @:to
    inline function tofraction(): Fraction {
        var f: Float = this;
        var frac: Fraction = this/Math.PI;
        return frac;
    }
    @:from
    inline static
    function fromString( val: String ):Pi2pi {
        var frac: Fraction = val;
        return new Pi2pi( frac.toFloat()*Math.PI );
    }
}