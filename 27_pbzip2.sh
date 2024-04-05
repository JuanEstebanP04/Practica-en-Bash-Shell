# !/bin/bash
# Programa para ejemplificar el empaquetamiento con pbzip 

echo "Empaquetar todos los scripts de la carpeta shellcourse en .tar"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
