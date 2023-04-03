#!/bin/bash

# Gerar classes de entidades
for DOMAIN_CLASS in "${DOMAIN_CLASSES[@]}"; do
  CLASS_NAME=$(echo "$DOMAIN_CLASS" | cut -d':' -f1)
  CLASS_FIELDS=$(echo "$DOMAIN_CLASS" | cut -d':' -f2)
  # Gerar classe de entidade
  echo "Gerando classe de entidade: $ENTITY/${CLASS_NAME}Entity.java" | sed 's/\//./g'
  echo "package com.$PROJECT_NAME.app.percistence.entity;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "import javax.persistence.Entity;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "import javax.persistence.GeneratedValue;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "import javax.persistence.GenerationType;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "import javax.persistence.Id;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "import javax.persistence.Table;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "import lombok.AllArgsConstructor;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "import lombok.Builder;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "import lombok.Data;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "import lombok.NoArgsConstructor;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "@Entity" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "@Table(name=\"$CLASS_NAME\")" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "@Data" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "@Builder" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "@AllArgsConstructor" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "@NoArgsConstructor" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "public class ${CLASS_NAME}Entity {" >> "$ENTITY/${CLASS_NAME}Entity.java"

  # Gerar atributos da classe
  echo "" >> "$ENTITY/${CLASS_NAME}Entity.java"
  IFS=',' read -ra FIELDS <<< "$CLASS_FIELDS"
  for FIELD in "${FIELDS[@]}"; do
    FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)
    FIELD_TYPE=$(echo "$FIELD" | cut -d'=' -f2)

    echo "  private $FIELD_TYPE $FIELD_NAME;" >> "$ENTITY/${CLASS_NAME}Entity.java"
  done

  for FIELD in "${FIELDS[@]}"; do
    FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)
    FIELD_TYPE=$(echo "$FIELD" | cut -d'=' -f2)

    # Gerar método get
    echo "" >> "$ENTITY/${CLASS_NAME}Entity.java"
    echo "  public $FIELD_TYPE get${FIELD_NAME^}() {" >> "$ENTITY/${CLASS_NAME}Entity.java"
    echo "    return this.$FIELD_NAME;" >> "$ENTITY/${CLASS_NAME}Entity.java"
    echo "  }" >> "$ENTITY/${CLASS_NAME}Entity.java"

    # Gerar método set
    echo "" >> "$ENTITY/${CLASS_NAME}Entity.java"
    echo "  public void set${FIELD_NAME^}($FIELD_TYPE $FIELD_NAME) {" >> "$ENTITY/${CLASS_NAME}Entity.java"
    echo "    this.$FIELD_NAME = $FIELD_NAME;" >> "$ENTITY/${CLASS_NAME}Entity.java"
    echo "  }" >> "$ENTITY/${CLASS_NAME}Entity.java"
  done

# Gerar método toString
  echo "" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "  @Override" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "  public String toString() {" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "    return \"${CLASS_NAME}Entity{\" +" >> "$ENTITY/${CLASS_NAME}Entity.java"
  for FIELD in "${FIELDS[@]}"; do
    FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)

    echo "      \"$FIELD_NAME=\" + $FIELD_NAME +" >> "$ENTITY/${CLASS_NAME}Entity.java"
  done
  echo "      \"}\";" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "  }" >> "$ENTITY/${CLASS_NAME}Entity.java"
  echo "}" >> "$ENTITY/${CLASS_NAME}Entity.java"  # Adicionar o caractere de fechamento da classe
done