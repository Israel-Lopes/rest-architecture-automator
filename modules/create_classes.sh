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
  touch "$MAIN_PATH/service/cors/${CLASS_NAME}Cors.java"
  touch "$MAIN_PATH/service/model/${CLASS_NAME}Model.java"
  touch "$MAIN_PATH/service/token/${CLASS_NAME}Token.java"
  touch "$MAIN_PATH/web/controller/${CLASS_NAME}Controller.java"
  touch "$MAIN_PATH/web/mapper/${CLASS_NAME}Mapper.java"

  touch "$TEST_PATH/persistence/entity/${CLASS_NAME}EntityTest.java"
  touch "$TEST_PATH/repository/${CLASS_NAME}RepositoryTest.java"
  touch "$TEST_PATH/service/cors/${CLASS_NAME}CorsTest.java"
  touch "$TEST_PATH/service/model/${CLASS_NAME}ModelTest.java"
  touch "$TEST_PATH/service/token/${CLASS_NAME}TokenTest.java"
  touch "$TEST_PATH/web/controller/${CLASS_NAME}ControllerTest.java"
  touch "$TEST_PATH/web/mapper/${CLASS_NAME}MapperTest.java"

done

echo "Arquivos criados com sucesso!"
