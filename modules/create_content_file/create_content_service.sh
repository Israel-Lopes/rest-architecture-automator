#!/bin/bash

# Verifica se o diretório existe. Se não existir, cria o diretório.
if [ ! -d "$SERVICE_PATH" ]; then
  mkdir -p "$SERVICE_PATH"
fi

# Navega até o diretório onde as classes de serviço serão criadas
# cd "$SERVICE_PATH"

# Loop através das classes do domínio
for DOMAIN_CLASSE in "${DOMAIN_CLASSES[@]}"; do

  # Separa o nome da classe e seus atributos
  IFS=':' read -r CLASS_NAME classAttributes <<< "$DOMAIN_CLASSE"
  # Define o nome do arquivo da classe
  FILE_NAME="${CLASS_NAME}Service.java"

  # Escreve o conteúdo da classe no arquivo
  echo "package com.example.$PROJECT_NAME.service;" > "$SERVICE_PATH/$FILE_NAME"
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import com.example.$PROJECT_NAME.domain.$CLASS_NAME;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  echo "public class ${CLASS_NAME}Service {" >> "$SERVICE_PATH/$FILE_NAME"
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  echo "  public ${CLASS_NAME} create${CLASS_NAME}(${classAttributes//,/}) {" >> "$SERVICE_PATH/$FILE_NAME"
  echo "    ${CLASS_NAME} ${CLASS_NAME,,} = new ${CLASS_NAME}();" >> "$SERVICE_PATH/$FILE_NAME"
  
  # Loop através dos atributos da classe e define os setters
  IFS=',' read -ra attrList <<< "$classAttributes"
  for attribute in "${attrList[@]}"; do
    IFS='=' read -r attrName attrType <<< "$attribute"
    echo "    ${CLASS_NAME,,}.set${attrName^}($attrName);" >> "$SERVICE_PATH/$FILE_NAME"
  done
  
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  echo "    return ${CLASS_NAME,,};" >> "$SERVICE_PATH/$FILE_NAME"
  echo "  }" >> "$SERVICE_PATH/$FILE_NAME"
  echo "}" >> "$SERVICE_PATH/$FILE_NAME"

  echo "Criada classe ${CLASS_NAME}Service em ${SERVICE_PATH}/${FILE_NAME}"
done

# Compila o projeto com Maven
# mvn compile