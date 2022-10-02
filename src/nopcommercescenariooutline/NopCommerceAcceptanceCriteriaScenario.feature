Feature: Demo nopcommerce's top menu acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce top menu
  Background: User is on given URL
    When User type URL https://demo.nopcommerce.com
    And  User click on Enter button
    Then User is on given URL

  Scenario: Verify that user can navigate to books category
    When User is on given URl
    And  Click on Books tab on Top Menu
    Then User is navigated to Books Category page

  Scenario: Verify that user can see the Books category page with filters and list of products
    When User is on given URL
    And  click on books tabs on Top Menu
    And  check Filters and List Tab
    Then Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filter on book Category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'Sort by' filter is present
    Then  'Sort by' filter is available on Book Category page

  Scenario: Verify that user can see 'Display' filter on book Category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'Diplay' filer is present
    Then  'Display' filter is available on Book Category page

  Scenario: Verify that user can see 'Grid' tab on Book Category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'Grid' tab is present
    Then  'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on book Category page
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Check 'list' tab is present
    Then   'List' tab is availabale on Book Category page

  Scenario: Verify that user can see 'Name: A to Z' selection is preent in 'Sort by' filter
    Given  User is on Books Category page
    When   User is on Books Category page
    And    click on 'sort by'Filter
    And    Check that 'Name: A to Z' selection is present
    Then   'Name: A to Z' selection is present in 'sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'sort by' filter
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Click on 'sort by' Filter
    And    Check that 'Name: A to z' is first in order
    Then   'Name A to z' is first option in order

  Scenario: Verify that user can see 'Name A to Z' filter is functioning as expected(Note: Products are filtered in alphabetical order)
    Given User is on Books Category page
    When  user is on Books Category page
    And   Click on 'sort by Filter
    And   Select 'Name: A to z' filter
    Then  All products are displayed in alphabetical order









