# Bitácora de aprendizaje

## ¿Cómo voy?

- [ ] Terminé la fase de investigación. 
- [ ] Terminé la fase de aplicación.
- [ ] Terminé la fase de compartir.

## Compartir

### ¿Manejé bajo control de versión el código de mi aplicación?
### Muestro y explico mi implementación del encapsulamiento.
### Muestro y explico mi implementación de la herencia.
### Muestro y explico mi implementación del polimorfismo.
### Muestra cómo probaste la funcionalidad de cada característica de la aplicación,
### Muestra cómo probaste la integración de cada característica con las anteriores.

## Consejos para el uso efectivo de la bitácora

* Preparación al inicio de la micro-sesión 1: establece un objetivo claro de la sesión para maximizar el tiempo de trabajo efectivo.
* Concisión: sé breve pero significativo en tus respuestas para ajustarte al tiempo de reflexión de 4 minutos.
* Pausas activas: usa las pausas de 1 minutos para realmente desconectar, estirar y descansar los ojos; esto ayuda a mantener la energía y la concentración.
* Reflexión profunda al final de la mimcro-sesión 4: usa parte del tiempo para una reflexión más profunda y para planificar, asegurándote de cerrar la sesión
  con una nota productiva y prepararte para lo que sigue.

## Semana 10

### Sesión 1

#### Micro-sesión 1 (25 minutos)

**Planeación:**

1. ¿Qué voy a trabajar hoy?

Hoy tengo planeado examinar esta nueva unidad 3 a fondo y definer los conceptos que no entienda

2. ¿Cuál es mi objetivo principal para esta sesión?

analizar y comprender lo que se debe hacer 

**Trabajo en concentración**

**Meta-aprendizaje:**

3. ¿Qué he logrado en esta micro-sesión de trabajo?

En esta micro sesion estuve analizando los requerimientos de esta nueva unidad, tambien las actividades y nuevos conceptos, con esto logro entender mejor lo que se pedira en esta unidad y lo que no debo investigar


4. ¿Con qué dificultades me encontré y cómo las abordé?

Realmente no tuve alguna dificultad al momento de revisar la unidad

5. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?

Si, estoy mas cerca, me falta investigar algunos conceptos que no tengo del todo claros lo cual hare en la siguiente micro sesion  


6. ¿Qué he aprendido o reforzado en esta micro-sesión?

En esta micro sesion mas que aprender pude reforzar lo que debo hacer en esta unidad 

#### Micro-sesión 2 (25 minutos)

**Trabajo en concentración**

**Meta-aprendizaje:**

1. ¿Qué he logrado en esta micro-sesión de trabajo?

En esta micro sesion me dedique a definir conceptos que son claves que no tengo del todo claro que son los siguientes:

ENCAPSULAMIENTO
El encapsulamiento consiste en unir en la Clase las características y comportamientos, esto es, las variables y métodos. Es tener todo esto es una sola entidad. En los lenguajes estructurados esto era imposible. Es evidente que el encapsulamiento se logra gracias a la abstracción y el ocultamiento
La utilidad del encapsulamiento va por la facilidad para manejar la complejidad, ya que tendremos a las Clases como cajas negras donde sólo se conoce el comportamiento pero no los detalles internos, y esto es conveniente porque nos interesará será conocer qué hace la Clase pero no será necesario saber cómo lo hace

HERENCIA
 A través de ella los diseñadores pueden crear nuevas clases partiendo de una clase o de una jerarquía de clases preexistente (ya comprobadas y verificadas) evitando con ello el rediseño, la modificación y verificación de la parte ya implementada. La herencia facilita la creación de objetos a partir de otros ya existentes e implica que una subclase obtiene todo el comportamiento (métodos) y eventualmente los atributos (variables) de su superclase.
Es la relación entre una clase general y otra clase más específica

![hereencia](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/b38d6ba0-a121-472a-9ea0-5434aca255af)


POLIMORFISMO
Se refiere a la propiedad por la que es posible enviar mensajes sintácticamente iguales a objetos de tipos distintos. El único requisito que deben cumplir los objetos que se utilizan de manera polimórfica es saber responder al mensaje que se les envía.
La apariencia del código puede ser muy diferente dependiendo del lenguaje que se utilice, más allá de las obvias diferencias sintácticas.

![polimorfismo](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/de756e88-6fc6-4af5-ac62-f15df7b26b5e)

Con esta definicion de conceptos logro tener mas claro el Refactoring que debo hacerle al codigo. 


2. ¿Con qué dificultades me encontré y cómo las abordé?

No tuve ningua dificultad ya que hay bastante informacion y definiciones de los conceptos en internet


3. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?

Si etoy mas cerca del objetivo, me falta investigar como implementar estos conceptos en C

4. ¿Qué he aprendido o reforzado en esta micro-sesión?

En esta micro sesion reforce los conocimientos de los conceptos claves de esta unidad. 


#### Micro-sesión 3 (25 minutos)

**Trabajo en concentración**

**Meta-aprendizaje:**

1. ¿Qué he logrado en esta micro-sesión de trabajo?

