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



![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/82c18180-a811-4761-ac83-1612646940b5)



#### Micro-sesión 5: cierre

En esta sesion pude realizar todo lo que propuse en cada microseion, fue una sesion muy buena para avanzar en los conocimientos de como realizar el pin pon, pude adelantar bastante en la parte grafica.




## Semana 8


### Sesión 1 lunes marzo 11

#### Micro-sesión 1: apertura.

En esta sesion voy a seguir trabajando en la guia de SDL2 en especifico la idea es poder trabajar en la actividad 9 y 10 y realizarlas con exito 


#### Micro-sesión 2:

Empezando con la actividad 9 que se trata de pintar puntos en el lienzo realmente no la entiendo ya que incorpere la parte nueva en el codigo y al copilar mi ventana se sigue viendo igual no note ninguna diferencia, en el documento se detalla que para ver los puntos hay que hacer zoom pero no encuentro la forma de hacer el zoom por lo que investigare mas a fondo para que sirve la linea de codigo nueva preguntandole a chatgpt

la respuesta de chat gpt es la siguiente:

Estas líneas de código dibujan puntos en la ventana en las coordenadas especificadas. SDL_RenderDrawPoint() es una función de la biblioteca SDL que dibuja un solo punto en la ventana utilizando el color de dibujo actual.

El primer punto se dibuja en las coordenadas (WINDOW_WIDTH-1, 0). WINDOW_WIDTH-1 probablemente representa el borde derecho de la ventana (un píxel antes del borde), y 0 sería la coordenada y, por lo tanto, estaría en el borde superior de la ventana.

El segundo punto se dibuja en (WINDOW_WIDTH - 1, 2). Similar al primero, WINDOW_WIDTH - 1 representa el borde derecho de la ventana, y 2 probablemente está a una pequeña distancia desde la parte superior de la ventana.

Estas líneas podrían ser útiles para propósitos de depuración o para fines específicos de diseño de la interfaz de usuario, como marcar puntos específicos en la ventana.


Luego de leer la respuesta me acerca a la pantalla y me di cuenta que si estan los dos puntos ahi dibujados muy pequeños, por lo que hare experimentos para agrandarlos 

Con esta linea de codigo puedo agrandar y mover los puntos:

```C
int pointSize = 20;
int newX = 500;
int newY = 100;
// Dibujar un punto más grande
for (int i = -pointSize / 2; i <= pointSize / 2; i++) {
    for (int j = -pointSize / 2; j <= pointSize / 2; j++) {
        SDL_RenderDrawPoint(renderer, WINDOW_WIDTH - 1 + i, j);
        SDL_RenderDrawPoint(renderer, newX + i, newY + j);
    }
}
```
y el resultado es este:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/f25ca5ae-6940-4d30-bd60-26c2b02fb9b7)



#### Micro-sesión 3:

Siguiendo con lo que trabaje en la anterior microsesion pense en que esta actividad estaba enfocada para pintar la interfaz del juego con la puntuacion por lo que empece a hacer pruebas con chatgpt para pintar numeros y el codigo resultante es el siguiente:

```C
// Definir el tamaño del punto
int pointSize = 4;

// Coordenadas para dibujar el número "2" en la parte superior derecha
int x = WINDOW_WIDTH - 20; // Coordenada x
int y = 10; // Coordenada y

// Segmento superior
SDL_Rect segmentoSuperior = {x, y, pointSize * 5, pointSize};
// Segmento superior derecho
SDL_Rect segmentoSuperiorDerecho = {x + pointSize * 4, y + pointSize, pointSize, pointSize * 3};
// Segmento medio
SDL_Rect segmentoMedio = {x, y + pointSize * 2, pointSize * 5, pointSize};
// Segmento inferior izquierdo
SDL_Rect segmentoInferiorIzquierdo = {x, y + pointSize * 3, pointSize, pointSize * 3};
// Segmento inferior
SDL_Rect segmentoInferior = {x, y + pointSize * 6, pointSize * 5, pointSize};

// Dibujar el número "2"
SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255); // Color blanco
SDL_RenderFillRect(renderer, &segmentoSuperior);
SDL_RenderFillRect(renderer, &segmentoSuperiorDerecho);
SDL_RenderFillRect(renderer, &segmentoMedio);
SDL_RenderFillRect(renderer, &segmentoInferiorIzquierdo);
SDL_RenderFillRect(renderer, &segmentoInferior);
```

