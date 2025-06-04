Feature: Your Cart Page Functionality for performance_glitch_user

  Scenario: Verify Your Carts Page functionality for performance_glitch_user
      Given the user "performance_glitch_user" logs in successfully to "https://www.saucedemo.com/"
        And the user lands on the (Products) Page
        And the user sees all available products listed
      When the user adds a product to the cart
        And the user removes a product from the cart
      Then the product is added/removed successfully
        And the cart icon updates with the correct item count

  Scenario: Verify Your Carts items are retained during page navigation for performance_glitch_user
      Given the logged in user "performance_glitch_user" has items in the cart
        And the menu bar is accessible
      When the user clicks the "Menu bar" button
        And the user clicks the "All items" option
        And the user is navigated to another page (Products) Page
      Then the cart should retain the selected items
