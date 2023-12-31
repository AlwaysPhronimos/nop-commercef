Feature: Demo Nopcommerce's Top menu acceptance criteria

  As a user, I would like to check acceptance criteria of Nopcommerce Top menu

  Background: User is on given URL
    Given User is on Books category page
    When  User type URL "http://demo.nopcommerce.com"
    And   User click on Enter button
    Then  User is on given URL

    Scenario: Verify that user can navigate to Books category
      When    User is on given URL
      And     Click on Books tab on Top Menu
      Then    User is navigated to Books Category page

      Scenario: Verify that user can see the Books category page with filters and list of products
        When  User is on give URL
        And   Click on Books tab on Top Menu
        And   Check Filters and List Tab
        Then  Books category page is displayed with filters and list tabs

        Scenario: Verify that user can see 'Sort by' filter on Book Category page
          When  User is on Books Category page
          And   Check 'Sort by' filter is present
          Then  'Sort by' filter is available on Books Category page

          Scenario: Verify that user can see 'Grid' tab on Books Category page
            When User is on Books Category page
            And  Check 'Grid' tab is present
            Then 'Grid' tab is available on Books Category page

            Scenario: Verify that user can see 'List' tab on Book Category page
              When  User is on Books Category page
              And   Check 'List' tab is present
              Then  'List' tab is available on Books Category page

              Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
                When  User is on Books Category page
                And   Click on 'Sort by' Filter
                And   Check that 'Name: A to Z' selection is present
                Then  'Name: A to Z' selection is present in 'Sort by' Filter

                Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
                  When  User is on Books Category page
                  And   Click on 'Sort by' Filter
                  And   Check that 'Name: A to Z is first in order
                  Then  'Name: A to Z' is first option in order

                  Scenario: Verify that user can see 'Name: A to Z' Filter is functioning as expected(Note: Products are filtered in alphabetical order)
                    When  User is on Books Category page
                    And   Click on 'Sort by' Filter
                    And   Select 'Name: A to Z' Filter
                    Then All products are displayed in alphabetical order
