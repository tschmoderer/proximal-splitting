function y = prox(f,x)
	fun = @(y) f(y) + 0.5*norm(x-y,2)^2;
	y   = fminunc(fun,y0); 
end
