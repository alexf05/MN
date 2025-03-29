n = lenght(b);
x = zeros(n, 1);
for i = 1:max_iter
  xp = x;
  for j = 1: n
    suma = 0;
    for k = 1 : n
      if(k != j)
        suma = suma + A(j,k) * x[k]
      endif
    endfor
    x[j] = (b[j] - suma)/ A(j,j);
  endfor
  x = w * x + (1- w) * xp;
  if( norm(x-xp) < tol)
    break;
  endif
endfor
