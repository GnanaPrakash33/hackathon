@regression2 @regression
Feature: Calculate Loan Information

  Scenario Outline: Performing UI tests on various loan tools
    Given the user is on the loan_calculator page using <browser>
    And the user clicks on the emi_calculator tab
    When the user on emi_calculator tab enters the loan amount <amount>
    When the user on emi_calculator tab enters the loan interest <rate>
    When the user on emi_calculator tab enters the loan tenure <duration> <period>
    When the user on emi_calculator tab enters the loan fees <fees>
    Then I verify the loan amount ui on emi_calculator tab
    Then I verify the loan interest ui on emi_calculator tab
    Then I verify the loan tenure <period> ui on emi_calculator tab
    Then I verify the loan fees ui on emi_calculator tab
    
    Given the user clicks on the loan_amount_calculator tab
    When the user on loan_amount_calculator tab enters the emi amount <emi>
    When the user on loan_amount_calculator tab enters the loan interest <rate>
    When the user on loan_amount_calculator tab enters the loan tenure <duration> <period>
    When the user on loan_amount_calculator tab enters the loan fees <fees>
    Then I verify the loan emi ui on loan_amount_calculator tab
    Then I verify the loan interest ui on loan_amount_calculator tab
    Then I verify the loan tenure <period> ui on loan_amount_calculator tab
    Then I verify the loan fees ui on loan_amount_calculator tab
    
    Given the user clicks on the loan_tenure_calculator tab
    When the user on loan_tenure_calculator tab enters the loan amount <amount>
    When the user on loan_tenure_calculator tab enters the emi amount <emi>
    When the user on loan_tenure_calculator tab enters the loan interest <rate>
    When the user on loan_tenure_calculator tab enters the loan fees <fees>
    Then I verify the loan amount ui on loan_tenure_calculator tab
    Then I verify the loan emi ui on loan_tenure_calculator tab
    Then I verify the loan interest ui on loan_tenure_calculator tab
    Then I verify the loan fees ui on loan_tenure_calculator tab

    Examples: 
      | browser  | amount   | emi   | rate | fees | duration | period  |
			| chrome   | 7000000 | 90000 | 12.5  | 0    | 10       | year    |
#			| edge     | 5000000 | 60000 | 13    | 0    | 60       | month   |