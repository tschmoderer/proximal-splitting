# proximal-splitting
Implementation of the proximal splitting algorithm from PL. Combettes and JL Pesquet article.

<p align="center">
Combettes, Patrick L., and Jean-Christophe Pesquet. "Proximal splitting methods in signal processing." Fixed-point algorithms for inverse problems in science and engineering. Springer, New York, NY, 2011. 185-212.
</p>

The purpose of the proximal methods is to solve the minimisation problem : 
<p align="center">
min f1(x) + f2(x)
</p>

where f1 and f2 are at leat convex lower semicontinuous functions of R^n to ]-\infty, +\infty] but not always equal to +\infty (i.e. a real minimum exists). 


## Description
The content of the project is the following : 

- README : This file 
- LICENSE : The GNU GENERAL PUBLIC LICENSE of this project
- src/ : folders containing all the demo and the mehtods
	-  methods/ : folders with the algorithm 
		- forwad_backward.m : 
		- prox.m : file for artificially conpute the proximal operator
	- all.m : file containing all the methods 
	- example.m : a demo file