En esta micro sesion logre aprender un poco sobre como implementar el polimorfismo en C que puede ser de la siguiente forma:

Definir una estructura base: Define una estructura base que contendrá punteros a funciones para las operaciones comunes que se realizarán en los objetos polimórficos

Definir estructuras derivadas: Define estructuras derivadas que hereden de la estructura base. 

Implementar las funciones comunes: Implementa las funciones comunes para cada tipo de objeto. Estas funciones deben coincidir en firma con los punteros a funciones en la estructura base

Inicializar los punteros a funciones: Inicializa los punteros a funciones de la estructura base con las funciones comunes correspondientes


Utilizar el polimorfismo: Ahora puedes crear objetos polimórficos y llamar a las funciones comunes a través de los punteros a funciones en la estructura base

un ejemplo puede ser el siguiente:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/1cb7d0d4-cfdc-443c-8b18-391738677056)




2. ¿Con qué dificultades me encontré y cómo las abordé?

La dificultad con la que me encontre es un poco la de siempre de buena informacion explicada en internet por lo que la aborde con chatgpt. 



3. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?

Si estoy mas cerca, me falta saber como se implementa la herencia y encapsulamiento



4. ¿Qué he aprendido o reforzado en esta micro-sesión?



He aprendido sobre los pasos a seguir para implementar el polimorfismo. 




#### Micro-sesión 4. (25 minutos)

**Trabajo en concentración**

**Meta-aprendizaje:**

1. ¿Qué he logrado en esta micro-sesión de trabajo?


En esta micro sesion logre aprender un poco sobre como implementar el encapsulamiento en C 

Partiendo del siguiente ejemplo:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/5b944e79-44e3-42bf-84ec-8043620f2419)

En este ejemplo, la estructura Objeto tiene un miembro privado llamado dato_privado. Sin embargo, fuera del alcance de la estructura, este miembro es inaccesible directamente. La función crearObjeto se utiliza para crear un nuevo objeto, inicializando su miembro privado. La función obtenerDatoPrivado se utiliza para acceder al dato privado del objeto de manera segura. La función destruirObjeto libera la memoria asignada al objeto.



2. ¿Con qué dificultades me encontré y cómo las abordé?



La dificultad con la que me encontre es un poco la de siempre de buena informacion explicada en internet por lo que la aborde con chatgpt.



3. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?


Si estoy mas cerca, me falta seguir con el trabajo de investigacion



4. ¿Qué he aprendido o reforzado en esta micro-sesión?

Aprendi que para implementar el encapsulamiento debo hacer estructuras privadas



**Cierre de sesión:**

5. ¿He alcanzado los objetivos planteados al inicio? Si no, ¿por qué y qué puedo mejorar?


Si los alcance, porque pude cumplir con los conceptos que queria definir 


6. ¿Cuáles fueron los desafíos más significativos de hoy y cómo los superé?

Realmente en esta sesion no tuve desafios significativos ya que se trato mas que todo de investigacion autonoma



7. Basado en el trabajo de hoy, ¿qué insights importantes he ganado?


Como se implementa en C el polimorfismo y el encapsulamiento



8. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

Los pasoa a seguir es completar el trabajo de investigacion


### Sesión 2

#### Micro-sesión 1 (25 minutos)

**Planeación:**

1. ¿Qué voy a trabajar hoy?

En esta sesion trabajare en los ejercicios 1, 2 y 3 


2. ¿Cuál es mi objetivo principal para esta sesión?

Poder aprender analizar y realizar los ejercicios


**Trabajo en concentración**

**Meta-aprendizaje:**

3. ¿Qué he logrado en esta micro-sesión de trabajo?

En esta micro sesion logre definir y analizar de arriba las cosas que debo hacer 


4. ¿Con qué dificultades me encontré y cómo las abordé?

En esta micro sesion no me encontre con ninguna dificultad



5. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?

Si ya se que rumbo agarrar en esta sesion



6. ¿Qué he aprendido o reforzado en esta micro-sesión?

Reforce como debo planear una sesion



#### Micro-sesión 2 (25 minutos)

**Trabajo en concentración**

**Meta-aprendizaje:**

1. ¿Qué he logrado en esta micro-sesión de trabajo?

En esta micro sesion trabaje en el ejercicio 1, que  es un ejemplo básico de cómo se podría implementar el encapsulamiento y la abstracción de datos en C para simular la programación orientada a objetos. Cada función que opera en la estructura Shape se define fuera de la estructura misma, lo que permite encapsular los datos y manipularlos solo a través de funciones específicas. Esto ayuda a mantener el código modular y a reducir la complejidad.

los objetos se crean en el programa principal (main) o en cualquier otro lugar donde se necesiten. La estructura Shape define el modelo de los objetos, y las funciones proporcionadas (Shape_ctor, Shape_dtor, Shape_moveBy, Shape_getX y Shape_getY) se utilizan para operar en estos objetos.



En C, los objetos se crean generalmente en la pila o en el montón (heap), dependiendo de cómo se declaren y se asignen. En el ejemplo los objetos Shape se crean en la pila porque están siendo declarados como variables locales en la función main(). Cuando una variable se declara dentro de una función sin usar malloc() u otras funciones de asignación dinámica de memoria, se coloca en la pila.


