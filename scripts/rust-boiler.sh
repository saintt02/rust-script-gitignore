#!/bin/zsh

# Verificar que se haya proporcionado un argumento
if [ $# -eq 0 ]; then
    echo "Error: Se requiere un nombre de proyecto como argumento."
    exit 1
fi

# Obtener el nombre del proyecto del primer argumento
nombre_proyecto="$1"

# Crear el proyecto en Rust
cargo new "$nombre_proyecto"

# Moverse al directorio del proyecto
cd "$nombre_proyecto" || exit

# Crear el archivo .gitignore y escribir en él
echo "/target" > .gitignore

# Mensaje de confirmación
echo "Proyecto '$nombre_proyecto' creado exitosamente con .gitignore que incluye /target"
