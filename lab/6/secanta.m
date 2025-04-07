xp = x;
for i = 1:max_steps
  aux = x;
  x = x - f(x)(x-xp)/(f(x)-f(xp));
  xp=x;
  if norm(x-xp) < tol
    break;
  endif
  endfor
