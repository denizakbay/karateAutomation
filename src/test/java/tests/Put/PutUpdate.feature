Feature: Put API

  Background:
    * url 'https://reqres.in/api/'
    * header Accept = 'application/json'
    * def requestBody = read ("request2.json")
    * def responseBody = read ("response2.json")

  Scenario: Update demo 1
    Given path 'users/2'
    And request requestBody
    When method PUT
    Then status 200
    And print response

  Scenario: Update assertion
    Given path 'users/2'
    And request requestBody
    When method PUT
    Then status 200
    And match response == responseBody
    And print response