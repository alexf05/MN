for i = 1:max_steps
  xp =x;
  x = x - f(x)/fd(x);
  if norm(x-xp) < tol
    break;
  endif
  endfor
