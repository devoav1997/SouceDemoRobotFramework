*** Settings ***
Documentation     Test untuk fitur Add to Cart, View Cart, dan Remove Product
Library           SeleniumLibrary
Library           Collections
Library           BuiltIn

Resource          ../resources/login_keywords.robot
Resource          ../resources/cart_keywords.robot
Resource          ../variables/urls.robot
Test Teardown     Close Browser

*** Variables ***
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Test Cases ***
Menambahkan produk ke keranjang
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    And Pengguna menambahkan produk "Sauce Labs Backpack" ke keranjang
    Then Ikon cart menunjukkan jumlah item adalah "1"

Melihat isi keranjang belanja
    Given Pengguna sudah login dan menambahkan "Sauce Labs Backpack" ke keranjang
    When Pengguna membuka halaman cart
    Then Keranjang menampilkan produk "Sauce Labs Backpack"

Menghapus produk dari keranjang
    Given Pengguna sudah login dan menambahkan "Sauce Labs Backpack" ke keranjang
    When Pengguna membuka halaman cart
    And Pengguna menghapus produk dari keranjang
    Then Keranjang kosong
