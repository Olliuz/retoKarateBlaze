Feature: Pruebas de API para Signup y Login en Demoblaze

  Background:
    * url 'https://api.demoblaze.com'
    * def usuario = 'user_' + java.util.UUID.randomUUID().toString().substring(0, 8)
    * def contrasena = 'pass1234'


  Scenario: Crear un nuevo usuario exitosamente
    Given path 'signup'
    And request { username: '#(usuario)', password: '#(contrasena)' }
    When method post
    Then status 200



  Scenario: Error al intentar crear un usuario que ya existe
    Given path 'signup'
    And request { username: 'admin', password: 'password' }
    When method post
    Then status 200
    And match response.errorMessage == 'This user already exist.'


  Scenario: Login exitoso con credenciales válidas
    Given path 'signup'
    And request { username: '#(usuario)', password: '#(contrasena)' }
    And method post
    Given path 'login'
    And request { username: '#(usuario)', password: '#(contrasena)' }
    When method post
    Then status 200
    And match response contains 'Auth_token'


  Scenario: Error en login con credenciales incorrectas
    Given path 'login'
    And request { username: '#(usuario)', password: 'wrong_password' }
    When method post
    Then status 200
    And match response.errorMessage == 'User does not exist.'