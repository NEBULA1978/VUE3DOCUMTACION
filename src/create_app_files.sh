#!/bin/bash

# Directorio donde se encuentran los archivos .vue
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Crea archivos App15.vue hasta App40.vue
for i in {15..40}; do
  filename="App${i}.vue"
  filepath="${dir}/${filename}"
  echo "<template>" > "$filepath"
  echo "  <div>" >> "$filepath"
  echo "    <h2>${filename}</h2>" >> "$filepath"
  echo "  </div>" >> "$filepath"
  echo "</template>" >> "$filepath"
  echo "" >> "$filepath"
  echo "<script>" >> "$filepath"
  echo "export default {" >> "$filepath"
  echo "}" >> "$filepath"
  echo "</script>" >> "$filepath"
  echo "" >> "$filepath"
  echo "<style>" >> "$filepath"
  echo "/* Estilos opcionales */" >> "$filepath"
  echo "input {" >> "$filepath"
  echo "  margin-right: 10px;" >> "$filepath"
  echo "}" >> "$filepath"
  echo "</style>" >> "$filepath"
  echo "Archivo ${filename} creado"
done
