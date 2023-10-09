Feature: Demo nopcommerce's topmenu acceptence criteria

As a user, I would like to check acceptence criteria of nopcommerece topmeu

Background: User is on given URL
When   User type URL "https://demo.nopcommerce.com"
And    User click on enter button
Then   User is on given URL

Scenario: Verify that user can navigate to book category
When  User is on given URL
And   click on book tab on top menu
Then  User is navigated to book category page

Scenario: Verify that user can see book page with filters and list of products
When  User is on given URL
And   Click on book tab on top menu
And   Check filters and list tab
Then  Book category page is displayed with filters and list tabs

Scenario: Verify that user can see 'Sort by' filter on book category page
Given  User is on book category page
When   User is on book category page
And    Check 'Sort by' filter is present
Then   'Sort by' filter is available on book page

Scenario: Verify that user can see 'Display' filter on book category
Given  User is on book category page
When   User is on book category page
And    Check 'Display' filter is present
Then   'Display' filter is available on book page

Scenario: Verify that user can see 'Grid' tab on book category page
Given  User is on book category page
When   User is on book category page
And    Check 'Grid'tab is present
Then   'Grid' tab is available on book page

Scenario: Verify that user can see 'List' tab on book category page
Given  User is on book category page
When   User is on book category page
And    Check 'List' tab is present
Then   'List' tab is available on book category page

Scenario: Verify that user can see 'Name: AtoZ' slection is present in 'Sort by' filter
Given  User is on book category page
When   User is on book category page
And    Click on'Sort by' filter
And    Check that 'Name: AtoZ selection is present
Then   'Name: AtoZ' selection is present in 'sort by' filter

Scenario: Verify that user see 'Name: AtoZ' is first option in 'Sort by 'filter
Given  User is on book category page
When   User is on book category page
And    Click on 'Sort by' filter
And    Check that 'Name: AtoZ' is first in order

Scenario: Verify that user can see 'Name: AtoZ' filter is functioning as expected
          (Note: Product are filtered in alphabetical order)
Given   User is on book category page
When    User is on book category page
And     Click on 'Sort by' filter
And     Slect 'Name: AtoZ' filter
Then    All products displplay in alphabetical order


