***Settings***
Library  Zoomba.GUILibrary
Resource  ../Operational/LocatorVariables.robot


*** Keywords ***
Open flipkart Website
   Open Browser   ${URL}  ${Browser}
   Maximize Browser Window
   Click Button  ${cross}


AND User Searchs For A Product
   Input Text  ${searchbar}  ${product}
   Sleep  3s
   Click Element  ${Entersearch}
   Sleep  3s
AND User Should Scroll to 6th Element
   Scroll Element Into View  ${Device}
Then User Clicks That Element
   Click Element  ${Device}
   Sleep  3s
Then User Add's To Cart
   Switch Window  New
   Click Element  ${addtocart}
Then User Verify The Item 
   Page Should Contain  ${Desired Device}
   
   
   Close Browser


    
