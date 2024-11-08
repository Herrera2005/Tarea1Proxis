#ifndef CALCULOS_H
#define CALCULOS_H

void calcular_superficie_volumen_cubo(float lado);
void calcular_superficie_volumen_cuboide(float largo, float ancho, float alto);
void calcular_superficie_volumen_cilindro(float radio, float altura);
void calcular_superficie_volumen_esfera(float radio);
void calcular_superficie_volumen_cono(float radio, float altura);

void calcular_area_perimetro_triangulo(float base, float altura);
void calcular_area_perimetro_paralelogramo(float base, float altura,float lado);
void calcular_area_perimetro_cuadrado(float lado);
void calcular_area_perimetro_rectangulo(float largo, float ancho);
void calcular_area_perimetro_rombo(float diagonal1, float diagonal2);
void calcular_area_perimetro_trapecio(float base1, float base2, float altura);
void calcular_area_perimetro_circulo(float radio);
void calcular_area_perimetro_poligono(int lados, float longitud);
#endif