y el resultado en la ventana fue este:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/7bc2e6fb-71b9-4212-8027-c6d58cc9ff38)



#### Micro-sesión 4: cierre. 

En esta sesion me propuse la actividad 9 y 10 pero solo me quede realizando la 9 ya que me parecio muy interesante que a raiz de la ubicacion de los puntos se podian hacer otras cosas en la interfaz como el marcador por lo que me lleve toda la sesion en esto. 



### Sesión 2 miercoles marzo 13

#### Micro-sesión 1: apertura.

En esta sesion tengo planeado hacer la actividad 10 que no pude hacer en la anterior, esta se trata sobre un patron de diseño llamado double buffering, en esta sesion me dedicare a investigar y definir el concepto y responder las preguntas que estan propuestas por el profesor


#### Micro-sesión 2:


El doble bufer como se llama en español hace que una serie de operaciones secuenciales parezcan instantáneas o simultáneas.

un resumen sobre el link que nos proporciono el profesor que habla de doble bufer es el siguiente:

Introducción al parpadeo: El artículo comienza explicando el problema del parpadeo, que ocurre cuando se actualiza una porción de la pantalla mientras el usuario la está viendo, lo que resulta en una imagen intermitente o parpadeante.

Solución de un solo búfer: Se discute la solución inicial al parpadeo, que implica dibujar directamente en la pantalla. Sin embargo, este enfoque puede causar parpadeo debido a la forma en que el hardware de la pantalla funciona.

Introducción al doble búfer: Luego, se introduce el concepto de doble búfer, que implica utilizar dos áreas de memoria para renderizar imágenes. Mientras se muestra una imagen en la pantalla, la siguiente se renderiza en un búfer oculto.

Implementación de doble búfer: Se explica cómo implementar el doble búfer en un programa de gráficos o juego. Esto generalmente implica tener una estructura de datos para almacenar los píxeles de la imagen, renderizar en un búfer y luego intercambiar los búferes para mostrar la imagen en la pantalla.

Beneficios del doble búfer: El artículo discute los beneficios del doble búfer, que incluyen eliminar el parpadeo y mejorar la eficiencia del renderizado.

Estrategias de actualización: También se exploran estrategias adicionales para mejorar el rendimiento, como la actualización de solo las partes modificadas de la imagen.

Optimizaciones avanzadas: Por último, el artículo menciona algunas optimizaciones avanzadas que pueden mejorar aún más el rendimiento del doble búfer.


para tener mas claro este tema le pedi a chatgpt que me hiciera una explicacion del funcionamiento del doble bufer.

El doble búfer es una técnica utilizada en gráficos y animación para evitar el parpadeo y mejorar la eficiencia del renderizado en tiempo real. Funciona mediante la utilización de dos áreas de memoria, conocidas como búferes, para almacenar temporalmente la imagen que se va a mostrar en la pantalla.

Inicialización: Cuando se inicia el programa, se crean dos búferes de imagen en la memoria de la computadora. Cada búfer es esencialmente una cuadrícula de píxeles que representa la imagen que se mostrará en la pantalla.

Renderizado en el búfer oculto: El programa comienza renderizando la imagen en uno de los búferes, conocido como el búfer de "trabajo" o "oculto". Este búfer no es visible para el usuario en este momento.

Visualización del búfer visible: Mientras se renderiza la imagen en el búfer oculto, el contenido del otro búfer, conocido como el búfer de "presentación" o "visible", se muestra en la pantalla. Es esta imagen la que el usuario ve en el monitor.

