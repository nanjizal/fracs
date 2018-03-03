package;
import fracs.Fraction;
import fracs.Pi2pi;
class Test {
    static function main(){
        var frac: Fraction = 0.012;//new Fraction( -3, 4 );
        trace( frac );
        var all = Fraction.all( -Math.PI );
        trace( ' all ' + all );
        var p: Pi2pi;
        var f: Fraction;
        trace( 'from 0 -> 2pi' );
        var i = 0.;
        while( i < 2*Math.PI + Math.PI/10 ){
            p = i;
            f = p;
            trace( f.byDenominator( 7 ) + ' pi');
            i+= Math.PI/10;
        }
        trace( 'from -pi to pi' );
        i = -Math.PI;
        while( i < Math.PI + Math.PI/10 ){
            p = i;
            f = p;
            trace( f + ' pi');
            i+= Math.PI/10;
        }
        var pi: Fraction = 3.14159265358979;
        var sqrt_2: Fraction = 1.414213562;
        var goldenRatio: Fraction = 1.618033988;
        var earthTropicalYear: Fraction = 365.2422;
        trace( pi );
        trace( sqrt_2 );
        trace( goldenRatio );
        trace( earthTropicalYear );
        p = '1/2';//pi
        f = p;
        trace( f + 'pi' );
        trace( p.degrees );
    }
}