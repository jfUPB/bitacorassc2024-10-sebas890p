 # Bitácora de aprendizaje
 
## Semana 2 

### Sesión 1 lunes enero 29

#### Micro-sesión 1: apertura.

Comenzamos la clase guiada por el profesor, dando una introduccion de lo que se trata esta unidad 1, me parecio muy interesante el como llegaremos a entender como funciona una CPU mas a fondo. tambien se propuso un reto que haremos en la semana 5 que se trata de construir una aplicacion interactiva en lenguaje ensamblador.

Mi plan para esta sesion para poder entender y hacer este reto sera proceder a responder algunas de las preguntas planteadas por el profesor a la par que ir investigando las dudas que se me vayan presentando mientras hago esto.

#### Micro-sesión 2

Los computadores digitales modernos funcionan gracias a la teoría de la lógica booleana. observa el video 6, unidad 1.1. de este playlist. Selecciona una función booleana. Representa dicha operación de dos maneras diferentes. ¿Pudiste observar en el video esas dos maneras?

la funcion booleana que seleccione que observe en el video es la Funcion booleana AND, esta se puede representar de 2 maneras diferentes, en una tabla de la verdad o de forma algebraica. 

la tabla de la verdad seria:

```css
| A | B | A AND B |
|---|---|---------|
| 0 | 0 |    0    |
| 0 | 1 |    0    |
| 1 | 0 |    0    |
| 1 | 1 |    1    |
```

De la forma algebraica:

 A∧B

Ahora observa el video 7. Inventa una tabla de verdad de tres entradas y una salida. ¿Cuál es la función booleana que la representa?

```css
| A | B | C |   X   |
|---|---|---|-------|
| 0 | 0 | 0 |   1   |  (NOT a AND NOT b AND NOT c)
| 0 | 0 | 1 |   0   |
| 0 | 1 | 0 |   1   |  (NOT a AND b AND NOT c)
| 0 | 1 | 1 |   1   |  (NOT a AND b AND c)
| 1 | 0 | 0 |   0   |                                   
| 1 | 0 | 1 |   1   |  (AND a AND NOT b AND c)    
| 1 | 1 | 0 |   0   |
| 1 | 1 | 1 |   1   |  (AND a AND b AND c)
```

Observa el video 14, unidad 2.1. ¿Cuántos números diferentes puede representar un computador de 8 bits?

Un computador de 8 bits puede representar hasta 256 numeros diferentes esto se debe a que cada bit puede tener dos estados posibles: 0 o 1.


#### Micro-sesión 3


¿Cuál es la representación binaria del número en 8 bits del número 128?

la representacion en 8 bits de 128 es: 10000000 ya que cada numero esta multiplicado x 2 y potenciado en su ubicacion, por ese motivo el 1 se ubica en el primero lugar, 1x2 potenciado a la 7 seria 128 y los demas bits no tendrian valor. 

Observa el video 15. ¿Qué es un overflow en una suma binaria? inventa un ejemplo.

overflow en una suma binaria ocurre en el momento en el que el resultado de una suma ocupa la capacidad de bits, dando un ejemplo corto cuando estamos trabajando sobre 4 bits y se realiza una suma que su resultado necesite 5 bits, esto hace que el primer bit se pierda. 

Observa el video 16. ¿Cómo se representan números enteros negativos en un computador en complemento a dos? Construye una tabla que represente un conjunto de número enteros positivos y negativos usando 4 bits.

para representar un bit en negativo, hay que invertir el resultado del bit positivo y agregar un 1 al final del resultado como lo muestro en la tabla 


| Decimal | Binario (4 bits) | 
|---------|-------------------|
|    1    |       0001        | 
|    2    |       0010        |  
|   -1    |       1111        |
|   -2    |       1110        |          


#### Micro-sesión 4: cierre 



### Sesión 2 miércoles enero 31


#### Micro-sesión 1: apertura.

