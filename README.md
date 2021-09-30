# fracs
Fast Decimal to Fraction Approximations for Haxe

( ported from http://www.mindspring.com/~alanh/fracs.html )

Licenced under liberal MIT but the original js version is 'no license' inline code.
 
Added Pi2pi abstract for easy use of angles, together some interesting use cases.

```haxe
var p: Pi2pi = '1/2';
var f: Fraction = p;
trace( f + ' pi' ); // 1/2 pi
trace( p.degrees ); // 90
```

```haxe
var third: Fraction = 0.333333333333333;
trace( third ); // 1/3
```



( The code to deal with input string number Exponent is ported, but has been left private, and is not connected or setup for use.
Should be easy to implement from commited code. )

Now also provides a compass Rose so you can more easily work with named compass angles.

[0.0.3-alpha](https://github.com/nanjizal/fracs/releases/tag/0.0.3-alpha) pre-release
