Feature: Single Resource Not Found Get API

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
   # Get with Background
  Scenario: Get single resource not found
    Given path '/unknown/23'
    When method GET
    Then status 404
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
  Scenario: Assertion single resource not found
    Given path '/unknown/23'
    When method GET
    And match response.data == '#notpresent'