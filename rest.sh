#!/bin/bash

# Carregando configuracao inicial do projeto
source config/config.sh

# Função para criar diretórios
create_directory() {
  mkdir -p "$1"
  mkdir -p "$2"
}

# Criação de diretórios
create_directory "$MAIN_PATH" "$TEST_PATH"
create_directory "$ENTITY" "$ENTITY_TEST"
create_directory "$REPOSITORY" "$REPOSITORY_TEST"
create_directory "$CORS" "$CORS_TEST"
create_directory "$MODEL" "$MODEL_TEST"
create_directory "$TOKEN" "$TOKEN_TEST"
create_directory "$CONTROLLER" "$CONTROLLER_TEST"
create_directory "$MAPPER" "$MAPPER_TEST"

# Carrega o modulo de criação das classes
source modules/create_classes.sh
# Carrega o modulo de implementacao das Entitys
source modules/create_content_file/create_content_entity.sh
# Carrega o modulo de implementacao das Models
source modules/create_content_file/create_content_model.sh
# Carrega o modulo de implementacao das Repositorys
source modules/create_content_file/create_content_repository.sh
# Carrega o modulo de implementacao das Controllers
source modules/create_content_file/create_content_controller.sh
