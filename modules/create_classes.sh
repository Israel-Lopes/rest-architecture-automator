#!/bin/bash

# Gerar classes para cada classe do domínio
for CLASS in "${DOMAIN_CLASSES[@]}"; do
  # Extrair o nome da classe e seus atributos
  IFS=':' read -ra CLASS_INFO <<< "$CLASS"
  CLASS_NAME="${CLASS_INFO[0]}"
  CLASS_ATTRIBUTES=("${CLASS_INFO[@]:1}")

  # Criar arquivos da classe na pasta correspondente
  touch "$MAIN_PATH/persistence/entity/${CLASS_NAME}Entity.java"
  touch "$MAIN_PATH/repository/${CLASS_NAME}Repository.java"
  touch "$MAIN_PATH/service/model/${CLASS_NAME}Model.java"
  touch "$MAIN_PATH/web/controller/${CLASS_NAME}Controller.java"
  touch "$MAIN_PATH/web/mapper/${CLASS_NAME}Mapper.java"
  # Criar arquivos da classe na pasta correspondente para teste
  touch "$TEST_PATH/persistence/entity/${CLASS_NAME}EntityTest.java"
  touch "$TEST_PATH/repository/${CLASS_NAME}RepositoryTest.java"
  touch "$TEST_PATH/service/model/${CLASS_NAME}ModelTest.java"
  touch "$TEST_PATH/web/controller/${CLASS_NAME}ControllerTest.java"
  touch "$TEST_PATH/web/mapper/${CLASS_NAME}MapperTest.java"
done

# Cria pom.xml
touch "./$PROJECT_NAME/pom.xml"
# Cria mvnw
touch "./$PROJECT_NAME/mvnw"
# Cria mvnw.cmd
touch "./$PROJECT_NAME/mvnw.cmd"

# Cria a classe principal Man
touch "$CLASS_MAN_PATH"
# Criar arquivos da classe na pasta correspondente
touch "$MAIN_PATH/service/token/Token.java"
touch "$MAIN_PATH/service/cors/Cors.java"
# Criar arquivos da classe na pasta correspondente para teste
touch "$TEST_PATH/service/cors/CorsTest.java"
touch "$TEST_PATH/service/token/TokenTest.java"
