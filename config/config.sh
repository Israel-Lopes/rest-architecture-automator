#!/bin/bash

#########################
##### CONFIGURATION #####
#########################

# Nome do projeto
PROJECT_NAME="ArquiteturaHexagonalEcommerce"
# Classes do domínio
DOMAIN_CLASSES=(
  "Cart:productList=List<Product>,user=User" 
  "Login:email=String,password=String" 
  "Product:name=String,description=String,price=Double" 
  "Registration:name=String,email=String,password=String" 
  "User:name=String,email=String,password=String"
)

# Diretórios do projeto
BORD="./$PROJECT_NAME"
MAIN_PATH="$BORD/main/java/com/$PROJECT_NAME/app"
TEST_PATH="$BORD/test/java/com/$PROJECT_NAME/app"
# Pacotes do projeto
ENTITY="$MAIN_PATH/persistence/entity"
REPOSITORY="$MAIN_PATH/repository"
CORS="$MAIN_PATH/service/cors"
MODEL="$MAIN_PATH/service/model"
TOKEN="$MAIN_PATH/service/token"
CONTROLLER="$MAIN_PATH/web/controller"
MAPPER="$MAIN_PATH/web/mapper"
# Pacotes do projeto para teste
ENTITY_TEST="$TEST_PATH/persistence/entity"
REPOSITORY_TEST="$TEST_PATH/repository"
CORS_TEST="$TEST_PATH/service/cors"
MODEL_TEST="$TEST_PATH/service/model"
TOKEN_TEST="$TEST_PATH/service/token"
CONTROLLER_TEST="$TEST_PATH/web/controller"
MAPPER_TEST="$TEST_PATH/web/mapper"