Versión 1: Creación de objetos en la pila

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/f5799bce-023b-47de-97e6-5b4800ddcc72)




Versión 2: Creación de objetos en el montón (heap)



![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/85378f7f-6b60-49d7-9a19-4ac009718b2d)





Versión 3: Creación de objetos en memoria global


![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/db83ee33-8f3b-4f98-8b1a-ec9bbfbc9d50)




2. ¿Con qué dificultades me encontré y cómo las abordé?


  Este ejercicio de investigacion lo aborde con chatgpt ya que es la mejor herramienta para entender a fondos varios conceptos




3. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?


Si estoy mas cerca debo seguir completando los ejercicios de investigacion


4. ¿Qué he aprendido o reforzado en esta micro-sesión?

Aprendi que hay 3 ubicaciones donde se pueden crear objetos 


#### Micro-sesión 3 (25 minutos)

**Trabajo en concentración**

**Meta-aprendizaje:**

1. ¿Qué he logrado en esta micro-sesión de trabajo?


En esta micro sesion trabaje en el ejercicio 2 que se trata de responder 2 preguntas las cuales son las siguientes:


¿Qué es una clase?


Una clase es un concepto fundamental en la programación orientada a objetos (OOP). Representa un modelo o plantilla para crear objetos que comparten propiedades y comportamientos comunes. En esencia, una clase es una descripción de cómo deberían ser los objetos que se basan en ella.

aspectos clave sobre las clases:

Plantilla para objetos: Una clase proporciona una plantilla o un plano para la creación de objetos. Define la estructura y el comportamiento que los objetos de esa clase deberían tener.

Atributos y métodos: Una clase consta de atributos (también llamados miembros de datos) y métodos (también llamados funciones miembro). Los atributos representan datos asociados con la clase, mientras que los métodos representan el comportamiento o las operaciones que pueden realizarse en los objetos de esa clase.

Encapsulación: Las clases permiten encapsular datos y comportamientos relacionados en un solo lugar. Esto significa que los datos están protegidos dentro de la clase y solo pueden ser accedidos o modificados mediante los métodos proporcionados por la clase.

Abstracción: Las clases proporcionan abstracción al ocultar los detalles de implementación y exponer solo la interfaz necesaria para interactuar con los objetos. Los usuarios de la clase no necesitan conocer los detalles internos de cómo se implementa la funcionalidad, solo necesitan conocer cómo usar los métodos públicos de la clase.

Herencia: Una de las características más poderosas de las clases es la capacidad de heredar propiedades y comportamientos de otras clases. Esto permite la reutilización del código y la creación de jerarquías de clases.



¿Qué es un objeto?

Un objeto es una instancia específica de una clase en programación orientada a objetos (OOP). Representa una entidad concreta del mundo real o un concepto abstracto en un programa de software. Los objetos tienen propiedades (atributos) y comportamientos (métodos) definidos por la clase de la que son instancias.

algunas características clave de los objetos:

Estado: Cada objeto tiene un estado definido por los valores de sus atributos en un momento dado. Por ejemplo, un objeto de la clase Car (automóvil) podría tener atributos como marca, modelo, color, velocidad, etc., que definen su estado en un momento específico.

Comportamiento: Los objetos pueden realizar acciones o responder a mensajes enviados a través de sus métodos. Estos métodos representan las operaciones que un objeto puede realizar. Por ejemplo, un objeto de la clase Car podría tener métodos como acelerar, frenar, girar, etc., que definen su comportamiento.

Identidad única: Cada objeto tiene una identidad única que lo distingue de otros objetos. Dos objetos pueden tener el mismo estado, pero aún así ser diferentes debido a su identidad única.

Encapsulación: Los objetos encapsulan tanto sus datos (atributos) como su comportamiento (métodos) en una sola entidad. Esto significa que los detalles internos de un objeto están ocultos y solo se puede interactuar con él a través de su interfaz pública (los métodos proporcionados por su clase).

Instanciación: La creación de un objeto a partir de una clase se llama instanciación. Cuando se instancia una clase, se reserva memoria para el objeto y se inicializan sus atributos. Cada instancia es un objeto separado e independiente con su propio conjunto de valores de atributos.




2. ¿Con qué dificultades me encontré y cómo las abordé?


Este ejercicio de investigacion y definicion de conceptos lo aborde con chatgpt


3. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?


Si estoy mas, debo seguir con el trabajo de investigacion


4. ¿Qué he aprendido o reforzado en esta micro-sesión?

Reforce la definicion de clases y objetos



#### Micro-sesión 4. (25 minutos)

**Trabajo en concentración**

**Meta-aprendizaje:**

1. ¿Qué he logrado en esta micro-sesión de trabajo?

En esta micro sesion logre trabajar en el ejercicio 3 a partir del ejemplo que ya habia dado el profesor en el documento de la unidad 3 


