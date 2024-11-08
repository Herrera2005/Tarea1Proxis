#include <stdio.h>
#include <math.h>
#include "calculos.h"


void calcular_area_perimetro_triangulo(float base, float altura){
    float area = (base * altura) / 2;
    float perimetro = base * 3; 
    printf("El área del triángulo es: %.2f\n", area);
    printf("El perímetro del triángulo es: %.2f\n", perimetro);
}

void calcular_area_perimetro_paralelogramo(float base, float altura, float lado){
    float area = base * altura;
    float perimetro = 2 * (base + lado);
    printf("El área del paralelogramo es: %.2f\n", area);
    printf("El perímetro del paralelogramo es: %.2f\n", perimetro);
}

void calcular_area_perimetro_cuadrado(float lado){
    float area = lado * lado;
    float perimetro = 4 * lado;
    printf("El área del cuadrado es: %.2f\n", area);
    printf("El perímetro del cuadrado es: %.2f\n", perimetro);
}

void calcular_area_perimetro_rectangulo(float largo, float ancho){
    float area = largo * ancho;
    float perimetro = 2 * (largo + ancho);
    printf("El área del rectángulo es: %.2f\n", area);
    printf("El perímetro del rectángulo es: %.2f\n", perimetro);
}

void calcular_area_perimetro_rombo(float diagonal1, float diagonal2){
    float area = (diagonal1 * diagonal2) / 2;
    float lado = sqrt(pow(diagonal1 / 2, 2) + pow(diagonal2 / 2, 2));
    float perimetro = 4 * lado;
    printf("El área del rombo es: %.2f\n", area);
    printf("El perímetro del rombo es: %.2f\n", perimetro);
}

void calcular_area_perimetro_trapecio(float base1, float base2, float altura){
    float area = ((base1 + base2) * altura) / 2;
    float lado = sqrt(pow((base2 - base1) / 2, 2) + pow(altura, 2)); 
    float perimetro = base1 + base2 + 2 * lado;
    printf("El área del trapecio es: %.2f\n", area);
    printf("El perímetro del trapecio es: %.2f\n", perimetro);
}

void calcular_area_perimetro_circulo(float radio){
    float area = M_PI * radio * radio;
    float perimetro = 2 * M_PI * radio;
    printf("El área del círculo es: %.2f\n", area);
    printf("El perímetro (circunferencia) del círculo es: %.2f\n", perimetro);
}

void calcular_area_perimetro_poligono(int lados, float longitud){
    float perimetro = lados * longitud;
    float apotema = longitud / (2 * tan(M_PI / lados));
    float area = (perimetro * apotema) / 2;
    printf("El área del polígono regular es: %.2f\n", area);
    printf("El perímetro del polígono regular es: %.2f\n", perimetro);
}

void calcular_superficie_volumen_cubo(float lado) {
    float superficie = 6 * pow(lado, 2);
    float volumen = pow(lado, 3);
    printf("La superficie del cubo es: %.2f\n", superficie);
    printf("El volumen del cubo es: %.2f\n", volumen);
}

void calcular_superficie_volumen_cuboide(float largo, float ancho, float alto) {
    float superficie = 2 * (largo * ancho + largo * alto + ancho * alto);
    float volumen = largo * ancho * alto;
    printf("La superficie del cuboide es: %.2f\n", superficie);
    printf("El volumen del cuboide es: %.2f\n", volumen);
}

void calcular_superficie_volumen_cilindro(float radio, float altura) {
    float superficie = 2 * M_PI * radio * (radio + altura);
    float volumen = M_PI * pow(radio, 2) * altura;
    printf("La superficie del cilindro es: %.2f\n", superficie);
    printf("El volumen del cilindro es: %.2f\n", volumen);
}

void calcular_superficie_volumen_esfera(float radio) {
    float superficie = 4 * M_PI * pow(radio, 2);
    float volumen = (4.0 / 3.0) * M_PI * pow(radio, 3);
    printf("La superficie de la esfera es: %.2f\n", superficie);
    printf("El volumen de la esfera es: %.2f\n", volumen);
}

void calcular_superficie_volumen_cono(float radio, float altura) {
    float generatriz = sqrt(pow(radio, 2) + pow(altura, 2));
    float superficie = M_PI * radio * (radio + generatriz);
    float volumen = (M_PI * pow(radio, 2) * altura) / 3;
    printf("La superficie del cono es: %.2f\n", superficie);
    printf("El volumen del cono es: %.2f\n", volumen);
}
