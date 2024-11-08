#include <stdio.h>
#include "datos.h"
#include "calculos.h"


int main(){
    char usuario[50], clave[50];
    
    printf("Ingrese usuario: ");
    scanf("%s", usuario);
    printf("Ingrese clave: ");
    scanf("%s", clave);
    
    if (validar_credenciales(usuario, clave)) {
      printf("Acceso exitoso.\n");
      guardar_bitacora(usuario, "Ingreso exitoso al sistema");
      char continuar;
      do{
    
        int opcion;
        int opcion2;
        printf("Que tal, que desea calcular.\n");
        printf("1. El área y perimetro de una figura plana.\n");
        printf("2. El volumen y superficie de una figura.\n");
        printf("Cual opción elige: ");
        scanf("%d", &opcion);
    
        switch(opcion){
          case 1:
            opcion2 = seleccionarFiguraArea();
            switch(opcion2){
              case 1:
                calcularTriangulo();
                guardar_bitacora(usuario, "Triangulo");
                break;
              case 2:
                calcularParalelogramo();
                guardar_bitacora(usuario, "Paralelogramo");
                break;
              case 3:
                calcularCuadrado();
                guardar_bitacora(usuario, "Cuadrado");
                break;
              case 4:
                calcularRegtangulo();
                guardar_bitacora(usuario, "Regtangulo");
                break;
              case 5:
                calcularRombo();
                guardar_bitacora(usuario, "Rombo");
                break;
              case 6:
                calcularTrapecio();
                guardar_bitacora(usuario, "Trapecio");
                break;
              case 7:
                calcularCirculo();
                guardar_bitacora(usuario, "Circulo");
                break;
              case 8:
                calcularPoligonoRegular();
                guardar_bitacora(usuario, "Poligono Regular");
                break;
              default:
                printf("Opción no válida.\n");
                break;
            } 
            break;
          case 2:
            opcion2 = seleccionarFiguraVolumen();
            switch(opcion2){
              case 1:
                calcularCubo();
                guardar_bitacora(usuario, "Cubo");
                break;
              case 2:
                calcularCuboide();
                guardar_bitacora(usuario, "Cuboide");
                break;
              case 3:
                calcularCilindroRecto();
                guardar_bitacora(usuario, "Cilindro Recto");
                break;
              case 4:
                calclarEsfera();
                guardar_bitacora(usuario, "Esfera");
                break;
              case 5:
                calcularConoCircularRecto();
                guardar_bitacora(usuario, "Cono Circular Recto");
                break;
              default:
                printf("Opción no válida.\n");
                break;
            }
            break;
          default:
            printf("Opción no válida.\n");
            break;
        }
        printf("Desea calcular otra figura(s/n): ");
        scanf(" %c", &continuar);
      }while(continuar != 'n' && continuar != 'N');
      guardar_bitacora(usuario, "Salida del sistema");
      printf("Has salido del bucle.\n");
    } else {
      char intentar; 
      printf("Usuario o clave incorrectos.\n");
      guardar_bitacora(usuario, "Ingreso fallido usuario/clave erróneo");
      printf("Desea intentar de nuevo (s/n): ");
      scanf(" %c", &intentar);
      if (intentar == 's'){
        main();
      }else{
        guardar_bitacora(usuario, "Salida del sistema");
        printf("Has salido del bucle.\n");
      }
    }
    
    return 0;
}
