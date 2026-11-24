# Servidor estático do front-end (só para uso local; o site publicado vem do GitHub Pages).
FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
# O conteúdo (index.html + markdown/) é montado por volume no docker-compose,
# então editar um .md aparece no navegador sem rebuild (basta recarregar).
EXPOSE 80