Esta sesion comenzo una explicacion muy interesante dada por el profesor, donde son explicaba de forma verbal y ilustrativa el funcionamiento de una cpu en su interior, como funcionaba hace varios años atras, como funciona en la actualidad y como puede llegar a funcionar siendo ya computadores cuanticos, luego de la explicacion segui respoiendo algunas de las preguntas y viendo los videos propuestos. 

#### Micro-sesión 2

Observa el video 17. ¿Qué es una unidad aritmética lógica? ¿Qué se puede hacer si una función no está implementada en la ALU?


Una Unidad Aritmética Lógica (ALU) es una parte fundamental de la unidad de procesamiento de una CPU, La ALU realiza operaciones aritméticas y lógicas en datos, como sumas, restas, comparaciones y operaciones booleanas.

Algunas funciones de una ALU son:

Operaciones Aritméticas: Realiza operaciones de suma, resta, multiplicación y división en datos binarios

Operaciones Lógicas: Realiza operaciones booleanas como AND, OR, NOT, XOR, entre otros

Operaciones de Desplazamiento: Desplaza bits hacia la izquierda o hacia la derecha

Si una función específica no está implementada en la ALU, hay varias opciones que se pueden realizar:

Microprogramación: A veces la ALU puede ser programada a un nivel más bajo utilizando microinstrucciones para realizar operaciones específicas que no están cubiertas por las funciones estándar. Esto implica programar la ALU a nivel de microinstrucciones para llevar a cabo la función deseada.

Incorporar Funciones Adicionales: En algunos casos, una nueva versión de la ALU puede ser diseñada e implementada con funciones adicionales.

Uso de Instrucciones Múltiples: Puede ser posible realizar la operación deseada mediante una secuencia de instrucciones que utiliza las funciones estándar de la ALU.

#### Micro-sesión 3


¿La ALU del video anterior puede multiplicar? ¿Cómo podrías resolver por software la multiplicación?

Si en el video muestran como la ALU puede realizar funciones basicas aritmeticas, Una de las formas para implementar la multiplicacion en la ALU por software seria mendiante programacion utilizando algoritmos logicos de matematicas, uno de esos puede ser el explicado por el profesor en clase que usaban las cpus antes que se trata de la forma distributiva.

Observa el video 20, unidad 3.1. ¿Cuál es la diferencia entre la lógica combinacional y la lógica secuencial?

Lógica combinacional:

La lógica combinacional es aquella que maneja la información de manera instantánea. Es decir, la salida de un circuito combinacional depende únicamente de los valores de entrada en ese momento.
Los circuitos combinacionales no tienen memoria ni estado interno. Por lo tanto, no importa cuándo se activan las entradas, siempre que las entradas sean las mismas, la salida será la misma.


Lógica secuencial:

La lógica secuencial es aquella que maneja la información en función del tiempo. Es decir, la salida de un circuito secuencial puede variar en función de los valores de entrada y del estado interno del circuito.
Los circuitos secuenciales tienen memoria y estado interno. Por lo tanto, si se activan las entradas de manera diferente, la salida puede variar incluso si las entradas son las mismas.


#### Micro-sesión 4: cierre 

Esta semana semana de clase fue muy productiva ya que la apertura de la sesion 1 fue lo interesante que puede llegar aser aprender el funcionamiento interno de una placa de cumputacion y a medida de la semana pude aprender un poco sobre eso respondiendo y viendo los videos de las preguntas, ademas de las explicaciones ilustradas por el profesor. 


### Sesion 3 

#### Micro-sesión 1: apertura. 
me propuse a ver los videos y responder sus respectivas preguntas.


#### Micro-sesión 2


Observa el video 21. ¿Por qué se combina lógica combinacional y secuencial para construir un computador?

hay dos motivos principales

Eficiencia en el uso de recursos: La lógica combinacional permite realizar múltiples operaciones en un solo ciclo de reloj, lo que reduce el número de componentes necesarios en el circuito.

Flexibilidad en la ejecución de instrucciones: La lógica secuencial permite almacenar y manipular información a lo largo del tiempo, lo que es necesario para ejecutar instrucciones de un programa.

Observa el video 26, unidad 4.1. ¿Cuál es la diferencia entre el lenguaje ensamblador y el lenguaje de máquina?

Lenguaje de Máquina:

Instrucciones codificadas en binario.
Difícil de entender y específico para cada CPU.
No requiere traducción directa por la CPU.

Lenguaje Ensamblador:

Utiliza mnemotécnicos en lugar de binario.
Más legible y amigable para programadores.
Requiere un ensamblador para traducir a lenguaje de máquina.
Relativamente más portable entre arquitecturas.

#### Micro-sesión 3

Observa el video 22. ¿Cómo funciona una memoria memoria RAM?

Una memoria RAM (Random Access Memory) es un tipo de memoria de acceso aleatorio que se utiliza para almacenar temporalmente los datos que el procesador necesita para realizar sus operaciones. La RAM permite un acceso rápido a los datos, ya que cualquier posición de memoria puede ser accedida en un tiempo constante.

¿Cuál es la relación entre el bus de direcciones y la salida cuando el bit de load es 0 y cuando es 1?

Cuando el bit de load es 1, significa que el procesador está realizando una operación de lectura o escritura en la memoria. En este caso, la salida del bus de direcciones es la dirección de memoria a la que se desea acceder. 

Observa el video 23. ¿Cuál es la función del program counter en un computador?

El program counter es un registro en un computador que contiene la dirección de memoria de la siguiente instrucción que el procesador debe ejecutar. Cuando el procesador ejecuta una instrucción, el program counter se actualiza para apuntar a la siguiente instrucción en la secuencia de instrucciones

![IMG00007](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/0a5b644e-5a84-4b9d-8ca9-5400f80390c3)


## Semana 3 


### Sesión 1 lunes febrero 5


#### Micro-sesión 1: apertura.
En esta sesion el profesor utilizo un juego llamado silicon zeroes para explicarnos varias funciones propuestas en las preguntas ya respondidas anteriormente.

#### Micro-sesión 2


este juego se trata de ir resolviendo puzles para asi ir armando y entendiendo el funcionamiento de algunas placas computacionales, con la utilizacion del juego me quedaron mas claros los conceptos de contador y la logica secuencial a su vez tambien como funciona una memoria que se divide por slots y cada slot tiene una escritura, esta escritura funciona con ticks como se nuestra en el video.
![fEe2sr](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/6e3755ee-7a4c-45c5-8944-7519ad5a5d5b)

#### Micro-sesión 3

Continuamos realizando los niveles del juego entre todos.


### Sesión 2 miércoles febrero 7


#### Micro-sesión 1: apertura.

En esta sesion el profesor nos hizo una introduccion de lo que relizaremos en el dia de hoy, vamos a revisar la estructura de la bitacora, vamos a ver la tabla de puntos y hacer mejoras y por ultimo vamos a programar en ensamblador, por ultimo editaremos y organizaremos las estructuras de las bitacoras.

#### Micro-sesión 2

estuve revisando mi bitacora a la vez que el profesor mostraba la estructura ideal para realizar la bitacora, luego de esto procedi a editar y organizar mi bitacora colocando cada micro sesion como se puede ver relfejado. 

#### Micro-sesión 3

Iniciamos junto al profesor a aprender sobre el lenguaje ensamblador, realizamos algunos ejemplos de intrucciones tipo A y tipo C, JUMP funciona para indicar que salte lineas.

adjunto una imagen del resultado 

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/5d4232c9-b0dc-4593-8363-e8bc3cbf9afa)

#### Micro-sesión 4: cierre 

En esta sesion cumpli con el proposito de apertura, pude aprender y organizar la estructura de bitacora en una forma mas estetica y organizada, tambien aprendi algunos conceptos sobre el lenguaje ensamblador que luego pase al CPU emulator.

### Sesion 3 jueves 8 de febrero 

