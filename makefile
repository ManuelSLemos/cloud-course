hello-world:
	docker run --rm hello-world

remove-all:
	docker system prune -f

bash:
	docker run --rm \ # Borrar el contenedor al apagar
	-p 8000:8000 \ # Enlazar puertos 
	-v ${PWD}:/app \ # Compartir volumen (directorio)
	-w /app \ # Definir directorio de trabajo
	-it python:3.10 bash # Crear terminal de una imagen