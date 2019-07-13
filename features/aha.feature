# @announce
Feature: Code Reading Zen
  Give the best practice of code reading.

  Scenario: Run mercurd zen
    When I successfully run `mercurd zen`
    Then the output should contain: 
    """
    Zen of Code Reading
    """