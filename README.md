# fracs
Fast Decimal to Fraction Approximations for Haxe

( ported from http://www.mindspring.com/~alanh/fracs.html )

Licenced under liberal MIT but the original js version is 'no license' inline code.
 
Added Pi2pi abstract for easy use of angles, together some interesting use cases.

```haxe
var p: Pi2pi = 1/2;
var f: Fraction = p;
trace( f + ' pi' ); // 1/2 pi
trace( p.degrees ); // 90
```

```haxe
var third: Fraction = 0.333333333333333;
trace( third );
```

The code to deal with string number Exponents is ported but left private and not connected or setup for use.
but should be easy to implement from commited code.