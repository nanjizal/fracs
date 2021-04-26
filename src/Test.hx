package;
import fracs.Fraction;
import fracs.Pi2pi;
import fracs.Rose;


class Test {
    
    static function main(){
        
        var frac: Fraction = 0.012;
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
            trace( f.byDenominator( 10 ) + ' pi');
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
        trace( p );
        f = p;
        trace( f + 'pi' );
        trace( p.degrees );
        var third: Fraction = 0.333333333333333;
        trace( third );
        trace( '____' );
        trace( 'N');
        var north: Rose = N;
        trace( 'E');
        var east: Rose = E;
        trace( 'north ' + north );
        trace( 'east '  + east );
        var west = north - east;
        trace( 'west ' + west );
        var east3 = east + east;
        trace( 'east3 ' + east3 );
        var east4 = east3 + east;
        trace( 'east4 ' + east4 );
        var east5 = east4 + east + 1;
        trace( 'east5 ' + east5 );
        north++;
        trace( 'north ' + north );
        var frac: Fraction = north;
        trace( 'fraction ' + frac );
        var rose4: Rose = E;
        trace( rose4 == east );
        var east: Rose = E;
        trace( 'east '  + east );
        trace( east.no ); // resolves to 8
        east.no = 16; // not east!!!
        trace( east );
        var rads: Float = east;
        trace( rads );
        
    }
}