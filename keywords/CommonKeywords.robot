*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    5x    5s    Click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    5x    5s    Input Text    ${locator}    ${text}

Wait until page contains element then verify text
    [Arguments]    ${expected_text}
    Wait Until Keyword Succeeds    5x    5s    Page Should Contain         ${expected_text}