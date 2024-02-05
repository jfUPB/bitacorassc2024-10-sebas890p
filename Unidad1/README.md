 # Bitácora de aprendizaje
## Semana 2 clase 29-01 

Comenzamos la clase guiada por el profesor, dando una introduccion de lo que se trata esta unidad 1, me parecio muy interesante el como llegaremos a entender como funciona una CPU mas a fondo. tambien se propuso un reto que haremos en la semana 5 que se trata de construir una aplicacion interactiva en lenguaje ensamblador.

Mi plan para esta sesion para poder entender y hacer este reto sera proceder a responder algunas de las preguntas planteadas por el profesor a la par que ir investigando las dudas que se me vayan presentando mientras hago esto.

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

## A∧B

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

##  clase 31-01 

Esta sesion comenzo una explicacion muy interesante dada por el profesor, donde son explicaba de forma verbal y ilustrativa el funcionamiento de una cpu en su interior, como funcionaba hace varios años atras, como funciona en la actualidad y como puede llegar a funcionar siendo ya computadores cuanticos, luego de la explicacion segui respiendo algunas de las preguntas y viendo los videos propuestos. 

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

¿La ALU del video anterior puede multiplicar? ¿Cómo podrías resolver por software la multiplicación?

Si en el video muestran como la ALU puede realizar funciones basicas aritmeticas, Una de las formas para implementar la multiplicacion en la ALU por software seria mendiante programacion utilizando algoritmos logicos de matematicas, uno de esos puede ser el explicado por el profesor en clase que usaban las cpus antes que se trata de la forma distributiva.

Observa el video 20, unidad 3.1. ¿Cuál es la diferencia entre la lógica combinacional y la lógica secuencial?

Lógica combinacional:

La lógica combinacional es aquella que maneja la información de manera instantánea. Es decir, la salida de un circuito combinacional depende únicamente de los valores de entrada en ese momento.
Los circuitos combinacionales no tienen memoria ni estado interno. Por lo tanto, no importa cuándo se activan las entradas, siempre que las entradas sean las mismas, la salida será la misma.


Lógica secuencial:

La lógica secuencial es aquella que maneja la información en función del tiempo. Es decir, la salida de un circuito secuencial puede variar en función de los valores de entrada y del estado interno del circuito.
Los circuitos secuenciales tienen memoria y estado interno. Por lo tanto, si se activan las entradas de manera diferente, la salida puede variar incluso si las entradas son las mismas.

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

Observa el video 22. ¿Cómo funciona una memoria memoria RAM? ¿Cuál es la relación entre el bus de direcciones y la salida cuando el bit de load es 0 y cuando es 1?

Una memoria RAM (Random Access Memory) es un tipo de memoria de acceso aleatorio que se utiliza para almacenar temporalmente los datos que el procesador necesita para realizar sus operaciones. La RAM permite un acceso rápido a los datos, ya que cualquier posición de memoria puede ser accedida en un tiempo constante.

Cuando el bit de load es 1, significa que el procesador está realizando una operación de lectura o escritura en la memoria. En este caso, la salida del bus de direcciones es la dirección de memoria a la que se desea acceder. 

Observa el video 23. ¿Cuál es la función del program counter en un computador?

El program counter es un registro en un computador que contiene la dirección de memoria de la siguiente instrucción que el procesador debe ejecutar. Cuando el procesador ejecuta una instrucción, el program counter se actualiza para apuntar a la siguiente instrucción en la secuencia de instrucciones


## Semana 3 
## Clase 5-02

silicon zeroes
