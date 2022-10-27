Feature: Google search functionality
  User story: As a user, when i am on a google search page
  I should be able to search whatever I want and see relevant information



  Scenario: Search functionality result title verification
    Given user is on Google search page
    When user types apple in the google search box and clicks enter
    Then user sees apple – Google Search is in the google title


  Scenario: Search functionality result title verification
    Given user is on Google search page
    When user types "apple" in the google search box and clicks enter
    Then user sees "apple - Поиск в Google" is in the google title

