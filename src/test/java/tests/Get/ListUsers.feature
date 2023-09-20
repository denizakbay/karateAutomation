Feature: List Users Get API

  Background:
 * url 'https://reqres.in/api'
    * header Accept = 'application/json'

    #Simple Get Request
  Scenario: Get LIST USERS Demo 1
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    # Get with Background
  Scenario: Get LIST USERS Demo 2
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    #Get With Assertions
  Scenario: Get LIST USERS Assertion
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And match response.data[0].first_name != null
    And assert response.data.length == 6
    And match response.data[1].id == 8
    And match response.data[3].last_name == 'Fields'

