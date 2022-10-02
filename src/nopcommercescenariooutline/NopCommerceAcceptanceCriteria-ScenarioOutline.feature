
Feature: Book Category

  Background: I should be able to see homepage
    Given I enter https://demo.nopcommerce.com/ in browser
    And   I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on home page
    Then I should be able to see top menu tabs with "<Categories>"

    Examples:
      |Categories        |
      |Computer          |
      |Electronic        |
      |Apparel           |
      |Digital downloads |
      |Books             |
      |Jewellery         |
      |Gift card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on home page
    Then I should be navigated to book category
    And  I should be able to see "<filters>"

    Examples:
      |Filters   |
      |Short by  |
      |Display   |
      |The grid  |
      |List tab  |

  Scenario Outline: I should be able to see list of terms of each filters
    Given I am on book page
    When  I click on "<Filters>"
    Then  I should be able to see "<List>" in dropdown menu

    Examples:
      |Filters   | List                                                                    |
      |Sort by   | Name: A to Z, Z to A, Price low to high, Price: high to low, Created on |
      |Display   |                                                                         |

  Scenario Outline: I should be able to choose any filter options with specific result
    Given I am on book page
    When  I click on "<Filters>"
    And   I click on "<Options>"
    Then  I should be able to see list of terms of each filters
    And   I should be able to see "<result>"

    Examples:
      |Filters   |Options                  |Result                                                          |
      |Sort by   |Name: A to Z             |Sorted product with the product name in alphabetic order A to Z |
      |Sort by   |Name: Z to A             |Sorted product with the product name in alphabetic order Z to A |
      |Sort by   |Price: low to high       |Sorted product with the product price in descending order       |
      |Sort by   |Price: high to low       |Sorted product with the product price in ascending order        |
      |Sort by   |Created on               |Recently added product should be shown first                    |
      |Display   |3                        |3 products in a page                                            |
      |Display   |6                        |6 products in a page                                            |
      |Display   |9                        |9 products in a page                                            |

  Scenario Outline: I should be able to see product display format accordingly display format type as per given
  picture in srs document
    Given  I am on book page
    When   I click on "<display format icon>"
    Then   I should be able to see product display format accordingly display format type as per given picture in SRS document

    Examples:
      |Display format icon |
      |Grid                |
      |List                |