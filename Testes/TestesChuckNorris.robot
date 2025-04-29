*** Settings ***

Library           RequestsLibrary
Library           Collections
Suite Setup       Create Session    api   https://api.chucknorris.io
Suite Teardown    Delete All Sessions


*** Test Cases ***

Consultar Categorias
    [Tags]    Categoria
    ${response}    GET On Session    alias=api    url=/jokes/categories    expected_status=200
    ${categories}    Get Length    ${response.json()}
    Should Not Be Equal As Numbers    ${categories}    0

Consultar Piada Com Categoria Válida
    [Tags]    Válidos
    ${response}    GET On Session    alias=api    url=/jokes/random?category=music    expected_status=200
    ${categories}    Get From Dictionary    ${response.json()}    categories
    List Should Contain Value    ${response.json()}    value

Consultar Piada Com Categoria Inválida
    [Tags]    Inválido
    ${response}    GET On Session    alias=api    url=/jokes/random?category=inexistente    expected_status=any
    Should Not Be Equal As Numbers    ${response.status_code}    200
    Should Contain   ${response.text}    erro

Consultar Piada Sem Categoria
    [Tags]    Random
    ${response}    GET On Session    alias=api    url=/jokes/random    expected_status=200
    Dictionary Should Contain Key    ${response.json()}    value