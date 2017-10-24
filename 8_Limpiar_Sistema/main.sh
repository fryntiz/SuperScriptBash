#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

#############################
##   Variables Generales   ##
#############################

# Menu
while :
    do
        clear

        echo ""
        echo -e "             $amarillo LIMPIAR SISTEMA $rojo   $version"
        echo ""
        echo -e "   $rojo 1)  $verde Eliminar paquetes sin utilizar"
        echo -e "   $rojo 2)  $verde Eliminar paquetes descargados"
        echo -e "   $rojo 0)  $verde Volver atrás$gris"
        echo ""

    read -p "  → " OPCION
    case $OPCION in

        1)  # Eliminar paquetes sin utilizar
            clear
            sudo apt autoremove
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        2)  # Eliminar paquetes descargados
            clear
            sudo apt clean
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        0)  # Volver Atrás
            clear
            break;;

        *)  # Cualquier otra opción que no sea las anteriores
            clear
            echo ""
            echo -e "$rojo La opción elegida no es válida$amarillo introduce otra"
            read -p "Pulsa una tecla para continuar" foo;;
    esac
done
