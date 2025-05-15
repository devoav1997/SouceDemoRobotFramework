*** Keywords ***
Pengguna membuka halaman login
    Open Browser    ${SAUCE_URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    id=user-name

Pengguna memasukkan username dan password
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}

Pengguna memasukkan username tidak valid dan password tidak valid
    Input Text    id=user-name    invalid_user
    Input Text    id=password     invalid_pass

Pengguna hanya memasukkan password saja
    Input Text    id=user-name   ${EMPTY}
    Input Text    id=password    secret_sauce

Pengguna hanya memasukkan username saja
    Input Text    id=user-name    standard_user
    Input Text    id=password     ${EMPTY}

Klik tombol login
    Click Button    id=login-button

Pengguna melihat halaman produk
    Wait Until Page Contains Element    class=inventory_list
    Page Should Contain    Products
    Sleep    5s
    [Teardown]    Close Browser


Pengguna melihat pesan error login
    Wait Until Element Is Visible    //h3[@data-test='error']    timeout=10s
    Element Text Should Be    //h3[@data-test='error']  Epic sadface: Username and password do not match any user in this service
    Sleep    5s
    [Teardown]    Close Browser

Pengguna melihat pesan error username kosong
    Wait Until Page Contains Element    //h3[@data-test='error']    timeout=10s
    Element Text Should Be              //h3[@data-test='error']    Epic sadface: Username is required
    Sleep    5s
    Capture Page Screenshot
    [Teardown]    Close Browser

Pengguna melihat pesan error password kosong
    Wait Until Page Contains Element    //h3[@data-test='error']    timeout=10s
    Element Text Should Be              //h3[@data-test='error']    Epic sadface: Password is required
    Sleep    5s
    Capture Page Screenshot
    [Teardown]    Close Browser




