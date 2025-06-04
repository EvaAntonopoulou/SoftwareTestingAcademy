Feature: Checkout Overview Page functionality for performance_glitch_user

  Scenario: Verify Checkout Overview Page functionality for performance_glitch_user

      Given the user “performance_glitch_user” navigates to "https://www.saucedemo.com/"
        And logs in successfully
        And lands on the (Products) Page
        And adds items in cart
        And navigates to (Your Cart) Page
        And the user clicks the "Checkout” button
        And the user is navigated to the (Checkout - Your Information) Page
        And the user enters their information successfully
        And the user clicks the "Continue” button
      When the user is navigated to the (Checkout - Overview) Page
      Then the user sees the product(s) added to the cart along with their details
        And the user sees their Payment Information
        And the user sees their Shipping Information
        And the user sees the correct Price Total
        And the user sees the Cancel button
        And the user sees the Continue Button
