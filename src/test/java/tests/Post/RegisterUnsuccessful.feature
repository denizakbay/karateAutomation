Feature: REGISTER - UNSUCCESSFUL API

  Background:
    * url 'https://reqres.in/api/'
    * header Accept = 'application/json'

  Scenario: Post REGISTER - UNSUCCESSFUL
    Given path 'register'
    And request {"email": "sydney@fife"}
    When method POST
    Then status 400
    And print response

  Scenario:  Post REGISTER - UNSUCCESSFUL With Assertion
    Given path 'register'
    And request {"email": "sydney@fife"}
    When method POST
    Then status 400
    And match $ == {"error": "Missing password"}
    And print response