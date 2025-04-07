function L = cholesky(A)
     n=size(A,1);
     L=zeros(n);
     for p= 1:n
       for i=p:n
         s=L(p,1:p)*L(i,1:p)';
         if i==p
           L(i,p)=sqrt(A(i,p)-s);
         else
           L(i,p)=(A(i,p)-s)/L(p,p);
         endif
       endfor
     endfor
     endfunction

