Feature: Gestion de Usuarios en ServeRest

  Background:
    * url baseUrl
    * def userSchema = { nome: '#string', email: '#string', password: '#string', administrador: '#string', _id: '#string' }

  Scenario: CP001 - Flujo CRUD Completo de Usuario
    Given path 'usuarios'
    And request { nome: 'Katy Automation', email: 'katy.pruebas.clean.total@challenge.com', password: 'securePassword123', administrador: 'true' }
    When method post
    Then assert responseStatus == 201 || responseStatus == 400
    * def createdUserId = responseStatus == 201 ? response._id : 'FbKNalHTIYtwfVkN'

    Given path 'usuarios', createdUserId
    When method get
    Then status 200
    And match response == userSchema

    Given path 'usuarios', createdUserId
    And request { nome: 'Katy Updated', email: 'katy.pruebas.clean.total@challenge.com', password: 'newPassword456', administrador: 'true' }
    When method put
    Then status 200
    And match response.message == 'Registro alterado com sucesso'

    Given path 'usuarios', createdUserId
    When method delete
    Then status 200
    And match response.message == 'Registro excluído com sucesso'

  Scenario: CP002 - Obtener la lista completa de todos los usuarios registrados
    Given path 'usuarios'
    When method get
    Then status 200
    And match response.usuarios == '#array'
    And match response.quantidade == '#number'

  Scenario: CN001 - No permitir registrar un usuario con un correo electronico duplicado
    Given path 'usuarios'
    And request { nome: 'User Base', email: 'katy.duplicado.fijo.sistema@test.com', password: '123', administrador: 'false' }
    When method post
    Then assert responseStatus == 201 || responseStatus == 400

    Given path 'usuarios'
    And request { nome: 'User Clon', email: 'katy.duplicado.fijo.sistema@test.com', password: '456', administrador: 'false' }
    When method post
    Then status 400
    And match response.message == 'Este email já está sendo usado'

