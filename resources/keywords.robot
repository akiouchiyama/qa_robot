*** Settings ***
Library    Browser
*** Keywords ***
Put name
    [Arguments]    ${username}
    Fill Text    ${css_username_placeholder}    ${username}

Verify name
    Wait For Elements State    ${css_invalid_username_popup}

Put email
    [Arguments]    ${email}
    Fill Text    ${css_email_placeholder}    ${email}

Verify email
    Wait For Elements State    ${css_invalid_email_popup}

Put password
    [Arguments]    ${password}
    Fill Text    ${css_password_placeholder}    ${password}

Verify password
    Wait For Elements State    ${css_invalid_password_popup}

Put repeat password
    [Arguments]    ${repeat_password}
    Fill Text    ${css_repeat_password_placeholder}    ${repeat_password}

Verify repeat password
    Wait For Elements State    ${css_invalid_repeat_password_popup}

Verify registrarion button
    Wait For Elements State    ${css_registration_button}    enabled

Create user
    Click    ${css_registration_button}
    Wait For Elements State    ${css_valid_user_creation_popup}