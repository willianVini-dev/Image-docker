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

🚀 Comandos Básicos do Docker
  Comando	Descrição
  docker version	   Exibe a versão instalada do Docker
  docker info	Mostra informações detalhadas sobre o Docker
  docker help	Exibe  ajuda e lista de comandos disponíveis

📦 Comandos para Imagens
  Comando	Descrição
  docker images	            Lista todas as imagens locais
  docker pull <imagem>	    Baixa uma imagem do Docker Hub
  docker build -t <nome>	  Cria uma imagem a partir de um Dockerfile
  docker rmi <imagem>	      Remove uma imagem
  docker tag <imagem> <tag>	Adiciona uma tag a uma imagem existente
  docker push <imagem>	    Envia uma imagem para o Docker Hub

🐳 Comandos para Containers
  Comando	Descrição
  docker ps	                  Lista containers em execução
  docker ps -a	              Lista todos os containers (ativos e inativos)
  docker run <imagem>	        Cria e executa um container a partir de uma imagem
  docker run -d <imagem>	    Executa um container em segundo plano (detached)
  docker run -it <imagem>	    Inicia um container interativo
  docker start <container>	  Inicia um container parado
  docker stop <container>	    Para um container em execução
  docker restart <container>	Reinicia um container
  docker rm <container>	      Remove um container
  docker logs <container>	    Exibe os logs de um container
  docker exec -it <container> bash	Acessa o terminal de um container

🛠️ Comandos para Volumes e Redes
  Comando	Descrição
  docker volume ls	          Lista todos os volumes
  docker volume create <nome>	Cria um volume
  docker volume rm <volume>	  Remove um volume
  docker network ls          	Lista todas as redes
  docker network create <nome>	Cria uma rede
  docker network connect	    Conecta um container a uma rede

🧩 Comandos para Docker Compose
  Comando	Descrição
  docker-compose up	               Inicia os serviços definidos no docker-compose.yml
  docker-compose                   down	Para e remove os containers do docker-compose.yml
  docker-compose                   build	Constrói as imagens definidas no docker-compose.yml
  docker-compose                   logs	Exibe os logs dos serviços
  docker-compose ps	               Lista os serviços em execução

  📋 Outros Comandos Úteis
  Comando	Descrição
  docker inspect <container>	Exibe informações detalhadas sobre um container
  docker stats	              Monitora o uso de recursos dos containers
  docker top <container>	    Mostra os processos ativos dentro de um container
  docker system prune	        Remove imagens, containers, volumes e redes não utilizados
  docker cp <container>:<arquivo> .	Copia arquivos de um container para o host