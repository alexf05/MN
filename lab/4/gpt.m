[m,n]=size(A);
maxP=min(m,n);
Pr=eye(n);
for p = 1:maxP
  [_,idx]=max(abs(A(p:m, p:n-1)));
  (
