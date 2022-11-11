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
    Open Browser Mainpage
    Search For Robot
    Input Search
    Press Keys    id=cd-search >> css=input  Enter
    Click    text=Framework fundamentals training
    Get Text    body    contains    One day

Stockholm Office Is Visible In Sweden Contact Info
    Open Browser Contacts
    Click    xpath=//div/ul/li/a[text()="Sweden"]
    Get Text    body    contains    Vasagatan 36