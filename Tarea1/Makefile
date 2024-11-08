# Compilador y opciones
CC = gcc
CFLAGS = -Wall -g
MATH_LIB = -lm

# Archivos fuente y objetos
SRCS = main.c datos.c calculos.c bitacora.c
OBJS = $(SRCS:.c=.o)
ASSEMBLY = $(SRCS:.c=.s)

# Ejecutable
TARGET = programa

# Regla principal: compila todo y genera el ejecutable
all: $(TARGET) $(ASSEMBLY)

# Regla para generar el ejecutable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) $(MATH_LIB)

# Regla para generar archivos .o a partir de los .c
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Regla para generar archivos .s (assembly) a partir de los .c
%.s: %.c
	$(CC) -S $< -o $@

# Limpiar archivos generados
clean:
	rm -f $(OBJS) $(ASSEMBLY) $(TARGET)

