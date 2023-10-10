Feature: Bookcategory

  Background: I should be able to see homepage
    Given I enter URL "http://demo.nopcommerce.com/" in browser
    And   I am on homepage

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on home page
    Then I should be able to see top menu tabs with "<categories>"

    Examples:
      | Categories        |
      | Computer          |
      | Electronics       |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on home page
    Then I should be navigated to book category
    And  I should be able to see "<filters>"

    Examples:
      | filters  |
      | Short by |
      | Display  |
      | The Grid |
      | List Tab |

  Scenario Outline: I should be able to see list of terms of each Filter
    When  I click on "<filters>"
    Then  I should be able to see "<list>" in dropdown menu

    Examples:
      | filters | list                                                                           |
      | Sort by | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on |
      | Display | 3, 6, 9                                                                        |

  Scenario Outline: I should be able to choose any filter options from the list
    When  I click on "<filters>"
    And   I click on "<options>"
    And   I should be able to choose aby filter option from the list
    Then  I should be able to see "<results>"

    Examples:
    | filters          | option             | result                                                            |
    | Sort by          | Name:A to Z        | sorted product with the product name in alphabetical order A to Z |
    | Sort by          | Name:Z to A        | sorted product with the product name in alphabetical order Z to A |
    | Sort by          | price:low to high  | sorted product with the price in ascending order                  |
    | Sort by          | price:high to low  | sorted product with the price in descending order                 |
    | Display          | 3                  | 3 products in a page                                              |
    | Display          | 6                  | 6 products in a page                                              |
    | Display          | 9                  | 9 products in a page                                              |

    Scenario Outline: I should be able to see product display format according to display format type as per given picture in SRS document
      When I click on "<display format icon>"
      Then I should be able to see product display format according display format type as per given picture in SRS document

      Examples:
      | display format icon |
      | Grid                |
      | List                |



