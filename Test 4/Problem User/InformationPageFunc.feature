Feature: Checkout - Your Information Page Functionality for problem_user

  Scenario: Verify Checkout: Your Information navigation for problem_user
      Given the user "problem_user" lands on the (Checkout: Your Information) Page
      When the user clicks the "Menu bar" button
        And the user clicks the "All items" option
      Then the user should be able to navigate back from (Checkout – Information page) to (Products page)
