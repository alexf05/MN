m = rows(A);
n = columns(A);
Q = eye(m);
for i = 1:n
  for j = i+1 : m
    if(A(j,i)!= 0)
      G= eye(m);
      r = norm([A(j,i);A(i,i)]);
      G(j,i) = -A(j,i)/r;
      G(i,j)=-G(j,i);
      G(i,i)=G(j,j)=A(i,i)/r;
      Q=G*Q;
      A=G*A;
      endif
  endfor
endfor
Q=Q';
