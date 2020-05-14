*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  http://newtours.demoaut.com
${user}     tutorial
${pwd}      tutorial

*** Test Cases ***
LoginTest
    Open the browser   ${SiteUrl}   ${Browser}
    Enter Username      ${user}
    Enter Password      ${pwd}
    Click SignIn
    sleep   5 seconds
    #Verify Successful Login
    Close the browser