```C
#include <stdio.h>
#include <stdlib.h>

// Declaración de la estructura Forma
typedef struct {
    int16_t x;
    int16_t y;
} Forma;

// Constructor de Forma
void Forma_ctor(Forma * const yo, int16_t x, int16_t y) {
    yo->x = x;
    yo->y = y;
}

// Destructor de Forma (no hace nada en este caso)
void Forma_dtor(Forma * const yo) {
    // No hay nada que liberar en este caso
}

// Funciones para acceder a los atributos de Forma
int16_t Forma_obtenerX(Forma const * const yo) {
    return yo->x;
}

int16_t Forma_obtenerY(Forma const * const yo) {
    return yo->y;
}

// Declaración de la estructura Rectangulo que tiene una relación con Forma
typedef struct {
    Forma base; // Rectangulo se basa en Forma
    int16_t ancho;
    int16_t alto;
} Rectangulo;

// Constructor de Rectangulo
void Rectangulo_ctor(Rectangulo * const yo, int16_t x, int16_t y, int16_t ancho, int16_t alto) {
    Forma_ctor((Forma *)yo, x, y); // Llamar al constructor de Forma
    yo->ancho = ancho;
    yo->alto = alto;
}

// Destructor de Rectangulo (no hace nada en este caso)
void Rectangulo_dtor(Rectangulo * const yo) {
    Forma_dtor((Forma *)yo); // Llamar al destructor de Forma
}

// Funciones para acceder a los atributos de Rectangulo
int16_t Rectangulo_obtenerAncho(Rectangulo const * const yo) {
    return yo->ancho;
}

int16_t Rectangulo_obtenerAlto(Rectangulo const * const yo) {
    return yo->alto;
}

int main() {
    // Crear un objeto Rectangulo
    Rectangulo mi_rectangulo;
    Rectangulo_ctor(&mi_rectangulo, 10, 20, 30, 40);

    // Acceder a los atributos de Forma a través de Rectangulo
    printf("Coordenadas del rectángulo: (%d, %d)\n", Forma_obtenerX((Forma *)&mi_rectangulo), Forma_obtenerY((Forma *)&mi_rectangulo));
    printf("Ancho del rectángulo: %d\n", Rectangulo_obtenerAncho(&mi_rectangulo));
    printf("Altura del rectángulo: %d\n", Rectangulo_obtenerAlto(&mi_rectangulo));

    // Liberar recursos cuando ya no se necesiten
    Rectangulo_dtor(&mi_rectangulo);

    return 0;
}

```

En este programa, la clase Rectangulo tiene una relación con la clase Shape. El objeto mi_rectangulo es un objeto Rectangulo que también hereda las propiedades de la clase Shape. Esto se logra mediante la inclusión de un miembro Shape en la definición de Rectangle. De esta manera, Rectangle puede acceder a los atributos x e y de Shape y también tiene sus propios atributos width y height.





2. ¿Con qué dificultades me encontré y cómo las abordé?


la mayor dificultad fue llevar a la practica la teoria ya vista



3. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?

Si estoy mas cerca, debo seguir con los ejercicios de investigacion



4. ¿Qué he aprendido o reforzado en esta micro-sesión?


Reforce la sintaxis para acceder a las clases



**Cierre de sesión:**

5. ¿He alcanzado los objetivos planteados al inicio? Si no, ¿por qué y qué puedo mejorar?


Si, logro realizar las 3 actividades que planee a inicio de la sesion



6. ¿Cuáles fueron los desafíos más significativos de hoy y cómo los superé?


Los desafios que tuve en esta sesion los pude afrontar con mas investigacion y chatgpt



7. Basado en el trabajo de hoy, ¿qué insights importantes he ganado?


Reforzar conceptos y la sintaxis de C




8. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

Seguir con las actividades de investigacion



### Sesión 3

#### Micro-sesión 1 (25 minutos)

**Planeación:**

1. ¿Qué voy a trabajar hoy?

En esta sesion autonoma seguire trabajando en la investigacion por lo que tengo planeado trabajar en el ejercicio 5 y 6. 



2. ¿Cuál es mi objetivo principal para esta sesión?

Mi objetivo es analizar, investigar y aprender nuevos conceptos. 




**Trabajo en concentración**

**Meta-aprendizaje:**

3. ¿Qué he logrado en esta micro-sesión de trabajo?

En esta micro sesion planee lo que trabajare en esta sesion y el titulo del ejercicio es el concepto de contructor por lo que empece buscando la definicion que es la siguiente 

En la programación orientada a objetos, un constructor es un método especial que se utiliza para inicializar un objeto recién creado y asignarle valores iniciales a sus variables de instancia.

En otras palabras, un constructor es una función que se ejecuta automáticamente cuando se crea un objeto de una clase específica.

esto lo saque del siguiente link:

https://blog.hubspot.es/website/que-es-constructor-java#:~:text=En%20la%20programaci%C3%B3n%20orientada%20a,a%20sus%20variables%20de%20instancia.



4. ¿Con qué dificultades me encontré y cómo las abordé?

Realmente no tuve ninguna dificultad


5. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?

Si estoy mas, me falta seguir haciendo el ejerccio 5 


