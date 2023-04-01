#!/bin/bash

# Gerar classes de entidades e controllers
for DOMAIN_CLASS in "${DOMAIN_CLASSES[@]}"; do
  CLASS_NAME=$(echo "$DOMAIN_CLASS" | cut -d':' -f1)

  # Gerar classe de controller
  echo "Gerando classe de controller: $CONTROLLER/${CLASS_NAME}Controller.java"
  echo "package com.$PROJECT_NAME.app.controller;" > "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "import org.springframework.beans.factory.annotation.Autowired;" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "import org.springframework.http.HttpStatus;" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "import org.springframework.http.ResponseEntity;" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "import org.springframework.web.bind.annotation.*;" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "import com.$PROJECT_NAME.app.persistence.entity.${CLASS_NAME}Entity;" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "import com.$PROJECT_NAME.app.service.${CLASS_NAME}Service;" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "@RestController" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "@RequestMapping(\"/${CLASS_NAME}\")" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "public class ${CLASS_NAME}Controller {" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  @Autowired" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  private ${CLASS_NAME}Service ${CLASS_NAME,}Service;" >> "$CONTROLLER/${CLASS_NAME}Controller.java"

  # Gerar métodos GET
  echo "" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  @GetMapping" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  public ResponseEntity<Iterable<${CLASS_NAME}Entity>> getAll${CLASS_NAME}() {" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "    Iterable<${CLASS_NAME}Entity> ${CLASS_NAME,}List = ${CLASS_NAME,}Service.getAll${CLASS_NAME}();" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "    return new ResponseEntity<>(${CLASS_NAME,}List, HttpStatus.OK);" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  }" >> "$CONTROLLER/${CLASS_NAME}Controller.java"

  echo "" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  @GetMapping(\"/{id}\")" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  public ResponseEntity<${CLASS_NAME}Entity> get${CLASS_NAME}ById(@PathVariable Long id) {" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "    ${CLASS_NAME}Entity ${CLASS_NAME,} = ${CLASS_NAME,}Service.get${CLASS_NAME}ById(id);" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "    return new ResponseEntity<>(${CLASS_NAME,}, HttpStatus.OK);" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  }" >> "$CONTROLLER/${CLASS_NAME}Controller.java"

  # Gerar método POST
  echo "" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  @PostMapping" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  public ResponseEntity<${CLASS_NAME}Entity> create${CLASS_NAME}(@RequestBody ${CLASS_NAME}Entity ${CLASS_NAME,}Entity) {" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "    ${CLASS_NAME,}Entity = ${CLASS_NAME,}Service.create${CLASS_NAME}(${CLASS_NAME,}Entity);" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "    return new ResponseEntity<>(${CLASS_NAME,}Entity, HttpStatus.CREATED);" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  }" >> "$CONTROLLER/${CLASS_NAME}Controller.java"

  # Gerar método PUT
  echo "" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  @PutMapping(\"/{id}\")" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  public ResponseEntity<${CLASS_NAME}Entity> update${CLASS_NAME}(@PathVariable Long id, @RequestBody ${CLASS_NAME}Entity ${CLASS_NAME,}Entity) {" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "    ${CLASS_NAME,}Entity = ${CLASS_NAME,}Service.update${CLASS_NAME}(id, ${CLASS_NAME,}Entity);" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "    return new ResponseEntity<>(${CLASS_NAME,}Entity, HttpStatus.OK);" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  }" >> "$CONTROLLER/${CLASS_NAME}Controller.java"

  # Gerar método DELETE
  echo "" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  @DeleteMapping(\"/{id}\")" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  public ResponseEntity<Void> delete${CLASS_NAME}(@PathVariable Long id) {" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "    ${CLASS_NAME,}Service.delete${CLASS_NAME}(id);" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "    return new ResponseEntity<>(HttpStatus.NO_CONTENT);" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "  }" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  
  echo "" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "}" >> "$CONTROLLER/${CLASS_NAME}Controller.java"

done