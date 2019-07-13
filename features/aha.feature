# @announce
Feature: Code Reading Zen
  Give the best practice of code reading.

  Scenario: Run aha zen
    When I successfully run `aha zen`
    Then the output should contain: 
    """
    Zen of Code Reading
    """