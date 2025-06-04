Feature: Login Page Functionality

  Background:
    Given the user navigates to "https://www.saucedemo.com/"


  Scenario: Login successfully for standard user
    When the user types username "standard_user"
      And the user types password "secret_sauce"
      And the user clicks the "Login" button
    Then the user logs in successfully
      And the user should see the (Products) Page

  Scenario: Login successfully for locked_out_user
    When the user types username "locked_out_user"
      And the user types password "secret_sauce"
      And the user clicks the "Login" button
    Then the user logs in successfully
      And the user should see the (Products) Page

  Scenario: Login successfully for problem_user
    When the user types username "problem_user"
      And the user types password "secret_sauce"
      And the user clicks the "Login" button
    Then the user logs in successfully
      And the user should see the (Products) Page


  Scenario: Login successfully for performance_glitch_user
    When the user types username "problem_user"
      And the user types password "secret_sauce"
      And the user clicks the "Login" button
    Then the user logs in successfully
      And the user should see the (Products) Page
