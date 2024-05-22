# Dockerfile para entorno de desarrollo

# Imagen base
FROM python:3.8

# Directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de requerimientos
COPY requirements.txt .

# Instala las dependencias
RUN pip install -r requirements.txt

# Copia el código de la aplicación
COPY . .

# Puerto que se expone
EXPOSE 8000

# Comando para ejecutar el servidor Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]