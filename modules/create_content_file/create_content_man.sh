#!/bin/bash

# Criar a classe principal
echo "package $PACKAGE_NAME;" > "$CLASS_MAN_PATH"
echo "" >> "$CLASS_MAN_PATH"

echo "import org.springframework.boot.SpringApplication;" >> "$CLASS_MAN_PATH"
echo "import org.springframework.boot.autoconfigure.EnableAutoConfiguration;" >> "$CLASS_MAN_PATH"
echo "import org.springframework.boot.autoconfigure.SpringBootApplication;" >> "$CLASS_MAN_PATH"
echo "import org.springframework.boot.autoconfigure.domain.EntityScan;" >> "$CLASS_MAN_PATH"

echo "" >> "$CLASS_MAN_PATH"
echo "@SpringBootApplication" >> "$CLASS_MAN_PATH"
echo "@EnableAutoConfiguration" >> "$CLASS_MAN_PATH"
echo "public class Man {" >> "$CLASS_MAN_PATH"
echo "    public static void main(String[] args) {" >> "$CLASS_MAN_PATH"
echo "        SpringApplication.run(${PROJECT_NAME}Application.class, args);" >> "$CLASS_MAN_PATH"
echo "    }" >> "$CLASS_MAN_PATH"
echo "}" >> "$CLASS_MAN_PATH"
echo "A classe Man foi criada em $CLASS_MAN_PATH."