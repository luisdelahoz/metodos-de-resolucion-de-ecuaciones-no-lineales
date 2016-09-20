function [  ] = Metodo_de_Regula_Falsi(funcion, a, b, tol )
    
    n = 0;
    if ( subs(funcion, a)*subs(funcion, b) > 0 )
        disp('Intervalo incorrecto, no hay corte en x');
    else
        cant = 0.1;
        error = 1;
        %c =(subs(funcion, b)*a-subs(funcion,a)*b)/(subs(funcion,b)-subs(funcion,a));
        %while(abs(c - cant) > tol)
        while(error > tol)
            n = n +1;
            %temp = c; 
            %disp('Entro al while')
            c = (subs(funcion, b)*a-subs(funcion,a)*b)/(subs(funcion,b)-subs(funcion,a));
            error = abs(c - cant);
            cant = c;
            %c = (subs(funcion, b)*a-subs(funcion,a)*b)/(subs(funcion,b)-subs(funcion,a));
            disp('El valor de xn es '); disp(c);
            disp('El valor de f(xn) es '); disp(subs(funcion, c));
            %cant = c;            
            if( subs(funcion, a)*subs(funcion, c) < 0)
                b = c; 
            else if (subs(funcion, b)*subs(funcion, c) < 0)
                    a = c;
                 end
            end
            
            %c = (subs(funcion, b)*a-subs(funcion,a)*b)/(subs(funcion,b)-subs(funcion,a));
            
        end
        
        disp('La solucion aproximada es ');
        disp(c);
        disp('El numero de iteraciones son ');
        disp(n);
    end 
end

