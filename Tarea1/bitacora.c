#include <stdio.h>
#include <string.h>
#include <time.h>
#include "datos.h"

int validar_credenciales(const char *usuario, const char *clave) {
    FILE *file = fopen("usuarios.txt", "r");
    if (!file) {
        perror("No se pudo abrir usuarios.txt");
        return 0;
    }

    char linea[256];
    int validado = 0;
    while (fgets(linea, sizeof(linea), file)) {
        char *usuario_archivo = strtok(linea, ":");
        char *clave_archivo = strtok(NULL, "\n");

        if (strcmp(usuario, usuario_archivo) == 0 && strcmp(clave, clave_archivo) == 0) {
            validado = 1;
            break;
        }
    }
    fclose(file);
    return validado;
}

void guardar_bitacora(const char *usuario, const char *accion) {
    FILE *file = fopen("bitacora.txt", "a");
    if (!file) {
        perror("No se pudo abrir bitacora.txt");
        return;
    }

    time_t t = time(NULL);
    struct tm tm = *localtime(&t);

    fprintf(file, "%04d/%02d/%02d: %s - %s\n", 
            tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday,
            usuario, accion);
    fclose(file);
}

