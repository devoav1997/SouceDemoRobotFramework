*** Keywords ***

When Pengguna klik tombol Checkout
    Click Button    id=checkout
    Wait Until Page Contains Element    id=first-name

And Pengguna mengisi data checkout dengan benar
    Input Text    id=first-name    Devo
    Input Text    id=last-name     QA
    Input Text    id=postal-code   12345

And Pengguna klik tombol Continue
    Click Button    id=continue
    Sleep   5s

Then Pengguna melihat ringkasan pesanan
    Page Should Contain    Sauce Labs Backpack
    Page Should Contain    Payment Information:
    Page Should Contain    Shipping Information:
    Page Should Contain    Total: $32.39
    Sleep   5s

And Pengguna klik tombol Finish
    Click Button    id=finish
    Wait Until Page Contains Element    class=complete-header

Then Pengguna melihat pesan sukses pemesanan
    Page Should Contain    Thank you for your order!
    Page Should Contain Element    id=back-to-products
    Sleep   5s

And Pengguna mengisi field First Name kosong
    Input Text    id=first-name    ${EMPTY}
    Input Text    id=last-name     QA
    Input Text    id=postal-code   12345

And Pengguna mengisi field Last Name kosong
    Input Text    id=first-name    Devo
    Input Text    id=last-name     ${EMPTY}
    Input Text    id=postal-code   12345

And Pengguna mengisi field Zip Code kosong
    Input Text    id=first-name    Devo
    Input Text    id=last-name     QA
    Input Text    id=postal-code   ${EMPTY}

Then Pengguna melihat pesan error First Name wajib diisi
    Wait Until Page Contains Element    xpath=//div[@class='error-message-container error']//h3[@data-test='error']
    Element Text Should Be    xpath=//div[@class='error-message-container error']//h3[@data-test='error']    Error: First Name is required
    Capture Page Screenshot

Then Pengguna melihat pesan error Last Name wajib diisi
    Wait Until Page Contains Element    xpath=//div[@class='error-message-container error']//h3[@data-test='error']
    Element Text Should Be    xpath=//div[@class='error-message-container error']//h3[@data-test='error']    Error: Last Name is required
    Capture Page Screenshot

Then Pengguna melihat pesan error Zip Code wajib diisi
    Wait Until Page Contains Element    xpath=//div[@class='error-message-container error']//h3[@data-test='error']
    Element Text Should Be    xpath=//div[@class='error-message-container error']//h3[@data-test='error']    Error: Postal Code is required
    Capture Page Screenshot

And Pengguna membuka halaman keranjang
    Click Element    id=shopping_cart_container
    Wait Until Page Contains Element    xpath=//div[@class='cart_item']
