#!/bin/bash

# Directorio donde se encuentran los archivos .vue
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

while true; do
  # Menú para elegir la opción
  echo "Seleccione una opción:"
  echo "1. Sobrescribir App.vue con otro archivo .vue"
  echo "4. Salir"
  
  read -p "Ingrese el número de la opción: " choice

  case $choice in
    1)
      echo "Seleccione un archivo para sobrescribir App.vue:"
      files=($(ls "$dir"/*.vue | grep -v "App.vue" | xargs -n 1 basename))
      for i in "${!files[@]}"; do
        echo "$i. ${files[$i]}"
      done
      echo "x. Volver al menú principal"
      
      read -p "Ingrese el número de la opción: " file_choice

      case $file_choice in
        [0-9]*)
          if ((file_choice >= 0 && file_choice < ${#files[@]})); then
            selected_file=${files[$file_choice]}
            # Copia el contenido del archivo seleccionado en App.vue
            cat "$dir/${selected_file}" > "$dir/App.vue"
            echo "Contenido de ${selected_file} copiado a App.vue"
          else
            echo "Opción inválida"
          fi
          ;;
        x)
          echo "Volviendo al menú principal"
          ;;
        *)
          echo "Opción inválida"
          ;;
      esac
      ;;
    4)
      echo "Saliendo del script"
      break
      ;;
    *)
      echo "Opción inválida"
      ;;
  esac
done
