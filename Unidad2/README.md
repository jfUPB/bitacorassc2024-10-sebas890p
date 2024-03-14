# Bitácora de aprendizaje


## Semana 6

### Sesión 1 lunes febrero 26

#### Micro-sesión 1: apertura.

En la apertura el profesor nos hizo una introduccion a la unidad 2, donde estaremos trabajando en el lenguaje de C y esta unidad tendra un agregado en las bitacoras que se llamara etapa donde estaremos testeando cada parte del codigo y luego la integracion completa. 


#### Micro-sesión 2:

Estuvimos revisando los requisitos del reto final junto al profesor, el principal requisito y el mas importante es hacer el proceso de testeo y funcionamiento de cada etapa del reto, para evidenciar ese proceso hay que tener minimo 1 commits por etapa, la idea es ir investigando y a la vez aplicandolo.

#### Micro-sesión 3:

la explicacion del profesor sobre la unidad duro toda la micro sesion anterior que fue la 2, por lo que en esta me dedicare a ver y analizar los recursos guias, el recurso que me parecio mas interesante para aprender es el que esta construido por el profesor, es el mas completo y facil de aprender, estuve viendo tambien la pagina oficial de SDL pero no la entendi bien porque lo envia a repositorios con la informacion en github y ya en casa con calma estare viendo los videos de Udemy. 

#### Micro-sesión 4: cierre. 

Como conclusion de esta unidad debo investigar bastante ya que hay muchos conceptos que se deben aprender, ademas que el lenguaje de C es nuevo para mi, lo conocia pero nunca le he dado un repaso, por lo que debo estar atento y investigar bastante.  


### Sesión 2 miercoles febrero 28

#### Micro-sesión 1: apertura.

En esta sesion la idea es guiarme de la guia de inicio que monto el profesor en la documentacion del curso GUIA DE INICIO CON SDL2, la idea es que a medida que inicio el SDL2A vaya aprendiendo sobre su funcionamiento 
por lo que no pude asistir a la clase en la que explico todo esto.

#### Micro-sesión 2:

Empezare por programa en C, estaba realizando los pasos solo pero no entendi la parte de crear el archivo en la carpeta source por temas de traduccion de VS por lo que le pedi ayuda al profesor y el me eayudo en varios cosas, pude entender ya como agregara el archivo para el codigo el cual es en el mismo programa de VS en la siguiente sesion 

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/48a52cbf-c7b5-4931-9c84-540c280db0af)

Luego me explico lo del breakpoint y me parece una funcion interesante para no cargar el programa completo para copilar si no tan solo copilar lo que quiero comprobar si esta correcto 



#### Micro-sesión 3:

El profesor estuvo explicandome como descargar y usar las bibliotecas de SDL2, al momento de ya descargarla y comprobar que este funcionando bien el profesor me explico como usar esta biblioteca.

Estas hay que declararlas y definirlas, primero en los archivos de inclusion

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/9ae4c814-89e7-4d1e-a7c3-d294fdd1a56a)

luego en el vinculador en general y en etrada 

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/5d794903-1233-4a99-b05b-62220d16bad5)

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/a96c2dfa-bcc5-496b-a0f3-7488b9b9e943)

Luego de declararlas y definir las bibliotecas hice la prueba con un codigo que utiliza estas bibliotecas y al momento de copilar el codigo me arroja que todo esta bien

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/197a04f4-c83e-4081-a4cc-8ee21284425b)



#### Micro-sesión 4: cierre. 

Como conclusion me doy cuenta que este lenguaje de C es mas complicado por el tema de tener que declarar las bibliotecas, por lo tanto debo tener muy en cuenta esto.


### Sesión 3 jueves febrero 29


#### Micro-sesión 1: apertura.

En esta sesion autonoma planeo realizar los pasos que segui en el salon pero ahora desde mi computador y a la vez comenzar con la parte de pintar la ventana. 

#### Micro-sesión 2:

Empece instalando la extension de C 
![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/94f3fa94-6203-41cd-a9a0-8cf7b290409c)

mientras se instala la extencio segui instalando la biblioteca de SDL2, luego que ya instale todo prosegui creando el archivo main.c.

