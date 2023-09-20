Feature: Login - Unsuccessful API

  Background:
    * url 'https://reqres.in/api/'
    * header Accept = 'application/json'

  Scenario: Post Login - Unsuccessful
    Given path 'login'
    And request {"email": "peter@klaven"}
    When method POST
    Then status 400
    And print response

  Scenario:  Post Login - Unsuccessful With Assertion
    Given path 'login'
    And request {"email": "peter@klaven"}
    When method POST
    Then status 400
    And match $ == {"error": "Missing password"}
    And print response