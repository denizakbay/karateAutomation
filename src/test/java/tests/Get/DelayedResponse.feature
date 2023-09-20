Feature: Delayed Response Get API

  Background:
    * url 'https://reqres.in/api/'
    * header Accept = 'application/json'

  Scenario: Get Delayed Response
    Given path 'users?delay=3'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  Scenario: Assertion
    Given path 'users?delay=3'
    When method GET
    And match response.data != null
    And match response.data[4].id == 5
    And match response.data[1].first_name == '#notpresent'
    And match response.data[5].avatar == "#notpresent"