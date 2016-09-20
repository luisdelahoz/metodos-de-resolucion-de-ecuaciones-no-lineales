function [ ] = Metodo_Biseccion(funcion, a, b, tol )
    
    n = 0;
    if ( subs(funcion,a)*subs(funcion, b) > 0 )
        disp('Intervalo incorrecto, no hay corte en x');
    else
        while( abs((b-a)*0.5) > tol)
            n = n + 1;
            c = (a+b)/2;
            disp('El valor de xn es '); disp(c);
            disp('El valor de f(xn) es '); disp(subs(funcion, c))
            if( subs(funcion, a)*subs(funcion,c) < 0)
                b = c;
            else if (subs(funcion, c)*subs(funcion, b)< 0)
                    a = c;
                 end
            end
        end
        disp('La solucion aproximada es '); disp(c);
        disp('El numero de iteraciones son '); disp(n);
    end

    

end