luego de unos errores por olvidar el paso de añadir SDL2.dll a la carpeta del proyecto ya pude dejar todo funcionando correctamente, esto lo verifique al poder copilar la ventana

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/258313f7-827d-450b-9746-8af7924f191b)



#### Micro-sesión 3:


En esta micro sesion estuve mirando la actividad 5 de pintar una ventana, para entender un poco mejor me ayude de chatgpt para que me explicara el codigo


![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/1b74a0ed-5a4a-4e90-b210-9d1a65611ead)



#### Micro-sesión 4:

Luego de leer lo que me explico chatgpt prosegui a reponder la pregunta planteada por el profesor que es la siguiente: 
Te pregunto antes de seguir. ¿Por qué se necesita que sea una varibale global? Hay otra manera de preguntarle a showSelectedRederer de cuál redenderer queremos tener información?

Yo pensaria que no es necesario ya que al ser global la variable debe procesar mas datos de los devidos, cuando se le puede especificar el render que debe seleccionar. 

le puse esta misma pregunta a chatgpt y contesto que, Una manera de mejorar el diseño sería pasar el renderer como un parámetro a la función showSelectedRenderer. Esto permite una mejor modularidad y evita depender de variables globales, lo que puede causar problemas en programas más grandes y complejos.

y me puso un codigo actualizado para que acepte el renderer como un parámetro, el codigo es el siguiente:


```c
#include <stdio.h>
#include <SDL.h>
#include <SDL_render.h>

#define TRUE 1
#define FALSE 0
#define WINDOW_WIDTH 800
#define WINDOW_HEIGHT 600

void showRenderDriversInfo(void);
void showSelectedRenderer(SDL_Renderer* renderer);
int init_window(SDL_Renderer** renderer);

int main() {
    SDL_Window* window = NULL;
    SDL_Renderer* renderer = NULL;

    if (init_window(&renderer) == FALSE) {
        printf("Error al inicializar la ventana.\n");
        return 1;
    }

    // Aquí iría el código de renderizado y manejo de eventos

    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
    return 0;
}

void showRenderDriversInfo(void) {
    int numRenderDrivers = SDL_GetNumRenderDrivers();
    printf("Número de drivers de renderizado disponibles: %d\n", numRenderDrivers);

    for (int i = 0; i < numRenderDrivers; i++) {
        SDL_RendererInfo info;
        if (SDL_GetRenderDriverInfo(i, &info) == 0) {
            printf("Driver %d: %s\n", i, info.name);
        }
    }
}

void showSelectedRenderer(SDL_Renderer* renderer) {
    SDL_RendererInfo rendererInfo;
    if (SDL_GetRendererInfo(renderer, &rendererInfo) == 0) {
        printf("Driver de renderizado seleccionado: %s\n", rendererInfo.name);
    }
    else {
        printf("Error al obtener la información del renderizador: %s\n", SDL_GetError());
    }
}

int init_window(SDL_Renderer** renderer) {
    if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
        printf("Error SDL_Init\n");
        return FALSE;
    }

    showRenderDriversInfo();

    SDL_Window* window = SDL_CreateWindow(
        "My first Window",
        SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED,
        WINDOW_WIDTH,
        WINDOW_HEIGHT,
        SDL_WINDOW_SHOWN);
    if (window == NULL) {
        printf("Error SDL_CreateWindow\n");
        return FALSE;
    }

    *renderer = SDL_CreateRenderer(window, -1, 0);
    if (*renderer == NULL) {
        printf("Error SDL_CreateRenderer\n");
        return FALSE;
    }

    showSelectedRenderer(*renderer);

    return TRUE;
}
```


#### Micro-sesión 5: cierre. 

Despues de terminar esta sesion autonoma aprendi cuales son las funciones que puedo usar para pintar un ventada y como puedo hacerlo de una forma mas eficiente. 


## Semana 7

### Sesión 1 lunes marzo 4


#### Micro-sesión 1: apertura.

En esta sesion tengo planeado trabajar en la actividad 6 llamada el concepto de gameloop. 


#### Micro-sesión 2:

Para empezar la sesion me parecio adecuado leer el siguiente link proporcionado por el profesor:

