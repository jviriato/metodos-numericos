function gaussjacobi_18(A, b, x0, erro)  
  n = size(A,1);  
  C = zeros(n,n);
  
  for i = 1 : n
    for j = 1 : n 
      if (i == j)
        C(i, j) = 0;
      else
        C(i, j) = -A(i, j) / A(i, i);
      endif
    endfor
  endfor
  g = zeros (n, 1);
  for i = 1: n
    g (i,1) = b(i,1) / A(i,i);
  endfor
  
  x = C*x0+g;
  i = 1;
  while(max(abs(x-x0)) > erro)
    x0 = x;
    x = C*x0+g;
    i++;
  endwhile
  display('iterações:');
  display(i);
  display('Solução aproximada:');
  display(x);
endfunction  