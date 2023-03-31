#!/bin/bash

# Gerar classes de entidades
for DOMAIN_CLASS in "${DOMAIN_CLASSES[@]}"; do
  CLASS_NAME=$(echo "$DOMAIN_CLASS" | cut -d':' -f1)
  CLASS_FIELDS=$(echo "$DOMAIN_CLASS" | cut -d':' -f2)

  # Gerar classe de entidade
  echo "Gerando classe de entidade: $ENTITY/$CLASS_NAME.java"
  echo "package com.$PROJECT_NAME.app.percistence.entity;" > "$ENTITY/$CLASS_NAME.java"
  echo "" >> "$ENTITY/$CLASS_NAME.java"
  echo "import javax.persistence.Entity;" >> "$ENTITY/$CLASS_NAME.java"
  echo "import javax.persistence.GeneratedValue;" >> "$ENTITY/$CLASS_NAME.java"
  echo "import javax.persistence.GenerationType;" >> "$ENTITY/$CLASS_NAME.java"
  echo "import javax.persistence.Id;" >> "$ENTITY/$CLASS_NAME.java"
  echo "import javax.persistence.Table;" >> "$ENTITY/$CLASS_NAME.java"
  echo "import lombok.AllArgsConstructor;" >> "$ENTITY/$CLASS_NAME.java"
  echo "import lombok.Builder;" >> "$ENTITY/$CLASS_NAME.java"
  echo "import lombok.Data;" >> "$ENTITY/$CLASS_NAME.java"
  echo "import lombok.NoArgsConstructor;" >> "$ENTITY/$CLASS_NAME.java"
  echo "" >> "$ENTITY/$CLASS_NAME.java"
  echo "@Entity" >> "$ENTITY/$CLASS_NAME.java"
  echo "@Table(name=\"$CLASS_NAME\")" >> "$ENTITY/$CLASS_NAME.java"
  echo "@Data" >> "$ENTITY/$CLASS_NAME.java"
  echo "@Builder" >> "$ENTITY/$CLASS_NAME.java"
  echo "@AllArgsConstructor" >> "$ENTITY/$CLASS_NAME.java"
  echo "@NoArgsConstructor" >> "$ENTITY/$CLASS_NAME.java"
  echo "public class $CLASS_NAME {" >> "$ENTITY/$CLASS_NAME.java"

  # Gerar atributos da classe
  IFS=',' read -ra FIELDS <<< "$CLASS_FIELDS"
  for FIELD in "${FIELDS[@]}"; do
    FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)
    FIELD_TYPE=$(echo "$FIELD" | cut -d'=' -f2)

    echo "" >> "$ENTITY/$CLASS_NAME.java"
    echo "  private $FIELD_TYPE $FIELD_NAME;" >> "$ENTITY/$CLASS_NAME.java"

    # Gerar método get
    echo "" >> "$ENTITY/$CLASS_NAME.java"
    echo "  public $FIELD_TYPE get${FIELD_NAME^}() {" >> "$ENTITY/$CLASS_NAME.java"
    echo "    return this.$FIELD_NAME;" >> "$ENTITY/$CLASS_NAME.java"
    echo "  }" >> "$ENTITY/$CLASS_NAME.java"

    # Gerar método set
    echo "" >> "$ENTITY/$CLASS_NAME.java"
    echo "  public void set${FIELD_NAME^}($FIELD_TYPE $FIELD_NAME) {" >> "$ENTITY/$CLASS_NAME.java"
    echo "    this.$FIELD_NAME = $FIELD_NAME;" >> "$ENTITY/$CLASS_NAME.java"
    echo "  }" >> "$ENTITY/$CLASS_NAME.java"
  done

# Gerar método toString
  echo "" >> "$ENTITY/$CLASS_NAME.java"
  echo "  @Override" >> "$ENTITY/$CLASS_NAME.java"
  echo "  public String toString() {" >> "$ENTITY/$CLASS_NAME.java"
  echo "    return \"$CLASS_NAME{\" +" >> "$ENTITY/$CLASS_NAME.java"
  for FIELD in "${FIELDS[@]}"; do
    FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)

    echo "      \"$FIELD_NAME=\" + $FIELD_NAME +" >> "$ENTITY/$CLASS_NAME.java"
  done
  echo "      \"}\";" >> "$ENTITY/$CLASS_NAME.java"
  echo "  }" >> "$ENTITY/$CLASS_NAME.java"