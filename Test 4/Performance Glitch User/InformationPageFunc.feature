Feature: Checkout - Your Information Page Functionality for performance_gltich_user

  Scenario: Verify Checkout: Your Information  - Your Info Page functionality for performance_gltich_user
      Given the user “performance_gltich_user” navigates to "https://www.saucedemo.com/"
        And logs in successfully
        And lands on the (Products) Page
        And adds items in cart
        And navigates to (Your Cart) Page
      When the user clicks the "Checkout" button
      Then the user is navigated to the (Checkout - Your Information page)
        And the information input field is displayed
        And the user enters their information successfully
