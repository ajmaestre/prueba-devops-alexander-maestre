FROM python:3.9

WORKDIR /app

COPY . /app

# Crear un directorio para los logs
RUN mkdir -p /app/logs

# Definir un volumen para los logs
VOLUME ["/app/logs"]

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
