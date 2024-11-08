#ifndef DATOS_H
#define DATOS_H

int seleccionarFiguraArea();
void calcularTriangulo();
void calcularParalelogramo();
void calcularCuadrado();
void calcularRegtangulo();
void calcularRombo();
void calcularTrapecio();
void calcularCirculo();
void calcularPoligonoRegular();

int seleccionarFiguraVolumen();
void calcularCubo();
void calcularCuboide();
void calcularCilindroRecto();
void calclarEsfera();
void calcularConoCircularRecto();

void guardar_bitacora(const char *usuario, const char *accion);
int validar_credenciales(const char *usuario, const char *clave);
#endif
