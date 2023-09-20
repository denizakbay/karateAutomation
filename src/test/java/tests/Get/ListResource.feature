Feature: List Resource Get API

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
   # Get with Background
  Scenario: Get List Resource
    Given path '/unknown'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies


  Scenario: Assertion List Resource
    Given path '/unknown'
    When method GET
    And match response.data[5] != null
    And assert response.data.length == 6
    And match response.data[0].first_name == '#notpresent'
    And match response.data[1].email == '#notpresent'

