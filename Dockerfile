# Usa una imagen base de Python 3
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt /app/

# Instala las dependencias del archivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Instala Redis (si es necesario, si ya tienes Redis, puedes omitir esta parte)
RUN apt-get update && apt-get install -y redis-server

# Copia el código del proyecto al contenedor
COPY . /app/

# Comando para ejecutar la aplicación (puedes ajustarlo según tu script principal)
CMD ["python3", "main.py"]
