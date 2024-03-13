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

Tomar esta sesion para hcer un resumen de conceptos complicados o dificiles de entender me puede ayudar en futuro para implementarlos y entenderlos mas facil. 




### Sesión 2 miercoles marzo 6

#### Micro-sesión 1: apertura.



#### Micro-sesión 2:




#### Micro-sesión 3:




#### Micro-sesión 4: cierre


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
