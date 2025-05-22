*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/login_keywords.robot
Resource          ../resources/filter_keywords.robot
Resource          ../variables/urls.robot

*** Keywords ***
And Pengguna memilih filter produk "${label}"
    Wait Until Element Is Visible    class=product_sort_container
    Select From List By Label        class=product_sort_container    ${label}

Then Produk pertama yang tampil adalah "${expected}"
    ${first_product}=    Get Text    xpath=(//div[@data-test='inventory-item-name'])[1]
    Should Be Equal      ${first_product}    ${expected}
    Sleep    2s
    [Teardown]    Close Browser
