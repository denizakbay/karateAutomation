Feature: Post API

  Background:
    * url 'https://reqres.in/api/'
    * header Accept = 'application/json'
    * def expectedOutput = read("response1.json")
    * def requestBody = read ("request1.json")

  Scenario: Post Create User Demo 1
    Given url 'https://reqres.in/api/users'
    And request requestBody
    When method POST
    Then status 201
    And print response

    #Post with Background
  Scenario: Post Create User Demo 2
    Given path 'users'
    And request requestBody
    When method POST
    Then status 201
    And print response

      #Post with response assertion
  Scenario: Post Create User Demo 3
    Given path 'users'
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response

      #Post with get response and request from file
  Scenario: Post Create User Demo 4
    Given path 'users'
    And request requestBody
    When method POST
    Then status 201
    And match $ == expectedOutput
    And print response