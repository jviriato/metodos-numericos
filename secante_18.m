%% Método da Secante
%% Aluno: José Victor Viriato - 18 
%% Matrícula 201610110
%% Entrada:
%% f: função a ser analisada
%% x0: aproximação inicial
%% x1: aproximação final
%% erro: erro máximo tolerado
function secante_18(f, x0, x1, erro)
   x1 = ( (x0 * f(x1)) - (x1 * f(x0)) ) / (f(x1) - f(x0));
   %também pode ser xi = x1 - f(x0) * (x1 - x0) / (f(x1) - f(x0));
   i = 0;
   while ( abs(f(x1)) > erro && abs(x1 - x0) > erro)
      i++;
      x_temp = x1;
      x1 = ( (x0 * f(x1)) - (x1 * f(x0)) ) / (f(x1) - f(x0));
      x0 = x_temp;
   endwhile
   printf("i: %d\n", i);
   printf("x: %.15f\n", x1);
endfunction