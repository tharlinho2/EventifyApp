# README

Sistema Eventify

Aplicação para cadastrar Eventos onde o mesmo será possível adicionar Lembretes a cada Evento, "lembrando que cada Evento terá no máximo 5 lembretes".

A aplicação conta com a autenticação obrigatória de "Email" e "Senha" para acessar os eventos daquele usuário específico, e com isso os lembretes serão enviados
para o Email do usuário.

# Instalando Sistema

1. Instalar o Docker

2. Para executar o docker, primeiro precisa fazer a imagem do sistema localmente. 
```
docker-compose build
```

3. Crie o arquivo `.env.development` na pasta raíz do projeto e dentro dele adicione as seguintes chaves:

```
DATABASE_URL_HOST=db
DATABASE_USERNAME=postgres
DATABASE_PASSWORD=postgres
```

4. Crie o banco de dados, migração: 
```
docker-compose run --rm app rails db:create
```
```
docker-compose run --rm app rails db:migrate
```

5. Execute o projeto com o comando 
```
docker-compose up -d
```

6. Para parar os containers execute o comando na pasta do projeto 
```
docker-compose down
```