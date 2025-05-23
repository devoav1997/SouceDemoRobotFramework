*** Settings ***
Documentation     Test Case Checkout - Positive dan Negative
Library    SeleniumLibrary
Resource          ../resources/login_keywords.robot
Resource          ../resources/cart_keywords.robot
Resource          ../resources/checkout_keywords.robot
Resource          ../variables/urls.robot
Test Teardown     Close Browser

*** Variables ***
${product}    Sauce Labs Backpack

*** Test Cases ***
Checkout berhasil hingga selesai
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    And Pengguna menambahkan produk "${product}" ke keranjang
    And Pengguna membuka halaman keranjang
    When Pengguna klik tombol Checkout
    And Pengguna mengisi data checkout dengan benar
    And Pengguna klik tombol Continue
    Then Pengguna melihat ringkasan pesanan
    And Pengguna klik tombol Finish
    Then Pengguna melihat pesan sukses pemesanan

Checkout gagal karena First Name kosong
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    And Pengguna menambahkan produk "${product}" ke keranjang
    And Pengguna membuka halaman keranjang
    When Pengguna klik tombol Checkout
    And Pengguna mengisi field First Name kosong
    And Pengguna klik tombol Continue
    Then Pengguna melihat pesan error First Name wajib diisi

Checkout gagal karena Last Name kosong
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    And Pengguna menambahkan produk "${product}" ke keranjang
    And Pengguna membuka halaman keranjang
    When Pengguna klik tombol Checkout
    And Pengguna mengisi field Last Name kosong
    And Pengguna klik tombol Continue
    Then Pengguna melihat pesan error Last Name wajib diisi

Checkout gagal karena Zip Code kosong
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    And Pengguna menambahkan produk "${product}" ke keranjang
    And Pengguna membuka halaman keranjang
    When Pengguna klik tombol Checkout
    And Pengguna mengisi field Zip Code kosong
    And Pengguna klik tombol Continue
    Then Pengguna melihat pesan error Zip Code wajib diisi
