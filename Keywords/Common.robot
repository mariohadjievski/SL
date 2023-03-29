*** Settings ***
Library           SeleniumLibrary
Library           String

*** Keywords ***
OpenApp
    Open Browser    https://sportlife.com.mk/    chrome
    Maximize Browser Window

Validate Login
    element text should be    //a[@id="logOutStatusDestop"]    ОДЈАВИ СЕ

Enter Valid email
    Input Text    //input[@type='text']    ${email}

Enter Valid pass
    input text    //input[@type='password']    ${pass}

Click Login Button
    click element    //a[@id="btnLoginPage"]

Accept Cookkies
    click element    //a[@id="cookieAcceptButton"]

Open settings tab
    click element    //span[@id="settings-show-icon"]

unselect sound
    unselect checkbox    //input[@id="result_settings_soundOnOf"]

Valdiate unselected sound checkbox
    checkbox should not be selected    //input[@id="result_settings_soundOnOf"]

Check without notifications
    #select radiobutton    //input[@id="result_settings_no"]    result_settings_no
    Click button    //input[@id="result_settings_no"]

Close settings tab
    click element    //span[@id="settings-show-icon"]

Close most played
    click element    (//a[@onclick="BrisiDopolnitelni('NAJ'); return false;"])[4]

Close 5 of 13
    click element    (//a[@onclick="BrisiDopolnitelni('LM'); return false;"])[5]

Click on esports tab
    click element    //a[@aria-controls="collapse52"]

Select cs
    select checkbox    id=chkLiga2036

Click on handball
    click element    //a[@aria-controls="collapse7"]

Select football
    click element    (//span[@class="icon-bar"])[5]

Login
    Enter Valid email
    Enter Valid pass
    Click Login Button
    Validate Login

Generate random user
    ${random1}    String.Generate Random String    12    [NUMBERS]
    ${RandomUsername}    Catenate    User${random1}
    Set Global Variable    ${RandomUsername}

Generate random email
    ${random2}    String.Generate Random String    15    [LOWER]
    ${randomEmail}    Catenate    ${random2}@example.com
    Set Global Variable    ${randomEmail}

Generate random pass
    ${randomPassword}    String.Generate Random String    15
    Set Global Variable    ${randomPassword}
