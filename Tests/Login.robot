*** Settings ***
Test Setup        OpenApp
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot
Resource          ../Variables/Valid.robot

*** Test Cases ***
LoginWithValid
    #Enter Valid email
    Generate random user
    input text    //input[@type='text']    ${RandomUsername}
    sleep    2
    Enter Valid pass
    Click Login button
    Validate Login
