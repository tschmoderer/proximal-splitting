function x = forward_backward(f1,df2,x0,B,niter,threshold)
%% Problem
% Let f1 be a lower semicontinuous convex function from R^n to ]-\infty,+\infty]
% And domain of f1 is non empty, that is to say f1 \neq +\infty 
% Let f2 be a function from R^n to R convex and differentiable with a B-lipschitz gradient 
% i.e for all (x,y) \in R^nxR^n, |df2(x)-df2(y)| <= B|x-y|
% The problem 
% min_{x\in R^n} f1(x)+f2(x) 
% The following algorithm converges to  solution of this problem. 
% (C) Timothée Schmoderer 2018

%% In 
% f1  : a function 
% df2 : function gradient of f2 
% x0  : starting point 

%% Out 
% x   : approximation of the argmin 

%% Options In 
% B  	  = the beta constant for the lipchitz gradient 	
% niter   = max iterations, 
% threshold
%% Options out
% err = error of the solution 

	epsilon = min(1,1/B)*rand(1);  	
	
	n = 0; err = 1e3; 
	while n < niter && err > threshold
		gn = epsilon  + (2/B - 2*epsilon)*rand(1);
		ln = epsilon +(1-epsilon)*rand(1); 
		
		yn = x0 - gn*df2(x0);
		x1 = x0 + ln*(prox(@(x) gn*f1(x),yn)-x0);
		
		err = norm(x1-x0); 
		x0 = x1; n = n + 1;
    end
    x = x1;
end
