**Pasos para clonar el repositorio de GitHub**:+1:

1.En la página principal del archivo, ir a la pestaña < > Code, verificar que estén en la rama main, buscar el botón Code y desplegar. Se abre una ventanita con tres opciones: HTTPS, SSH y GitHubCLI. Posicionarse en HTTPS Y copiar la dirección del repositorio (Ej: git@github.com:tu_nombre_usuario/Programacion/Curriculums Team.git), que luego se usará seguido del comando git clone.

2.Elegir una carpeta donde querramos tener el proyecto, click derecho y selecionar Git Bash Here, se abrirar la consola y pondremos git clone git@github.com:tu_nombre_usuario/Programacion/Curriculums Team.git y darle enter.

3.Escribir el comando cd + la carpeta con el nombre donde tengan el proyecto para posicionarse dentro de lo que sería su repositorio local.
Para crear una rama, uso el comando git branch + nombre de la rama que quiero crear. Usaremos nuestro nombre y apellido o un alias que nos identifique.

4.Si todo salió correctamente debemos ingresar el comando git checkout + nombre de la rama para cambiarnos a nuestra rama de trabajo.
Esto se debería de ver reflejado en el nombre de nuestra rama que pasa de ser main a <elnombre de nuestra rama> en color celeste.

5.Para moverme entre ramas:

-git checkout nombre_de_la_rama

6.Para subir los cambios locales al repositorio remoto (GitHub):

-git status ( compruebo los cambios, aparecen en rojo )

-git add . ( subo todos los cambios a la staging area) ó

-git add nombre del archivo ( subo solo el o los archivos que elijo )

-git status ( es opcional, pero recomendable volver a corroborar, aparecen los cambios en la staging area en verde)

-git commit -m "mensaje informativo"

-git push ( si ya he subido algo antes )

-git push --set-upstream origin nombre_de_la_rama ( si es la primera vez que lo hago )

7.En GitHub

-compare y pull request

-create pull request

-Merge pull request en GitHub de mi rama con main 

:wink:




