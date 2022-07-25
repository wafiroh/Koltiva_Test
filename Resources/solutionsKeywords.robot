*** Settings ***
Library    Selenium2Library
Variables  ../ObjectsRepository/locatorSolutions.py

*** Keywords ***
Open Koltiva Website
    [Arguments]    ${URL}    ${BROWSER}
    Selenium2Library.Open Browser  ${URL}     ${BROWSER}
    Maximize Browser Window

Wait List Menu
    Selenium2Library.Wait Until Element Is Visible   ${list_menu}

Click Menu Solutions
    Selenium2Library.Click Element          ${menu_solutions}

Validate Solutions Page
    ${response}    Get Text         xpath=//span[contains(text(),'Our Holistic Solutions')]
    Should Be Equal As Strings      ${response}     Our Holistic Solutions

Screenshot Product
    Selenium2Library.Capture Page Screenshot        ${capture_solutions}

