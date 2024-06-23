#!/bin/bash


read -p "Ingresa el primer número: " a
read -p "Ingresa el segundo número: " b

echo "Selecciona la operación:"
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
read ch

case $ch in
    1) res=$(echo "$a + $b" | bc) ;;
    2) res=$(echo "$a - $b" | bc) ;;
    3) res=$(echo "$a * $b" | bc) ;;
    4) res=$(echo "scale=2; $a / $b" | bc) ;;
    *) echo "Operación no válida." ;;
esac

echo "El resultado es: $res"




