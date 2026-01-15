# Actividad 1 – Contenedor Docker con k3s

## 📌 Descripción
Esta actividad consiste en crear un contenedor Docker que exponga el puerto **3000** y muestre una página HTML accesible vía **HTTP**.  
La aplicación se despliega en un clúster de Kubernetes utilizando **k3s** como distribución ligera.

La página HTML muestra un contenido simple junto con una imagen cargada desde el directorio `/app/imagen.jpeg`.

---

## 🛠️ Tecnologías utilizadas
- Docker
- Kubernetes
- k3s
- Node.js (http-server)
- HTML

---

## 📁 Estructura del proyecto

Actividad 1/
├── Dockerfile
├── index.html
├── imagen.jpeg
├── deployment.yaml
└── service.yaml

---

## 🐳 Docker

### Construcción de la imagen

docker build -t actividad1-docker:1.0 .
☸️ Kubernetes (k3s)
Despliegue de la aplicación
sudo k3s kubectl apply -f deployment.yaml
sudo k3s kubectl apply -f service.yaml
Verificación de recursos
sudo k3s kubectl get pods
sudo k3s kubectl get svc

🌐 Acceso a la aplicación

El servicio se expone mediante NodePort.

Puerto del contenedor: 3000

Puerto del nodo: 30000
Acceder desde el navegador:
http://localhost:30000

En caso de usar la IP del nodo:
http://<IP_DEL_NODO>:30000

✅ Resultado esperado

La aplicación responde vía HTTP

Se muestra la página HTML

La imagen se carga correctamente desde el contenedor

El despliegue funciona correctamente en k3s