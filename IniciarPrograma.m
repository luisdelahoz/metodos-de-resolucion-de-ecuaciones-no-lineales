function [ ] = IniciarPrograma(funcion)
    
    opcion = menu('Metodos Numericos', 'Metodo Grafico', 'Metodo de Biseccion', ...
        'Metodo de Newton-Raphson', 'Metodo de la Secante', ...
        'Metodo de Regula Falsi', 'Metodo de Newton Raphson Mejorado', 'Salir');
    
    switch(opcion)
        case 1
            ezplot(funcion);
            grid on
            zoom on
        case {2, 3, 4, 5, 6}
            a = input('Ingrese el valor de a  ');
            b = input('Ingrese el valor de b  ');
            tol = input('Ingrese el valor de la Tolerancia  ');
            if(opcion == 2)
                Metodo_Biseccion(funcion, a, b, tol);
            else
                if(opcion == 3)
                    Metodo_de_Newton(funcion, a, b, tol);
                else
                    if(opcion == 4)
                        Metodo_de_la_secante(funcion, a, b, tol);
                    else
                        if(opcion == 5)
                            Metodo_de_Regula_Falsi(funcion, a, b, tol);
                        else
                            if(opcion == 6)
                                Metodo_de_NewtonRaphson_Mejorado(funcion, a, b, tol);
                            end
                        end
                    end
                end  
            end       
    end
end

