function [ ] = Metodo_de_NewtonRaphson_Mejorado(funcion, a, b, tol)
    
    n = 0;
    if ( subs(funcion,a)*subs(funcion, b) > 0 )
        disp('Intervalo incorrecto, no hay corte en x');
    else
        faderiv = diff(funcion);
        faderiv2 = diff(funcion, 2);
        
        if(rand() > 0.5)
            xn = a;
        else
            xn = b;
        end
        
        error = 1;
        %xnsig = 0.1;
    
        %while(abs(xnsig - xn)> tol)
        while(error > tol)
            n = n + 1;
            %if( n > 1)
             %   xn = xnsig;
            %end
            xn1 = xn -(subs(funcion, xn)*subs(faderiv, xn))/((subs(faderiv, xn))^2-subs(funcion, xn)*subs(faderiv2, xn));
            disp('El valor de xn es '); disp(xn1);
            disp('El valor de f(xn) es '); disp(subs(funcion, xn1));
            error = abs(xn - xn1);
            xn = xn1;

           
        end
        disp('La solucion aproximada es ');
        disp(xn1);
        disp('El numero de iteraciones son ');
        disp(n)
        
    end

end

