Feature: Products Page Functionality for problem_user

  Scenario: problem_user Logs In and Sorts Products
    Given the user "problem_user" navigates to "https://www.saucedemo.com/"
      And the user logs in with valid credentials
    When the user clicks on the sorting component
      And selects sorting criteria ("Name (A to Z)" or "Price (low to high)")
    Then the products should be sorted correctly

  Scenario: problem_user Adds Products from Cart
    Given the logged in user "problem_user" is on the Products Page
    When the user adds a product to the cart
    Then the product is added successfully
      And the cart icon updates with the correct item count

  Scenario: problem_user Removes Products from Cart
    Given the logged in user "problem_user" is on the (Products) Page
    When the user removes a product from the cart
    Then the product is removed successfully
      And the cart icon updates accordingly

  Scenario: Menu Navigation and Cart Retention for problem_user
    Given the logged in user "standard_user" is has products in the cart
    When the user clicks the "Menu Bar" button
      And the user clicks the "All Items" option
    Then the user should be navigated to the (Products) Page
      And the cart should retain the previously selected items
