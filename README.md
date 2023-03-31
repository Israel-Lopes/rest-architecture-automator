# rest-architecture-automator

Arvore de exemplo da estrutura

```
.
├── main
│   └── java
│       └── com
│           └── ArquiteturaHexagonalEcommerce
│               └── app
│                   ├── persistence
│                   │   └── entity
│                   │       ├── CartEntity.java
│                   │       ├── LoginEntity.java
│                   │       ├── ProductEntity.java
│                   │       ├── RegistrationEntity.java
│                   │       └── UserEntity.java
│                   ├── repository
│                   │   ├── CartRepository.java
│                   │   ├── LoginRepository.java
│                   │   ├── ProductRepository.java
│                   │   ├── RegistrationRepository.java
│                   │   └── UserRepository.java
│                   ├── service
│                   │   ├── cors
│                   │   │   └── Cors.java
│                   │   ├── model
│                   │   │   ├── CartModel.java
│                   │   │   ├── LoginModel.java
│                   │   │   ├── ProductModel.java
│                   │   │   ├── RegistrationModel.java
│                   │   │   └── UserModel.java
│                   │   └── token
│                   │       └── Token.java
│                   └── web
│                       ├── controller
│                       │   ├── CartController.java
│                       │   ├── LoginController.java
│                       │   ├── ProductController.java
│                       │   ├── RegistrationController.java
│                       │   └── UserController.java
│                       └── mapper
│                           ├── CartMapper.java
│                           ├── LoginMapper.java
│                           ├── ProductMapper.java
│                           ├── RegistrationMapper.java
│                           └── UserMapper.java
└── test
    └── java
        └── com
            └── ArquiteturaHexagonalEcommerce
                └── app
                    ├── persistence
                    │   └── entity
                    │       ├── CartEntityTest.java
                    │       ├── LoginEntityTest.java
                    │       ├── ProductEntityTest.java
                    │       ├── RegistrationEntityTest.java
                    │       └── UserEntityTest.java
                    ├── repository
                    │   ├── CartRepositoryTest.java
                    │   ├── LoginRepositoryTest.java
                    │   ├── ProductRepositoryTest.java
                    │   ├── RegistrationRepositoryTest.java
                    │   └── UserRepositoryTest.java
                    ├── service
                    │   ├── cors
                    │   │   └── CorsTest.java
                    │   ├── model
                    │   │   ├── CartModelTest.java
                    │   │   ├── LoginModelTest.java
                    │   │   ├── ProductModelTest.java
                    │   │   ├── RegistrationModelTest.java
                    │   │   └── UserModelTest.java
                    │   └── token
                    │       └── TokenTest.java
                    └── web
                        ├── controller
                        │   ├── CartControllerTest.java
                        │   ├── LoginControllerTest.java
                        │   ├── ProductControllerTest.java
                        │   ├── RegistrationControllerTest.java
                        │   └── UserControllerTest.java
                        └── mapper
                            ├── CartMapperTest.java
                            ├── LoginMapperTest.java
                            ├── ProductMapperTest.java
                            ├── RegistrationMapperTest.java
                            └── UserMapperTest.java

```
