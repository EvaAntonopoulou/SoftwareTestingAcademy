Feature: Checkout - Your Information Page Functionality for standard_user

  Scenario: Verify Checkout: Your Information  - Your Info Page functionality for standard_user
      Given the user “standard_user” navigates to "https://www.saucedemo.com/"
        And logs in successfully
        And lands on the (Products) Page
        And adds items in cart
        And navigates to (Your Cart) Page
      When the user clicks the "Checkout" button
      Then the user is navigated to the (Checkout - Your Information page)
        And the information input field is displayed
        And the user enters their information successfully

  Scenario: Verify Checkout: Your Information navigation for standard_user
      Given the user “standard_user” lands on the (Checkout: Your Information) Page
      When the user clicks the "Menu bar" button
        And the user clicks the "All items" option
      Then the user should be able to navigate back from (Checkout – Information page) to (Products page)
