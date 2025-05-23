
# 🧪 SauceDemoRobotFramework

## 🤖 Robot Framework BDD - Automation for SauceDemo

Proyek ini merupakan implementasi **automation testing** dengan **Robot Framework** menggunakan pendekatan **BDD-style (Behavior Driven Development)** untuk menguji fitur-fitur di situs [https://www.saucedemo.com](https://www.saucedemo.com), termasuk:

- Login dengan akun valid dan tidak valid
- Filter produk
- Add to Cart
- View Shopping Cart
- Remove product from cart

---

## 🗂️ Struktur Folder

```

saucedemo-tests/
├── tests/
│   ├── login.feature.robot         # Test case login
│   ├── filter.feature.robot        # Test case filter produk
│   └── cart.feature.robot          # Test case keranjang belanja
├── resources/
│   ├── login\_keywords.robot        # Keyword untuk login
│   ├── filter\_keywords.robot       # Keyword untuk filter produk
│   └── cart\_keywords.robot         # Keyword untuk cart
├── variables/
│   └── urls.robot                  # Variabel global (misal URL)
├── venv/                           # Virtual environment (opsional)
├── output.xml                      # Hasil eksekusi
├── log.html                        # Log hasil tes
├── report.html                     # Ringkasan hasil tes
└── README.md                       # Dokumentasi proyek

````

---

## ⚙️ Cara Menjalankan

### 1. Clone repositori

```bash
git clone <url-repo-kamu>
cd saucedemo-tests
````

### 2. Buat dan aktifkan virtual environment

```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Install dependencies

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
pip install webdriver-manager
```

### 4. Jalankan test

```bash
robot tests/login.feature.robot
robot tests/filter.feature.robot
robot tests/cart.feature.robot
```

---

## ✅ Skenario yang Diuji

### Login:

* ✅ Login dengan kredensial valid
* ❌ Login dengan username/password tidak valid
* ❌ Login gagal karena username kosong
* ❌ Login gagal karena password kosong

### Produk:

* ✅ Filter produk berdasarkan nama (A-Z, Z-A)
* ✅ Filter produk berdasarkan harga (Low to High, High to Low)

### Cart:

* ✅ Add product ke keranjang
* ✅ Lihat isi keranjang
* ✅ Hapus produk dari keranjang

---

## 🧪 Hasil Eksekusi

Setelah test dijalankan, Robot Framework akan menghasilkan:

* `output.xml` → hasil test detail
* `log.html` → log lengkap step-by-step
* `report.html` → ringkasan test (jumlah pass/fail)

---

## 📦 Requirements

* Python 3.7+
* Google Chrome (versi terbaru)
* chromedriver (dikelola otomatis oleh `webdriver-manager`)

---
