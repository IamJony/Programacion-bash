# Programacion-bash
Una pequeña recopilacion de recursos en español para aprender a programar en bash.

# Anexos
1. [Manual de bash scripting para principiantes](https://es.wikibooks.org/wiki/El_Manual_de_BASH_Scripting_B%C3%A1sico_para_Principiantes#Llamando_a_una_variable)
2. [Guia basica de bash](https://aprendeaprogramar.com/course/view.php?id=10)
3. [Script en bash curso by atareao](https://atareao.es/tutorial/scripts-en-bash/)
# Índice
1. [Introducción](#Comandos-básicos-para-programación-en-bash)
2. [Variables y asignaciones](#Variables-y-asignaciones)
3. [Condicionales](#Condicionales)
4. [Operadores especiales](#Operadores-especiales)
5. [Redirección y tuberias](#Redirección-y-tuberias)
6. [Establecer parametros de ejecucion a mi script](#Establecer-parametros-de-ejecucion-a-mi-script)
7. [Colorear Texto y Embellezer nuestros scripts](#Colorear-Texto)
8. [Web scraping con bash](#Web-scraping-con-bash)
9. [Ejemplo practico webscraping](#Ejemplo-practico-webscraping)
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

#### lista de parámetros que pueden ser usados en un condicional
- `-a`: Lógico AND.
- `-b`: Verifica si un archivo existe y es un archivo de bloques especiales.
- `-c`: Verifica si un archivo existe y es un archivo de caracteres especiales.
- `-d`: Verifica si un directorio existe.
- `-e`: Verifica si un archivo o directorio existe.
- `-f`: Verifica si un archivo existe y es regular.
- `-g`: Verifica si un archivo existe y tiene el bit SGID establecido.
- `-h`: Verifica si un archivo existe y es un enlace simbólico.
- `-k`: Verifica si un archivo existe y tiene el bit sticky establecido.
- `-p`: Verifica si un archivo existe y es un pipe (tubería) nominal.
- `-r`: Verifica si un archivo existe y tiene permisos de lectura.
- `-s`: Verifica si un archivo existe y tiene un tamaño mayor que cero.
- `-t`: Verifica si un descriptor de archivo (número) está asociado con un terminal.
- `-u`: Verifica si un archivo existe y tiene el bit SUID establecido.
- `-w`: Verifica si un archivo existe y tiene permisos de escritura.
- `-x`: Verifica si un archivo existe y tiene permisos de ejecución.
- `-z`: Verifica si una cadena está vacía.
- `-n`: Verifica si una cadena no está vacía.
- `-eq`: Igualdad numérica.
- `-ne`: Desigualdad numérica.
- `-lt`: Menor que numérico.
- `-le`: Menor o igual que numérico.
- `-gt`: Mayor que numérico.
- `-ge`: Mayor o igual que numérico.



## Operadores especiales



| Comando/Expresión     | Descripción                                                   | Ejemplo de Uso                                                  | Qué hace el comando                                             |
|-----------------------|---------------------------------------------------------------|-----------------------------------------------------------------|-----------------------------------------------------------------|
| `[[ -d <directorio> ]]` | Verifica si `<directorio>` existe y es un directorio.        | `if [[ -d $dir ]]; then echo "El directorio existe."; fi`        | Verifica si el directorio `$dir` existe y, en caso afirmativo, imprime "El directorio existe.". |
| `[[ -f <archivo> ]]`    | Verifica si `<archivo>` existe y es un archivo regular.      | `if [[ -f $file ]]; then echo "El archivo existe."; fi`          | Verifica si el archivo `$file` existe y, en caso afirmativo, imprime "El archivo existe.". |
| `[[ -e <ruta> ]]`       | Verifica si `<ruta>` existe (archivo o directorio).          | `if [[ -e $path ]]; then echo "La ruta existe."; fi`             | Verifica si la ruta `$path` existe y, en caso afirmativo, imprime "La ruta existe.". |
| `[[ -r <archivo> ]]`    | Verifica si `<archivo>` tiene permisos de lectura.          | `if [[ -r $file ]]; then echo "El archivo es legible."; fi`      | Verifica si el archivo `$file` tiene permisos de lectura y, en caso afirmativo, imprime "El archivo es legible.". |
| `[[ -w <archivo> ]]`    | Verifica si `<archivo>` tiene permisos de escritura.        | `if [[ -w $file ]]; then echo "El archivo es escribible."; fi`   | Verifica si el archivo `$file` tiene permisos de escritura y, en caso afirmativo, imprime "El archivo es escribible.". |
| `[[ -x <archivo> ]]`    | Verifica si `<archivo>` tiene permisos de ejecución.        | `if [[ -x $file ]]; then echo "El archivo es ejecutable."; fi`   | Verifica si el archivo `$file` tiene permisos de ejecución y, en caso afirmativo, imprime "El archivo es ejecutable.". |
| `[[ -s <archivo> ]]`    | Verifica si `<archivo>` existe y no está vacío.              | `if [[ -s $file ]]; then echo "El archivo no está vacío."; fi`   | Verifica si el archivo `$file` existe y no está vacío, y en caso afirmativo, imprime "El archivo no está vacío.". |



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
## Establecer parametros de ejecucion a mi script
 Definir un parámetro de ejecución en un script sirve para personalizar y modular su funcionamiento. Esto significa que mediante la entrada proporcionada por un usuario al momento de ejecutar el script, podemos determinar qué función específica o qué acción realizará el script

**wget**: wget acepta muchos parametros como por ejemplo

-O <file>: Especifica el nombre de archivo de salida para la descarga.

-P <directory>: Guarda todos los archivos descargados en el directorio especificado.

-q o --quiet: Ejecución silenciosa, no muestra información sobre el progreso de la descarga.

-c o --continue: Continúa la descarga parcial de un archivo si la descarga fue interrumpida anteriormente.

-r o --recursive: Descarga de forma recursiva todos los archivos enlazados desde la URL proporcionada.

-np o --no-parent: Evita la descarga de archivos que estén enlazados en directorios superiores a la URL proporcionada.

### Ejemplo sencillo de como establecer mis propios parametros de ejecucion
El siguiente script define dos parámetros, --saludar y --cantar. Cada uno de estos parámetros tiene una función específica: --saludar imprime un saludo en pantalla, mientras que --cantar imprime una porción de una canción. Para ejecutar el script con alguno de estos parámetros, se utiliza el formato `myscript.sh --saludar` o `myscript.sh --cantar`, como se muestra en la imagen a continuación:

```bash
#!/bin/bash

if [[ $1 == "--saludar" ]]; then
    echo "hola soy la computadora de $USER"
elif [[ $1 == "--cantar" ]]; then
    echo "y se marcho, y a su barco le llamo libertad y en el cielo descubrio gabiotas"
else 
    cat <<- _EOF_
    
    No option specified, Available options:
      
      --saludar: imprime en pantalla un agradable saludo    
      --cantar: imprime en pantalla una porcion de una cancion

_EOF_

fi
```

## Modularizacon 
La modularización en Bash scripting es la técnica de dividir un script Bash en módulos más pequeños y manejables. Esto se logra organizando y separando el código en funciones independientes que realizan tareas específicas dentro del script. Estas funciones encapsulan partes del código con una tarea bien definida, lo que facilita su lectura, comprensión y mantenimiento.

### Source
El comando source en Bash es utilizado para ejecutar los comandos de un archivo dentro del contexto actual de la shell, en lugar de iniciar un nuevo proceso para ejecutarlos. En esencia, source carga y ejecuta los comandos contenidos en un archivo dentro del entorno actual, lo que incluye la definición de variables, funciones y otros comandos de shell válidos presentes en ese archivo

#### Ejemplo practico de modularizacion usando source
El siguiente script en Bash consta de dos partes: la primera contiene las funciones a definir y el segundo script contiene una interfaz de línea de comandos (CLI) intuitiva y básica. En el primer script se encuentra la función whatIsMyIP, que utiliza curl para hacer una petición a ipinfo.io. La respuesta es un archivo JSON, y usando la herramienta jq, extraemos el valor de la IP de la respuesta JSON. De esta manera, obtenemos la IP pública de nuestro ordenador.

```bash
#!/bin/bash

function whatIsMyIP () {
   
   response=$(curl -s https://ipinfo.io/json)
   ip=$(echo "$response" | jq -r '.ip')                                   
   echo "$ip"             
   
}

```
Como pueden observar en el segundo script, se trata de una interfaz de línea de comandos (CLI) simple. Utilizamos la palabra reservada source para indicar la ruta del primer script donde se encuentra nuestra función whatIsMyIP. Usando echo, especificamos las opciones disponibles al usuario y, mediante read, capturamos la entrada del usuario. Luego, a través de una estructura case, especificamos las acciones que el script llevará a cabo si el usuario escribe "1" o "2".

```bash
#!/bin/bash

# recuerde que debe especificar la ruta donde se encuentra la funcion,
# en mi caso ese primer scripts esta en la ruta /tmp/ y se llama 1.sh 

source /tmp/1.sh

echo ""
echo -e "\e[1;32m1) Averiguar mi IP
2) Buscar informacion de IP \e[0m"
echo ""

read -p "selecione una opcion: " opcion

case $opcion in
  1) whatIsMyIP ;;
  *) echo " \"$option\" Is Not A Valid Option"; sleep 1 ; clear ; ./2.sh ;;
  esac

```

### Salida 
Como pueden observar, al elegir la opción "1", el script arroja la IP pública del usuario. En este caso, la he censurado xd :).


![ip](https://raw.githubusercontent.com/IamJony/semi-nord-theme-bluefish/main/image(1).png)


## Colorear Texto
Al resaltar partes específicas del script con colores, como mensajes de salida o información importante, se pueden destacar de manera efectiva informacion relevante, lo que hace mas amigable nuestro scripts, tambien podemos construir interfaz CLI muy bonitas, acontinuacion una lista code ANSI que uso adirio para embellezer mis script.
| Color           | Código ANSI    | Ejemplo                             |
| --------------- | -------------- | ----------------------------------- |
| Blanco          | `\e[0;37m`       | `echo -e "\e[0;37mTexto en Blanco\e[0m"` |
| Negro           | `\e[0;30m`       | `echo -e "\e[0;30mTexto en Negro\e[0m"`|
| Verde           | `\e[0;32m`       | `echo -e "\e[0;32mTexto en Verde\e[0m"` |
| Amarillo        | `\e[0;33m`       | `echo -e "\e[0;33mTexto en Amarillo\e[0m"` |
| Azul            | `\e[0;34m`       | `echo -e "\e[0;34mTexto en Azul\e[0m"` |
| Rojo            | `\e[0;31m`       | `echo -e "\e[0;31mTexto en Rojo\e[0m"` |
| Morado          | `\e[0;35m`       | `echo -e "\e[0;35mTexto en Morado\e[0m"` |
| Cian            | `\e[0;36m`       | `echo -e "\e[0;36mTexto en Cian\e[0m"` |
| Negro Intenso   | `\e[1;30m`       | `echo -e "\e[1;30mTexto en Negro Intenso\e[0m"` |
| Rojo Intenso    | `\e[1;31m`       | `echo -e "\e[1;31mTexto en Rojo Intenso\e[0m"` |
| Verde Intenso   | `\e[1;32m`       | `echo -e "\e[1;32mTexto en Verde Intenso\e[0m"` |
| Amarillo Intenso| `\e[1;33m`       | `echo -e "\e[1;33mTexto en Amarillo Intenso\e[0m"` |
| Azul Intenso    | `\e[1;34m`       | `echo -e "\e[1;34mTexto en Azul Intenso\e[0m"` |
| Morado Intenso  | `\e[1;35m`       | `echo -e "\e[1;35mTexto en Morado Intenso\e[0m"` |
| Cian Intenso    | `\e[1;36m`       | `echo -e "\e[1;36mTexto en Cian Intenso\e[0m"` |
| Blanco Intenso  | `\e[1;37m`       | `echo -e "\e[1;37mTexto en Blanco Intenso\e[0m"` |
| Parpadeo Azul   | `\e[5;34m`     | `echo -e "\e[5;34mTexto en Parpadeo Azul\e[0m"`                |
| Parpadeo Rojo   | `\e[5;31m`     | `echo -e "\e[5;31mTexto en Parpadeo Rojo\e[0m"`                |
| Parpadeo Verde  | `\e[5;32m`     | `echo -e "\e[5;32mTexto en Parpadeo Verde\e[0m"`               |
| Parpadeo Amarillo | `\e[5;33m`   | `echo -e "\e[5;33mTexto en Parpadeo Amarillo\e[0m"`            |
| Parpadeo Morado | `\e[5;35m`     | `echo -e "\e[5;35mTexto en Parpadeo Morado\e[0m"`              |
| Parpadeo Cian   | `\e[5;36m`     | `echo -e "\e[5;36mTexto en Parpadeo Cian\e[0m"`                |

## Ejemplo de interfaz CLI
![GitHub Logo](https://github.com/IamJony/Fast-Youtube-Downloader-Scripts/blob/71e8c0593477b8648f207ba50d5a0433e997360a/example.png?raw=true)
## Web scraping con bash
El web scraping es una técnica utilizada para extraer información de sitios web de manera automatizada. En este documento, te proporcionaré una guía paso a paso sobre cómo realizar web scraping utilizando el lenguaje de scripting Bash.

## I. Herramientas 

1. Curl: Curl es una herramienta de línea de comandos que te permite realizar solicitudes HTTP y HTTPS. Asegúrate de tenerlo instalado en tu sistema.
2. Wget es una herramienta de línea de comandos que se utiliza para descargar archivos desde la web. Aunque no está diseñada específicamente para web scraping, puede ser una herramienta útil en ciertos escenarios

## III. Pasos para realizar web scraping con Bash

1. Identificar la URL de la página web que deseas extraer. Por ejemplo, supongamos que queremos extraer el título de un artículo de un blog. La URL sería algo como: `https://www.example.com/articulo`.

2. Abre un archivo de texto vacío en tu editor de texto preferido y guárdalo con el nombre `scraping.sh`.

3. Abre el archivo `scraping.sh` y añade lo siguiente al principio del archivo:

   ```
  
   #!/bin/bash
   ```

   Esto asegura que el archivo sea interpretado por Bash.

4. Añade el siguiente código para realizar la solicitud HTTP a la URL y almacenar la respuesta en una variable:

   ```
   codeurl="https://www.example.com/articulo"
   response=$(curl -s "$codeurl")
   ```

   En este ejemplo, estamos utilizando la URL que identificamos previamente y la función `curl` para realizar una solicitud GET a la URL. El resultado se guarda en la variable `response`.

5. Utiliza herramientas de manipulación de texto de Bash para extraer la información deseada del HTML. Por ejemplo, si queremos extraer el título del artículo, podemos usar el siguiente código:

   ```
   codeurl="https://www.example.com/articulo"
   response=$(curl -s "$codeurl")
   
   title=$(echo "$response" | grep -o "<title>.*</title>" | sed -e 's/<[^>]*>//g')
   
   echo "Título del artículo: $title"
   ```

   En este caso, estamos utilizando `grep` para encontrar la etiqueta `<title>` en el HTML y luego `sed` para eliminar las etiquetas HTML del resultado. El título extraído se guarda en la variable `title` y se muestra en la terminal.

6. Guarda el archivo `scraping.sh` y cierra tu editor de texto.

7. Abre la terminal y navega hasta el directorio donde guardaste el archivo `scraping.sh`.

8. Ejecuta el siguiente comando en la terminal para hacer el script ejecutable:

   ```
   
   chmod +x scraping.sh
   ```

9. Finalmente, ejecuta el script con el siguiente comando:

   ```
   
   ./scraping.sh
   ```

   El script se ejecutará y mostrará el título del artículo extraído de la página web.
   
   ## Ejemplo practico webscraping
   ### EXTRAER ARTICULO DESTACADO DE LA WIKIPEDIA
A continuacion un script sencillo que extrae el titulo y la url del articulo destacado de hoy de wikipedia, tenga en cuenta que puede que el script deje de funcionar, ya sea por que cambio algo en la estructura html de la wikipedia, pero el ejemplo es util para que usted vea todas las posibilidades que puede hacer con bash.
  
  ![Wiki](https://github.com/IamJony/semi-nord-theme-bluefish/blob/main/Screenshot_2023-06-03-05-35-50_1366x768.png?raw=true)
 ### Script en bash
 ```
 
   url="https://es.wikipedia.org/wiki/Wikipedia:Portada"
   curl -s $url > .wikipedia_hoy.html
   optener_titulo=$(cat .wikipedia_hoy.html | grep 'id="main-tfa"' | grep -o 'title="[^"]*"' | grep -o '".*"' | tr -d '"' )
   optener_link=$(cat .wikipedia_hoy.html | grep 'id="main-tfa"' | grep -o 'href="[^"]*"' | grep -o '".*"' | sed 's/"//g' | sed 's|^|https://es.wikipedia.org/|')
   echo -e "\e[1;32m$optener_titulo\e[0m"
   echo -e "\e[1;33m$optener_link\e[0m"
   rm .wikipedia_hoy.html 2>/dev/null
   
   ```

* `url="https://es.wikipedia.org/wiki/Wikipedia:Portada"`: Asigna la URL de la página de portada de Wikipedia en español a la variable `url`.
* `curl -s $url > .wikipedia_hoy.html`: Descarga el contenido de la página de portada de Wikipedia y lo guarda en el archivo `.wikipedia_hoy.html`.
* `optener_titulo=$(cat .wikipedia_hoy.html | grep 'id="main-tfa"' | grep -o 'title="[^"]*"' | grep -o '".*"' | tr -d '"')`: Extrae el título del artículo destacado de hoy utilizando varias tuberías con `grep`, `tr` y `cat`. Se busca la línea que contiene `id="main-tfa"`, se extrae el valor del atributo `title` y se eliminan las comillas.
* `optener_link=$(cat .wikipedia_hoy.html | grep 'id="main-tfa"' | grep -o 'href="[^"]*"' | grep -o '".*"' | sed 's/"//g' | sed 's|^|https://es.wikipedia.org/|')`: Extrae el enlace del artículo destacado de hoy utilizando varias tuberías con `grep` y `sed`. Se busca la línea que contiene `id="main-tfa"`, se extrae el valor del atributo `href`, se eliminan las comillas y se agrega "https://es.wikipedia.org/" al principio del enlace.
* `echo -e "\e[1;32m$optener_titulo\e[0m"`: Muestra el título del artículo destacado resaltado en verde.
* `echo -e "\e[1;33m$optener_link\e[0m"`: Muestra el enlace del artículo destacado resaltado en amarillo.
* `rm .wikipedia_hoy.html 2>/dev/null`: Elimina el archivo `.wikipedia_hoy.html` utilizado para almacenar temporalmente el contenido descargado, y redirige cualquier mensaje de error al archivo nulo para que no se muestre.



#### Resultado
![webscraping](https://github.com/IamJony/semi-nord-theme-bluefish/blob/cb6f8e810b9c4c1e85084779799c07275bf4cf08/Screenshot_2023-06-03-05-12-04_1366x768.png?raw=true)
