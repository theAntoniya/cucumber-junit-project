Feature: Etsy Title Verification
  User Story: As a User I should see title as expected

  Background: For the scenarios in the feature file, user is expected to be on login page
    Given User is on "https://www.etsy.com" website


  Scenario: Etsy title Verification
    //Given User is on "https://www.etsy.com" website
    When User sees title is as expected "Etsy Украина — Магазин подарков ручной работы, винтажных и уникальных вещей для всех"



    Scenario:
    //Given User is on "https://www.etsy.com" website
      When user types Wooden Spoon in the search box
      And user clicks search button
      Then user sees Wooden Spoon is in the title

  @wip
  Scenario:
  //Given User is on "https://www.etsy.com" website
    When user types "Wooden Spoon" in the search box
    And user clicks search button
    Then user sees "Wooden spoon - Etsy" is in the title