https://gameprogrammingpatterns.com/game-loop.html

para que la lectrura y los conceptos se me queden mas facil con la ayuda de chatgpt realice un resumen de todos los conceptos dados en el link 


Motivación:

El artículo comienza resaltando la importancia del bucle de juego como un patrón fundamental en la programación de videojuegos. Se destaca que la mayoría de los juegos cuentan con un bucle de juego único y que este patrón es poco común fuera del ámbito de los juegos.

Para ilustrar la utilidad de los bucles de juego, el artículo hace una breve comparación con los programas en modo por lotes de la era temprana de la programación informática, donde el código se ejecutaba una vez y luego se detenía. Se menciona que, aunque este enfoque todavía se usa en algunos casos, como scripts de shell o programas de línea de comandos, la mayoría de los programas modernos, incluidos los juegos, utilizan bucles de juego para mantener la interactividad continua y la actualización constante del estado del juego.


Bucles de eventos:


El artículo explora la estructura de los bucles de eventos en las aplicaciones de interfaz gráfica de usuario (GUI), comparándolos con los bucles de juego en los videojuegos. Describe cómo las aplicaciones de GUI esperan eventos de entrada del usuario, como clics del mouse o pulsaciones de teclas, para llevar a cabo acciones en respuesta a ellos.

Se destaca que, a diferencia de la mayoría de los programas que esperan pasivamente la entrada del usuario, los juegos continúan su ejecución incluso cuando no se proporciona información. Se menciona que los juegos siguen animando y procesando eventos incluso si el usuario no interactúa activamente con ellos.

Se introduce la noción de eventos "inactivos" en los bucles de eventos, que permiten que el programa realice acciones de forma intermitente sin la intervención del usuario. Sin embargo, se señala que esto es insuficiente para los juegos, que requieren un enfoque más dinámico y continuo.

Finalmente, se presenta la estructura básica de un bucle de juego, que consta de tres partes principales: procesar la entrada del usuario, actualizar el estado del juego y renderizar la salida visual. Estas partes se ejecutan en un ciclo continuo para mantener la interactividad y la actualización constante del juego, independientemente de la entrada del usuario.




Un mundo fuera del tiempo:


El artículo explora la noción de tiempo en el contexto del bucle de juego, destacando cómo el avance del tiempo en el juego está separado del tiempo real del jugador. Se introduce la idea de que cada iteración del bucle de juego avanza el estado del juego, y se utilizan términos comunes como "tick" y "frame" para describir estas unidades de tiempo.

Se discute cómo la velocidad a la que se repite el ciclo del juego determina los cuadros por segundo (FPS) del juego, lo que afecta la fluidez y la rapidez del juego. Se menciona que un ciclo de juego rápido produce un alto FPS y un juego fluido, mientras que un ciclo de juego lento puede resultar en una experiencia similar a una película stop motion.

Se señala que la velocidad de fotogramas está determinada por dos factores principales: la cantidad de trabajo que se realiza en cada cuadro y la velocidad de la plataforma subyacente. Los procesos complejos, como la física del juego y los gráficos detallados, pueden ralentizar la velocidad de fotogramas, al igual que la potencia de procesamiento del hardware subyacente y otros componentes del sistema.



Segundos por segundo:


El artículo aborda el desafío de mantener la velocidad del juego constante a pesar de las diferencias en el hardware subyacente. En los primeros videojuegos, este problema se mitigaba debido a que los juegos se desarrollaban específicamente para una plataforma de hardware particular, como la NES o la Apple IIe. Los desarrolladores podían ajustar el código del juego para ejecutarse de manera óptima en ese hardware específico.

Sin embargo, en la actualidad, los desarrolladores enfrentan el desafío de crear juegos que se ejecuten de manera consistente en una variedad de dispositivos con diferentes capacidades de hardware. Esta adaptación inteligente se convierte en una función clave del bucle de juego, que permite que el juego se ejecute a una velocidad constante independientemente de las diferencias en el hardware subyacente.






#### Micro-sesión 3:

El patrón:
Un bucle de juego se ejecuta continuamente durante el juego. En cada vuelta del bucle, procesa la entrada del usuario sin bloquear, actualiza el estado del juego y lo representa . Sigue el paso del tiempo para controlar el ritmo del juego .

