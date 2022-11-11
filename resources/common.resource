*** Settings ***
Library    Browser


*** Keywords ***

Open Browser Firstpage
    New Browser    headless=${FALSE}
    New Page    ${URL}


Open Browser Kontakt
    New Browser    headless=${FALSE}
    New Page    ${URL2}

*** Variables ***
${SEARCH}    Robot Framework

${URL} =    https://www.eficode.com/sv
${URL2} =    https://www.eficode.com/contact
