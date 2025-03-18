function x = inferior(U,b)
  n=size(U,1);
  x=zeros(n,1);
  for i = 1:n
    x(i)=(b(i)-U(i,1:i-1)*x(1:i-1))/U(i,i);
  endfor
endfunction
