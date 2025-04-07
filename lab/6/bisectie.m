while abs(f(x)) > tol
  c=(a+b)/2;
  if f(a)*f(c) < 0
    b=c;
  else
    a=c;
  endif
  endwhile
