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



> 1. ¿Qué tipo de actividad estás evidenciando?

Estoy evidenciando una actividad referente igual al ejercicio 2 esta vez sobre el concepto de los posibles estados de un proceso 



> 2. Describe la actividad y cuál es el propósito de esta y/o la pregunta que quieres investigar.


El proposito es aprender sobre el uso y su sintaxis de los estados en un programa, la idea de la actividad es simular un proceso que alterna entre dos estados: ejecución y bloqueado. Cuando el proceso está en ejecución, imprime un mensaje y luego espera un corto período de tiempo simulando la ejecución de alguna tarea. Después de eso, cambia al estado de bloqueado donde simula una operación de entrada y salida. Una vez que termina la operación , vuelve al estado de ejecución y continúa el ciclo. 



> 3. Todas las actividades deben estar soportadas por código fuente. Vas a inidicar el commit que tiene
>    el resultado final de la actividad.

El codigo es el siguiente:


```C
#include <stdio.h>
#include <unistd.h>

void proceso_ejecucion() {
    printf("Proceso en ejecucion...\n");
    sleep(2); // Simula una ejecución por un tiempo
}

void proceso_bloqueado() {
    printf("Proceso bloqueado esperando entrada/salida...\n");
    sleep(1); // Simula una operación de E/S
}

int main() {
    int estado = 0;

    while (1) {
        switch (estado) {
            case 0:
                proceso_ejecucion();
                estado = 1;
                break;
            case 1:
                proceso_bloqueado();
                estado = 0;
                break;
            default:
                printf("Estado no valido.\n");
                return 1;
        }
    }

    return 0;
}
```




> 5. ¿Cuáles es el resultado de la actividad?


El resultado del código será la impresión alternada de los mensajes que representan los dos estados del proceso ejecución y bloqueado


![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/c9b2b328-3544-4f35-9a67-3151995d4b41)



> 6. ¿Qué aprendiste de la actividad?


aprendi que en C, los estados de un proceso no se pueden cambiar directamente dentro del programa, ya que los sistemas operativos son los encargados de administrar los estados de los procesos sin embargo podemos simular diferentes estados de un proceso utilizando funciones que representen diferentes acciones que un proceso puede realizar




#### Sesión 2

> 1. ¿Qué tipo de actividad estás evidenciando?

Estoy evidenciando la actividad 3 sobre concepto de hilos


> 2. Describe la actividad y cuál es el propósito de esta y/o la pregunta que quieres investigar.


El proposito de esta actividad es reforzar el concepto de hilos de forma practica con un programa que crea dos hilos que ejecutan la misma función funcion_hilo con mensajes diferentes como argumentos cada hilo imprime su mensaje en la consola de manera independiente, demostrando así la capacidad de ejecución concurrente de múltiples flujos de instrucciones utilizando hilos.



> 3. Todas las actividades deben estar soportadas por código fuente. Vas a inidicar el commit que tiene
>    el resultado final de la actividad.


Codigo:

```C
#include <stdio.h>
#include <pthread.h>

// Función que se ejecutará en un hilo
void *funcion_hilo(void *arg) {
    char *mensaje = (char *)arg;
    printf("%s\n", mensaje);
    pthread_exit(NULL);
}

int main() {
    pthread_t hilo1, hilo2;
    char *mensaje1 = "Este es el hilo 1";
    char *mensaje2 = "Este es el hilo 2";

    // Creamos dos hilos, cada uno ejecutará la función funcion_hilo con un mensaje diferente
    pthread_create(&hilo1, NULL, funcion_hilo, (void *)mensaje1);
    pthread_create(&hilo2, NULL, funcion_hilo, (void *)mensaje2);

    // Esperamos a que ambos hilos terminen
    pthread_join(hilo1, NULL);
    pthread_join(hilo2, NULL);

    return 0;
}


```



> 5. ¿Cuáles es el resultado de la actividad?

