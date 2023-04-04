#!/bin/bash

for DOMAIN_CLASS in "${DOMAIN_CLASSES[@]}"; do
  CLASS_NAME=$(echo "$DOMAIN_CLASS" | cut -d':' -f1)
  CLASS_FIELDS=$(echo "$DOMAIN_CLASS" | cut -d':' -f2)

  echo "package com.${PROJECT_NAME}.app.service.model;" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "import lombok.Data;" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "import lombok.Builder;" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "import java.util.List;" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "@Data" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "@Builder" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "public class ${CLASS_NAME}Model {" >> "$MODEL/${CLASS_NAME}Model.java"

  echo "Gerar atributos da classe"
  echo "" >> "$MODEL/${CLASS_NAME}Model.java"
  IFS=',' read -ra FIELDS <<< "$CLASS_FIELDS"
  for FIELD in "${FIELDS[@]}"; do
    FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)
    FIELD_TYPE=$(echo "$FIELD" | cut -d'=' -f2)


    # Adiciona o sufixo Model ao tipo do campo, caso ele corresponda 
    # a uma classe em DOMAIN_CLASSES
    for DOMAIN_CLASS2 in "${DOMAIN_CLASSES[@]}"; do
          CLASS_NAME2=$(echo "$DOMAIN_CLASS2" | cut -d':' -f1)
      if [[ "$FIELD_TYPE" == "$CLASS_NAME2" ]]; then
        FIELD_TYPE="${CLASS_NAME2}Model"
        break
      elif [[ "$FIELD_TYPE" == "List<$CLASS_NAME2>"* || "$FIELD_TYPE" == "Collection<$CLASS_NAME2>"* ]]; then
        INNER_TYPE=$(echo "$FIELD_TYPE" | sed -r 's/.*<(.*)>/\1/')
        for DOMAIN_CLASS3 in "${DOMAIN_CLASSES[@]}"; do
          CLASS_NAME3=$(echo "$DOMAIN_CLASS3" | cut -d':' -f1)
          if [[ "$INNER_TYPE" == "$CLASS_NAME3" ]]; then
            FIELD_TYPE=$(echo "$FIELD_TYPE" | sed -r "s/<$INNER_TYPE>/<${CLASS_NAME3}Model>/")
            break
          fi
        done
        break
      fi
    done

    echo "  private $FIELD_TYPE $FIELD_NAME;" >> "$MODEL/${CLASS_NAME}Model.java"
  done

  # Gera metodos Getter e Setter
  for FIELD in "${FIELDS[@]}"; do
      FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)
      FIELD_TYPE=$(echo "$FIELD" | cut -d'=' -f2)

      # Verificar se o tipo de campo é uma lista
      if [[ "$FIELD_TYPE" == "List"* ]]; then
        # Extrair o tipo de elemento da lista
        ELEMENT_TYPE=$(echo "$FIELD_TYPE" | sed -e 's/^List<//;s/>$//')
        # Adicionar o sufixo "Model" ao tipo do elemento, se corresponder a uma classe em "DOMAIN_CLASSES"
        for DOMAIN_CLASS2 in "${DOMAIN_CLASSES[@]}"; do
          CLASS_NAME2=$(echo "$DOMAIN_CLASS2" | cut -d':' -f1)
          if [[ "$ELEMENT_TYPE" == "$CLASS_NAME2" ]]; then
            ELEMENT_TYPE="${CLASS_NAME2}Model"
            break
          fi
        done
        # Construir o tipo de campo com o sufixo "Model"
        FIELD_TYPE="List<$ELEMENT_TYPE>"
      else
        # Adicionar o sufixo "Model" ao tipo do campo, se corresponder a uma classe em "DOMAIN_CLASSES"
        for DOMAIN_CLASS2 in "${DOMAIN_CLASSES[@]}"; do
          CLASS_NAME2=$(echo "$DOMAIN_CLASS2" | cut -d':' -f1)
          if [[ "$FIELD_TYPE" == "$CLASS_NAME2" ]]; then
            FIELD_TYPE="${CLASS_NAME2}Model"
            break
          fi
        done
      fi
      # Gerar método get
      echo "" >> "$MODEL/${CLASS_NAME}Model.java"
      echo "  public $FIELD_TYPE get${FIELD_NAME^}() {" >> "$MODEL/${CLASS_NAME}Model.java"
      echo "    return this.$FIELD_NAME;" >> "$MODEL/${CLASS_NAME}Model.java"
      echo "  }" >> "$MODEL/${CLASS_NAME}Model.java"
      # Gerar método set
      echo "" >> "$MODEL/${CLASS_NAME}Model.java"
      echo "  public void set${FIELD_NAME^}($FIELD_TYPE $FIELD_NAME) {" >> "$MODEL/${CLASS_NAME}Model.java"
      echo "    this.$FIELD_NAME = $FIELD_NAME;" >> "$MODEL/${CLASS_NAME}Model.java"
      echo "  }" >> "$MODEL/${CLASS_NAME}Model.java"
  done

  # Gerar método toString
  echo "" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "  @Override" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "  public String toString() {" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "    return \"${CLASS_NAME}Model{\" +" >> "$MODEL/${CLASS_NAME}Model.java"
  for FIELD in "${FIELDS[@]}"; do
    FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)

    echo "      \"$FIELD_NAME=\" + $FIELD_NAME +" >> "$MODEL/${CLASS_NAME}Model.java"
  done
  echo "      \"}\";" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "  }" >> "$MODEL/${CLASS_NAME}Model.java"
  echo "}" >> "$MODEL/${CLASS_NAME}Model.java"
done