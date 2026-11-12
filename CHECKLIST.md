# ✅ Checklist Banding & Pencegahan Ban Akun Antigravity

Gunakan checklist ini sebelum mengirimkan formulir dan sebagai panduan keamanan akun ke depannya.

---

## 📋 Checklist Pra-Pengajuan (Sebelum Mengisi Form)

- [ ] **1. Identifikasi Penyebab Utama**
  - Apakah baru saja menginstal CLI wrapper atau extension pihak ketiga?
  - Apakah menjalankan script scraping atau automated looping tanpa jeda?
  - Apakah membagikan token OAuth ke repository publik atau file `.env` terbuka?

- [ ] **2. Bersihkan Perangkat Lokal**
  - [ ] Uninstall ekstensi atau paket CLI tidak resmi (npm, pip, binary).
  - [ ] Hapus cache konfigurasi lokal:
    ```bash
    rm -rf ~/.antigravity/cache ~/.cache/antigravity ~/.config/antigravity
    ```
  - [ ] Matikan background process / daemon yang berinteraksi dengan API Antigravity.

- [ ] **3. Audit & Revoke OAuth di Akun Google**
  - [ ] Kunjungi [Google Account Connections](https://myaccount.google.com/connections).
  - [ ] Hapus akses untuk semua aplikasi atau layanan pihak ketiga yang mencurigakan atau baru dihubungkan.

- [ ] **4. Verifikasi Login Browser**
  - [ ] Pastikan browser yang digunakan untuk membuka formulir banding sedang aktif dengan akun Google yang **terdampak**.

- [ ] **5. Kirim Formulir Banding HANYA Sekali**
  - [ ] Tautan: [https://forms.gle/hGzM9MEUv2azZsrb9](https://forms.gle/hGzM9MEUv2azZsrb9).
  - [ ] Gunakan nada sopan, akui kelalaian teknis, dan cantumkan bukti bahwa Anda telah membersihkan environment.
  - [ ] **Jangan spam formulir berulang kali.** Mengirim lebih dari satu kali dapat me-reset antrian peninjauan Anda.

---

## ⏳ Checklist Pasca-Pengajuan (Masa Peninjauan)

- [ ] **Tunggu 48 - 72 Jam Kerja**: Hindari mencoba login berulang-ulang setiap menit selama masa tunggu.
- [ ] **Jangan Buat Akun Palsu / Clone**: Membuka akun sekunder di IP dan mesin yang sama saat proses investigasi dapat memicu hardware/IP ban permanen.
- [ ] **Uji Akses Setelah 72 Jam**: Buka Antigravity IDE atau `agy` CLI resmi dan coba login kembali.

---

## 🛡️ Panduan Pencegahan Ban di Masa Depan (Best Practices)

- **Gunakan Tool Resmi Saja**: Gunakan aplikasi resmi Antigravity IDE, CLI resmi (`agy`), dan SDK resmi.
- **Terapkan Rate Limiting & Backoff**: Jika membuat custom script otomasi, gunakan library exponential backoff dan batas request yang wajar.
- **Lindungi Kredensial**: Jangan pernah meng-hardcode token autentikasi atau menyematkan refresh token di codebase git.
- **Patuhi ToS AI Safety**: Hindari prompt injection, jailbreak research berbahaya, atau eksploitasi keamanan model tanpa koordinasi dengan program vulnerability Google.
