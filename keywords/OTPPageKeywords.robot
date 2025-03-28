*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
future skill should display OTP page and display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}