package fracs;
import fracs.Fraction;
import fracs.Angles;
import fracs.ZeroTo2pi;
/**
 32 Compass Rose names
**/
@:forward
enum abstract Rose32( Int ) to Int from Int {
    var N = 0;
    var NbE = 1;
    var NNE;
    var NEbN;
    var NE;
    var NEbE;
    var ENE;
    var EbN; 
    var E;
    var EbS;
    var ESE;
    var SEbE;
    var SE;
    var SEbS;
    var SSE;
    var SbE;
    var S;
    var SbW;
    var SSW;
    var SWbS;
    var SW;
    var SWbW;
    var WSW;
    var WbS;
    var W;
    var WbN;
    var WNW;
    var NWbW;
    var NW;
    var NWbN;
    var NNW;
    var NbW;
}
/**
 Compass Rose
**/
@:transitive
@:forward
abstract Rose( Rose32 ) from Rose32 to Rose32 {
    public inline
    function new( rose: Rose32 ){
        this = rose;
    }
    @:to
    inline public
    function toInt(): Int {
        return ( this: Int );
    }
    @:from
    static inline public 
    function fromRadians( f: Float ) {
        var z2p = Angles.zeroto2pi( f );
        return from32( Math.round( z2p*( 16 / Math.PI ) ) );
    }
    inline static function compassInt( v: Int ){
        from32( Std.int( v*8 ) );
    }
    inline static function from8( v: Int ){
        from32( Std.int( v*4 ) );
    }
    inline static function from16( v: Int ){
        from32( Std.int( v*2 ) );
    }
    @:from
    inline static function from32( v: Int ): Rose {
        if( v < 0 ){
            var a = v % 32;
            v = ( a >= 0 )? a : ( a + 32 );
        } else if( v >= 32 ){
            v = v % 32;
        }
        var r: Rose32 = v;
        return new Rose( r );
    }
    public inline
    function clock90(){
        var v = this + 8;
        return from32( v );
    }
    public inline
    function antiClock90(){
        var v = this - 8;
        return from32( v );
    }
    public inline
    function quarterClock90(){
        var v = this + 4;
        return from32( v );
    }
    public inline
    function quarterAntiClock90(){
        var v = this - 4;
        return from32( v );
    }
    public inline 
    function opposite(){
        var v = this + 16;
        return from32( v );
    }
    @:to
    inline function tofraction(): Fraction {
        return this/32;
    }
    @:to
    inline public
    function toRadians(): Float {
        var v = (this/16)*Math.PI;
        return v;
    }
    @:to
    inline public 
    function toPie(): ZeroTo2pi {
        var f: Float = this;
        var z: ZeroTo2pi = f;
        return z;
    }
    @:op(A--) public inline function minus1(){
        var _: Int =  this;
        this = from32( _ - 1 );
        return this;
    }
    @:op(A++) public inline function plus1(){
        var _: Int =  this;
        this = from32( _ + 1 );
        return this;
    }
    @:op(A + B) public static inline
    function adding( a:Rose, b:Rose ): Rose {
        return a.add( b );
    }
    public inline
    function add( b: Rose ): Rose {
        var rose: Rose = from32( ( this: Int ) + ( b: Int ) );
        return rose;
    }
    @:op(A - B) public static inline
    function subtracting( a:Rose, b:Rose ): Rose {
        return a.subtract( b );
    }
    public inline
    function subtract( b: Rose ): Rose {
        var rose: Rose = from32( ( this: Int ) - ( b: Int ) ); 
        return rose;
    }
    @:op(A == B) public static inline
    function isEqualling( a: Rose, b:Rose ): Bool {
        return a.isEqual( b );
    }
    public inline function isEqual(b: Rose ): Bool {
        return ( this: Int ) == ( b: Int );
    }
    @:op(A != B) public static inline
    function notEqual( a: Rose, b: Rose ): Bool {
        return !a.isEqual( b );
    }
    /**
     Int getter setter for value
    **/
    public var no( get, set ): Int;
    inline
    function get_no(): Int {
        return toInt();
    }
    inline
    function set_no( v: Int ){
        this = from32( v );
        return toInt();
    }
    @:to
    inline public
    function toString(): String {
        var rose32: Rose32 = ( this: Rose32 );
        return switch( rose32 ){
            case N: 'N';
            case NbE: 'NbE';
            case NNE: 'NNE';
            case NEbN: 'NEbN';
            case NE: 'NE';
            case NEbE: 'NEbE';
            case ENE: 'ENE';
            case EbN: 'EbN'; 
            case E: 'E';
            case EbS: 'EbS';
            case ESE: 'ESE';
            case SEbE: 'SEbE';
            case SE: 'SE';
            case SEbS: 'SEbS';
            case SSE: 'SSE';
            case SbE: 'SbE';
            case S: 'S';
            case SbW: 'SbW';
            case SSW: 'SSW';
            case SWbS: 'SWbS';
            case SW: 'SW';
            case SWbW: 'SWbW';
            case WSW: 'WSW';
            case WbS: 'WbS';
            case W: 'W';
            case WbN: 'WbN';
            case WNW: 'WNW';
            case NWbW: 'NWbW';
            case NW: 'NW';
            case NWbN: 'NWbN';
            case NNW: 'NNW';
            case NbW: 'NbW';
        }
    }
    inline public
    function isNorth(){
        return N == this;
    }
    inline public
    function isWest(){
        return W == this;
    }
    inline public
    function isEast(){
        return E == this;
    }
    inline public
    function isSouth(){
        return S == this;
    }
    /**
     * takes Rose a,b and returns 1 if this is closer to a, -1 if not, 0 if same.
     */
    inline public 
    function closestA( a: Rose, b: Rose ):Int{
        var na = a.no;
        var nb = b.no;
        return if( na == nb ){
            0;
        } else {
            var nthis = no;
            var da = Math.abs( nthis - na );
            var db = Math.abs( nthis - nb );
            if( da > 16 ){
                da = 32 - da;
            }
            if( db > 16 ){
                db = 32 - da;
            }
            if( da == db ){
                0;
            } else {
                ( da < db )? 1: -1;
            }
        }
    }
}
