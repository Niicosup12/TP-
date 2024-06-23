#!/bin/bash

read -p "Ingresa un nombre: " name


response=$(curl -s "https://api.genderize.io/?name=$name")

age=$(echo "$response" | jq -r '.age')

echo "La edad del usuario  '$name' es aproximadamente $age años."