6. ¿Qué he aprendido o reforzado en esta micro-sesión?

Reforce el concepto de constructor.



#### Micro-sesión 2 (25 minutos)

**Trabajo en concentración**

**Meta-aprendizaje:**

1. ¿Qué he logrado en esta micro-sesión de trabajo?


En esta micro sesion respondi la primera pregunta del ejercicio que es la siguiente:

¿En los ejercicios anteriores puedes identificar al constructor de la clase?

en los ejercicios anteriores, el constructor de la clase se puede identificar por las funciones que inicializan los objetos de la clase. En los códigos proporcionados, las funciones que cumplen esta función son las que tienen como objetivo inicializar los objetos de las estructuras. 

En los ejercicios que he hecho el constructor ha sido Shape que es la función Shape_ctor, esta funcione se encargan de inicializar las instancias de las estructuras con los valores adecuados para sus miembros, lo que equivale a lo que hace un constructor en la programación orientada a objetos.



2. ¿Con qué dificultades me encontré y cómo las abordé?

Identificar de primeras el constructor en los ejercicios pero teniendo ya el concepto fue mas facil 



3. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?


Si, me falta responder la 2da pregunta del ejercicio 5 




4. ¿Qué he aprendido o reforzado en esta micro-sesión?

Reforce la funcion del constructor de una forma mas practica



#### Micro-sesión 3 (25 minutos)

**Trabajo en concentración**

**Meta-aprendizaje:**

1. ¿Qué he logrado en esta micro-sesión de trabajo?


En esta micro sesion trabaje en la 2da pregunta del ejercicio 5 que es:

Considerando lo que vienes analizando, define entonces qué es el constructor de una clase y para qué sirve.


El constructor de una clase es una función especial que se encarga de inicializar los objetos de esa clase. Su objetivo principal es asegurar que los objetos sean creados con un estado inicial válido y consistente.




algunos puntos importantes sobre los constructores de clase:

Inicialización de objetos: El constructor se utiliza para asignar valores iniciales a los atributos de un objeto cuando se crea una instancia de la clase.

Garantizar consistencia: El constructor asegura que los objetos sean creados en un estado válido y coherente, lo que ayuda a prevenir errores durante la ejecución del programa.

Configuración de recursos: En algunos casos, el constructor puede encargarse de configurar recursos necesarios para el funcionamiento del objeto, como la asignación de memoria dinámica o la apertura de archivos.

Nombre especial: En muchos lenguajes de programación orientados a objetos, como C++, Java y Python, los constructores tienen el mismo nombre que la clase y no tienen tipo de retorno explícito.

Llamado automático: En la mayoría de los casos, el constructor se invoca automáticamente cuando se crea un objeto de la clase, lo que garantiza que el objeto esté listo para su uso inmediato.


2. ¿Con qué dificultades me encontré y cómo las abordé?


Realmente no tuve dificultades


3. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?


Si estoy mas cerca, me falta trabajar en el ejercicio 6




4. ¿Qué he aprendido o reforzado en esta micro-sesión?

Reforce el funcionamiento del constructor


#### Micro-sesión 4. (25 minutos)

**Trabajo en concentración**

**Meta-aprendizaje:**

1. ¿Qué he logrado en esta micro-sesión de trabajo?


En esta micro sesion logre realizar el ejercicio 6 

En el ejemplo de encapsulamiento:

¿Cuál es el estado y el comportamiento?



en el ejemplo de encapsulamiento, consideremos una clase Shape que representa una forma geométrica básica. Esta clase tiene dos atributos de estado: las coordenadas x e y que representan la posición de la forma en un plano. Además, tiene algunas operaciones o métodos que definen su comportamiento, como mover la forma (moveBy) y obtener las coordenadas x e y (getX y getY).

la relación entre el estado y el comportamiento en este ejemplo:

Estado:

Coordenada X: Representa la posición horizontal de la forma.
Coordenada Y: Representa la posición vertical de la forma.


Comportamiento:

moveBy(dx, dy): Permite mover la forma en el plano por una cantidad específica en las direcciones horizontal y vertical.
getX(): Devuelve la coordenada X actual de la forma.
getY(): Devuelve la coordenada Y actual de la forma.


2. ¿Con qué dificultades me encontré y cómo las abordé?


No tuve dificultades



3. ¿Estoy más cerca de alcanzar el objetivo de la sesión? ¿Qué falta por hacer?


Si estoy mas cerca




4. ¿Qué he aprendido o reforzado en esta micro-sesión?


Como se representa los estados y comportamientos




**Cierre de sesión:**

5. ¿He alcanzado los objetivos planteados al inicio? Si no, ¿por qué y qué puedo mejorar?


Si, pude completar los ejercicios 5 y 6



6. ¿Cuáles fueron los desafíos más significativos de hoy y cómo los superé?


Realmente en esta sesion no tuve desafios grandes los que tuve los coloque en cada micro sesion



7. Basado en el trabajo de hoy, ¿qué insights importantes he ganado?


Gane saber la funcion y la representacion de los constructores



8. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

Debo seguir avanzando con la investigacion




## Semana 11

