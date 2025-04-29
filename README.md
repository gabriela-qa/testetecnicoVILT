# Teste Técnico - Validação de API Chuck Norris

Este projeto foi desenvolvido para um teste técnico de automação de testes de API REST.

Utilizei **Robot Framework** e **RequestsLibrary** para criar e executar testes automatizados na API do projeto Chuck Norris.


## Objetivo dos Testes
Validar o funcionamento dos endpoints:

- **ConsultaCategoria**:  
  `GET https://api.chucknorris.io/jokes/categories`

- **ConsultaJokes**:  
  `GET https://api.chucknorris.io/jokes/random?category={category}`


## Plano de Teste

| ID | Cenário | Descrição |
|:--|:--------|:----------|
| 1 | Consultar categorias | Consulta no endpoint de categorias, retorno de status 200 e lista de categorias |
| 2 | Consultar piada com categoria válida | Consulta de piadas com categoria válida, retorno de status 200 e uma lista de piadas da categoria inserida |
| 3 | Consultar piada com categoria inválida | Consulta de piadas com categoria inválida, retorno de status diferente de 200 e mensagem de erro |
| 4 | Consultar piada sem inserir a categoria  | Verificar se o endpoint retorna uma piada aleatória com status 200, quando a categoria não é inserida.|

O plano de teste completo está disponível no arquivo [Plano de Testes - Validação de API do Chuck Norris](https://github.com/gabriela-qa/testetecnicoVILT/blob/main/Documenta%C3%A7%C3%B5es/PlanoDeTestesChuckNorris.md)


## Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)
- [RequestsLibrary](https://marketsquare.github.io/robotframework-requests/)
- Python 3.11
- GitHub

## Como Rodar os Testes

### Pré-requisitos

- Python instalado
- Robot Framework instalado
- RequestsLibrary instalada

### Instalação

```bash
pip install robotframework
pip install robotframework-requests
