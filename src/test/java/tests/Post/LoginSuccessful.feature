Feature: Login - Successful API

  Background:
    * url 'https://reqres.in/api/'
    * header Accept = 'application/json'

  Scenario: Post Login - Successful
    Given path 'login'
    And request {"email": "eve.holt@reqres.in","password": "cityslicka"}
    When method POST
    Then status 200
    And print response

  Scenario:  Post Login - Successful With Assertion
    Given path 'login'
    And request {"email": "eve.holt@reqres.in","password": "cityslicka"}
    When method POST
    Then status 200
    And match $ == {"token": "QpwL5tke4Pnpja7X4"}
    And print response