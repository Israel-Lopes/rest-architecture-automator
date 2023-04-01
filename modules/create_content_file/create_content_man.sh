#!/bin/bash

# Criar a classe principal
echo "package $PACKAGE_NAME;" > "$CLASS_MAN_PATH"
echo "" >> "$CLASS_MAN_PATH"
echo "public class Man {" >> "$CLASS_MAN_PATH"
echo "    public static void main(String[] args) {" >> "$CLASS_MAN_PATH"
echo "        // Implementar aqui a lógica da sua aplicação" >> "$CLASS_MAN_PATH"
echo "    }" >> "$CLASS_MAN_PATH"
echo "}" >> "$CLASS_MAN_PATH"
echo "A classe Man foi criada em $CLASS_MAN_PATH."