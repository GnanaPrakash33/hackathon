@smoke
Feature: Calculate Car Loan Emi

  Scenario Outline: Calculating car loan emi with various inputs
    Given the user is on the emi_calculator page using <browser>
    When the user clicks on the car_loan tab
    When the user enters the car loan amount <amount>
    When the user enters the car loan interest <rate>
    When the user enters the car loan tenure <duration> <period>
    Then I verify and display the car emi details
    And the user navigates to home_loan_calculator page

    Examples: 
      | browser  | amount  | rate | duration  | period  |
			| chrome   | 1500000 | 9.5  | 1         | year    |
#			| edge     | 1500000 | 9.5  | 1         | year    |