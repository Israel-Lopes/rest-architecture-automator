#!/bin/bash

# Verifica se o diretório de destino das classes existe
if [ ! -d "$MAPPER" ]; then
  echo "Diretório de destino não encontrado: $MAPPER"
  exit 1
fi

# Gera as implementações das classes mappers
for MAPPER_FILE in $MAPPER/*Mapper.java; do
  mapper_name=$(basename "$MAPPER_FILE" .java)
  model_name="${mapper_name%Mapper}"
  entity_name="${model_name}Entity"
  
  # Escreve o conteúdo no arquivo do mapper
  echo "package $MAIN_PATH.web.mapper;" > "$MAPPER_FILE"
  echo "" >> "$MAPPER_FILE"
  echo "import $MAIN_PATH.percistence.entity.$entity_name;" >> "$MAPPER_FILE"
  echo "import $MAIN_PATH.service.model.$model_name;" >> "$MAPPER_FILE"
  echo "" >> "$MAPPER_FILE"
  echo "import java.util.List;" >> "$MAPPER_FILE"
  echo "import java.util.stream.Collectors;" >> "$MAPPER_FILE"
  
  echo "" >> "$MAPPER_FILE"

  echo "public class $mapper_name {" >> "$MAPPER_FILE"

  echo "" >> "$MAPPER_FILE"
  echo "    private $mapper_name() { super(); }" >> "$MAPPER_FILE"
  echo "" >> "$MAPPER_FILE"

  echo "    public static List<$entity_name> marshall(List<$model_name> models) {" >> "$MAPPER_FILE"
  echo "" >> "$MAPPER_FILE"
  echo "        return models.stream().map($mapper_name::marshall).collect(Collectors.toList());" >> "$MAPPER_FILE"
  echo "    }" >> "$MAPPER_FILE"

  echo "" >> "$MAPPER_FILE"

  echo "    public static List<$model_name> unmarshall(List<$entity_name> entities) {" >> "$MAPPER_FILE"
  echo "        return entities.stream().map($mapper_name::unmarshall).collect(Collectors.toList());" >> "$MAPPER_FILE"
  echo "    }" >> "$MAPPER_FILE"

  echo "" >> "$MAPPER_FILE"
  echo "    public static $entity_name marshall($model_name model) {" >> "$MAPPER_FILE"
  echo "        return $entity_name.builder()" >> "$MAPPER_FILE"

  # Escreve as propriedades do model no builder do entity
  for model_prop in $(compgen -v "$model_name"_PROP_); do
    entity_prop="${model_prop%_PROP_}"
    entity_prop_name="${entity_prop}Id"
    model_prop_value="${!model_prop}"
    if [ "$entity_prop_name" = "cartId" ]; then
      entity_prop_name="id"
    fi
    echo "                .$entity_prop_name(model.$model_prop_value())" >> "$MAPPER_FILE"
  done

  echo "                .build();" >> "$MAPPER_FILE"
  echo "    }" >> "$MAPPER_FILE"

  echo "" >> "$MAPPER_FILE"

  echo "    public static $model_name unmarshall($entity_name entity) {" >> "$MAPPER_FILE"
  echo "        return $model_name.builder()" >> "$MAPPER_FILE"

 # Escreve as propriedades do entity no builder do model
  for entity_prop in $(compgen -v "$entity_name"_PROP_); do
    model_prop="${entity_prop%_PROP_}"
    entity_prop_value="${!entity_prop}"
    if [ "$entity_prop" = "id_PROP_" ]; then
      model_prop_name="cartId"
    else
      model_prop_name="${model_prop}Id"
    fi
    echo "                .$model_prop_name($entity_prop_value)" >> "$MAPPER_FILE"
  done

  echo "                .build();" >> "$MAPPER_FILE"
  echo "    }" >> "$MAPPER_FILE"
  echo "}" >> "$MAPPER_FILE"
done