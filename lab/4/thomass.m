n= lengh(d);
x=zeros(n,1);
for i = 2:n
   u=a[i]/b[i-1];
   b[i]=b[i]-u*c[i-1];
   d[i]=d[i]-u*d[i-1];
endfor
x[n]=d[n]/b[n];
for i = n - 1 : -1 :1
  x[i]=(d[i]-c[i]*x[i+])/b[i];
endfor