Como usar el patron:

Esta sección del artículo advierte sobre el uso excesivo de patrones de diseño y enfatiza que el objetivo no es simplemente incorporar la mayor cantidad posible de patrones en el código base. Se destaca que el uso incorrecto de un patrón puede ser peor que no usar ninguno.

Sin embargo, se menciona que el patrón de bucle de juego es una excepción a esta regla. Se señala que este patrón es fundamental en el desarrollo de videojuegos y que es muy probable que se utilice en la mayoría de los proyectos de desarrollo de juegos. Incluso si estás utilizando un motor de juego preexistente, este patrón estará presente en el núcleo del sistema.

Se ejemplifica cómo incluso en juegos por turnos, donde el estado del juego no avanza hasta que el jugador toma su turno, los aspectos visuales y auditivos del juego continúan funcionando. Esto subraya la importancia del bucle de juego para mantener la interactividad y la inmersión del jugador, incluso en juegos con mecánicas de juego menos intensivas en tiempo real.







#### Micro-sesión 4: cierre. 

Tomar esta sesion para hacer un resumen de conceptos complicados o dificiles de entender me puede ayudar en futuro para implementarlos y entenderlos mas facil. 




### Sesión 2 miercoles marzo 6

#### Micro-sesión 1: apertura.

En esta sesion  me dedicare a analizar el codigo que contiene el gameloop que esta propuesto por el profesor, esto mismo lo hicieron ya en clase pero no pude asistir a la clase en que analizaron este codigo
el codigo es el siguiente:

```C
#include <stdio.h>
#include <SDL.h>

#define TRUE 1
#define FALSE 0
#define WINDOW_WIDTH 800
#define WINDOW_HEIGHT 600

SDL_Window* window = NULL;
SDL_Renderer *renderer = NULL;
int gameRunning = FALSE;

void showRenderDriversInfo(void) {
  int numRenderDrivers = SDL_GetNumRenderDrivers();
  printf("Número de drivers de renderizado disponibles: %d\n", numRenderDrivers);

  for (int i = 0; i < numRenderDrivers; i++) {
    SDL_RendererInfo info;
    if (SDL_GetRenderDriverInfo(i, &info) == 0) {
      printf("Driver %d: %s\n", i, info.name);
    }
  }
}

void showSelectedRederer(void) {
  // Asumiendo que tienes un SDL_Renderer* llamado renderer que ya fue creado

  SDL_RendererInfo rendererInfo;
  if (SDL_GetRendererInfo(renderer, &rendererInfo) == 0) {
    printf("Driver de renderizado seleccionado: %s\n", rendererInfo.name);
  }
  else {
    printf("Error al obtener la información del renderizador: %s\n", SDL_GetError());
  }

}


int init_window(void){

  if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
    printf("Error SDL_Init\n");
    return FALSE;
  }
  showRenderDriversInfo();

  window = SDL_CreateWindow(
    "My first Window",
    SDL_WINDOWPOS_CENTERED,
    SDL_WINDOWPOS_CENTERED,
    WINDOW_WIDTH,
    WINDOW_HEIGHT,
    SDL_WINDOW_SHOWN);
  if (window == NULL) {
    printf("Error SDL_CreateWindow\n");
    return FALSE;
  }

  renderer = SDL_CreateRenderer(window, -1, 0);
  if (renderer == NULL) {
    printf("Error SDL_CreateRenderer\n");
    return FALSE;
  }

  showSelectedRederer();

  return TRUE;
}

void process_input(void) {
  SDL_Event event;
  SDL_PollEvent(&event);

  switch (event.type) {
  case SDL_QUIT:
    gameRunning = FALSE;
    break;
  case SDL_KEYDOWN:
    if (event.key.keysym.sym == SDLK_ESCAPE) {
      gameRunning = FALSE;
    }
    break;
  }
}

void update(void) {


}


void render(void) {

}

void setup(void) {
  gameRunning = init_window();
}

void clean() {
  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(window);
  SDL_Quit();
}

int main(int argc, char* argv[]) {
  setup();
  while (gameRunning) {
    // El concepto de gameloop para correr una aplicación
    // interactiva
    process_input(); // Leo las entradas
    update();        // calculo las físicas
    render();        // actualizo las salidas
  }
  clean();
  return 0;
}
```




