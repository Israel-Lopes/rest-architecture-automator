#!/bin/bash

# IMPORTS
source utils/painel.sh
source utils/mk.sh
# Carregando configuracao inicial do projeto
source config/config.sh

# Titulo do programa
_print_painel

# Criação de diretórios
_create_directory "$MAIN_PATH" "$TEST_PATH"
_create_directory "$ENTITY" "$ENTITY_TEST"
_create_directory "$REPOSITORY" "$REPOSITORY_TEST"
_create_directory "$CORS" "$CORS_TEST"
_create_directory "$MODEL" "$MODEL_TEST"
_create_directory "$TOKEN" "$TOKEN_TEST"
_create_directory "$CONTROLLER" "$CONTROLLER_TEST"
_create_directory "$MAPPER" "$MAPPER_TEST"
_create_directory "$MVN_WRAPPER"

# Carrega e executa  o modulo de criação das classes
source modules/create_classes.sh
# Carrega e executa  o modulo de implementacao das Entitys
source modules/create_content_file/create_content_entity.sh
# Carrega e executa  o modulo de implementacao das Models
source modules/create_content_file/create_content_model.sh
# Carrega e executa  o modulo de implementacao das Repositorys
source modules/create_content_file/create_content_repository.sh
# Carrega e executa  o modulo de implementacao das Controllers
source modules/create_content_file/create_content_controller.sh
# Carrega e executa  o modulo de implementacao das Mappers
source modules/create_content_file/create_content_mapper.sh
# Carrega e executa  o modulo de implementacao das Services
source modules/create_content_file/create_content_service.sh
# Carrega e executa  o modulo de implementacao da Man
source modules/create_content_file/create_content_man.sh
# Carrega e executa  o modulo de implementacao do pom.xml
source modules/create_content_file/create_content_pom_xml.sh
# Carrega e executa  o modulo de implementacao do mvnw
source modules/create_content_file/create_content_mvnw.sh
# Carrega e executa o modulo de implementacao do mvnw.cmd
source modules/create_content_file/create_content_mvnw_cmd.sh

# Copia os arquivos estaticos no maven
cp modules/static_files/wrapper/maven-wrapper.jar $MVN_WRAPPER/maven-wrapper.jar
cp modules/static_files/wrapper/maven-wrapper.properties $MVN_WRAPPER/maven-wrapper.properties
rm -rf '(.*)`'