# Bitácora de aprendizaje

## ¿Cómo voy?

- [ ] Terminé la fase de investigación. 
- [ ] Terminé la fase de aplicación.
- [ ] Terminé la fase de compartir.

## Compartir

### Resultado de aprendizaje 1 (RAE1)

> Muestra que tu aplicación cumple con todos los requisitos establecidos.

> Explicas cómo solucionaste cada requisito de la aplicación.

### Resultado de aprendizaje 2 (RAE2)

> Muestras cómo probaste cada requisito por separado.

> Muestras cómo probaste que la aplicación funciona integrada, con todos los requisitos.

## Proceso

En cada sesión vas a realizar experimentos para explorar a profundidad los conceptos. También podrás 
implementar requisitos de la aplicación, resolver algún error, implementar una prueba o probar 
la integración de varias partes. Cada una de estas actividades las vas a reportar en tu bitácora
usando la siguiente plantilla:

``` markdown
> 1. ¿Qué tipo de actividad estás evidenciando?
> 2. Describe la actividad y cuál es el propósito de esta y/o la pregunta que quieres investigar.
> 3. Todas las actividades deben estar soportadas por código fuente. Vas a inidicar el commit que tiene
>    el resultado final de la actividad.
> 4. ¿Cuáles es el resultado de la actividad?
> 5. ¿Qué aprendiste de la actividad?
```

> :warning: **MUY IMPORTANTE**
> 
> Cada sesión debe tener al menos dos actividades para ganar los puntos de la sesión. La actividad debe estar completa,
> es decir, debe tener los 5 puntos de la plantilla realizados correctamente.

### Semana 14

#### Sesión 1

> 1. ¿Qué tipo de actividad estás evidenciando?

Estoy evidenciando una actividad referente al ejercicio 2 sobre los conceptos de stack y heap.

> 2. Describe la actividad y cuál es el propósito de esta y/o la pregunta que quieres investigar.

En la actividad se lleva a cabo un codigo en C donde se implementa el satck y el heap para asi conocer como se utiliza y su sintaxis 


> 3. Todas las actividades deben estar soportadas por código fuente. Vas a inidicar el commit que tiene
>    el resultado final de la actividad.

El codigo es el siguiente:


```C
#include <stdio.h>
#include <stdlib.h>

// Función que realiza una operación simple con dos números en el stack
int suma(int a, int b) {
    return a + b;
}

int main() {
    // Variable en el stack
    int x = 5;
    
    // Reserva de memoria en el heap para un arreglo de enteros
    int *array = (int *)malloc(5 * sizeof(int));
    if (array == NULL) {
        printf("Error: no se pudo asignar memoria en el heap.\n");
        return 1;
    }
    
    // Asignación de valores al arreglo en el heap
    for (int i = 0; i < 5; i++) {
        array[i] = i * 2;
    }
    
    // Llamada a la función suma con argumentos en el stack
    int result = suma(x, array[2]);
    
    // Impresión del resultado
    printf("El resultado de la suma es: %d\n", result);
    
    // Liberación de la memoria asignada en el heap
    free(array);
    
    return 0;
}


```





> 5. ¿Cuáles es el resultado de la actividad?


El resultado del código es la impresión en la consola del resultado de la suma de dos números

En el código proporcionado, x se inicializa con el valor 5, y array es un arreglo de enteros en el que se asignan los primeros cinco números pares. Luego, se llama a la función suma con x 5 y el tercer elemento del arreglo array, que es array 4 en este caso.

Entonces, la suma de 5 y 4 es 9.



> 6. ¿Qué aprendiste de la actividad?

El uso de las variables de stack y heap 



#### Sesión 2

#### Sesión 3

### Semana 15

#### Sesión 1

#### Sesión 2

#### Sesión 3

### Semana 16

#### Sesión 1

#### Sesión 2

#### Sesión 3
