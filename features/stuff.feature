Feature: Stuff to do

  @current
  Scenario Outline: Adding two numbers
    Given I want a new math wsdl
    When I add "<op1>" and "<op2>"
    Then I should see "<result>"

    Examples:
    |op1   |op2 |result |
    |1     |2   |3      |
    |2     |3   |5      |

  

    
  