#!/bin/bash

# Verifica se o diretório existe. Se não existir, cria o diretório.
if [ ! -d "$SERVICE_PATH" ]; then
  mkdir -p "$SERVICE_PATH"
fi

# Loop através das classes do domínio
for DOMAIN_CLASSE in "${DOMAIN_CLASSES[@]}"; do

  # Separa o nome da classe e seus atributos
  IFS=':' read -r CLASS_NAME classAttributes <<< "$DOMAIN_CLASSE"
  # Define o nome do arquivo da classe
  FILE_NAME="${CLASS_NAME}Service.java"

  # Escreve o conteúdo da classe no arquivo
  echo "package com.$PROJECT_NAME.app.service;" > "$SERVICE_PATH/$FILE_NAME"
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import com.$PROJECT_NAME.app.persistence.entity.${CLASS_NAME}Entity;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import com.$PROJECT_NAME.app.repository.${CLASS_NAME}Repository;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import com.${PROJECT_NAME}.app.service.model.${CLASS_NAME}Model;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import com.$PROJECT_NAME.app.web.mapper.${CLASS_NAME}Mapper;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import org.springframework.beans.factory.annotation.Autowired;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import org.springframework.http.HttpStatus;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import org.springframework.http.ResponseEntity;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import org.springframework.stereotype.Service;" >> "$SERVICE_PATH/$FILE_NAME"

  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import javax.servlet.http.HttpServletRequest;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "import java.util.List;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  echo "@Service" >> "$SERVICE_PATH/$FILE_NAME"
  echo "public class ${CLASS_NAME}Service {" >> "$SERVICE_PATH/$FILE_NAME"
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  echo "@Autowired(required = true)" >> "$SERVICE_PATH/$FILE_NAME"
  echo "private ${CLASS_NAME}Repository ${CLASS_NAME,}Repository;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  
  echo "    public ResponseEntity get${CLASS_NAME}(HttpServletRequest request, Long id) {
        try {
            // Exemplo de implementacao
            ${CLASS_NAME}Entity ${CLASS_NAME,}Entity = ${CLASS_NAME,}Repository.findBy${CLASS_NAME}Id(id);
            // Implementacao aqui
            return ${CLASS_NAME,}Entity != null
                    ? ResponseEntity.ok().body(${CLASS_NAME}Mapper.unmarshall(${CLASS_NAME,}Entity))
                    : ResponseEntity.notFound().build();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }

    }" >> "$SERVICE_PATH/$FILE_NAME"

    echo "  public ResponseEntity<List<${CLASS_NAME}Model>> get${CLASS_NAME}List(HttpServletRequest request) {
            try {
                List<${CLASS_NAME}Entity> entities = ${CLASS_NAME,}Repository.findAll();
                // Implementacao aqui
                return entities != null
                        ? ResponseEntity.ok().body(${CLASS_NAME}Mapper.unmarshall(entities))
                        : ResponseEntity.notFound().build();
            } catch (Exception e) {
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
            }
    }" >> "$SERVICE_PATH/$FILE_NAME"

    echo "  public ResponseEntity create(${CLASS_NAME}Model model) {
            try {
                ${CLASS_NAME}Entity entity = ${CLASS_NAME,}Repository.save(${CLASS_NAME}Mapper.marshall(model));
                // Implementacao aqui
                return entity != null
                        ? ResponseEntity.ok().header(\"Content-Type\", \"application/json\").body(${CLASS_NAME}Mapper.unmarshall(entity))
                        : ResponseEntity.notFound().build();
            } catch (Exception e) {
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
            }
    }" >> "$SERVICE_PATH/$FILE_NAME"

    echo "  public ResponseEntity update(${CLASS_NAME}Model model) {
            try {
                ${CLASS_NAME}Entity entity = ${CLASS_NAME,}Repository.findBy${CLASS_NAME}Id(model.getId());
                // Implementacao aqui
                ${CLASS_NAME,}Repository.save(entity);
                return entity != null
                        ? ResponseEntity.ok().header(\"Content-Type\", \"application/json\").body(${CLASS_NAME}Mapper.unmarshall(entity))
                        : ResponseEntity.notFound().build();
            } catch (Exception e) {
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
            }
    }" >> "$SERVICE_PATH/$FILE_NAME"

    echo "  public ResponseEntity delete(Long id) {
            try {
                ${CLASS_NAME}Entity entity = ${CLASS_NAME,}Repository.findBy${CLASS_NAME}Id(id);
                return ${CLASS_NAME,}Repository.findById(id).map(record -> {
                    ${CLASS_NAME,}Repository.deleteById(id);
                    return ResponseEntity.ok().header(\"Content-Type\", \"application/json\").body(id);
                }).orElse(ResponseEntity.notFound().build());
            } catch (Exception e) {
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
            }
    }" >> "$SERVICE_PATH/$FILE_NAME"

  echo "}" >> "$SERVICE_PATH/$FILE_NAME"

  echo "Criada classe ${CLASS_NAME}Service em ${SERVICE_PATH}/${FILE_NAME}"
done