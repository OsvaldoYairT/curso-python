#Usar una imagen base oficial de Python 
FROM python:3.12.10-slim

# Evitar que Python genere archivos .pyc y usar UTF-8 por defecto
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Crear carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de dependencias y luego instalarlas
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el proyecto al contenedor
COPY . .

# Comando por defecto para ejecutar tu aplicación
# Cambia 'app.py' por el archivo principal de tu proyecto
CMD ["python", "app.py"]
