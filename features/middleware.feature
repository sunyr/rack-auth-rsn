Feature: Middleware is called before app.

Scenario: Get correct response
    Given I am testing "middleware.ru"
    When I get for "/"
    Then I should have status 200
    And I should see "MainMiddleware"