#### Micro-sesión 1: apertura.

En esta sesion de trabajo autonomo me dedique a relizar las preguntas que tenia faltantes y ver en youtube como resolvian el nivel de la vaca en silicon zeroes ya que no puedo jugargo por lo que es de pago.

#### Micro-sesión 2
Ahora observa el video 7. Inventa una tabla de verdad de tres entradas y una salida. ¿Cuál es la función booleana que la representa?

```css
| A | B | C |   X   |
|---|---|---|-------|
| 0 | 0 | 0 |   1   |  (NOT a AND NOT b AND NOT c)
| 0 | 0 | 1 |   0   |
| 0 | 1 | 0 |   1   |  (NOT a AND b AND NOT c)
| 0 | 1 | 1 |   1   |  (NOT a AND b AND c)
| 1 | 0 | 0 |   0   |                                   
| 1 | 0 | 1 |   1   |  (AND a AND NOT b AND c)    
| 1 | 1 | 0 |   0   |
| 1 | 1 | 1 |   1   |  (AND a AND b AND c)
```

Observa el video 14, unidad 2.1. ¿Cuántos números diferentes puede representar un computador de 8 bits?

Un computador de 8 bits puede representar hasta 256 numeros diferentes esto se debe a que cada bit puede tener dos estados posibles: 0 o 1.

#### Micro-sesión 3
Observa el video 22. ¿Cómo funciona una memoria memoria RAM?

Una memoria RAM (Random Access Memory) es un tipo de memoria de acceso aleatorio que se utiliza para almacenar temporalmente los datos que el procesador necesita para realizar sus operaciones. La RAM permite un acceso rápido a los datos, ya que cualquier posición de memoria puede ser accedida en un tiempo constante.
bserva el video 20, unidad 3.1. ¿Cuál es la diferencia entre la lógica combinacional y la lógica secuencial?

Lógica combinacional:

La lógica combinacional es aquella que maneja la información de manera instantánea. Es decir, la salida de un circuito combinacional depende únicamente de los valores de entrada en ese momento.
Los circuitos combinacionales no tienen memoria ni estado interno. Por lo tanto, no importa cuándo se activan las entradas, siempre que las entradas sean las mismas, la salida será la misma.


Lógica secuencial:

La lógica secuencial es aquella que maneja la información en función del tiempo. Es decir, la salida de un circuito secuencial puede variar en función de los valores de entrada y del estado interno del circuito.
Los circuitos secuenciales tienen memoria y estado interno. Por lo tanto, si se activan las entradas de manera diferente, la salida puede variar incluso si las entradas son las mismas.

#### Micro-sesión 4 cierre

Estuve viendo como una persona llamda DDRJake pasaba el nivel de la vaca en silicon zeroes
![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/a208f550-6e51-4d38-a0cc-1c175c5014d3)


En la imegen vemos que usa 9 modulos en total entre esos 2 latchs 1 lector y 1 escritor de memoria, el parte de la ecucacion explicada por el profesor en clase del numero anterior mas el tercer numero anterior.


## Semana 4

### Sesión 1 lunes febrero 12 

#### Micro-sesión 1: apertura.
 Esta sesion sera guiada por el profesor y estaremos tocando los siguientes temas:
 
 labels.
 
 variables.
 
 saltos.
 
 I/O: teclado, display.
 
 algunas estructuras de control.

#### Micro-sesión 2

Con las intrucciones tipo A funcionan para meter numeros en A solo numeris positivos y en las intrucciones tipo C hay un destino = operacion;salto 

1. variables, estas en un pc viven es en la RAM, estas se crean de la siguiente forma
  
![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/f4af2596-85ba-4580-ac83-619f19469364)

M : leer la memoria porque esta al lado derecha del = 
a la izquierda del = va el destino 


![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/2d6f6c8f-fd0d-4aca-80f0-165f4ba0a31a)




#### Micro-sesión 3

