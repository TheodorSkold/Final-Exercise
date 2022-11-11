*** Settings ***
Library    Browser


*** Keywords ***

Open Browser Mainpage
    New Browser    headless=${FALSE}
    New Page    ${URL}


Open Browser Contacts
    New Browser    headless=${FALSE}
    New Page    ${URL2}

*** Variables ***
${SEARCH}    Robot Framework

${URL} =    https://www.eficode.com/sv
${URL2} =    https://www.eficode.com/contact
