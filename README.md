# rest-architecture-automator

# ![banner](img/banner.png)

## Dependencias
 - docker buildx
 - cut

## Estrutura das pastas 

- `main`: diretório principal do projeto.
- `java`: diretório para o código fonte em Java.
- `com`: diretório raiz dos pacotes Java.
- `AppExample`: nome da aplicação.
- `app`: pacote da aplicação.
- `persistence`: pacote que contém as entidades do banco de dados.
- `entity`: pacote que contém as classes que representam as tabelas do banco de dados.
- `repository`: pacote que contém as classes que implementam as interfaces dos repositórios.
- `service`: pacote que contém as classes de serviços da aplicação.
- `cors`: pacote que contém as classes responsáveis por configurar o Cross-Origin Resource Sharing (CORS).
- `model`: pacote que contém as classes de modelo da aplicação.
- `token`: pacote que contém as classes responsáveis por gerar e validar tokens de autenticação.
- `web`: pacote que contém as classes responsáveis pela comunicação web.
- `controller`: pacote que contém as classes controladoras da aplicação.
- `mapper`: pacote que contém as classes que realizam a conversão de objetos entre as camadas da aplicação.

Esta é a estrutura do projeto default e cada diretório possui sua respectiva descrição.

```
.
├── main
│   └── java
│       └── com
│           └── AppExample
│               └── app
│                   ├── persistence
│                   │   └── entity
│                   │
│                   ├── repository
│                   │
│                   ├── service
│                   │   ├── cors
│                   │   │
│                   │   ├── model
│                   │   │
│                   │   └── token
│                   │       
│                   └── web
│                       ├── controller
│                       │
│                       └── mapper
```

## Configuração do modelo de classes

Para configurar o modelo de classes basta acessar arquivo config/config.sh

Dentro do arquivo temos a variavel ``DOMAIN_CLASSES`` que e responsavel por armazenar as classes e seus atributos. Por default ja existe uma configuraçao nela, porem basta apagala e seguir a mesma convenção.

Primeiro deve se especificar entres aspas o nome da classe seguido por dois pontos, depois nome do atributo=Tipo_do_atributo seguindo de virgula caso existam mas campos.

Segue exemplo abaixo:

```
DOMAIN_CLASSES=(
  "ClassExemplo1:id=Long,productList=List<Product>,user=User" 
  "ClassExemplo2:id=Long,email=String,password=String" 
  "ClassExemplo3:id=Long,name=String,description=String,price=Double" 
  "ClassExemplo4:id=Long,name=String,email=String,password=String"
)
```

O programa ira criar toda as demais estruturas a partir dessa configuracao.

## Execução

Depois de configurado as classes e atributos, basta executar ``./rest.sh`` api sera criada dentro do diretorio.

Para quem nao possui ambiente Linux para executar script, basta executar apartir do docker, seguindo o passo abaixo.

<br />

Instale buildx caso nao tenha

``docker buildx install``

Crie a imagem docker 

``sudo docker buildx build -t nome_da_imagem:latest .``

Executar container

``sudo docker run -it -p 8080:8080 nome_da_imagem``

Para executar em modo interativo

``docker run -it <nome_da_imagem>``

Executar fora da imagem

``sudo docker run -v <diretorio_completo_onde_esta_rest.sh>:/app -w /app nome_da_imagem bash rest.sh``