Intercambio de búferes: Una vez que la imagen ha sido completamente renderizada en el búfer oculto, se intercambian los búferes. El búfer oculto ahora se convierte en el búfer visible, y viceversa. Este intercambio es instantáneo y ocurre en un solo paso de sincronización de la pantalla, lo que garantiza que no se vea un parpadeo en la pantalla.

Repetición del proceso: El proceso de renderizado y cambio de búferes continúa en un bucle mientras el programa se está ejecutando. Esto permite que la imagen se actualice en la pantalla de manera suave y sin parpadeo, ya que siempre se muestra una imagen completa y coherente al usuario.

En resumen, el doble búfer funciona creando dos áreas de memoria para almacenar temporalmente la imagen que se va a mostrar en la pantalla. Mientras se muestra una imagen en la pantalla, se renderiza la siguiente en un búfer oculto. Luego, se intercambian los búferes para mostrar la nueva imagen renderizada en la pantalla sin parpadeo ni artefactos visuales. Esto permite una experiencia visual suave y continua en aplicaciones gráficas y de animación en tiempo real.

En mis propias palabras entiendo el doble bufer como una empacadora de alimentos, mientras unos alimentos estan siendo empacados por otro lado los siguientes alimentos a empacar ya estan siendo preparados esto permite que todo sea mas fluido, intuyo que esto sirve para los fps del programa. 



#### Micro-sesión 3:


¿Qué pasa si quitas la función SDL_RenderPresent(renderer)?

Si quitas la función SDL_RenderPresent(renderer), el contenido que hayas dibujado en el búfer del renderizador (renderer) no se mostrará en la pantalla.

SDL_RenderPresent(renderer) es la función que actualiza el lienzo de la ventana con el contenido dibujado en el búfer del renderizador. Si no se llama a esta función, el contenido permanecerá en el búfer y no se mostrará en la ventana.

Por lo tanto, si quitas la función SDL_RenderPresent(renderer):

No verás los cambios realizados en la ventana.
El contenido dibujado en el búfer del renderizador permanecerá invisible para el usuario.


Mira de nuevo el enlace donde te explican en qué consiste el patrón double buffering. ¿Puedes explicar cómo se está aplicando en el código del render?


El enlace proporcionado ("https://gameprogrammingpatterns.com/double-buffer.html") describe el patrón de "Double Buffering" en el contexto de la programación de juegos y gráficos. En este patrón, se utilizan dos áreas de memoria para renderizar imágenes: un búfer de trabajo y un búfer de presentación. Esto ayuda a evitar el parpadeo y otros artefactos visuales al mostrar imágenes en la pantalla.

Ahora, veamos cómo se está aplicando el patrón de "Double Buffering" en el código de renderizado proporcionado:

```c
SDL_RenderDrawPoint(renderer, WINDOW_WIDTH-1, 0);
SDL_RenderDrawPoint(renderer, WINDOW_WIDTH - 1, 2);
SDL_RenderPresent(renderer);
```

En estas líneas de código:

1. Se están dibujando dos puntos en el búfer del renderizador (`renderer`). Estos puntos están en las coordenadas `(WINDOW_WIDTH-1, 0)` y `(WINDOW_WIDTH - 1, 2)`.
2. Luego, se llama a `SDL_RenderPresent(renderer)`. Esta función actualiza el lienzo de la ventana con el contenido dibujado en el búfer del renderizador y muestra los cambios en la pantalla.

En este caso, el patrón de "Double Buffering" se está aplicando de manera implícita a través del uso de la función `SDL_RenderPresent()`. Cuando se llama a esta función, se intercambian los búferes de trabajo y de presentación, lo que garantiza que el contenido dibujado en el búfer de trabajo se muestre en la pantalla sin parpadeo ni artefactos visuales.



#### Micro-sesión 4: cierre. 

Como conclusion de esta sesion, el doble bufer funciona para mantener una fluidez adecuada en el programa y que no tenga errores como por ejemplo de vibraciones o parpadeos en la interfaz por fallas en la actualizacion de los renders.



### Sesión 3 jueves marzo 14


#### Micro-sesión 1: apertura.

