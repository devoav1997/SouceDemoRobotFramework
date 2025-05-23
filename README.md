# 🧪 SauceDemoRobotFramework

## 🤖 Robot Framework BDD - Automation for SauceDemo

Proyek ini merupakan implementasi **automation testing** dengan **Robot Framework** menggunakan pendekatan **BDD-style (Behavior Driven Development)** untuk menguji fitur-fitur di situs [https://www.saucedemo.com](https://www.saucedemo.com), termasuk:

- Login dengan akun valid dan tidak valid
- Filter produk
- Add to Cart
- View Shopping Cart
- Remove product from cart
- Checkout produk

---

## 🗂️ Struktur Folder

```

saucedemo-tests/
├── tests/
│   ├── login.feature.robot          # Test case login
│   ├── filter.feature.robot         # Test case filter produk
│   ├── cart.feature.robot           # Test case keranjang belanja
│   └── checkout.feature.robot       # Test case checkout produk
├── resources/
│   ├── login\_keywords.robot         # Keyword untuk login
│   ├── filter\_keywords.robot        # Keyword untuk filter produk
│   ├── cart\_keywords.robot          # Keyword untuk keranjang
│   └── checkout\_keywords.robot      # Keyword untuk checkout
├── variables/
│   └── urls.robot                   # Variabel global (misal URL)
├── venv/                            # Virtual environment (opsional)
├── output.xml                       # Hasil eksekusi
├── log.html                         # Log hasil tes
├── report.html                      # Ringkasan hasil tes
└── README.md                        # Dokumentasi proyek

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
robot tests/checkout.feature.robot
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

* ✅ Tambahkan produk ke keranjang
* ✅ Lihat isi keranjang
* ✅ Hapus produk dari keranjang

### Checkout:

* ✅ Checkout berhasil hingga selesai
* ❌ Checkout gagal karena First Name kosong
* ❌ Checkout gagal karena Last Name kosong
* ❌ Checkout gagal karena Zip Code kosong

---

## 🧪 Hasil Eksekusi

Setelah test dijalankan, Robot Framework akan menghasilkan file:

* `output.xml` → Hasil detail setiap langkah test
* `log.html` → Log eksekusi lengkap
* `report.html` → Ringkasan test (jumlah passed / failed)

---

## 📦 Requirements

* Python 3.7+
* Google Chrome (versi terbaru)
* chromedriver (otomatis dikelola oleh `webdriver-manager`)

---

