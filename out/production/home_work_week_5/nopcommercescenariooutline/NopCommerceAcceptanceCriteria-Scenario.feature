Feature: Book category
  Background: I should be able to see homepage
    Given I enter URL "https://demo.nopecommerce.com/" in browser
    And I am on home page

Scenario Outline: I should be able to see top menu tabs on homepage with categories
  When I am on home page
  Then I should be able to see top menu tabs with "<categories>"
  Examples:
  |Categories            |
  |Computer              |
  |Electronic            |
  |Apparel               |
  |Digital downloads     |
  |Books                 |
  |Jewellery             |
  |Gift card             |

