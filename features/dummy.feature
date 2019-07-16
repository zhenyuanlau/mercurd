Feature: Make dummy App

  @wip
  Scenario: First Sinatrap App Start
    When the client requests GET /
    Then the response should be: 
    """
    Hello, Sinatra!
    """