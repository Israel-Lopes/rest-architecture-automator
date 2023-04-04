#!/bin/bash

# Implementação das classes do modelo
for FILE in $MODEL/*.java; do
  FILE_NAME=$(basename "$FILE" .java)
  echo "Implementando classe $FILE_NAME"
  sed -i 's/}$//g' "$FILE"
  echo "package com.${PROJECT_NAME}.app.service.model;" >> "$FILE"
  echo "import lombok.Data;" >> "$FILE"
  echo "import lombok.Builder;" >> "$FILE"
  echo "" >> "$FILE"
  echo "@Data" >> "$FILE"
  echo "@Builder" >> "$FILE"
  echo "public class $FILE_NAME {" >> "$FILE"
  for FIELD in $(grep -oP '^\s+\w+ \w+;' "$FILE"); do
    echo "$FIELD" | sed 's/;$//' >> "$FILE"
  done

  echo "" >> "$FILE"

  # Gera atributos da classe
  for FIELD in "${FIELDS[@]}"; do
      FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)
      FIELD_TYPE=$(echo "$FIELD" | cut -d'=' -f2)

      echo "  private $FIELD_TYPE $FIELD_NAME;" >> "$FILE"
  done

  for FIELD in "${FIELDS[@]}"; do
    FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)
    FIELD_TYPE=$(echo "$FIELD" | cut -d'=' -f2)

    echo "" >> "$FILE"
    # Gerar método get
    echo "  public $FIELD_TYPE get${FIELD_NAME^}() {" >> "$FILE"
    echo "    return $FIELD_NAME;" >> "$FILE"
    echo "  }" >> "$FILE"

    echo "" >> "$FILE"
    
    # Gerar método set
    echo "  public void set${FIELD_NAME^}($FIELD_TYPE $FIELD_NAME) {" >> "$FILE"
    echo "    this.$FIELD_NAME = $FIELD_NAME;" >> "$FILE"
    echo "  }" >> "$FILE"
  done
  # echo "" >> "$FILE"
  # echo "  @Override" >> "$FILE"
  # echo "  public boolean equals(Object o) {" >> "$FILE"
  # echo "    if (this == o) return true;" >> "$FILE"
  # echo "    if (o == null || getClass() != o.getClass()) return false;" >> "$FILE"
  # echo "" >> "$FILE"
  # echo "    $FILE_NAME $FILE_NAME = ($FILE_NAME) o;" >> "$FILE"
  # echo "" >> "$FILE"
  # echo "    // Implemente a comparação dos atributos da classe aqui" >> "$FILE"
  # for FIELD in $(grep -oP '^\s+\w+ \w+;' "$FILE"); do
  #   FIELD_NAME=$(echo "$FIELD" | cut -d' ' -f2 | cut -d';' -f1)
  #   echo "    if (!Objects.equals($FIELD_NAME, $FILE_NAME.get$FIELD_NAME())) return false;" >> "$FILE"
  # done
  # echo "" >> "$FILE"
  # echo "    return true;" >> "$FILE"
  # echo "  }" >> "$FILE"
  echo "}" >> "$FILE"
  echo "" >> "$FILE"
done
