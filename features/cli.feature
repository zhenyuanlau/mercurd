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

  Scenario: Run mercurd generate feature
    When I successfully run `mercurd generate feature dummy`
    Then the following files should exist:
      | features/dummy.feature |
    Then the file "features/dummy.feature" should contain:
      """
      Feature: <feature name>
        As a <user or stakeholder type>
        I want <some software feature>
        So that <some business value>
      """