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
  echo "import com.$PROJECT_NAME.entity.${CLASS_NAME}Entity;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  echo "@Service" >> "$SERVICE_PATH/$FILE_NAME"
  echo "public class ${CLASS_NAME}Service {" >> "$SERVICE_PATH/$FILE_NAME"
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  echo "@Autowired(required = true)" >> "$SERVICE_PATH/$FILE_NAME"
  echo "private ${CLASS_NAME}Repository ${CLASS_NAME,}Repository;" >> "$SERVICE_PATH/$FILE_NAME"
  echo "" >> "$SERVICE_PATH/$FILE_NAME"
  
  echo "    public ResponseEntity getProduct(HttpServletRequest request, Long id) {
        try {
            String token = request.getHeader("Authorization");
            ProductEntity productEntity = productRepository.findByProductId(id);
            LogFactory.productInfo(productEntity, "[GET] Product success ", "[GET] Product failure ");
            if (TokenVerifier.tokenValidation(request)) {
                token = token.substring(BEGIN_INDEX);
                UserEntity userEntity = userRepository.findByUserToken(token);
                return productEntity != null && userEntity.getUserToken().equals(token)
                        ? ResponseEntity.ok().header("Content-Type", "application/json").body(ProductMapper.unmarshall(productEntity))
                        : ResponseEntity.notFound().build();
            }
            return productEntity != null
                    ? ResponseEntity.ok().body(ProductMapper.unmarshall(productEntity))
                    : ResponseEntity.notFound().build();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }

    }" >> "$SERVICE_PATH/$FILE_NAME"

    echo "  public ResponseEntity<List<Product>> getProductList(HttpServletRequest request) {
        try {
            String token = request.getHeader("Authorization");
            List<ProductEntity> entities = productRepository.findAll();
            LogFactory.productInfo(entities, "[GET - List] Products success ", "[GET - List] Products failure ");

            if (TokenVerifier.tokenValidation(request)) {
                token = token.substring(BEGIN_INDEX);
                UserEntity userEntity = userRepository.findByUserToken(token);
                return !entities.isEmpty() && userEntity.getUserToken().equals(token)
                        ? ResponseEntity.ok().header("Content-Type", "application/json").body(ProductMapper.unmarshall(entities))
                        : ResponseEntity.notFound().build();
            }
            return entities != null
                    ? ResponseEntity.ok().body(ProductMapper.unmarshall(entities))
                    : ResponseEntity.notFound().build();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }" >> "$SERVICE_PATH/$FILE_NAME"

    echo "  public ResponseEntity createProduct(Product model) {
        try {
            ProductEntity entity = productRepository.save(ProductMapper.marshall(model));
            LogFactory.productInfo(entity, "[POST] Products success ", "[POST] Products failure ");
            return entity != null
                    ? ResponseEntity.ok().header("Content-Type", "application/json").body(ProductMapper.unmarshall(entity))
                    : ResponseEntity.notFound().build();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }" >> "$SERVICE_PATH/$FILE_NAME"

    echo "  public ResponseEntity updateProduct(Product model) {
        try {
            ProductEntity entity = productRepository.findByProductId(model.getProductId());
            entity.setProductName(model.getProductName());
            entity.setProductDescription(model.getProductDescription());
            entity.setProductPrice(model.getProductPrice());
            productRepository.save(entity);
            LogFactory.productInfo(entity, "[PATCH] Product updated ", "[PATCH] Product failure ");
            return entity != null
                    ? ResponseEntity.ok().header("Content-Type", "application/json").body(ProductMapper.unmarshall(entity))
                    : ResponseEntity.notFound().build();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }" >> "$SERVICE_PATH/$FILE_NAME"

    echo "  public ResponseEntity deleteProduct(Long id) {
        try {
            ProductEntity entity = productRepository.findByProductId(id);
            return productRepository.findById(id).map(record -> {
                LogFactory.productInfo(entity, "[DELETE] Product deleted ", "[DELETE]Product failure ");
                productRepository.deleteById(id);
                return ResponseEntity.ok().header("Content-Type", "application/json").body(id);
            }).orElse(ResponseEntity.notFound().build());
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }" >> "$SERVICE_PATH/$FILE_NAME"

  echo "}" >> "$SERVICE_PATH/$FILE_NAME"

  echo "Criada classe ${CLASS_NAME}Service em ${SERVICE_PATH}/${FILE_NAME}"
done