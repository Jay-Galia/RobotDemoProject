*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  http://www.newtours.demoaut.com

*** Test Cases ***
RegistrationTest
    Open the browser   ${SiteUrl}   ${Browser}
    Click Register Link
    Enter FirstName     David
    Enter LastName      John
    Enter Phone     1234567890
    Enter Email     davidjohn90@gmail.com
    Enter Address1      Upper Duke
    Enter Address2      Unionville
    Enter City      Markham
    Enter State     Ontario
    Enter Postal Code       L45AB1
    Select Country      CANADA
    Enter UserName      johnabc
    Enter Password      johnabc
    Enter Confirmed Password        johnabc
    Click Submit
    sleep   3 seconds
    Verify Successful Registration
    Close the browser