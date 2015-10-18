# juliaset

This is the HW4 assignment for Aaron Goldin.

To add this package use:
```
Pkg.clone("https://github.com/asgoldin/juliaset")
```
To create a Julia Set matrix with this package, use the function

```
createjuliaset(x,y,n_iter,escape_tol,R)
```

```x``` is an nx1 array of Real numbers which is the range of real values for which the Julia set is calculated

```y``` is an mx1 array of Real numbers which is the range of imaginary values calculated

```n_iter``` is the maximum number of iterations tested for divergence, and must be an Int

```escape_tol``` is the value beyond which is considered divergent

```R``` can either be a function of an imaginary argument, or it can simply be an imaginary number. In the case that only a number "C" is given, the function that will be evaluated is z^2 + C.



## Example:

```
using PyPlot
using juliaset
x = collect(-2:.005:2);
y = collect(-2:.005:2);
n_iter = 100;
escape_tol = 10000;
C = .123 + .745*im;

A = createjuliaset(x,y,n_iter,escape_tol,C);
matshow(log(A))
```
