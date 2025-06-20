#include <stdio.h>
#include "datos.h"
#include "calculos.h"

int seleccionarFiguraArea(){
  int figura;
  printf("Seleccione la figura a calcular el área y perímetro:\n");
  printf("1. Triangulo\n");
  printf("2. Paralelogramo\n");
  printf("3. Cuadrado\n");
  printf("4. Regtangulo\n");
  printf("5. Rombo\n");
  printf("6. Trapecio\n");
  printf("7. Circulo\n");
  printf("8. Polígono Regular\n");
  printf("Ingrese su opción: ");
  scanf("%d", &figura);
  return figura;
}

void calcularTriangulo(){
  float base, altura;
  printf("Cuanto mide la base del triangulo: ");
  scanf("%f",&base);
  printf("Cuanto mide la altura del triangulo: ");
  scanf("%f",&altura);
  calcular_area_perimetro_triangulo( base, altura);
}

void calcularParalelogramo(){
  
  float base, altura, lado;
  printf("Ingrese la base del paralelogramo: ");
  scanf("%f", &base);
  printf("Ingrese la altura del paralelogramo: ");
  scanf("%f", &altura);
  printf("Ingrese el lado del paralelogramo: ");
  scanf("%f", &lado);

  calcular_area_perimetro_paralelogramo( base, altura,lado);
}

void calcularCuadrado(){
  float lado;
  printf("Ingrese el lado del cuadrado: ");
  scanf("%f", &lado);
  calcular_area_perimetro_cuadrado(lado);
}

void calcularRegtangulo(){
  float largo, ancho;
  printf("Ingrese el largo del rectángulo: ");
  scanf("%f", &largo);
  printf("Ingrese el ancho del rectángulo: ");
  scanf("%f", &ancho);
  calcular_area_perimetro_rectangulo(largo,ancho);
}

void calcularRombo(){
  float diagonal1,diagonal2;
  printf("Ingrese la longitud de la diagonal 1: ");
  scanf("%f", &diagonal1);
  printf("Ingrese la longitud de la diagonal 2: ");
  scanf("%f", &diagonal2);
  calcular_area_perimetro_rombo(diagonal1,diagonal2);
}

void calcularTrapecio(){
  float b1, b2, h;
  printf("Ingrese la longitud de la base 1: ");
  scanf("%f", &b1);
  printf("Ingrese la longitud de la base 2: ");
  scanf("%f", &b2);
  printf("Ingrese la altura: ");
  scanf("%f", &h);
  calcular_area_perimetro_trapecio(b1, b2, h);
}

void calcularCirculo(){
  float radio;
  printf("Ingrese el radio del círculo: ");
  scanf("%f", &radio);
  calcular_area_perimetro_circulo(radio);
}

void calcularPoligonoRegular(){
  int n; 
  float l; 
  printf("Ingrese el número de lados del polígono regular: ");
  scanf("%d", &n);
  printf("Ingrese la longitud del lado: ");
  scanf("%f", &l);
  calcular_area_perimetro_poligono(n,l);
}

int seleccionarFiguraVolumen(){
  int figura;
  printf("Seleccione la figura a calcular el volumen y la superficie de a figura\n");
  printf("1. Cubo\n");
  printf("2. Cuboide\n");
  printf("3. Cilindro Recto\n");
  printf("4. Esfera\n");
  printf("5. Cono Circular Recto\n");
  printf("Ingrese su opción: ");
  scanf("%d", &figura);
  return figura;
}

void calcularCubo(){
  float lado;
  printf("Cuanto mide los lados del cubo: ");
  scanf("%f", &lado);
  calcular_superficie_volumen_cubo(lado);
}

void calcularCuboide(){
  float largo;
  float ancho;
  float alto;
  printf("Cuanto mide el largo del cuboide: ");
  scanf("%f",&largo);
  printf("Cuanto mide el ancho del cuboide: ");
  scanf("%f",&ancho);
  printf("Cuanto mide el alto del cuboide: ");
  scanf("%f",&alto);
  calcular_superficie_volumen_cuboide(largo, ancho, alto);
}

void calcularCilindroRecto(){
  float radio;
  float altura;
  printf("Cuanto mide el radio del cilindro: ");
  scanf("%f",&radio);
  printf("Cuanto mide la altura del cilindro: ");
  scanf("%f",&altura);
  calcular_superficie_volumen_cilindro(radio,altura);
}

void calclarEsfera(){
  float radio;
  printf("Cuanto mide el radio de la esfera: ");
  scanf("%f",&radio);
  calcular_superficie_volumen_esfera(radio);
}

void calcularConoCircularRecto(){
  float radio;
  float altura;
  printf("Cuanto mide el radio del cono circular: ");
  scanf("%f",&radio);
  printf("Cuanto mide la altura del cono circular: ");
  scanf("%f",&altura);
  calcular_superficie_volumen_cono(radio,altura);
}
