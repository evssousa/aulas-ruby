# O que é NoSQL e como utilizar o MongoDB Atlas

## O que é NoSQL?
NoSQL significa: "Not Only SQL", ou seja: "Não apenas SQL".

São banco de dados criados para armazenar dados de forma mais
flexível do que bancos tradicionais relacionais.

Exemplos famosos:
- MongoDB
- Redis
- Cassandra
- Firebase Firestore

## Diferença entre SQL e NoSQL
### Banco SQL
Exemplo:
- SQLite
- PostgreSQL
- MySQL

Organização:
```
Banco
 └── Tabelas
      └── Linhas
           └── Colunas
```
Exemplo:
|id|nome|idade|
|--|----|-----|
|1 |João|25   |

### Banco SQL
No MongoDB usamos:
```
Database
 └── Collections
      └── Documents
```
Documento exemplo:
``` json
{
  "nome": "João",
  "idade": 25
}
```

## Vantagens no NoSQL
- Estrutura flexível
- Fácil escalar grandes sistemas
- Ótimo para APIs modernas
- JSON nativo
- Muito usado em apps web/mobile

## O que é o MongoDB Atlas?
É a versão online na nuvem do MongoDB.

Você cria conta gratuita e ganha um banco de dados hospedado.

Isso é ótimo porque:
- não precisa instalar nada
- funciona no Codespace
- acesso de qualquer lugar
- plano gratuito

Link: https://mongodb.com/atlas

## Passo básicos
1. Crie uma conta (pode logar com o Google)
2. Clique em `Create on organization`
3. Coloque o nome da organização e selecione o Cloud Service MongoDB Atlas
4. Vá seguindo os passos até criar a organização
5. Clique em `Create new project`, adicione as informações e clique em Next até criar o projeto
6. Depois do projeto criado, clique em `+ Create` em Create a cluster
7. Selecione Free e adicione um nome ao cluster
8. Crie o nome de usuário e senha e não perda esses dados!
Crie como: Username: db_teste, Password: 123456abc
Depois clique em `Create Database User`
9. Vá em Security no menu lateral esquerdo, e em Security Quickstart
10. Procure por "Add entries to your IP Access List". Você verá um endereço IP
em IP Access List. Altere para 0.0.0.0/0, isso permite conexão de qualquer lugar
11. Para obter a string de conexão, vá em Project Overview e procure por
Application Development, e selecione Ruby e clique em Get connection string
Você irá encontrar algo assim: 
`mongodb+srv://db_teste:<db_password>@teste.lemcume.mongodb.net/?appName=Teste`

## Criando banco e collection
Dentro do Atlas:

Procure por Add data e depois Create Database on Atlas, utilize as informações
abaixo:

```
Banco: fliperama
Collection: jogos
```

Em Insert JSON, adicione manualmente:
```
{
  "nome": "Mario Kart",
  "ano": 1992,
  "nota": 9.5
}
```

E clique em Create Database.

## MongoDB no Ruby.
Instale a gem: `> gem install mongo`

Em main.rb, adicione o código:

```rb
require 'mongo'

client = Mongo::Client.new("SUA_STRING")

db = client.use("fliperama")

collection = db[:jogos]

collection.insert_one({
  nome: "Zelda",
  ano: 1998,
  nota: 9.5
})
```