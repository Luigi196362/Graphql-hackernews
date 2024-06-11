# Utilizar una imagen base de Python
FROM python:3.8

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar el archivo requirements.txt a la imagen
COPY requeriments.txt /app/

# Instalar las dependencias del proyecto
RUN pip install --upgrade pip
RUN pip install -r requeriments.txt

# Copiar el resto del código de la aplicación a la imagen
COPY . /app/

# Exponer el puerto 8000 para la aplicación
EXPOSE 8000

# Comando para iniciar la aplicación
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
