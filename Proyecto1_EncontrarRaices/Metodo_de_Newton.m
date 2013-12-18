function [ ] = Metodo_de_Newton( funcion, a, b, tol )
    
    n = 0;
    if ( subs(funcion,a)*subs(funcion, b) > 0 )
        disp('Intervalo incorrecto, no hay corte en x');
    else
        faderiv = diff(funcion);
        faderiv2 = diff(funcion, 2);
        
        if((subs(funcion,a)*subs(faderiv2,a))>0)
            xn = a;
        else
            if((subs(funcion,b)*subs(faderiv2,b)>0))
                xn = b;
            end
        end
        
        error = 1;
        %xn1 = 0.1;
        %while(abs(xn1 - xn)> tol)
        while(error > tol)
            n = n + 1;
            %if(n > 1)
             %   xn = xn1;
            %end
            xn1 = xn -(subs(funcion, xn)/subs(faderiv, xn));
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

