*** Settings ***
Test Setup        OpenApp
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot
Resource          ../Variables/Valid.robot

*** Test Cases ***
"SURETICKET"
