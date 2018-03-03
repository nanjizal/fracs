# fracs
Fast Decimal to Fraction Approximations for Haxe
to be ported from http://www.mindspring.com/~alanh/fracs.html
Licenced under liberal MIT but the original js version is 'no license' inline code.
 
Added Pi2pi for easy use of angles, together some interesting use cases.

```haxe
var p: Pi2pi = 1/2;
var f: Fraction = p;
trace( f + ' pi' ); // 1/2 pi
trace( p.degrees ); // 90
```