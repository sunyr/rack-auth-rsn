Feature: Hello world example for Rack App

Scenario: Get hello world
    Given I am testing "hello.ru"
    When I get for "/"
    Then I should have status 200
    And I should see "Hello world!"
