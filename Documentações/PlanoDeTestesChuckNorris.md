# Plano de Testes - Validação de API do Chuck Norris

QA responsável: Gabriela do Carmo Nascimento Leocadio

-----------------------------------------------------------------------------

1. ## Objetivo dos testes
Validar o funcionamento dos endpoints *ConsultaCategoria* e *ConsultaPiadaAleatória* da API *ChuckNorris*, garantindo que estejam respondendo conforme o esperado nas requisições com dados válidos, inválidos e vazio.

2. ## Escopo
Endpoint de consulta de categorias: https://api.chucknorris.io/jokes/categories
Endpoint de consulta de piada aleatória: https://api.chucknorris.io/jokes/random?category={category}

3. ## Cenários de Teste:

**Caso de Teste 01: Consultar Categorias**

**Descrição**
Consulta no endpoint de categorias, retorno de status 200 e lista de categorias

**Passos**
1. **DADO** que o endpoint de consulta categorias tenha categorias cadastradas
2. **QUANDO** realizo a consulta no endpoint
3. **ENTÃO** o endpoint deve retornar status 200
4. **E** as categorias cadastradas são exibidas no body de saída

**Critérios de aceitação**
- O response deve exibir status 200.
- O body da resposta deve conter uma lista de categorias.


**Caso de Teste 02: Consultar piada com categoria válida**

**Descrição**
Consulta de piadas com categoria válida, retorno de status 200 e uma lista de piadas da categoria inserida.

**Passos**
1. **DADO** que existam categorias válidas cadastradas no endpoint de piadas
2. **QUANDO** realizo a consulta no endpoint
3. **ENTÃO**  o endpoint deve retornar status 200
4. **E** o body da resposta deve conter uma piada da categoria consultada

**Critérios de aceitação**
- O response deve exibir status 200.
- O body da resposta deve conter uma lista de piadas da categoria consultada.


**Caso de Teste 03: Consultar piada com categoria inválida**

**Descrição**
Consulta de piadas com categoria inválida, retorno de status diferente de 200 e mensagem de erro.

**Passos**
1. **DADO** que existam categorias válidas no endpoint de piadas
2. **QUANDO** realizo uma consulta de piada aleatória com uma categoria inválida
3. **ENTÃO** o endpoint deve retornar status diferente de 200
4. **E** deve exibir uma mensagem de erro no body da resposta

**Critérios de aceitação**
- O response deve exibir status diferente de 200.
- O body da resposta deve conter uma mensagem de erro.


**Caso de Teste 04: Consultar piada sem inserir a categoria**

**Descrição**
Verificar se o endpoint retorna uma piada aleatória com status 200, quando a categoria não é inserida.

**Passos**
1. **DADO** que o endpoint de piadas está disponível
2. **QUANDO** realizo uma requisição para “/jokes/random” sem o parâmetro category
3. **ENTÃO** o endpoint deve retornar status 200
4. **E** o corpo da resposta deve conter piada aleatória

**Critérios de aceitação**
- O response deve exibir status diferente de 200.
- O body da resposta deve conter uma piada aleatória.


4. ## Ferramentas:
- Robot Framework
- RequestsLibrary
- GitHub