En sesion autonoma seguire en la guia de SDL2 especificamente en la actividad 11 de FPS.


#### Micro-sesión 2:

Comenzare esta micro sesion definiendo que son los fps:

Los FPS, o "fotogramas/cuadros por segundo", indican la cantidad de imágenes que se muestran en la pantalla durante un segundo. Cuanto más alto sea este número, más suave y realista será la experiencia de juego para el usuario.

Luego es profesor propone este analisis 

En términos muy simplistas, pero útiles para la discución, un frame sería una pasada por el loop. Entonces los frames por segundo serían cuántas veceses tu aplicación interactiva hace un loop completo por segundo. Si una aplicación interactiva se ejecuta a 60 fps ¿Cuánto tiempo transcurre entre frame y frame?

para saber el tiempo que trancurre entre cada frame debemos dividir la cantidad de fps por el tiempo, si el programa corre a 60fps quiere decir que por cada segundo hay 60 imagenes por lo tanto dividimos 1 entre 60:

1/60 = 0.0167 

por lo tanto entre cada frame transcurre 16.7 milisegundos. 



#### Micro-sesión 3:

El profesor pregunta sobre el funcionamiento del siguiente codigo 

```C

#include <stdio.h>
#include <SDL.h>

#define TRUE 1
#define FALSE 0
#define WINDOW_WIDTH 800
#define WINDOW_HEIGHT 600
#define FPS 30
#define FRAME_TARGET_TIME (1000/FPS)

SDL_Window* window = NULL;
SDL_Renderer *renderer = NULL;
int gameRunning = FALSE;

struct ball {
  float x;
  float y;
  float width;
  float height;
}ball;

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
  static int last_frame_time = 0;

//  while (!SDL_TICKS_PASSED(SDL_GetTicks(), last_frame_time + FRAME_TARGET_TIME));
  int time_to_wait = FRAME_TARGET_TIME - (SDL_GetTicks() - last_frame_time);
  if (time_to_wait > 0 && time_to_wait <= FRAME_TARGET_TIME) {
    SDL_Delay(time_to_wait);
  }

  float delta_time = (SDL_GetTicks() - last_frame_time) / 1000.0F;
  last_frame_time = SDL_GetTicks();

  ball.x += 20* delta_time;
  ball.y += 20* delta_time;

}

void DrawCircle(SDL_Renderer* renderer, int cx, int cy, int radius) {
  for (int y = -radius; y <= radius; y++) {
    for (int x = -radius; x <= radius; x++) {
      if (x * x + y * y <= radius * radius) {
        SDL_RenderDrawPoint(renderer, cx + x, cy + y);
      }
    }
  }
}

void render(void) {

  // Limpia el "lienzo" en este frame (?)
  SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255); // Color de fondo: negro
  SDL_RenderClear(renderer);

  // Dibuja el rectángulo, pero aún no lo muestra
  SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255); // Color del rectángulo: rojo
  SDL_Rect ball_rect;
  ball_rect.x = (int)ball.x; // Posición x del rectángulo
  ball_rect.y = (int)ball.y; // Posición y del rectángulo
  ball_rect.w = (int)ball.width; // Ancho del rectángulo
  ball_rect.h = (int)ball.height; // Alto del rectángulo
  SDL_RenderFillRect(renderer, &ball_rect);

  // Actualiza el lienzo
  SDL_RenderPresent(renderer);
}

void setup(void) {
  gameRunning = init_window();
  ball.x = 20;
  ball.y = 20;
  ball.width = 15;
  ball.height = 15;
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

su funcionamiento es el siguiente:

es un programa simple en SDL que crea una ventana y dibuja un rectángulo rojo (que representa la "pelota") en ella. Aquí está el funcionamiento detallado del código:

Encabezados y definiciones: El programa incluye los encabezados necesarios de las bibliotecas stdio.h y SDL.h, así como algunas definiciones de constantes como TRUE, FALSE, WINDOW_WIDTH, WINDOW_HEIGHT, FPS (cuadros por segundo) y FRAME_TARGET_TIME (tiempo objetivo de fotograma).

Variables globales: Declara algunas variables globales como window, renderer, gameRunning y una estructura ball para representar las características de la pelota.

Funciones auxiliares: Define funciones auxiliares como showRenderDriversInfo, showSelectedRederer e init_window para inicializar SDL, crear la ventana y el renderizador, y mostrar información sobre los controladores de renderizado.

Función process_input: Procesa la entrada del usuario. En este caso, detecta si el usuario ha presionado la tecla de escape para salir del juego.

Función update: Actualiza la posición de la pelota en cada fotograma. Calcula el tiempo transcurrido entre fotogramas y utiliza esta información para actualizar la posición de la pelota.

Función DrawCircle: Una función auxiliar que dibuja un círculo utilizando puntos en el renderizador.

Función render: Renderiza el estado actual del juego en la ventana. Limpia el renderizador, dibuja el rectángulo rojo (pelota) en la posición actualizada y actualiza el renderizador para mostrar los cambios en la ventana.

Función setup: Inicializa el estado inicial del juego. En este caso, establece la posición inicial de la pelota.

Función clean: Limpia y libera los recursos utilizados por SDL al finalizar el programa.

Función main: La función principal del programa. Inicializa el juego, entra en el bucle principal del juego donde se procesa la entrada, se actualiza el estado del juego y se renderiza en cada fotograma, y finalmente limpia los recursos antes de salir.




#### Micro-sesión 4:

```C
void update(void) {
  static int last_frame_time = 0;

//  while (!SDL_TICKS_PASSED(SDL_GetTicks(), last_frame_time + FRAME_TARGET_TIME));
  int time_to_wait = FRAME_TARGET_TIME - (SDL_GetTicks() - last_frame_time);
  if (time_to_wait > 0 && time_to_wait <= FRAME_TARGET_TIME) {
    SDL_Delay(time_to_wait);
  }

  float delta_time = (SDL_GetTicks() - last_frame_time) / 1000.0F;
  last_frame_time = SDL_GetTicks();

  ball.x += 20* delta_time;
  ball.y += 20* delta_time;
}
```

cómo funciona:

static int last_frame_time = 0;: Esta es una variable estática que almacena el tiempo en milisegundos del último fotograma procesado. Se inicializa en 0 la primera vez que se llama a la función update.

int time_to_wait = FRAME_TARGET_TIME - (SDL_GetTicks() - last_frame_time);: Calcula cuánto tiempo se debe esperar antes de continuar con el siguiente fotograma. Resta el tiempo actual en milisegundos (SDL_GetTicks()) del tiempo del último fotograma (last_frame_time) y lo resta del tiempo objetivo por fotograma (FRAME_TARGET_TIME). Esto da como resultado el tiempo restante para alcanzar el objetivo de tiempo por fotograma.

if (time_to_wait > 0 && time_to_wait <= FRAME_TARGET_TIME) { SDL_Delay(time_to_wait); }: Si el tiempo restante es mayor que 0 y menor o igual al tiempo objetivo por fotograma, se pausa el programa durante ese tiempo usando SDL_Delay. Esto asegura que el juego se ejecute a la velocidad objetivo especificada por FPS.

float delta_time = (SDL_GetTicks() - last_frame_time) / 1000.0F;: Calcula el tiempo transcurrido desde el último fotograma en segundos dividiendo la diferencia entre el tiempo actual y el tiempo del último fotograma por 1000 (para convertir milisegundos a segundos). Esto proporciona una medida de cuánto tiempo ha pasado desde el último fotograma, lo que se utilizará para calcular el desplazamiento de la pelota en función de su velocidad.

last_frame_time = SDL_GetTicks();: Actualiza el tiempo del último fotograma al tiempo actual, para su uso en la próxima llamada a la función update.

ball.x += 20* delta_time; ball.y += 20* delta_time;: Actualiza la posición de la pelota en función del tiempo transcurrido desde el último fotograma. La velocidad de la pelota es constante y se multiplica por el tiempo transcurrido para obtener el desplazamiento en cada eje (x e y). Esto asegura que la velocidad de la pelota sea consistente independientemente de la frecuencia de actualización del fotograma.




#### Micro-sesión 5: cierre

En esta sesion ya termine con la guia de SDL2 y la investigacion, pude avanzar en varios conceptos y en la interfaz del pong, en las siguientes debo implementar los conceptos en el codigo.





## Semana 9


### Sesión 1 lunes marzo 18

#### Micro-sesión 1: apertura.


En esta sesion empezare a implemnetar los conceptos en el reto final que es el juego de pong. 



#### Micro-sesión 2:

en esta micro sesion empezare implementando el movimientos de las raquetas que es lo mas importante, para esto empece unificando las raquetas en un solo rect, antes las tenia en rect y rect 2, esto me permitia colocar cada una de colores disntintos pero perjudica a la fluidez del juego, entonces para el movimiento de las raquetas hay que incorporar la siguiente linea de codigo en `process_input()` :

```C
case SDL_KEYDOWN:
    if (event.key.keysym.sym == SDLK_LEFT)
        paddle.vel_x = -400;
    if (event.key.keysym.sym == SDLK_RIGHT)
        paddle.vel_x = +400;
    // Nueva raqueta (teclas A y D)
    if (event.key.keysym.sym == SDLK_a)
        opposite_paddle.vel_x = -400;
    if (event.key.keysym.sym == SDLK_d)
        opposite_paddle.vel_x = +400;
    break;
