*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterPageKeywords.robot
Resource        ../keywords/OTPPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome  options=add_argument("--start-maximized")
Suite Teardown  Close Browser


*** Test Cases ***
As a user, I want to Register success and get OTP
    When user Register to future skill platform with ${email}, ${firstName}, ${lastName}, ${phoneNumber}, ${newPassword} and ${confirmPassword} 
    Then future skill should display OTP page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    [Teardown]