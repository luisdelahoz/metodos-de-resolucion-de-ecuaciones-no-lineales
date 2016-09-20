
clear all

eleccion = menu('Metodos numericos para hallar las raices de una ecuacion', 'Iniciar Programa', 'Salir');

if(eleccion == 1)
    syms x;
    funcion = input('Ingrese la funcion f(x)  ');
    IniciarPrograma(funcion);
else
    disp('Programa Cerrado')
end 