El resultado del código será la impresión de los dos mensajes que son pasados como argumentos a los hilos. Los mensajes serán impresos en el orden en que los hilos completen su ejecución, lo cual puede variar en cada ejecución del programa debido a la naturaleza concurrente de los hilos

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/ad9d9dee-9558-4f17-b512-189b16aa237b)

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/1ab5d48b-c398-4c8e-ae90-8381b929f074)


> 6. ¿Qué aprendiste de la actividad?

Aprendi a llevar el concepto de hilo a una forma practica con la cual se pueden hacer programas que hagan 2 cosas distintas de forma simultanea



> 1. ¿Qué tipo de actividad estás evidenciando?

Estoy evidenciando el ejercicio 4 de la creacion de hilos 



> 2. Describe la actividad y cuál es el propósito de esta y/o la pregunta que quieres investigar.

En esta actividad lo que hare es responder las preguntas sobre el ejercicio 4 que estan planteadas luego hacer el analisis 



> 3. Todas las actividades deben estar soportadas por código fuente. Vas a inidicar el commit que tiene
>    el resultado final de la actividad.


El codigo es :

```C
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

struct threadParam_t
{
    char character;
    int counter;
};


void* imprime(void *parg){
    struct threadParam_t *pargTmp = (struct threadParam_t *)parg;
    for(int i = 0; i < pargTmp->counter;i++){
        printf("%c",pargTmp->character);
    }
    return NULL;
}


int main(int argc, char *argv[]){
    pthread_t threadID1;
    pthread_t threadID2;

    struct threadParam_t threadParam1 = {'a',30000};
    struct threadParam_t threadParam2 = {'b',20000};

    pthread_create(&threadID1,NULL,&imprime, &threadParam1);
    pthread_create(&threadID2,NULL,&imprime, &threadParam2);

    exit(EXIT_SUCCESS);
}
```




> 5. ¿Cuáles es el resultado de la actividad?

El resultado de la actividad son las siguientes respuestas:


¿Pudiste identificar cuáles son los hilos?

Sí, en este programa se utilizan hilos para ejecutar dos flujos de instrucciones de manera concurrente la función main representa el hilo principal del programa, que es el hilo que se ejecuta automáticamente cuando se inicia el programa.

El otro hilo se crea utilizando la función pthread_create() y ejecuta la función imprime_x este es el segundo hilo del programa.



Explica cómo podría funciona este programa en el computador.


Al ejecutar el programa, se inicia el hilo principal (main). Este hilo crea un segundo hilo utilizando pthread_create() que ejecutará la función imprime_x.

Ambos hilos comienzan su ejecución de manera concurrente. El hilo principal entra en un bucle infinito en el que imprime repetidamente la letra "o" en la consola, mientras que el segundo hilo (imprime_x) también entra en un bucle infinito donde imprime repetidamente la letra "x".

Dado que ambos hilos están ejecutando bucles infinitos, continuarán imprimiendo sus respectivos caracteres en la consola de forma simultánea y concurrente.

El sistema operativo administra la ejecución de los hilos, permitiendo que ambos se ejecuten en el procesador de manera intercalada o concurrente según el esquema de planificación que utilice. Esto significa que mientras un hilo está esperando, el otro puede aprovechar el tiempo de CPU para su ejecución.

La impresión de "o" y "x" en la consola se realizará de manera concurrente y no necesariamente en un patrón predecible. El resultado será una mezcla de "o" y "x" en la salida de la consola, dependiendo del orden en que los hilos tengan acceso al procesador.

El programa continuará imprimiendo caracteres indefinidamente hasta que se detenga manualmente, ya sea por el usuario o mediante la finalización forzada del programa.



> 6. ¿Qué aprendiste de la actividad?

Mas que aprender en esta actividad reforce lo que hice en la actividad anterior con la creacion de hilos utilizando pthread_create()


#### Sesión 3

> 1. ¿Qué tipo de actividad estás evidenciando?

Estoy evidenciando el ejercicio 5 que se trata de analizar el codigo con 3 hilos 


> 2. Describe la actividad y cuál es el propósito de esta y/o la pregunta que quieres investigar.


En esta actividad voy a analizar y proponer una hipotesis sobre el codigo 



