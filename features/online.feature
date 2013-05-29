Feature: One line example for Rack App

Scenario: Get hello world
    Given I am testing "oneline.ru"
    When I get for "/"
    Then I should have status 200
    And I should see "Hello world!"
