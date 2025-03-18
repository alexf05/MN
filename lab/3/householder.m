m = rows(A);
n = columns(A);
Q = eye(m);
for i = 1: min(m - 1, n)
  v = zeros(m, 1);
  v(i:m) = A(i:m, i);
  v(i) = v(i) - sign(v(i))*norm(v);
  v=v/norm(v);
  H=eye(m)-2*v*v';
  Q=H*Q;
  A=H*A;
  A= round(A * 100) / 100;
  Q= round(Q * 100) / 100;
endfor