### Sesión 1

1. ¿Cuál será el propósito de la sesión de hoy?

El proposito de esta sesion es realizar el ejercicio 7  que es :

Ahora te pediré que implementes el ejemplo de encapsulamiento (el que está en C) en C#.


```C#
using System;

// Definición de la clase Shape
public class Shape
{
    // Atributos privados para encapsular el estado
    private int x;
    private int y;

    // Constructor de la clase Shape
    public Shape(int x, int y)
    {
        this.x = x;
        this.y = y;
    }

    // Método para mover la forma
    public void MoveBy(int dx, int dy)
    {
        x += dx;
        y += dy;
    }

    // Métodos para obtener las coordenadas x e y
    public int GetX()
    {
        return x;
    }

    public int GetY()
    {
        return y;
    }
}

class Program
{
    static void Main(string[] args)
    {
        // Crear un objeto de la clase Shape
        Shape miForma = new Shape(10, 20);

        // Mostrar las coordenadas iniciales
        Console.WriteLine("Coordenadas iniciales:");
        Console.WriteLine("X: " + miForma.GetX());
        Console.WriteLine("Y: " + miForma.GetY());

        // Mover la forma y mostrar las nuevas coordenadas
        miForma.MoveBy(5, 5);
        Console.WriteLine("\nCoordenadas después de mover:");
        Console.WriteLine("X: " + miForma.GetX());
        Console.WriteLine("Y: " + miForma.GetY());
    }
}
```

Las principales diferencias entre C# y C son las siguientes:

Sintaxis: La sintaxis en C# es bastante diferente de la de C. Por ejemplo, en C# usamos class para definir una clase en lugar de struct o typedef struct en C. Además, en C# usamos public y private para especificar la visibilidad de miembros de clase en lugar de trabajar con punteros como en C.

Gestión de memoria: En C, la gestión de memoria es manual y debemos ocuparnos explícitamente de la asignación y liberación de memoria. En C#, el recolector de basura se encarga de liberar la memoria no utilizada automáticamente, lo que simplifica la gestión de la memoria para el desarrollador.

rientación a objetos: C# es un lenguaje de programación orientado a objetos puro, mientras que C es un lenguaje procedural con capacidades limitadas de orientación a objetos. En C#, las clases y objetos son conceptos fundamentales y todo está diseñado alrededor de la programación orientada a objetos.

Características adicionales: C# tiene muchas características adicionales que no están presentes en C, como la herencia, la polimorfismo, los eventos, las propiedades, entre otras. Estas características hacen que el desarrollo en C# sea más fácil y flexible en comparación con C.

mientras que el código en C y C# puede lograr resultados similares, difieren en la sintaxis, la gestión de memoria, las capacidades de orientación a objetos y las características adicionales del lenguaje. C# proporciona un entorno más robusto y orientado a objetos, mientras que C ofrece un control más directo sobre la gestión de memoria y un estilo de programación más procedural.





 
2. ¿Cuáles fueron los desafíos más significativos de la sesión y cómo los superé?


En esta sesion lo mas desafiante claramente era pasar el codigo a c# pero no fue tan dificil ya que venimos manejando c# hace tiempo y tambien me apoye de chat gpt


> Escribe aquí

3. Basado en el trabajo de la sesión, ¿Qué aprendí o qué conclusión saco o cuál es la síntesis?

de esta sesion conclui que si bien en c# claramente es mucho mas facil por su automatizacion por decirlo de una forma, tambien es necesario tener claro el lenguaje C ya que nos ayuda a comprender mejor los sistemas computacionales.


4. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

Para continuar avanzando debo seguir con las investigacion hasta finalizarla por completo



### Sesión 2

1. ¿Cuál será el propósito de la sesión de hoy?

El proposito de esta sesion es realizar la actividad 8 la cual es hacer el diagrama de clases que es el siguiente

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/ab06c5c9-0d92-4652-ad45-ea507feb7411)

En este diagrama:

Shape es la clase que representa una forma geométrica básica, con sus atributos privados x e y y métodos públicos para mover la forma y obtener las coordenadas.
Program es la clase que contiene el método Main, que es el punto de entrada del programa.

 
2. ¿Cuáles fueron los desafíos más significativos de la sesión y cómo los superé?

El desafio que realmente no lo senti asi fue hacer el diagrama de clases ya que las clases estaban en el codigo

3. Basado en el trabajo de la sesión, ¿Qué aprendí o qué conclusión saco o cuál es la síntesis?

Realmente de esta sesion no saque algun conclusion ya que solo fue hacer el diagrama de clases

4. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

Terminar de completar las actividades que me hacen falta.

### Sesión 3

1. ¿Cuál será el propósito de la sesión de hoy?

El proposito de esta sesion autonoma fue trabajar en el ejercicio 9 que se trata del concepto de herencia por lo tanto respondi las 5 preguntas que se encuentran en este ejercicio :

¿Cómo se vería en memoria un objeto de la clase Shape?

