Feature: Wikipedia Search Functionality Title Verification

  Background:
    Given User is on Wikipedia home page

  Scenario: Wikipedia Search Functionality Title Verification
  //Given User is on Wikipedia home page
  When User types Steve Jobs in the wiki search box
  And User clicks wiki search button
  Then User sees Steve Jobs is in the wiki title


  Scenario: Wikipedia Search Functionality Title Verification
   // Given User is on Wikipedia home page
    When User types "Steve Jobs" in the wiki search box
    And User clicks wiki search button
    Then User sees "Steve Jobs" is in the wiki title

@scenarioOutlinepractice
    Scenario Outline: Wikipedia Search Functionality Verification with using DDT

      //Given User is on Wikipedia home page
      When User types "<searchValue>" in the wiki search box
      And User clicks wiki search button
      Then User sees "<expectedTitle>" is in the wiki title

      Examples:
      |searchValue|expectedTitle|
      |Steve Jobs| SteveJobs    |
      |Bill Gates | Bill Gates  |
      |Christiano Ronaldo|Christiano Ronaldo|
      |Elon Musk         |Elon Musk         |
      |Albert Einstein   | Albert Einstein  |
      |Chuck Norris      |Chuck Norris      |
      |Alisher Usmanov   |Alisher Usmanov   |
