*** Settings ***

Resource  ../Operational/Instructions.robot
Resource  ../Operational/LocatorVariables.robot

#we writes testcases

*** Test Cases ***
User should be able to search a product
    Given Open flipkart Website
    AND User Searchs For A Product
    AND User Should Scroll to 6th Element
    Then User Clicks That Element
    Then User Add's To Cart
    Then User Verify The Item 