La clase shape contiene dos campos de tipo int16_t para representar las coordenadas x y y para entender como se veria en memoria un objeto de esta clase se necesita tener en cuenta el tamaño de bytes asumiendo que ocupa 2 bytes de memoria shape contendría dos campos int16_t, uno para x y otro para y. Suponiendo que la alineación de la estructura es la predeterminada , el objeto Shape ocuparía en total 4 bytes en memoria (2 bytes para x + 2 bytes para y).

¿Cómo se vería en memoria un objeto de la clase Rectangle?

Dado que Rectangle es una estructura que contiene una instancia de Shape como primer campo y luego agrega dos campos más (width y height), la disposición en memoria sería consecutiva, primero los campos de Shape y luego los campos específicos de Rectangle.

Suponiendo que un int16_t ocupa 2 bytes en memoria y que la alineación de la estructura es la predeterminada, la disposición en memoria de un objeto Rectangle sería la siguiente:


Los primeros dos bytes (Byte 0 y Byte 1) corresponden al campo x de Shape.
Los siguientes dos bytes (Byte 2 y Byte 3) corresponden al campo y de Shape.
Los siguientes dos bytes (Byte 4 y Byte 5) corresponden al campo width de Rectangle.
Los últimos dos bytes (Byte 6 y Byte 7) corresponden al campo height de Rectangle.



¿Qué relación ves entre los dos objetos en términos de cómo se ven en memoria?


La relación entre los objetos de las clases Shape y Rectangle en términos de cómo se ven en memoria es que un objeto de la clase Rectangle incluye internamente un objeto de la clase Shape como su primer campo.

Esto se debe a que la estructura Rectangle contiene una instancia de Shape como su primer campo. Por lo tanto, cuando se crea un objeto de la clase Rectangle, el espacio de memoria para el objeto Shape también se reserva dentro de la memoria asignada para el objeto Rectangle. Esto significa que los campos x y y de Shape forman parte del objeto Rectangle en la memoria, seguidos por los campos adicionales específicos de Rectangle (width y height).


Cuando decimos que un Rectangle también es un Shape ¿Tiene sentido?

un Rectangle puede ser considerado un tipo de Shape debido a que hereda todas las características y comportamientos de la clase base Shape

En la mayoría de los casos, esta afirmación tiene sentido. Sin embargo, hay que tener en cuenta que no siempre es estrictamente cierto en todos los aspectos. Por ejemplo, un Rectangle tiene propiedades y comportamientos adicionales (ancho y alto) que no están presentes en todas las formas geométricas representadas por Shape. Esto significa que aunque un Rectangle comparte las propiedades de posición (x e y) con un Shape, también tiene características únicas que lo distinguen de otras formas.


 
2. ¿Cuáles fueron los desafíos más significativos de la sesión y cómo los superé?

Realmente no tuve algun desafio dificil ya que lo que no entendia le pedia la explicacion a chat gpt

3. Basado en el trabajo de la sesión, ¿Qué aprendí o qué conclusión saco o cuál es la síntesis?

De esta sesion saco de conclusion que las clases que heredan de otras siempre contienen la informacion que heredan en la memoria 

4. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

seguir investigando y finalizar los ejercicios propuestos 


## Semana 12

### Sesión 1

1. ¿Cuál será el propósito de la sesión de hoy?

El proposito de esta sesion es realizar el ejercicio 10 del documento guia que se trata de realizar el codigo anterior en c# y hacer una comparacion, el codigo en c# quedaria asi:

```C#
/*****************************************************
* Class Shape
******************************************************/
public class Shape
{
    public short x;
    public short y;
}

/*****************************************************
* Class Rectangle
******************************************************/
public class Rectangle : Shape
{
    public ushort width;
    public ushort height;
}
```

En C#, la estructura struct se traduce directamente a una clase. Los miembros x y y de Shape se traducen como campos públicos en la clase Shape. La clase Rectangle hereda de Shape, lo que se traduce utilizando la herencia de clases en C#. Los tipos int16_t y uint16_t se traducen a short y ushort respectivamente en C# porque el estándar C# no proporciona tipos específicos como int16_t o uint16_t, sino que utiliza short y ushort para representar valores de 16 bits con signo y sin signo respectivamente. Esto simplifica la interoperabilidad entre diferentes plataformas y hace que el código sea más portable y fácil de entender.







 
2. ¿Cuáles fueron los desafíos más significativos de la sesión y cómo los superé?


No tuve desafios significativos ya que todo fue investigacion



3. Basado en el trabajo de la sesión, ¿Qué aprendí o qué conclusión saco o cuál es la síntesis?


De esra sesion aprendi con la comparacion entre C y C# que si bien tienen una logica muy similar tienen diferencias en los datos, en C se usa int16_t y uint16_t, mientras que en C# se usan short y ushort, otra diferencia es que en C# se utilizan palabras clave como public y private para especificar la visibilidad de los miembros de una clase, mientras que en C se utilizan los modificadores public, private, protected, entre otros.



4. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

Seguir realizando los ejercicios 


### Sesión 2

1. ¿Cuál será el propósito de la sesión de hoy?

