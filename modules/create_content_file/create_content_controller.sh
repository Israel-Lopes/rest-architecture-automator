#!/bin/bash

# Gerar classes de entidades e controllers
for DOMAIN_CLASS in "${DOMAIN_CLASSES[@]}"; do
  CLASS_NAME=$(echo "$DOMAIN_CLASS" | cut -d':' -f1)

  # Gerar classe de controller
  echo "Gerando classe de controller: $CONTROLLER/${CLASS_NAME}Controller.java"
  echo "package com.$PROJECT_NAME.app.web.controller;" >> "$CONTROLLER/${CLASS_NAME}Controller.java"
  echo "" >> "$CONTROLLER/${CLASS_NAME}Controller.java"

  echo "import com.$PROJECT_NAME.app.service.${CLASS_NAME}Service;
import com.$PROJECT_NAME.app.service.model.${CLASS_NAME}Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequestMapping(\"/${CLASS_NAME,}\")
@RestController
public class ${CLASS_NAME}Controller {

    @Autowired(required=true)
    private ${CLASS_NAME}Service service;

    @GetMapping(\"/{id}\")
    @ResponseStatus(HttpStatus.ACCEPTED)
    public ResponseEntity get${CLASS_NAME}(HttpServletRequest request, @PathVariable Long id) throws Exception {
        return service.get${CLASS_NAME}(request, id);
    }
    @GetMapping()
    @ResponseStatus(HttpStatus.ACCEPTED)
    public ResponseEntity<List<${CLASS_NAME}Model>> get${CLASS_NAME}List(HttpServletRequest request) throws Exception {
        return service.get${CLASS_NAME}List(request);
    }
    @PostMapping
    @ResponseStatus(HttpStatus.ACCEPTED)
    public ResponseEntity create(@RequestBody ${CLASS_NAME}Model model) throws Exception {
        return service.create(model);
    }
    @PutMapping
    @ResponseStatus(HttpStatus.ACCEPTED)
    public ResponseEntity update(@RequestBody ${CLASS_NAME}Model model) throws Exception {
        return service.update(model);
    }
    @DeleteMapping(\"/{id}\")
    @ResponseStatus(HttpStatus.ACCEPTED)
    public ResponseEntity delete(@PathVariable Long id) throws Exception {
        return service.delete(id);
    }
}" >> "$CONTROLLER/${CLASS_NAME}Controller.java"

done