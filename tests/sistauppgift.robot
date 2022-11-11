*** Settings ***
Library    Browser
Resource    ../resources/common.resource

*** Keywords ***
Search For Robot
    Click    xpath=//a[@class="cd-search-trigger"]

Input Search
    Fill Text    id=cd-search >> css=input    robot framework

*** Test Cases ***
Robot Framework Fundamentals Training Is One Day
    Open Browser firstpage
    Search For Robot
    Input Search
    Sleep    5s
    Press Keys    id=cd-search >> css=input  Enter
    Sleep    5s
    Get Text    body    contains    One day

Stockholm Office Is Visible In Sweden Contact Info
    Open Browser Kontakt
    Sleep    5s
    Click    xpath=//div/ul/li/a[text()="Sweden"]
    Sleep    5s
    Get Text    body    contains    Vasagatan 36
    Sleep    5s