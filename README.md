## Desafio Vendala Backend - api_vendala
Criação de produtos KIT via API:
Este teste visa conhecer um pouco mais da forma em que você programa e como você vai se organizar para montar um produto do tipo KIT

###Resumo do teste
Você precisa criar uma API em Laravel que vai receber informações de um front-end desacoplado e cadastrar um produto no banco de dados.

#### Dependências
* PHP 7.3.11
* Apache Server 2.4 +
* 8.0.18 MySQL Community Serve - GPL

#### Instalação
A instalação do sistema pode ser feita seguindo os seguintes passos:
> ATENÇAO: Os passos para instalação descritos nesta documentação, assumem que a aplicação rodará em uma estação Windows e que contenha todas as dependências instaladas e configuradas.

* Clonar ou Baixar o projeto diretamente no `localhost` do usuário
```bash
C:\xampp\htdocs
```
* Configurar o arquivo `env.php` que está na raiz da aplicação:
   Com as credencias do banco de dados:
```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=api_rest_laravel
DB_USERNAME=root
DB_PASSWORD=root
```
* Importar dump da base de dados que se encontra na raiz da aplicação:
```bash
C:\xampp\htdocs\api_rest_laravel.sql
```
* Baixar as dependências através do composer:
```bash
composer update
```
* Para executar a aplicação. Dentro da C:\xampp\htdocs\api_vendala.
Executar dentro da aplicação o comando, através de um terminal:
```bash
php artisan serve
```
### Endpoints
1. [GET] /api/products -> Retorna 200 Ok (Relação de produtos)
2. [GET] /api/products?page={pg}&pagination={bool} -> Retorna 200 Ok (Relação de produtos com parametroes de paginação)
3. [POST] /api/products -> Retorna 201 Ok (Formulário de criação de produtos)
4. [DELETE] /api/products/{id} -> Retorna 200 Ok (Retorna um json informando que foi excluido)
5. [PUT] /api/products/{id} -> Retorna 201 Ok (Retorna um json informando que foi atualizado)
6. [GET] /api/categories -> Retorna 200 Ok (Relação de categorias)
7. [GET] /api/users -> Retorna 200 Ok (Relação de usuários)
8. [POST] /api/auth/login -> Retorna 200 Ok (Formulário de login - retorna access_token)
9. [POST] /api/auth/me -> Retorna 200 Ok (Retorna um json com informações do usuário logado)
10. [POST] /api/auth/logout -> Retorna 200 Ok (Retorna um json com informações de invalidação do token)

### Considerações
Como o foco principal foi backend, o frontend ficou em outro repositório `https://github.com/bladellano/site_vendala`
### Creditos
Esta aplicação foi desenvolvida por [Caio Dellano Nunes da Silva](mailto:bladellano@gmail.com).
