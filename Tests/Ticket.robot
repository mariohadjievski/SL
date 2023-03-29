*** Settings ***
Test Setup        OpenApp
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot
Resource          ../Variables/Valid.robot

*** Test Cases ***
Enter Ticket
    Login
    Accept Cookkies
    Open settings tab
    unselect sound
    Valdiate unselected sound checkbox
    check without notifications
    Close settings tab
    close most played
    close 5 of 13
    click on esports tab
    click on handball
    select football
