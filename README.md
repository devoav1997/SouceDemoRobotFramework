# SouceDemoRobotFramework
# 🤖 Robot Framework BDD - Login Automation for SauceDemo

Project ini merupakan automation testing dengan **Robot Framework** untuk menguji fitur login di [https://www.saucedemo.com](https://www.saucedemo.com) menggunakan pendekatan **BDD-style** (Behavior Driven Development).

---

## 🗂️ Struktur Folder

saucedemo-tests/
├── tests/
│ └── login.feature.robot # Test case utama
├── resources/
│ └── keywords.robot # Kumpulan keyword custom
├── variables/
│ └── urls.robot # Variabel global (seperti URL)
├── venv/ # (Opsional) Virtual environment
├── output.xml # Output hasil eksekusi
├── log.html # Log hasil eksekusi
├── report.html # Ringkasan hasil tes
└── README.md


---

## ⚙️ Cara Menjalankan

### 1. Clone repositori
```bash
git clone <url-repo-kamu>
cd saucedemo-tests

2. Buat dan aktifkan virtual environment
python3 -m venv venv
source venv/bin/activate

3. Install dependencies
pip install robotframework
pip install robotframework-seleniumlibrary
pip install webdriver-manager

4. Jalankan test
robot tests/login.feature.robot
✅ Skenario yang Diuji
✅ Login dengan kredensial valid
❌ Login dengan username/password tidak valid
❌ Login gagal karena username kosong
❌ Login gagal karena password kosong


🧪 Hasil Eksekusi
Setelah dijalankan, hasil test akan disimpan dalam file:
output.xml → hasil test detail
log.html → log lengkap step-by-step
report.html → ringkasan hasil test (jumlah pass/fail)

📦 Requirements
Python 3.7+
Google Chrome (versi terbaru)
chromedriver (otomatis dikelola oleh webdriver-manager)