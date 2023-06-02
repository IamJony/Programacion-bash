# Programacion-bash
Una pequeña documentación en español para aprender a programar en bash.

## Indice
# Índice

1. [Introducción](#Comandos-básicos-para-programación-en-bash)
2. [Variables y asignaciones](#Variables-y-asignaciones)
3. [Condicionales](#Condicionales)
4. [Operadores especiales](#Operadores-especiales)
5. [Redirección y tuberias](#Redirección-y-tuberias)

## Comandos básicos para programación en bash
Bashscript es un lenguaje de programación de scripts utilizado en sistemas Unix y Linux. Es ampliamente utilizado para automatizar tareas, escribir secuencias de comandos y desarrollar aplicaciones de línea de comandos. Su importancia radica en su capacidad para simplificar y agilizar la ejecución de comandos y programas, permitiendo la automatización de tareas repetitivas y la creación de scripts personalizados. Es ampliamente utilizado por administradores de sistemas, desarrolladores y usuarios avanzados para realizar diversas tareas, como administración del sistema, procesamiento de archivos, scripting de utilidades y más.

| Comando      | Descripción                                                    | Ejemplo de Uso                                                | Qué hace el comando                                            |
| ------------ | -------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `echo`       | Imprime un mensaje en la salida estándar.                      | `echo "Hola, mundo!"`                                        | Imprime el mensaje "Hola, mundo!" en la salida estándar.       |
| `if`         | Condición para realizar una acción basada en una expresión.    | `if [[ $a -eq $b ]]; then echo "Son iguales"; fi`           | Evalúa si las variables `a` y `b` son iguales y, en caso afirmativo, imprime "Son iguales".  |
| `for`        | Itera sobre una lista o secuencia de elementos.                | `for i in {1..5}; do echo $i; done`                         | Itera del número 1 al 5 e imprime cada número en una línea separada. |
| `while`      | Ejecuta un conjunto de comandos mientras se cumpla una condición. | `while [[ $x -lt 10 ]]; do echo $x; ((x++)); done`          | Mientras el valor de la variable `x` sea menor que 10, imprime el valor de `x` y lo incrementa en 1. |
| `case`       | Realiza una acción basada en el valor de una variable.         | `case $opcion in 1) echo "Opción 1";; 2) echo "Opción 2";; esac` | Evalúa el valor de la variable `opcion` y, dependiendo del caso, imprime una opción específica. |
| `cd`         | Cambia de directorio.                                          | `cd /ruta/directorio`                                         | Cambia el directorio actual al directorio especificado.        |
| `ls`         | Lista el contenido de un directorio.                           | `ls -l`                                                       | Muestra una lista detallada del contenido (archivos y directorios) del directorio actual. |
| `mkdir`      | Crea un nuevo directorio.                                      | `mkdir carpeta`                                               | Crea un nuevo directorio con el nombre "carpeta" en el directorio actual. |
| `rm`         | Elimina archivos y directorios.                                | `rm archivo.txt`                                              | Elimina el archivo "archivo.txt" en el directorio actual.      |
| `grep`       | Busca patrones en archivos o en la entrada estándar.           | `grep "texto" archivo.txt`                                    | Busca el patrón "texto" en el archivo "archivo.txt" y muestra las líneas que coinciden. |
| `chmod`      | Cambia los permisos de archivos y directorios.                 | `chmod +x script.sh`                                          | Otorga permisos de ejecución al archivo "script.sh".           |
| `touch`      | Crea un archivo vacío o actualiza la marca de tiempo de un archivo existente. | `touch archivo.txt`                                | Crea un archivo vacío llamado "archivo.txt" o actualiza su marca de tiempo si ya existe. |

## Variables y asignaciones
Las variables en programación son contenedores que almacenan datos. Las asignaciones permiten asignar un valor a una variable específica. 

| Sintaxis         | Descripción                                                   | Ejemplo de Uso                                    | Qué hace el comando                                            |
| ---------------- | ------------------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------------------- |
| `variable=valor` | Asigna un valor a una variable.                                | `nombre="Juan"`                                  | Asigna el valor "Juan" a la variable `nombre`.                |
| `$variable`      | Accede al valor de una variable.                               | `echo $nombre`                                   | Imprime el valor almacenado en la variable `nombre`.           |
| `readonly`       | Declara una variable como de solo lectura.                    | `readonly edad=30`                              | Declara la variable `edad` como de solo lectura con el valor 30. |
| `unset`          | Elimina una variable.                                         | `unset nombre`                                   | Elimina la variable `nombre`.                                  |
| `export`         | Exporta una variable para que esté disponible en subprocesos. | `export PATH=/usr/bin`                           | Exporta la variable `PATH` para que esté disponible en subprocesos. |
| `$0`             | Almacena el nombre del script o programa en ejecución.        | `echo "Nombre del script: $0"`                   | Imprime el nombre del script o programa en ejecución.          |
| `$1`, `$2`, ...  | Almacenan los argumentos pasados a un script o función.       | `echo "Primer argumento: $1"`                     | Imprime el primer argumento pasado al script o función.        |
| `$#`             | Almacena el número de argumentos pasados a un script o función.| `echo "Número de argumentos: $#" `               | Imprime el número de argumentos pasados al script o función.   |
| `$@`             | Expande todos los argumentos pasados a un script o función.   | `for arg in "$@"; do echo $arg; done`            | Itera sobre todos los argumentos y los imprime uno por uno.    |
| `$?`             | Almacena el código de salida del comando más reciente.        | `if [ $? -eq 0 ]; then echo "Éxito"; fi`         | Verifica si el código de salida del comando anterior es igual a 0 y, en caso afirmativo, imprime "Éxito". |
| `$$`             | Almacena el PID (identificador de proceso) del script actual. | `echo "PID del script: $$"`                      | Imprime el PID del script actual.                              |
| `$!`             | Almacena el PID del último proceso en segundo plano.          | `comando & echo "PID del proceso: $!"`           | Ejecuta el comando en segundo plano y luego imprime el PID del proceso en segundo plano. |
| `$RANDOM`        | Genera un número aleatorio.                                   | `echo "Número aleatorio: $RANDOM"`                | Genera un número aleatorio y lo imprime.                  |

## Variables con comandos asignados 
| Variable | Descripción | Ejemplo de Asignación con Comando | Ejemplo de Uso |
| -------- | ----------- | ------------------------------- | -------------- |
| `fecha`  | Almacena la fecha actual. | `fecha=$(date +%Y-%m-%d)` | `echo "La fecha actual es: $fecha"` |
| `archivos` | Almacena la lista de archivos en un directorio. | `archivos=$(ls)` | `echo "Los archivos en el directorio son: $archivos"` |
| `contador` | Almacena el número de líneas de un archivo. | `contador=$(wc -l archivo.txt | awk '{print $1}')` | `echo "El archivo tiene $contador líneas"` |

## Condicionales
| Sintaxis | Descripción | Ejemplo de Uso | Qué hace el comando |
| -------- | ----------- | -------------- | ------------------- |
| `if condición; then` <br> `comandos` <br> `fi` | Condición simple con comandos ejecutados si se cumple la condición. | ```if [[ $a -eq $b ]]; then echo "Son iguales"; fi``` | Verifica si la variable `a` es igual a la variable `b`. Si se cumple la condición, imprime "Son iguales". |
| `if condición; then` <br> `comandos1` <br> `else` <br> `comandos2` <br> `fi` | Condición con comandos ejecutados si se cumple la condición, y comandos ejecutados si no se cumple la condición. | ```if [[ $a -eq $b ]]; then echo "Son iguales"; else echo "No son iguales"; fi``` | Verifica si la variable `a` es igual a la variable `b`. Si se cumple la condición, imprime "Son iguales". Si no se cumple la condición, imprime "No son iguales". |
| `if condición1; then` <br> `comandos1` <br> `elif condición2; then` <br> `comandos2` <br> `else` <br> `comandos3` <br> `fi` | Condición con múltiples ramas, donde se evalúan condiciones secuenciales y se ejecutan los comandos correspondientes a la primera condición que se cumpla. Si ninguna condición se cumple, se ejecutan los comandos en la sección `else`. | ```if [[ $a -eq 1 ]]; then echo "Es 1"; elif [[ $a -eq 2 ]]; then echo "Es 2"; else echo "No es ni 1 ni 2"; fi``` | Verifica si la variable `a` es igual a 1. Si se cumple la condición, imprime "Es 1". Si no se cumple, verifica si la variable `a` es igual a 2. Si se cumple esta segunda condición, imprime "Es 2". Si no se cumple ninguna de las dos condiciones anteriores, imprime "No es ni 1 ni 2".


## Operadores especiales
Aquí tienes la tabla actualizada con los ejemplos de uso y la descripción de cada comando:

| Comando/Expresión   | Descripción                                                   | Ejemplo de Uso                                                  | Qué hace el comando                                             |
| ------------------- | ------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `$?`                | Almacena el código de salida del comando más reciente.         | `echo $?`                                                       | Imprime el código de salida del último comando ejecutado.        |
| `$#`                | Almacena el número de argumentos pasados a un script o función.| `echo $#`                                                       | Imprime el número de argumentos pasados al script o función.     |
| `$0`                | Almacena el nombre del script o programa en ejecución.         | `echo $0`                                                       | Imprime el nombre del script o programa en ejecución.            |
| `$1`                | Almacena el primer argumento pasado a un script o función.     | `echo $1`                                                       | Imprime el primer argumento pasado al script o función.          |
| `$2`, `$3`, ...     | Almacenan los argumentos adicionales pasados a un script o función. | `echo $2`                                                    | Imprime el segundo argumento pasado al script o función.         |
| `[[ -d <directorio> ]]` | Verifica si `<directorio>` existe y es un directorio.        | `if [[ -d $dir ]]; then echo "El directorio existe."; fi`        | Verifica si el directorio `$dir` existe y, en caso afirmativo, imprime "El directorio existe.". |
| `[[ -f <archivo> ]]`    | Verifica si `<archivo>` existe y es un archivo regular.      | `if [[ -f $file ]]; then echo "El archivo existe."; fi`          | Verifica si el archivo `$file` existe y, en caso afirmativo, imprime "El archivo existe.". |
| `[[ -e <ruta> ]]`       | Verifica si `<ruta>` existe (archivo o directorio).          | `if [[ -e $path ]]; then echo "La ruta existe."; fi`             | Verifica si la ruta `$path` existe y, en caso afirmativo, imprime "La ruta existe.". |
| `[[ -r <archivo> ]]`    | Verifica si `<archivo>` tiene permisos de lectura.          | `if [[ -r $file ]]; then echo "El archivo es legible."; fi`      | Verifica si el archivo `$file` tiene permisos de lectura y, en caso afirmativo, imprime "El archivo es legible.". |
| `[[ -w <archivo> ]]`    | Verifica si `<archivo>` tiene permisos de escritura.        | `if [[ -w $file ]]; then echo "El archivo es escribible."; fi`   | Verifica si el archivo `$file` tiene permisos de escritura y, en caso afirmativo, imprime "El archivo es escribible.". |
| `[[ -x <archivo> ]]`    | Verifica si `<archivo>` tiene permisos de ejecución.        | `if [[ -x $file ]]; then echo "El archivo es ejecutable."; fi`   | Verifica si el archivo `$file` tiene permisos de ejecución y, en caso afirmativo, imprime "El archivo es ejecutable.". |
| `[[ -s <archivo> ]]`    | Verifica si `<archivo>` existe y no está vacío.             | `if [[ -s $





## Redirección y tuberias
La redirección y las tuberías en Bash son herramientas clave para manipular el flujo de entrada, salida y error de los comandos. La redirección permite redirigir la entrada/salida hacia/desde archivos o dispositivos, mientras que las tuberías conectan la salida de un comando con la entrada de otro, permitiendo encadenar comandos. Estas características brindan flexibilidad y potencia para automatizar tareas y manipular datos en la programación de shell

| Comando/Expresión            | Descripción                                                       | Ejemplo de Uso                                                                     | Qué hace el comando                                                               |
| ---------------------------- | ----------------------------------------------------------------- | ---------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `comando > archivo`          | Redirige la salida estándar de un comando a un archivo.            | `ls > lista_archivos.txt`                                                         | Lista los archivos en el directorio actual y guarda la salida en el archivo "lista_archivos.txt".                                              |
| `comando >> archivo`         | Redirige la salida estándar de un comando y la agrega a un archivo. | `echo "Nueva línea" >> archivo.txt`                                                | Agrega la cadena "Nueva línea" al final del archivo "archivo.txt" sin sobrescribir su contenido existente.                                  |
| `comando < archivo`          | Redirige la entrada estándar de un comando desde un archivo.       | `sort < lista_numeros.txt`                                                         | Ordena los números contenidos en el archivo "lista_numeros.txt" y muestra el resultado en la salida estándar.                                |
| `comando1 \| comando2`       | Conecta la salida estándar de `comando1` con la entrada estándar de `comando2`. | `cat archivo.txt \| grep "patrón"`                                             | Muestra el contenido del archivo "archivo.txt" y filtra las líneas que contengan el "patrón" utilizando el comando `grep`.                    |
| `comando1 2> archivo`        | Redirige la salida de error estándar de un comando a un archivo.   | `rm archivo_inexistente 2> error.log`                                              | Intenta eliminar un archivo inexistente y redirige el mensaje de error al archivo "error.log".                                                |
| `comando1 2>> archivo`       | Redirige la salida de error estándar de un comando y la agrega a un archivo. | `find directorio/ -name "*.txt" 2>> errores.log`                              | Busca archivos con extensión ".txt" en el directorio "directorio/" y agrega los mensajes de error al archivo "errores.log".                     |
| `comando1 &> archivo`        | Redirige tanto la salida estándar como la salida de error estándar de un comando a un archivo. | `ls directorio/ &> salida_errores.txt`                                     | Lista los archivos en el directorio "directorio/" y redirige tanto la salida estándar como la salida de error al archivo "salida_errores.txt". |
| `comando1 \| comando2 \| comando3` | Conecta múltiples comandos en una tubería.                                       | `cat archivo.txt \| grep "patrón" \| wc -l`                                 | Muestra el número de líneas que contienen el "patrón" en el archivo "archivo.txt" utilizando una tubería de comandos `cat`, `grep` y `wc`.                                                             |
| `comando > /dev/null`   | Redirige la salida estándar de un comando a la nada (se descarta). | `ls > /dev/null`                                                              | Lista los archivos en el directorio actual, pero la salida se descarta.          |
| `comando 2> /dev/null`  | Redirige la salida de error estándar de un comando a la nada.     | `rm archivo_inexistente 2> /dev/null`                                          | Intenta eliminar un archivo inexistente, pero los mensajes de error se descartan. |
| `comando &> /dev/null`  | Redirige tanto la salida estándar como la salida de error estándar de un comando a la nada. | `comando &> /dev/null`                                                  | Descarta tanto la salida estándar como la salida de error de un comando.         |
