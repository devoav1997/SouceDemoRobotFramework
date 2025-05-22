*** Settings ***
Documentation     Test filter produk berdasarkan nama dan harga
Library           SeleniumLibrary
Resource          ../resources/login_keywords.robot
Resource          ../resources/filter_keywords.robot
Resource          ../variables/urls.robot

*** Variables ***
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Test Cases ***
Filter produk berdasarkan nama A ke Z
    [Tags]    filter
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    And Pengguna memilih filter produk "Name (A to Z)"
    Then Produk pertama yang tampil adalah "Sauce Labs Backpack"

Filter produk berdasarkan nama Z ke A
    [Tags]    filter
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    And Pengguna memilih filter produk "Name (Z to A)"
    Then Produk pertama yang tampil adalah "Test.allTheThings() T-Shirt (Red)"

Filter produk berdasarkan harga low to high
    [Tags]    filter
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    And Pengguna memilih filter produk "Price (low to high)"
    Then Produk pertama yang tampil adalah "Sauce Labs Onesie"

Filter produk berdasarkan harga high to low
    [Tags]    filter
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    And Pengguna memilih filter produk "Price (high to low)"
    Then Produk pertama yang tampil adalah "Sauce Labs Fleece Jacket"
