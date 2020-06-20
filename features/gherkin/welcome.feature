Feature: Welcome

  # I don't work for Walmart - I'm just making this stuff up

  Scenario: The user completes welcome prompts
    Given the app is on the Welcome page
    And the user selects Next
    And the user selects Next
    When the user selects Get started
    Then the app navigates to the Share Your Location page