De esta forma se puede dibujar en la pantalla 

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/994cd776-086f-4429-be6f-185281a82bd0)

JEQ ES SALTO SI D ES IGUAL A 0

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/07f22855-6035-4542-b8a9-d7bd3ed4e299)


en este ejemplo terminamos de ver los saltos, los labels, el teclado y el display. 

#### Micro-sesión 4 cierre

Esta sesion ayudo mucho para expandir el conocimiento en las sintaxis y la estructura del lenguaje emsanblador, aprendi un poco sobre todos los temas propuestos en la apertura mientras seguia los ejercicios que realizaba el profesor, despues de esta sesion se me aclararon mas las cosas para realizar el reto final. 




### Sesión 2 miercoles febrero 14

#### Micro-sesión 1: apertura.

Esta sesion el profesor nos indico que iba a ser autonoma, nos indico que seria bueno que empezaramos a hacer el reto final o que al menos empezaramos a hacer codigo en lenguaje ensamblador.


#### Micro-sesión 2

Comence buscando y haciendo experimentos sobre como pintar los pixeles pero realmente no encontre informacion sobre esto, solo consegui que se escribiera en la memoria 24576 un valor distinto depiendo la letra presionada


![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/23c684bb-0c40-47b8-853f-0ba6d1e6c209)



#### Micro-sesión 3

en esta  micro sesion segui haciendo pruebas pero no consegui nada distinto a lo anterior por lo que buscando video encontre proyectos interesantes que se pueden hacer en cpu emulator 

https://www.youtube.com/watch?v=NMG-7e7d_jE

en el link de arriba se puede ver un proyecto de pin pon en cpu emulator 

el siguiente video me sorpendio mucho es todo un juego de disparos

https://www.youtube.com/watch?v=inFJ5EyOhpM

#### Micro-sesión 4 cierre

de esta sesion llego a concluir que debo buscar mas y aprender mas sobre las direcciones de entradas a la pantalla y las posiciones de los pixeles. 


### Sesion 3 viernes 16 de febrero 

#### Micro-sesión 1: apertura.

Inicio esta sesion autonoma el viernes 16 de febrero por temas medicos ya que estuve acompañando a mi mama que no vive en la ciudad a hacerse unos procedimientos medicos, esta sesion la quiero dedicar a seguir lo que estuve haciendo en clases, realizar la investigacion y pruebas de algunos pasos del codigo del reto final. 


#### Micro-sesión 2

En esta primera micro sesion estuve averiguando cuales eran las direcciones de cada letra en especifico, primero me frustre un poco, ya que investigando en internet no encontraba nada de la informacion que necesitaba, por lo que use el codigo que realizo el profesor en clase que es el siguiente 
![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/777f0f94-46f3-4d6a-8365-7abc39a597b5)

y me di cuenta que cada vez que undia una tecla se marcaba la direccion de la tecla en la ram, por lo que la direccion de la P es la 80 y de la A la 65, que son las 2 letras que necesito ya que mi apellido es pedroza.


#### Micro-sesión 3

En esta micro sesion estuve comprobando que si estuviera en lo correcto con las direcciones de los pixles asi que con ayuda de inteligencias artificiales, modifique el codigo anterior, haciendo que cuando se presione la P haga un salto al else y esto haga que no se pinte la pantalla, por lo que los resultados fueron satisfactorios,

https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/12683327-f8b2-4417-ae25-31f644260356


Como se puede apreciar en el video cuando no se presiona nada si se pinta el pixel, y cuando presiono la P si se pinta. 


#### Micro-sesión 4

En esta micro sesion estuve tratando de ahora pintar algunos pixeles mas usando un LOOP sin emabargo no pude conseguir un buen resultado ya que no he terminado de encontrar cuales son los numeros o las direcciones de los pixeles de la pantalla. 

trate haciendo pruebas con multiplicando el numero de los primeros 16 pixeles de entradas pero no me funciono.

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/97e7efcc-9bcc-4860-8349-049f25f30cfa)