case SDL_KEYUP:
    if (event.key.keysym.sym == SDLK_LEFT)
        paddle.vel_x = 0;
    if (event.key.keysym.sym == SDLK_RIGHT)
        paddle.vel_x = 0;
    // Nueva raqueta (teclas A y D)
    if (event.key.keysym.sym == SDLK_a)
        opposite_paddle.vel_x = 0;
    if (event.key.keysym.sym == SDLK_d)
        opposite_paddle.vel_x = 0;
    break;
```

El codigo funciona de la siguiente forma:

Cuando se presiona la tecla de flecha izquierda (SDLK_LEFT), se establece la velocidad horizontal de la raqueta (paddle.vel_x) en un valor negativo, lo que la hace moverse hacia la izquierda
Cuando se presiona la tecla de flecha derecha (SDLK_RIGHT), se establece la velocidad horizontal de la raqueta (paddle.vel_x) en un valor positivo, lo que la hace moverse hacia la derecha
Cuando se suelta una de estas teclas, se establece la velocidad horizontal de la raqueta en 0, deteniendo su movimiento




#### Micro-sesión 3:


En esta mircro sesion voy a agregar los frames en el juego, para hacer empezamos definiendo 

```C
#define FPS 60
#define FRAME_TARGET_TIME (1000/FPS)
```
que representa la velocidad deseada del juego en fotogramas por segundo. Luego se calcula FRAME_TARGET_TIME como el tiempo objetivo en milisegundos que debe transcurrir entre cada fotograma para alcanzar la velocidad deseada (1000/FPS)


Luego se calcula el tiempo transcurrido con :

```c
int time_to_wait = FRAME_TARGET_TIME - (SDL_GetTicks() - last_frame_time);
```

para calcularlo se hace restando el tiempo transcurrido desde el último fotograma (SDL_GetTicks() - last_frame_time) del tiempo objetivo de fotogramas (FRAME_TARGET_TIME). Si el valor de time_to_wait es positivo, significa que se debe esperar antes de renderizar el siguiente fotograma para mantener el ritmo deseado del juego


```c
if (time_to_wait > 0 && time_to_wait <= FRAME_TARGET_TIME)
    SDL_Delay(time_to_wait);