> 3. Todas las actividades deben estar soportadas por código fuente. Vas a inidicar el commit que tiene
>    el resultado final de la actividad.

El codigo es :

```c
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

struct threadParam_t
{
    char character;
    int counter;
};


void* imprime(void *parg){
    struct threadParam_t *pargTmp = (struct threadParam_t *)parg;
    for(int i = 0; i < pargTmp->counter;i++){
        printf("%c",pargTmp->character);
    }
    return NULL;
}


int main(int argc, char *argv[]){
    pthread_t threadID1;
    pthread_t threadID2;

    struct threadParam_t threadParam1 = {'a',30000};
    struct threadParam_t threadParam2 = {'b',20000};

    pthread_create(&threadID1,NULL,&imprime, &threadParam1);
    pthread_create(&threadID2,NULL,&imprime, &threadParam2);

    exit(EXIT_SUCCESS);
}


````



> 5. ¿Cuáles es el resultado de la actividad?

La hipotesis que puede sacar es la siguiente:


es que los hilos secundarios pueden no tener la oportunidad de completar su ejecución antes de que el hilo principal finalice debido a la falta de llamadas a pthread_join() en el hilo principal. Esto podría llevar a la finalización prematura de los hilos secundarios y posiblemente a la interrupción de su trabajo ademas que los hilos secundarios pueden no completar la impresion del numero total de caracteres especificado en la estructura threadParam_t, especialmente si el numero de iteraciones en el bucle es grande y la impresion de cada caracter es costosa en términos de tiempo de CPU. Esto podria resultar en una impresion incompleta o en la impresion de una cantidad menor de caracteres de lo esperado.



> 6. ¿Qué aprendiste de la actividad?

En esta actividad aprendi de lo importante que es la comunicacion entre los hilos para poder tener un fucionamiento simultaneo de todos. 



> 1. ¿Qué tipo de actividad estás evidenciando?

Estare evidenciando sobre el ejercicio 5 de nuevo esta vez la actividad sera corrigiendo el problema de la comunicacion en los 3 hilos 


> 2. Describe la actividad y cuál es el propósito de esta y/o la pregunta que quieres investigar.


El proposito de esta actividad es buscar la solucion al problema de comunicacion de los 3 hilos y asi terminen de forma simultanea


> 3. Todas las actividades deben estar soportadas por código fuente. Vas a inidicar el commit que tiene
>    el resultado final de la actividad.

codigo:

````c
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

struct threadParam_t
{
    char character;
    int counter;
};

void* imprime(void *parg){
    struct threadParam_t *pargTmp = (struct threadParam_t *)parg;
    for(int i = 0; i < pargTmp->counter; i++){
        printf("%c", pargTmp->character);
    }
    return NULL;
}

int main(int argc, char *argv[]){
    pthread_t threadID1;
    pthread_t threadID2;

    struct threadParam_t threadParam1 = {'a', 30000};
    struct threadParam_t threadParam2 = {'b', 20000};

    // Se crean los hilos
    pthread_create(&threadID1, NULL, &imprime, &threadParam1);
    pthread_create(&threadID2, NULL, &imprime, &threadParam2);

    // Se espera a que los hilos terminen
    pthread_join(threadID1, NULL);
    pthread_join(threadID2, NULL);

    exit(EXIT_SUCCESS);
}


````



> 5. ¿Cuáles es el resultado de la actividad?


En este código, se han agregado llamadas a pthread_join() después de la creación de cada hilo secundario en el hilo principal. Estas llamadas aseguran que el hilo principal espere a que ambos hilos secundarios completen su ejecución antes de finalizar. Como resultado, los tres hilos (el hilo principal y los dos hilos secundarios) funcionarán simultáneamente y se completará la impresión de caracteres antes de que el programa finalice.



> 6. ¿Qué aprendiste de la actividad?

En esta actividad aprendi lo importante que son las llamadas a pthread_join() para el funcionamiento simultaneo de los hilos.


### Semana 15

#### Sesión 1

#### Sesión 2

#### Sesión 3

### Semana 16

#### Sesión 1

#### Sesión 2

#### Sesión 3
