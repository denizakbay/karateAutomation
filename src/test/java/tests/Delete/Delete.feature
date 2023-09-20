Feature: Delete API
  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: Delete user
    Given path '/users/2'
    When method DELETE
    Then status 204
    And print responseStatus
    And print 'Resource deleted successfully'
