Feature: Single User Get API

  Background:
    * header Accept = 'application/json'
    * def baseUrl = 'https://reqres.in/'
    * def userPath = 'api/users/2'
   # Get with Background
  Scenario: Get single user
    Given url baseUrl + userPath
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    @ignore
  Scenario: Assertion single user
    Given url baseUrl + userPath
    When method GET
    And match response.data != null
    And assert response.data.id == 2
    And match response.data.email == 'janet.weaver@reqres.in'
