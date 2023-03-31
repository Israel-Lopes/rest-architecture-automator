#!/bin/bash

# Carregando configuracao inicial do projeto
source config/config.sh

# Criando diretórios
mkdir -p "$MAIN_PATH"
mkdir -p "$TEST_PATH"
# Pacotes do projeto
mkdir -p "$ENTITY"
mkdir -p "$REPOSITORY"
mkdir -p "$CORS"
mkdir -p "$MODEL"
mkdir -p "$TOKEN"
mkdir -p "$CONTROLLER"
mkdir -p "$MAPPER"
# Pacotes do projeto para teste
mkdir -p "$ENTITY_TEST"
mkdir -p "$REPOSITORY_TEST"
mkdir -p "$CORS_TEST"
mkdir -p "$MODEL_TEST"
mkdir -p "$TOKEN_TEST"
mkdir -p "$CONTROLLER_TEST"
mkdir -p "$MAPPER_TEST"

# Carrega o modulo de criação das classes
source modules/create_classes.sh
# Carrega o modulo de implementacao das Entitys
source modules/create_content_file/create_content_entity.sh
# Carrega o modulo de implementacao das Models
source modules/create_content_file/create_content_model.sh
# Carrega o modulo de implementacao das Repositorys
source modules/create_content_file/create_content_repository.sh
# Carrega o modulo de implementacao das Services
# source modules/create_content_file/content_file_service.sh