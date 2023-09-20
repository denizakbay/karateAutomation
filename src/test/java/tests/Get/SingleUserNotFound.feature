Feature: Single User Not Found Get API

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
   # Get with Background
  Scenario: Get single user not found
    Given path '/users/23'
    When method GET
    Then status 404
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
  Scenario: Assertion single user not found
    Given path '/users/23'
    When method GET
    And match response.data == '#notpresent'

