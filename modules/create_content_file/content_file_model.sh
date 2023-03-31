#!/bin/bash

# Implementação das classes do modelo
for FILE in $MODEL/*.java; do
  FILE_NAME=$(basename "$FILE" .java)
  echo "Implementando classe $FILE_NAME"
  sed -i 's/}$//g' "$FILE"
  echo "" >> "$FILE"
  echo "  @Override" >> "$FILE"
  echo "  public boolean equals(Object o) {" >> "$FILE"
  echo "    if (this == o) return true;" >> "$FILE"
  echo "    if (o == null || getClass() != o.getClass()) return false;" >> "$FILE"
  echo "" >> "$FILE"
  echo "    $FILE_NAME $FILE_NAME = ($FILE_NAME) o;" >> "$FILE"
  echo "" >> "$FILE"
  echo "    // Implemente a comparação dos atributos da classe aqui" >> "$FILE"
  echo "" >> "$FILE"
  echo "    return true;" >> "$FILE"
  echo "  }" >> "$FILE"
  echo "" >> "$FILE"
  echo "  @Override" >> "$FILE"
  echo "  public int hashCode() {" >> "$FILE"
  echo "    // Implemente a geração do hashCode dos atributos da classe aqui" >> "$FILE"
  echo "    return Objects.hash();" >> "$FILE"
  echo "  }" >> "$FILE"
  echo "" >> "$FILE"
  echo "  @Override" >> "$FILE"
  echo "  public String toString() {" >> "$FILE"
  echo "    return \"$FILE_NAME{\" +" >> "$FILE"
  for FIELD in $(grep -oP '^\s+\w+ \w+;' "$FILE"); do
    FIELD_NAME=$(echo "$FIELD" | cut -d' ' -f2 | cut -d';' -f1)
    echo "      \", $FIELD_NAME=\" + $FIELD_NAME +" >> "$FILE"
  done
  echo "      \"}\";" >> "$FILE"
  echo "  }" >> "$FILE"
  echo "}" >> "$FILE"
done

# Implementação das classes do modelo para teste
for FILE in $MODEL_TEST/*.java; do
  FILE_NAME=$(basename "$FILE" .java)
  echo "Implementando classe de teste $FILE_NAME"
  sed -i 's/}$//g' "$FILE"
  echo "" >> "$FILE"
  echo "  @Test" >> "$FILE"
  echo "  void testEquals() {" >> "$FILE"
  echo "    // Implemente os testes da comparação dos atributos da classe aqui" >> "$FILE"
  echo "  }" >> "$FILE"
  echo "" >> "$FILE"
  echo "  @Test" >> "$FILE"
  echo "  void testHashCode() {" >> "$FILE"
  echo "    // Implemente os testes da geração do hashCode dos atributos da classe aqui" >> "$FILE"
  echo "  }" >> "$FILE"
  echo "" >> "$FILE"
  echo "  @Test" >> "$FILE"
  echo "  void testToString() {" >> "$FILE"
  echo "    // Implemente os testes"

# Gerar métodos get e set
for FIELD in "${FIELDS[@]}"; do
  FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)
  FIELD_TYPE=$(echo "$FIELD" | cut -d'=' -f2)

  echo "" >> "$MODEL/$CLASS_NAME.java"
  echo "  public $FIELD_TYPE get$FIELD_NAME() {" >> "$MODEL/$CLASS_NAME.java"
  echo "    return $FIELD_NAME;" >> "$MODEL/$CLASS_NAME.java"
  echo "  }" >> "$MODEL/$CLASS_NAME.java"

  echo "" >> "$MODEL/$CLASS_NAME.java"
  echo "  public void set$FIELD_NAME($FIELD_TYPE $FIELD_NAME) {" >> "$MODEL/$CLASS_NAME.java"
  echo "    this.$FIELD_NAME = $FIELD_NAME;" >> "$MODEL/$CLASS_NAME.java"
  echo "  }" >> "$MODEL/$CLASS_NAME.java"
done

# Gerar método toString
echo "" >> "$MODEL/$CLASS_NAME.java"
echo "  @Override" >> "$MODEL/$CLASS_NAME.java"
echo "  public String toString() {" >> "$MODEL/$CLASS_NAME.java"
echo "    return \"$CLASS_NAME{\" +" >> "$MODEL/$CLASS_NAME.java"
for FIELD in "${FIELDS[@]}"; do
  FIELD_NAME=$(echo "$FIELD" | cut -d'=' -f1)

  echo "        \"$FIELD_NAME='\" + $FIELD_NAME + '\\'' +" >> "$MODEL/$CLASS_NAME.java"
done
echo "        '}';" >> "$MODEL/$CLASS_NAME.java"
echo "  }" >> "$MODEL/$CLASS_NAME.java"

echo "Classe $CLASS_NAME implementada em $MODEL/$CLASS_NAME.java"