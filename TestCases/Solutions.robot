*** Settings ***
Library    Selenium2Library
Resource   ../Resources/solutionsKeywords.robot 

*** Variables ***
${BROWSER}      chrome
${URL}          https://www.koltiva.com/
${DELAY}        5s

*** Test Cases ***
Solutions Menu
    Open Koltiva Website     ${URL}      ${BROWSER}
    Wait list Menu 
    Sleep    ${DELAY}
    Click Menu Solutions
    Sleep    ${DELAY}
    Validate Solutions Page
    Sleep    ${DELAY}
    Screenshot Product
    Sleep    ${DELAY}
