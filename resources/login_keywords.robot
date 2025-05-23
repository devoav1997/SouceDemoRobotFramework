*** Keywords ***
Given Pengguna membuka halaman login
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --disable-infobars
    Call Method    ${options}    add_argument    --disable-notifications
    Call Method    ${options}    add_argument    --disable-extensions
    Call Method    ${options}    add_argument    --disable-save-password-bubble
    Call Method    ${options}    add_argument    --no-default-browser-check
    Call Method    ${options}    add_argument    --guest
    ${prefs}=    Create Dictionary
    ...    credentials_enable_service=${False}
    ...    profile.password_manager_enabled=${False}
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    options=${options}
    Go To    ${SAUCE_URL}
    Maximize Browser Window
    Wait Until Page Contains Element    id=user-name


When Pengguna memasukkan username dan password
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}

When Pengguna memasukkan username tidak valid dan password tidak valid
    Input Text    id=user-name    invalid_user
    Input Text    id=password     invalid_pass

When Pengguna hanya memasukkan password saja
    Input Text    id=user-name   ${EMPTY}
    Input Text    id=password    secret_sauce

When Pengguna hanya memasukkan username saja
    Input Text    id=user-name    standard_user
    Input Text    id=password     ${EMPTY}

And Klik tombol login
    Click Button    id=login-button

Then Pengguna melihat halaman produk
    Wait Until Page Contains Element    class=inventory_list
    Page Should Contain    Products
    Sleep    5s
    [Teardown]    Close Browser

Then Pengguna melihat pesan error login
    Wait Until Element Is Visible    //h3[@data-test='error']    timeout=10s
    Element Text Should Be           //h3[@data-test='error']    Epic sadface: Username and password do not match any user in this service
    Sleep    5s
    [Teardown]    Close Browser

Then Pengguna melihat pesan error username kosong
    Wait Until Page Contains Element    //h3[@data-test='error']    timeout=10s
    Element Text Should Be              //h3[@data-test='error']    Epic sadface: Username is required
    Sleep    5s
    Capture Page Screenshot
    [Teardown]    Close Browser

Then Pengguna melihat pesan error password kosong
    Wait Until Page Contains Element    //h3[@data-test='error']    timeout=10s
    Element Text Should Be              //h3[@data-test='error']    Epic sadface: Password is required
    Sleep    5s
    Capture Page Screenshot
    [Teardown]    Close Browser
