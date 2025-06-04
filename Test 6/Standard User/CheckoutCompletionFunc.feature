Feature: Checkout Completion Checks

  Scenario: Verify Checkout Completion Page Functionality for standard_user

    Given the user “standard_user” navigates to "https://www.saucedemo.com/"
      And logs in successfully
      And lands on the (Products) Page
      And adds items in cart
      And navigates to (Your Cart) Page
      And the user clicks the "Checkout” button
      And the user is navigated to the (Checkout - Your Information) Page
      And the user enters their information successfully
      And the user clicks the "Continue button"
    When the user is navigated to the (Checkout - Overview) Page
      And clicks the “Continue” button
    Then the user sees the (Checkout: Complete!) Page
      And the “Thank you for your order!” message is displayed correctly
      And the “Back Home” button is enabled
      And the cart is empty

  Scenario: Verify Checkout Overview Menu bar & navigation for standard_user
    Given the user “standard_user” is on the (Checkout: Complete!)) Page
    When the user clicks the "Menu bar" button
      And the Menu Sidebar draws in
      And the user clicks the "All items" option
    Then the user should be able to navigate back from (Checkout: Complete!) Page to (Products) Page
      And the cart is reset
