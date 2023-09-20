Feature: REGISTER - SUCCESSFUL API

  Background:
    * url 'https://reqres.in/api/'
    * header Accept = 'application/json'

  Scenario: Post REGISTER - SUCCESSFUL
    Given path 'register'
    And request {"email": "eve.holt@reqres.in","password": "pistol"}
    When method POST
    Then status 200
    And print response

  Scenario:  REGISTER - SUCCESSFUL With Assertion
    Given path 'register'
    And request {"email": "eve.holt@reqres.in","password": "pistol"}
    When method POST
    Then status 200
    And match $ == {"id": 4,"token": "QpwL5tke4Pnpja7X4"}
    And print response