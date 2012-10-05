Feature: Converting from fahrenheit to celsius 
 
  @c2f 
  Scenario: Retrieving the celsius value of a provided fahrenheit value
    Given I want a new wsdl client
    When the user sends a fahrenheit request of 212
    Then the user should get a celsius response of 100

  
   
