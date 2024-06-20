@regression1 @regression
Feature: Calculate Detailed Home Loan Information Annually

  Scenario Outline: Calculating detailed home loan information with various inputs
    Given the user is on the home_loan_calculator page using <browser>
    When the user enters the home value <amount>
    When the user enters the down payment <percent>
    When the user enters the home loan interest <rate>
    When the user enters the home loan tenure <duration> <period>
    Then I verify and store the generated year_on_year loan details in an excel format
    And the user navigates to the loan_calculator page

    Examples: 
      | browser  | amount   | percent | rate | duration  | period  |
			| chrome   | 15000000 | 0 			| 9    | 20        | year    |
#			| edge     | 7500000  | 0 			| 9.5  | 20        | year    |