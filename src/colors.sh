#!/bin/bash

White='\e[0;37m'
Black='\e[0;30m'
Green='\e[0;32m'
Yellow='\e[0;33m'
Blue='\e[0;34m'
Red='\e[0;31m'
Magenta='\e[0;35m'
Cyan='\e[0;36m'

# bold text color
# color de texto en negrita
BBlack='\e[1;30m'     
BRed='\e[1;31m'       
BGreen='\e[1;32m'     
BYellow='\e[1;33m'    
BBlue='\e[1;34m'      
BMagenta='\e[1;35m'   
BCyan='\e[1;36m'      
BWhite='\e[1;37m'     

# blinking text color codes
# color de texto parpadeante
BkBlue='\e[5;34m'     
BkRed='\e[5;31m'      
BkGreen='\e[5;32m'    
BkYellow='\e[5;33m'   
BkMagenta='\e[5;35m'  
BkCyan='\e[5;36m'     

# underline text color codes
# códigos de color de texto subrayado
UlBlack='\e[4;30m'    
UlRed='\e[4;31m'      
UlGreen='\e[4;32m'    
UlYellow='\e[4;33m'   
UlBlue='\e[4;34m'     
UlMagenta='\e[4;35m'  
UlCyan='\e[4;36m'     
UlWhite='\e[4;37m'    

# background color codes
# Definir códigos de color de fondo
BgBlack='\033[40m'
BgRed='\033[41m'
BgGreen='\033[42m'
BgYellow='\033[43m'
BgBlue='\033[44m'
BgMagenta='\033[45m'
BgCyan='\033[46m'
BgWhite='\033[47m'

# Define bright background color codes
# Definir códigos de color de fondo brillante
BkgBrightBlack='\033[40;1m'
BkgBrightRed='\033[41;1m'
BkgBrightGreen='\033[42;1m'
BkgBrightYellow='\033[43;1m'
BkgBrightBlue='\033[44;1m'
BkgBrightMagenta='\033[45;1m'
BkgBrightCyan='\033[46;1m'
BkgBrightWhite='\033[47;1m'

# Reset color
# Restablecer color
Reset='\033[0m'