````

Si time_to_wait es positivo y menor o igual que FRAME_TARGET_TIME, se utiliza la función SDL_Delay() para esperar el tiempo restante antes de renderizar el siguiente fotograma. Esto garantiza que el juego se ejecute a una velocidad cercana al valor deseado de FPS

Cálculo del tiempo transcurrido para la física del juego:

```c

float delta_time = (SDL_GetTicks() - last_frame_time) / 1000.0F;
```

Se calcula el tiempo transcurrido desde el último fotograma y se convierte a segundos dividiendo por 1000.0 para tener una fracción de segundo. Este delta_time se usa luego para actualizar la lógica del juego, asegurando que el movimiento de los objetos del juego sea suave y proporcional al tiempo que ha pasado desde el último fotograma

Actualización del tiempo del último fotograma:

```c

last_frame_time = SDL_GetTicks();
```

Finalmente, se actualiza el tiempo del último fotograma para utilizarlo en el siguiente ciclo del bucle del juego



#### Micro-sesión 4: cierre

En esta sesion pude incorporar al codigo el movimientos de las raquetas y los fps a los que va a funcionar el pong




### Sesión 1 miercoles marzo 20

#### Micro-sesión 1: apertura.

En esta se sesion tengo planeado  incorporar el movimiento de la pelota y la colision con las raquetas