#### Micro-sesión 2:

En esta microsesion definire los conceptos de las variables locales y globales

las variables locales:

Estas variables se deben declarar dentro de un bloque de codigo en particular como una funcion o un bloque condicional.
es aquella cuyo ámbito se restringe a la función que la ha declarado se dice entonces que la variable es local a esa función. Esto implica que esa variable sólo va a poder ser manipulada en dicha sección, y no se podrá hacer referencia fuera de dicha sección. Cualquier variable que se defina dentro de las llaves del cuerpo de una función se interpreta como una variable local a esa función.

Una variable local es una variable que se define dentro de una función y con la palabra var. Si no existe ningún var , se utiliza la variable global con el mismo nombre.
En el ejemplo siguiente, var c = 5; en la función local_var() es la variable local.

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/a6125587-bb08-41dc-9e6c-0da220ea47c1)

la informacion anterior es sacada de 
https://www.ibm.com/docs/es/product-master/12.0.0?topic=constructs-local-variables



Las variables globales: 

es aquella que se define fuera del cuerpo de cualquier función, normalmente al principio del programa, después de la definición de los archivos de biblioteca (#include), de la definición de constantes simbólicas y antes de cualquier función. El ámbito de una variable global son todas las funciones que componen el programa, cualquier función puede acceder a dichas variables para leer y escribir en ellas. Es decir, se puede hacer referencia a su dirección de memoria en cualquier parde del programa.

Una variable global es una variable definida en el script principal.

En el ejemplo siguiente, var c=10; en el script principal es una variable global.


![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/20bc0c1c-fdcf-430d-9326-a36bf2d3966c)


La informacion fue sacada de https://www.ibm.com/docs/es/product-master/12.0.0?topic=constructs-global-variables


#### Micro-sesión 3:

Uno de los temas importantes sobre el gameloop es:

Fases del Bucle de Juego:

Entrada (Input): Procesa la entrada del usuario, como teclas presionadas o clics del ratón.
Actualización (Update): Actualiza la lógica del juego, incluyendo movimiento, físicas y eventos del juego.
Renderizado (Render): Muestra la salida gráfica en la pantalla.
Consideraciones de Tiempo:

La sincronización del tiempo en el bucle de juego es crucial para garantizar un comportamiento consistente en diferentes sistemas. Se pueden utilizar técnicas como "delta time" para manejar variaciones en el rendimiento.
Evitar el Bloqueo (Avoid Blocking):

Es esencial evitar bloquear el bucle de juego, ya que esto podría conducir a una experiencia de juego lenta o irresponsiva. Se pueden implementar soluciones como el uso de subprocesos (threads) para evitar bloqueos.
Control de Velocidad (Frame Rate Independence):

La implementación del bucle de juego debe ser independiente de la velocidad de fotogramas (frame rate) para garantizar que el juego se comporte de manera consistente, independientemente del rendimiento del hardware.
Optimización y Mantenimiento:

Se mencionan estrategias para optimizar el bucle de juego y consideraciones para el mantenimiento a largo plazo, como separar la lógica del juego del código específico de la plataforma.




#### Micro-sesión 4: cierre

Esta sesion fue realizada en clase guiada por el profesor como comente en la apertura de la misma, no pude asistir a esta clase sin embargo con la ayuda de compañeros me comentaron lo que se hizo y trabaje esta sesion sobre eso para asi ponerme al dia, realice correctamente lo propuesto para esta sesion y me ayudo a tener mas claro conceptos del gameloop. 




### Sesión 3 jueves marzo 7


#### Micro-sesión 1: apertura.

Para esta seion tengo planeado empezar a hacer experimento con la ventana hecha en el gameloop que fue en la sesion anterior. 




#### Micro-sesión 2:

Empece esta micro sesion revisando la actividad 7 de la guia de SDL2 que se trata de pintar un rectangulo en la ventana, para esto el profesor nos proporciono el siguiente fragmento de codigo:

```C
void render(void) {
  SDL_Rect rect;
  rect.x = 250; // Posición x del rectángulo
  rect.y = 150; // Posición y del rectángulo
  rect.w = 200; // Ancho del rectángulo
  rect.h = 100; // Alto del rectángulo

  // Limpia el "lienzo" en este frame (?)
  SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255); // Color de fondo: negro
  SDL_RenderClear(renderer);

  // Dibuja el rectángulo, pero aún no lo muestra
  SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255); // Color del rectángulo: rojo
  SDL_RenderFillRect(renderer, &rect);

  // Actualiza el lienzo
  SDL_RenderPresent(renderer);
}
```
El cual funciona actualiandolo en el void render del codigo anterior del gameloop, con este codigo obtenemos lo siguiente:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/d9885889-956e-43a8-a32f-4a444a31829d)

