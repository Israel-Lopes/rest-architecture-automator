#!/bin/bash

# Verifica se o diretório de destino das classes existe
if [ ! -d "$MAPPER" ]; then
  echo "Diretório de destino não encontrado: $MAPPER"
  exit 1
fi

# Gera as implementações das classes mappers
for MAPPER_FILE in $MAPPER/*Mapper.java; do
  MAPPER_NAME=$(basename "$MAPPER_FILE" .java)
  MODEL_NAME="${MAPPER_NAME%Mapper}"
  ENTITY_NAME="${MODEL_NAME}Entity"
  
  # Escreve o conteúdo no arquivo do mapper
  echo "package com.$PROJECT_NAME.app.web.mapper;" | sed 's/\//./g' >> "$MAPPER_FILE"
  echo "" >> "$MAPPER_FILE"
  echo "import com.$PROJECT_NAME.app.persistence.entity.$ENTITY_NAME;" | sed 's/\//./g' >> "$MAPPER_FILE"
  echo "import com.$PROJECT_NAME.app.service.model.${MODEL_NAME}Model;" | sed 's/\//./g' >> "$MAPPER_FILE"
  echo "" >> "$MAPPER_FILE"
  echo "import java.util.List;" >> "$MAPPER_FILE"
  echo "import java.util.stream.Collectors;" >> "$MAPPER_FILE"
  
  echo "" >> "$MAPPER_FILE"

  echo "public class $MAPPER_NAME {" >> "$MAPPER_FILE"

  echo "" >> "$MAPPER_FILE"
  echo "    private $MAPPER_NAME() { super(); }" >> "$MAPPER_FILE"
  echo "" >> "$MAPPER_FILE"

  echo "    public static List<$ENTITY_NAME> marshall(List<${MODEL_NAME}Model> models) {" >> "$MAPPER_FILE"
  echo "" >> "$MAPPER_FILE"
  echo "        return models.stream().map($MAPPER_NAME::marshall).collect(Collectors.toList());" >> "$MAPPER_FILE"
  echo "    }" >> "$MAPPER_FILE"
  echo "" >> "$MAPPER_FILE"

  echo "    public static List<${MODEL_NAME}Model> unmarshall(List<$ENTITY_NAME> entities) {" >> "$MAPPER_FILE"
  echo "        return entities.stream().map($MAPPER_NAME::unmarshall).collect(Collectors.toList());" >> "$MAPPER_FILE"
  echo "    }" >> "$MAPPER_FILE"

  echo "" >> "$MAPPER_FILE"
  echo "    public static ${ENTITY_NAME} marshall(${MODEL_NAME}Model model) {" >> "$MAPPER_FILE"
  echo "        return $ENTITY_NAME.builder()" >> "$MAPPER_FILE"

  # Escreve as propriedades do model no builder do entity
  for MODEL_PROP in $(compgen -v "$MODEL_NAME"_PROP_); do
    ENTITY_PROP="${model_prop%_PROP_}"
    ENTITY_PROP_NAME="${ENTITY_PROP}Id"
    MODEL_PROP_VALUE="${!MODEL_PROP}"
    if [ "$ENTITY_PROP_NAME" = "cartId" ]; then
      ENTITY_PROP_NAME="id"
    fi
    echo "                .$ENTITY_PROP_NAME(model.$MODEL_PROP_VALUE())" >> "$MAPPER_FILE"
  done

  echo "                .build();" >> "$MAPPER_FILE"
  echo "    }" >> "$MAPPER_FILE"
  echo "" >> "$MAPPER_FILE"

  echo "    public static ${MODEL_NAME}Model unmarshall($ENTITY_NAME entity) {" >> "$MAPPER_FILE"
  echo "        return ${MODEL_NAME}Model.builder()" >> "$MAPPER_FILE"

 # Escreve as propriedades do entity no builder do model
  for ENTITY_PROP in $(compgen -v "$ENTITY_NAME"_PROP_); do
    MODEL_PROP="${ENTITY_PROP%_PROP_}"
    ENTITY_PROP_value="${!ENTITY_PROP}"
    if [ "$ENTITY_PROP" = "id_PROP_" ]; then
      MODEL_PROP_NAME="cartId"
    else
      MODEL_PROP_NAME="${MODEL_PROP}Id"
    fi
    echo "                .$MODEL_PROP_NAME($ENTITY_PROP_VALUE)" >> "$MAPPER_FILE"
  done

  echo "                .build();" >> "$MAPPER_FILE"
  echo "    }" >> "$MAPPER_FILE"
  echo "}" >> "$MAPPER_FILE"
done