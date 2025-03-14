# 📌 Parcial de DevOps

---

## 📥 1. Integrantes

### 🔹 Alexander de Jesús Maestre Torres
### 🔹 Gustavo Alberto Ochoa Diaz


## 🔄 2. Descargar la API desde GitHub

Clona el repositorio:
```sh
git clone https://github.com/ajmaestre/prueba-devops-alexander-maestre.git
cd prueba-devops-alexander-maestre
```
---

## 🐳 3. Ejecutar script

```sh
chmod +x start.sh
./start.sh

```

---

---

## 🐳 4. Construcción de la Imagen Docker

2️⃣ Construye la imagen:
```sh
docker build . -t prueba-devops-app
```

---

## 🚀 5. Ejecutar los Contenedores con Docker

### 🔹 Ejecución:
```sh
docker run -d --name prueba-devops -p 5000:5000 prueba-devops-app

```

### 🔹 Ejecución con volumen:
```sh
docker run -d --name prueba-devops -p 5000:5000 -v $(pwd)/logs:/app/logs prueba-devops-app

```

---

## 📝 6. Verificación de Contenedores en Ejecución

```sh
docker ps
```

---

## 📝 7. Verificación en el Navegador

```sh
http://localhost:5000
```

---