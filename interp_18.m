function interp_18(x, y)

  len = length(x);
  M = ones(len);  
  new_y = zeros(size(x));

  for i = 1:len
    for j = 1:len 
      if (i != j)
        M(i,:) .*= (x'   - x(j))...
                 / (x(i) - x(j));
      endif
    endfor
  endfor
  
  
  for i=1:len
      new_y += y(i) * M(i,:)';
  end  
  plot(x, y, 'o', x, new_y, '-');
  
  
endfunction