A partir de esto pienso hacer un rectangulo mas pequeño y posicionarlo como si fuera una raqueta del pin pon


Luego de estar experimentando con el ancho alto y las posiciones ubique el rectangulo de la siguiente manera:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/58b691e0-f564-4d40-a1bd-b3f27820a81b)

De esta manera ya se parece a una raqueta del juego de pin pon.


#### Micro-sesión 3:

En esta micro sesion estuve experimenta para crear otra raqueta pero esta vez en la parte de abajo para que fuera la raqueta rival, al comienzo estaba teniendo errores porque solo duplique el codigo y le cambie la variable a rect2, el error que tenia era que las dos raquetas parpadeaban todo el tiempo, pero lo solucione quitando la siguiente linea de codigo 

```
  SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255); // Color de fondo: negro
  SDL_RenderClear(renderer);
```

el otro cambio que hice es que a la raqueta de abajo le cambie el color para que se identificara una de cada equipo y el codigo del void render me quedo asi:

```c
void render(void) {
    SDL_Rect rect;
    rect.x = 150; // Posición x del rectángulo
    rect.y = 0; // Posición y del rectángulo
    rect.w = 100; // Ancho del rectángulo
    rect.h = 20; // Alto del rectángulo

    
    // Dibuja el rectángulo, pero aún no lo muestra
    SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255); // Color del rectángulo: rojo
    SDL_RenderFillRect(renderer, &rect);

    // Actualiza el lienzo
    SDL_RenderPresent(renderer);



    SDL_Rect rect2;
    rect2.x = 500; // Posición x del rectángulo
    rect2.y = 580; // Posición y del rectángulo
    rect2.w = 100; // Ancho del rectángulo
    rect2.h = 20; // Alto del rectángulo

   

    // Dibuja el rectángulo, pero aún no lo muestra
    SDL_SetRenderDrawColor(renderer, 200, 200, 400, 800); // Color del rectángulo: rojo
    SDL_RenderFillRect(renderer, &rect2);

    // Actualiza el lienzo
    SDL_RenderPresent(renderer);


}
```

y el resultado fue el siguiente:


![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/e502d5c1-cfaa-4724-99b7-1d4668ac232c)



#### Micro-sesión 4:

En esta microseion me dedique a la actividad 8 que se trata de ahora pintar el circulo que va a ser la pelota en el juego, al seguir los pasos el resultado es el siguiente:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/efc36612-85a4-474f-85b4-77a49d4cae88)

Ahora voy a experimentar para hacer la pelota mas pequeña, para cambior el tamaño de la pelota se debe cambiar el radio, cambie el radio a 10 y el resultado es este:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/b74c1dc2-bcb9-4ae3-b44a-0b86402fc399)




#### Micro-sesión 5: cierre

En esta sesion pude realizar todo lo que propuse en cada microseion, fue una sesion muy buena para avanzar en los conocimientos de como realizar el pin pon, pude adelantar bastante en la parte grafica.




## Semana 8


### Sesión 1 lunes marzo 11

#### Micro-sesión 1: apertura.


#### Micro-sesión 2:


#### Micro-sesión 3:


#### Micro-sesión 4: cierre. 



### Sesión 2 miercoles marzo 13

#### Micro-sesión 1: apertura.


#### Micro-sesión 2:

#### Micro-sesión 3:


#### Micro-sesión 4: cierre. 