#### Micro-sesión 5 cierre


De esta session me quedo que debo en clase averiguar mejor como funcionan las posiciones de los pixeles y terminar de aprender mas sobre los LOOPS pero siento que he podido avanzar en este reto. 


## Semana 5

### Sesión 1 lunes febrero 19 

#### Micro-sesión 1: apertura.

En esta sesion me voy a dedicar a aprender sobre las posicion de los pixeles para poder adaptarlo a lo que necesito en el codigo final .


#### Micro-sesión 2

En esta micro sesion, estuve investigando como funcionan las ubicaciones de los pixeles pero no encotre informacion clara, pero pude conseguir una plantilla de excel en la cual puedo pintar primero y luego pasarlo a codigo de la siguiente forma: 

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/73818d89-70b1-4317-a53e-ff54cbfc92cc)

como se ve en la imagen tengo un cuadro subrayado en amarillo, en el que cada casilla de las filas subrayadas tienen el numero correspondiente al pixel en CPU emulator.

#### Micro-sesión 3
Esta micro sesion tuve que realizar en mi casa ya que tuve que salir de clase para acompañar a mi mama a un procedimiento medico, en esta micro sesion me dedique a hacer las pruebas de si era correcto las posiciones de los pixeles que mostre en la imagen anterior, por lo que pase los pixeles al codigo y el resultadi fue el siguiente:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/00c5f37d-216b-4bd0-9452-dc3d1c3d7270)

como se puede ver si se pinto el cuadro que subraye en amarillo en el excel. 

#### Micro-sesión 4 cierre:

De esta sesion me quedan buenas sensaciones con respecto al reto final, ya que en lo que me sentia mas quedado era en las posciones de los pixeles pero pude conseguirlas, por lo que ya me queda ver que me iamgen quiero que se pinte en CPU emulator.

## Sesión 2 miercoles febrero 21 

#### Micro-sesión 1: apertura.

En esta sesion me dedicare a terminar lo que me falta del codigo final, que en este caso seria hacer que borre la imagen.

#### Micro-sesión 2:

en esta micro sesion estuve investigando porque el codigo no borrara la imagen y con ayuda de chat gpt, me di cuenta que era porque estaba utilizando la etiqueta estar y esta no permitia que al presionar la A saltara al bucle de borrar, ya que cada salto se hacia a la etiqueta START por lo que utilice ? que funciona como un marcador para una direccion no determinada, por lo tanto esta si permite saltar al bucle borrar cuando se presione la letra requerida, el codigo lo actualice en RetoFinal.asm
 un marcador 

#### Micro-sesión 3:

En esta micro sesion, me dedique a elegir la imagen a pintar, ya que tenia el codigo funcionando de forma correcta ya solo era elegir que imagen pintar, entonces elegi la siguiente:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/470784b4-1f63-4043-8b86-4dea7d5cd502)

Esta trate de recrear un carro que esta tirando humo por el escape.

#### Micro-sesión 4 cierre:

En esta sesion pude cumplir con el proposito de hacer que la imagen se borre correctamente, ademas ya alegi que imagen usare para pintar en CPU  emulator. 

### Sesión 3 viernes febrero 23 

#### Micro-sesión 1: apertura.


#### Micro-sesión 2:


En esta micro sesion me dedique a terminar el codigo con la imagen que eligi en la sesion 2 en clase, sin embargo mientras lo hacia cuando hice las pruebas la imagen no se pintaba de forma adecuada y tampoco se borraba de buena forma, por lo que decide escoger otra imagen que es la siguiente:

![image](https://github.com/jfUPB/bitacorassc2024-10-sebas890p/assets/110270011/8a248cc0-64b1-4ce2-a01c-13bb3fd318dd)

ya con esta imagen el codigo me funciono perfectamente al borrar y al pintar, el codigo esta actualizado en el archivo del reto final. 

#### Micro-sesión 3:


#### Micro-sesión 4:


#### Micro-sesión 5: cierre
