*** Keywords ***
And Pengguna menambahkan produk "${product}" ke keranjang
    Click Button    xpath=//div[text()='${product}']/ancestor::div[@class='inventory_item']//button

Then Ikon cart menunjukkan jumlah item adalah "${count}"
    Element Text Should Be    class=shopping_cart_badge    ${count}
    Sleep    5s

Given Pengguna sudah login dan menambahkan "${product}" ke keranjang
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    And Pengguna menambahkan produk "${product}" ke keranjang

When Pengguna membuka halaman cart
    Click Element    class=shopping_cart_link
    Wait Until Page Contains Element    xpath=//div[@class='cart_item']
    Sleep    5s

Then Keranjang menampilkan produk "${product}"
    Page Should Contain Element    xpath=//div[@class='inventory_item_name' and text()='${product}']
    Sleep    5s

And Pengguna menghapus produk dari keranjang
    Click Button    xpath=//button[text()='Remove']

Then Keranjang kosong
    Page Should Not Contain Element    xpath=//div[@class='cart_item']
    Sleep    5s
