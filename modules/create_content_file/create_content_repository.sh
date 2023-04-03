#!/bin/bash

# Gerar Repositories para cada classe do domínio
for CLASS in "${DOMAIN_CLASSES[@]}"; do
  CLASS_NAME=$(echo "$CLASS" | cut -d':' -f1)
  FIELDS=$(echo "$CLASS" | cut -d':' -f2)

  echo "Creating Repository for $CLASS_NAME" | sed 's/\//./g'

  echo "package com.$PROJECT_NAME.app.repository;" > "$REPOSITORY/${CLASS_NAME}Repository.java"
  echo "" >> "$REPOSITORY/${CLASS_NAME}Repository.java"
  echo "import com.$PROJECT_NAME.app.persistence.entity.${CLASS_NAME};" >> "$REPOSITORY/${CLASS_NAME}Repository.java" | sed 's/\//./g'
  echo "import org.springframework.data.jpa.repository.JpaRepository;" >> "$REPOSITORY/${CLASS_NAME}Repository.java" | sed 's/\//./g'
  echo "" >> "$REPOSITORY/${CLASS_NAME}Repository.java"
  echo "public interface ${CLASS_NAME}Repository extends JpaRepository<${CLASS_NAME}, Long> {" >> "$REPOSITORY/${CLASS_NAME}Repository.java"
  echo "" >> "$REPOSITORY/${CLASS_NAME}Repository.java"
  echo "}" >> "$REPOSITORY/${CLASS_NAME}Repository.java"
done

echo "Repositories created successfully"