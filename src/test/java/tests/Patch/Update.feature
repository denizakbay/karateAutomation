Feature: Patch API

  Background:
    * url 'https://reqres.in/api/'
    * header Accept = 'application/json'

  Scenario: Patch Update
    Given path 'users/2'
    And request {"name": "deniz","job": "Computer engineer"}
    When method PATCH
    Then status 200
    And print response

  Scenario: Patch Update assertion
    Given path 'users/2'
    And request {"name": "deniz"}
    When method PATCH
    Then status 200
    And match response == {"name": "deniz","updatedAt": "#ignore"}
    And print response