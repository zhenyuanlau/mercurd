# language: en
@wip 
Feature: CLI
  As a mercurd user,
  I want a conveniet command line,
  So that reading code better.

  Scenario: Run mercurd requirements
    When I successfully run `mercurd requirements`
    Then the feature should pass 

  Scenario: Run mercurd zen
    When I successfully run `mercurd zen`
    Then the output should contain: 
    """
    The Zen of Code Reading
    """

  Scenario: Run mercurd colc
    When I successfully run `mercurd cloc`
    Then the output should contain: 
    """
    Count Lines of Code
    """