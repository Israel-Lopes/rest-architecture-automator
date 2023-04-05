# Imagem base
FROM ubuntu:latest

# Instalação do bash
RUN apt-get update && \
    apt-get install -y bash && \
    apt-get clean

# Copia o diretório do projeto
COPY . /app

# Define o diretório de trabalho
WORKDIR /app

# Executa o script
CMD ["bash", "./rest.sh"]