#### Micro-sesión 2:

Empezare en esta micro sesion incorporando el movimiento de la pelota, para hacer esto, el movimiento de la pelota estara en la funcion update para que este se actualice cada segundo, el codigo para incorpar es el siguiente:

```C
void update(void) {
    // Calcula el tiempo que se debe esperar antes de renderizar el siguiente fotograma para mantener el ritmo deseado del juego
    int time_to_wait = FRAME_TARGET_TIME - (SDL_GetTicks() - last_frame_time);

    // Si es necesario esperar para mantener el ritmo del juego, se utiliza SDL_Delay para hacerlo
    if (time_to_wait > 0 && time_to_wait <= FRAME_TARGET_TIME)
        SDL_Delay(time_to_wait);

    // Calcula el tiempo transcurrido desde el último fotograma en segundos
    float delta_time = (SDL_GetTicks() - last_frame_time) / 1000.0F;

    // Actualiza el tiempo del último fotograma
    last_frame_time = SDL_GetTicks();

    // Actualiza la posición de la pelota en función de su velocidad y el tiempo transcurrido desde el último fotograma
    ball.x += ball.vel_x * delta_time;
    ball.y += ball.vel_y * delta_time;

    // Resto del código de colisiones y actualización
}
```
el codigo funciona de la siguiente forma:

time_to_wait: Calcula cuánto tiempo debe esperar el programa antes de renderizar el siguiente fotograma para mantener el ritmo deseado del juego. Si es necesario esperar, se utiliza SDL_Delay() para hacerlo

delta_time: Calcula el tiempo transcurrido desde el último fotograma en segundos. Esto se hace restando el tiempo del último fotograma (last_frame_time) del tiempo actual (SDL_GetTicks()), y luego dividiendo el resultado por 1000 para convertirlo en segundos

last_frame_time: Actualiza el tiempo del último fotograma al tiempo actual. Esto se utiliza para calcular delta_time en el siguiente fotograma

ball.x y ball.y: Actualiza las coordenadas de la pelota en función de sus velocidades (ball.vel_x y ball.vel_y) multiplicadas por delta_time. Esto asegura que el movimiento de la pelota sea suave y proporcional al tiempo transcurrido desde el último fotograma, independientemente de la velocidad de fotogramas del juego






#### Micro-sesión 3:


Ahora voy a incorporar la colision de la pelota con las raquetas, tambien va incorporado en la funcion update

Para detectar colisiones con las raquetas, se comprueba si la pelota intersecta con la zona ocupada por una raqueta en el eje y. Si la pelota llega a la misma altura que una raqueta y su posición horizontal (ball.x) está dentro del rango de la raqueta, entonces se considera una colisión. En ese caso, la pelota rebota cambiando su dirección vertical (ball.vel_y) hacia el lado opuesto

la linea de codigo es la siguiente:

```C
if (ball.y + ball.height >= paddle.y && ball.x + ball.width >= paddle.x && ball.x <= paddle.x + paddle.width)
    ball.vel_y = -ball.vel_y;
if (ball.y <= opposite_paddle.y + opposite_paddle.height && ball.x + ball.width >= opposite_paddle.x &&
    ball.x <= opposite_paddle.x + opposite_paddle.width)
    ball.vel_y = -ball.vel_y;
```

También hay un código adicional para manejar casos especiales de colisión para evitar que la pelota quede atrapada dentro de las raquetas. Por ejemplo, si la pelota está en contacto con el borde de una raqueta, se ajusta su posición horizontal para evitar que quede atrapada.

```C
// Ajuste de posición para evitar que la pelota quede atrapada en las raquetas
if (ball.y + ball.height >= paddle.y && ball.y <= paddle.y + paddle.height) {
    if (ball.x < paddle.x && ball.x + ball.width > paddle.x) {
        ball.x = paddle.x - ball.width;
    }
    else if (ball.x > paddle.x && ball.x < paddle.x + paddle.width) {
        ball.x = paddle.x + paddle.width;
    }
}
```


#### Micro-sesión 4:

En esta sesion pude incorporar el movimiento de la pelota y la colision ya me quedaria faltando incorporar el marcador, el resultado del codigo hasta ahora es el siguiente:



https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/27be82ac-d780-4387-9d81-1a83ef07f60a


### Sesión 3 jueves marzo 21


#### Micro-sesión 1: apertura.


En esta sesion autonoma tengo planeado hacer lo que me falta del pong que es poner el marcador.




#### Micro-sesión 2:


Para poder poner el marcador me estuvo ayudando de chatgpt, lo primero que hice para poner el marcador es agregar la libreria SDL_ttf esta libreria es para poder agregar texto y tiene las siguientes funciones:

Cargar fuentes TrueType: SDL_ttf te permite cargar fuentes TrueType desde archivos en el disco duro o desde la memoria. Esto significa que puedes utilizar una amplia variedad de fuentes para mostrar texto en tus aplicaciones SDL

Renderizar texto: Una vez que hayas cargado una fuente TrueType, puedes usar SDL_ttf para renderizar texto en una superficie SDL. Puedes especificar el texto, el color, el tamaño y la ubicación donde deseas renderizar el texto

Manipular texto: SDL_ttf te permite manipular el texto renderizado de varias maneras, como obtener el ancho y la altura del texto renderizado, obtener información sobre las métricas de la fuente y más

Mejor calidad de texto: Las fuentes TrueType ofrecen una mejor calidad de texto en comparación con las fuentes rasterizadas. Esto significa que el texto renderizado con SDL_ttf se verá más nítido y claro en la pantalla


esta la descargue del siguiente github: https://github.com/libsdl-org/SDL_ttf/releases



#### Micro-sesión 3


Luego de descargarla lo que hice fue integrarla en mi archivo de visual estudio como se hizo con las otras bibliotecas:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/5db55e68-011d-4cdf-a02a-29dbbc05e2cb)

Añadi el .dll al archivo origen 

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/a3558b3c-0097-4597-8433-c5c30663e998)

luego añadi el directorio 

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/b610712c-0312-4e52-af13-19bdcd43ed1e)

luego añadi en el vinculador general

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/20517a35-ca2d-4282-b7d3-955fb15045b5)

y por ultimo en la entrada del vinculador le proporcione la ruta

#### Micro-sesión 4

Luego de seguir todos los pasos y que el codigo no me diera ningun error, al momento de copilar el programa no se abre la ventana y me aparece lo siguiente

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/62cd2ac6-d128-4dda-85bb-db34b3ae78e8)

Error loading font.

Estuve investigando pero no encontre como solucionar el error, encontre que esto podria pasar cuando la biblioteca SDL_tff no tiene permisos del computador pero no encontre como darle esos permisos.


#### Micro-sesión 5: cierre

Luego de haber hecho todos los pasos bien para la implementacion del texto para el marcador no pude obtener resultados optimos por el error que comente, sin emabargo hare commit en el archivos de pruebas con el ncodigo y tratare de solucionar este error. 

