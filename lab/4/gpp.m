[m,n]=size(A);
maxP=min(m,n);
for p = 1:maxP
   [_,idx]=max(abs(A(p:m,p)));
   idx=idx+p-1;
   P=eye(m);
   A=P*A;
   T=eye(m);
   u=A(p+1:m, p)/A(p,p);
   T(p+1:m,p)=-u;
   A=T*A;
  endfor
