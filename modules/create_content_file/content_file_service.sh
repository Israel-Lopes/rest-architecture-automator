#!/bin/bash

# Gerar Services
for DOMAIN_CLASS in "${DOMAIN_CLASSES[@]}"; do
  CLASS_NAME=$(echo "$DOMAIN_CLASS" | cut -d':' -f1)

  mkdir -p "$SERVICE/$CLASS_NAME"
  mkdir -p "$SERVICE_TEST/$CLASS_NAME"

  echo "package com.$PROJECT_NAME.app.service.$CLASS_NAME;" > "$SERVICE/$CLASS_NAME/$CLASS_NAME.java"
  echo "" >> "$SERVICE/$CLASS_NAME/$CLASS_NAME.java"
  echo "import org.springframework.stereotype.Service;" >> "$SERVICE/$CLASS_NAME/$CLASS_NAME.java"
  echo "" >> "$SERVICE/$CLASS_NAME/$CLASS_NAME.java"
  echo "@Service" >> "$SERVICE/$CLASS_NAME/$CLASS_NAME.java"
  echo "public class $CLASS_NAME {" >> "$SERVICE/$CLASS_NAME/$CLASS_NAME.java"
  echo "" >> "$SERVICE/$CLASS_NAME/$CLASS_NAME.java"
  echo "}" >> "$SERVICE/$CLASS_NAME/$CLASS_NAME.java"

  echo "package com.$PROJECT_NAME.app.service.$CLASS_NAME;" > "$SERVICE_TEST/$CLASS_NAME/$CLASS_NAMETest.java"
  echo "" >> "$SERVICE_TEST/$CLASS_NAME/$CLASS_NAMETest.java"
  echo "import static org.junit.Assert.*;" >> "$SERVICE_TEST/$CLASS_NAME/$CLASS_NAMETest.java"
  echo "import org.junit.Test;" >> "$SERVICE_TEST/$CLASS_NAME/$CLASS_NAMETest.java"
  echo "" >> "$SERVICE_TEST/$CLASS_NAME/$CLASS_NAMETest.java"
  echo "public class $CLASS_NAMETest {" >> "$SERVICE_TEST/$CLASS_NAME/$CLASS_NAMETest.java"
  echo "" >> "$SERVICE_TEST/$CLASS_NAME/$CLASS_NAMETest.java"
  echo "}" >> "$SERVICE_TEST/$CLASS_NAME/$CLASS_NAMETest.java"
done
