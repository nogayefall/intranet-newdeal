# Image de base nginx:alpine3.23-slim
FROM nginx:alpine3.23

# Copie des fichiers du site statique
COPY index.html /usr/share/nginx/html/
COPY elements.html /usr/share/nginx/html/
COPY generic.html /usr/share/nginx/html/
COPY landing.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets
COPY images /usr/share/nginx/html/images

# Exposition du port 80
EXPOSE 80

# Démarrage de nginx
CMD ["nginx", "-g", "daemon off;"]