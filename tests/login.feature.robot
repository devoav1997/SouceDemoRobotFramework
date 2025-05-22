*** Settings ***
Documentation     Test login dan akses halaman produk dengan BDD style
Library           SeleniumLibrary
Resource          ../resources/login_keywords.robot
Resource          ../variables/urls.robot

*** Variables ***
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Test Cases ***
Login dengan kredensial valid
    [Tags]    positive
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username dan password
    And Klik tombol login
    Then Pengguna melihat halaman produk

Login dengan kredensial tidak valid
    [Tags]    negative
    Given Pengguna membuka halaman login
    When Pengguna memasukkan username tidak valid dan password tidak valid
    And Klik tombol login
    Then Pengguna melihat pesan error login

Login gagal karena username kosong
    [Tags]    negative
    Given Pengguna membuka halaman login
    When Pengguna hanya memasukkan password saja
    And Klik tombol login
    Then Pengguna melihat pesan error username kosong

Login gagal karena password kosong
    [Tags]    negative
    Given Pengguna membuka halaman login
    When Pengguna hanya memasukkan username saja
    And Klik tombol login
    Then Pengguna melihat pesan error password kosong
