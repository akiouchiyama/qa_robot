*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Website
Test Teardown    Close Website

*** Test Cases ***
Validate username
    Put name    ${valid_name}
    Verify name
    Put name    ${invalid_name_51_character}
    Verify name
    Put name    ${invalid_name_51_character}
    Verify name

Validate e-mail
    Put email    ${valid_email}
    Verify email
    Put email    ${invalid_email}
    Verify email

Validate password
    Put password    ${valid_password}
    Verify password
    Put password    ${invalid_password}
    Verify password

Validate repeat password
    Put repeat password    ${invalid_password}
    Verify repeat password
    Put repeat password    ${valid_password}
    Verify repeat password

Validate user registrarion
    Put name    ${valid_name}
    Verify name
    Put email    ${valid_email}
    Verify email
    Put password    ${valid_password}
    Verify password
    Put repeat password    ${valid_password}
    Verify repeat password
    Verify registrarion button
    Create user

*** Variables ***
${valid_name}     =    Set Variable    pedro.costa
${invalid_name_51_character }   =    Set Variable    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
${invalid_name_espcial_character}    =    Set Variable    john.lennon!

${valid_email}    =    Set Variable    ${valid_name}@email.algo    
${invalid_email}    =    Set Variable    ${valid_name}aaaaaaaaaaa

${valid_password}    =    Set Variable    z!12
${invalid_password}    =    Set Variable    12345