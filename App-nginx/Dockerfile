FROM nginx:latest

# Instala ferramentas de rede e fuso horário
RUN apt-get update && apt-get install -y \
    curl \
    iputils-ping \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=America/Sao_Paulo

WORKDIR /usr/share/nginx/html
