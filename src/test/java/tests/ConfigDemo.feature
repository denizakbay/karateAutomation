Feature: Config demo
  Scenario: Config demo 1
    * def config = call read('karate-config.js')
    * print config.name
