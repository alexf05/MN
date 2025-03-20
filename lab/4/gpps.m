[m,n] = size(A);
maxP=min(m,n);
for p = 1:maxP
  s=max(abs(A(p:m,p:n - 1)), [],2);
  if isempty(s)
    s = 1;
end
  f=A(p:m,p)/s;
  [_,idx]=max(abs(f));
  idx=idx+p-1;
  P=eye(m);
  A=P*A;
  T=eye(m);
  u=A(p+1:m,p)/A(p,p);
  T(p+1:m,p)=-u;
  A=T*A;
  endfor
