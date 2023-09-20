Feature: Single Resource Get API

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
   # Get with Background
  Scenario: Get single resource
    Given path '/unknown/2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
  Scenario: Assertion single resource
    Given path '/unknown/2'
    When method GET
    And match response.data != null
    And assert response.data.id == 2
    And match response.data.name == 'fuchsia rose'
