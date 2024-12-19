## Comandos do Docker

Este documento explica os comandos Docker para criar e rodar uma aplicação.

Criando a Imagem

O comando abaixo cria a imagem Docker da sua aplicação.

 - docker build -t app .

Explicação dos parâmetros:

docker build: Comando para construir uma imagem Docker a partir de um Dockerfile.

-t app: Define o nome (tag) da imagem como app. Isso ajuda a identificar a imagem criada.

.: Especifica o contexto de build, geralmente o diretório atual, onde o Dockerfile está localizado.

Rodando a Imagem

O comando abaixo executa a imagem Docker criada, iniciando um contêiner da aplicação.

 - docker run -dp 3000:3000 app

Explicação dos parâmetros:

docker run: Comando para executar um contêiner a partir de uma imagem.

-d: Executa o contêiner em segundo plano (modo "detached").

-p 3000:3000: Mapeia a porta 3000 do host para a porta 3000 no contêiner, permitindo o acesso à aplicação via localhost:3000.

app: Nome da imagem que será usada para criar o contêiner.