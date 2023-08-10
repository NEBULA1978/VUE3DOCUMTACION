#!/bin/bash

# Directorio donde se encuentran los archivos .vue
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Menú para elegir la opción
echo "Seleccione un archivo para sobrescribir App.vue:"
files=($(ls $dir/*.vue | grep -v "App.vue" | xargs -n 1 basename))
for i in "${!files[@]}"; do
  echo "$i. ${files[$i]}"
done
echo "x. Salir"

read -p "Ingrese el número de la opción: " choice

case $choice in
  [0-9]*)
    if ((choice >= 0 && choice < ${#files[@]})); then
      selected_file=${files[$choice]}
      # Copia el contenido del archivo seleccionado en App.vue
      cat "$dir/$selected_file" > "$dir/App.vue"
      echo "Contenido de $selected_file copiado a App.vue"
    else
      echo "Opción inválida"
    fi
    ;;
  x)
    echo "Saliendo del script"
    ;;
  *)
    echo "Opción inválida"
    ;;
esac
