*** Settings ***
Library     Browser
Resource    keywords.robot

*** Keywords ***
Open Website
    Open Browser    ${web_site_url}

Close Website
    Close Browser    ${web_site_url}