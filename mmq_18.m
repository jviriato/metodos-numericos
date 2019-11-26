function mmq_18(x, y, g)
  
  A = zeros(size(x), size(g));    
  for j = 1 : size(g)
    for i = 1 : size(x)
        A(i, j) = g{j}(x(i));
    endfor
  endfor
  printf("Alfa é:\n");
  alpha = inv(A' * A) * A' * y
  
endfunction
