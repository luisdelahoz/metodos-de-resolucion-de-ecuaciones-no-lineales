function [ ] = Metodo_de_la_secante(funcion, a, b, tol )
    
    n = 0;
    if ( subs(funcion,a)*subs(funcion, b) > 0 )
        disp('Intervalo incorrecto, no hay corte en x');
    else
        %if(a > b)
         %   temp = b;
          %  a = b;
           % b = temp;
        %end
    
        xnant = a;      
        xn = b;
        error = 1;
       
        %while(abs(xn - xnant)> tol)
        while(error > tol)
            n = n +1;
            xnsig = xn -subs(funcion, xn)*(xn-xnant)/(subs(funcion, xn) - subs(funcion, xnant));
            disp('El valor de xn es '); disp(xn);
            disp('El valor de f(xn) es '); disp(subs(funcion, xn));
            error = abs(xnsig - xn);
            %temp = xn;
            xnant = xn;
            xn = xnsig;
              
        end
       
        disp('La solucion aproximada es ');
        disp(xn);
        disp('El numero de iteraciones son ');
        disp(n);

    end

end