El proposito de esta sesion sera realizar el ejercicio 11 que se trata de hacer el diagrama de clases del ejercicio anterior, el diagrama de clases seria:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/91b31757-95dd-4c97-a690-46c5afe66043)


En este diagrama:

Shape es la clase base que tiene dos campos x y y.
Rectangle es la clase derivada de Shape, que hereda los campos x y y y añade dos campos adicionales width y height.
La flecha indica la relación de herencia, donde Rectangle hereda de Shape.


 
2. ¿Cuáles fueron los desafíos más significativos de la sesión y cómo los superé?


desde la parte de dificultad no tuve ningun desafio ya que se trataba de un diagrama de clase de tan solo 2 clases 




3. Basado en el trabajo de la sesión, ¿Qué aprendí o qué conclusión saco o cuál es la síntesis?


En esta sesion reforce el diagrama de clase de herencia 




4. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?


Los pasos a seguir son terminar los ejercicios que me faltan lo cual tratare de hacerlo en la sesion 3 para ya en la semana 13 dedicarme al refactoring 



### Sesión 3

1. ¿Cuál será el propósito de la sesión de hoy?

En esta sesion autonoma me propuse a realizar el ejercicio 12 que se trtata de polimorfismo, por lo que empece leyendo el concepto proporcionado por el profesor en el documento pero este no me quedo del todo claro por lo que le pedi a chatgpt que realizara un ejemplo a partir de ese concepto y me dio el siguiente:

```c#
#include <stdio.h>

// Definición de la estructura Animal
typedef struct {
    void (*hacerSonido)();
} Animal;

// Función para que un Perro haga sonido
void perroHacerSonido() {
    printf("¡Guau! (sonido de perro)\n");
}

// Función para que un Gato haga sonido
void gatoHacerSonido() {
    printf("¡Miau! (sonido de gato)\n");
}

// Función para que una Vaca haga sonido
void vacaHacerSonido() {
    printf("¡Muu! (sonido de vaca)\n");
}

// Función que hace que cualquier animal haga sonido
void hacerRuidoDeAnimal(Animal *animal) {
    // Llama al puntero a función para hacer sonido del animal
    animal->hacerSonido();
}

int main() {
    // Definir instancias de diferentes animales
    Animal perro = {perroHacerSonido};
    Animal gato = {gatoHacerSonido};
    Animal vaca = {vacaHacerSonido};

    // Llamar a la función hacerRuidoDeAnimal con diferentes animales
    hacerRuidoDeAnimal(&perro); // Salida: ¡Guau! (sonido de perro)
    hacerRuidoDeAnimal(&gato);  // Salida: ¡Miau! (sonido de gato)
    hacerRuidoDeAnimal(&vaca);  // Salida: ¡Muu! (sonido de vaca)

    return 0;
}
```


En este código, esta definida una estructura Animal que contiene un puntero a una función hacerSonido(). Luego, se definen funciones para hacer sonidos específicos para diferentes tipos de animales (perroHacerSonido(), gatoHacerSonido(), vacaHacerSonido()). Finalmente, tenemos una función hacerRuidoDeAnimal() que acepta un puntero a una estructura Animal y llama a la función correspondiente para hacer sonido, a partir de este ejemplo entendi mejor el concepto 









 
2. ¿Cuáles fueron los desafíos más significativos de la sesión y cómo los superé?


Realmento no tuve un desafio significativo ya que esta sesion se trato sobre repasar el concepto de polimorfismo 



3. Basado en el trabajo de la sesión, ¿Qué aprendí o qué conclusión saco o cuál es la síntesis?


En esta sesion saque como conclusion que apartir del polimorfismo se puede hacer en el refactoring que desde un primer puntero llamado powerup se puedan desglosar disntintos powerups



4. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

Los pasoa a seguir es ver si necesito hacer otro ejercicio para reforzar los conocimientos y si no es asi utilizar la siguiente semana para aplicar.


## Semana 13

### Sesión 1

1. ¿Cuál será el propósito de la sesión de hoy?

> Escribe aquí
 
2. ¿Cuáles fueron los desafíos más significativos de la sesión y cómo los superé?

> Escribe aquí

3. Basado en el trabajo de la sesión, ¿Qué aprendí o qué conclusión saco o cuál es la síntesis?

> Escribe aquí

4. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

> Escribe aquí

### Sesión 2

1. ¿Cuál será el propósito de la sesión de hoy?

> Escribe aquí
 
2. ¿Cuáles fueron los desafíos más significativos de la sesión y cómo los superé?

> Escribe aquí

3. Basado en el trabajo de la sesión, ¿Qué aprendí o qué conclusión saco o cuál es la síntesis?

> Escribe aquí

4. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

> Escribe aquí

### Sesión 3

1. ¿Cuál será el propósito de la sesión de hoy?

> Escribe aquí
 
2. ¿Cuáles fueron los desafíos más significativos de la sesión y cómo los superé?

> Escribe aquí

3. Basado en el trabajo de la sesión, ¿Qué aprendí o qué conclusión saco o cuál es la síntesis?

> Escribe aquí

4. ¿Cuáles son los pasos siguientes para continuar avanzando en el proyecto?

> Escribe aquí
