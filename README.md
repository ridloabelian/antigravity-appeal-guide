# 🛡️ Google Antigravity & Gemini Account Appeal & Recovery Guide

Panduan lengkap, langkah remediasi, dan template banding untuk memulihkan akun **Google Antigravity**, **Gemini CLI**, atau **Gemini Code Assist** yang terkena penangguhan (*suspended / banned*) akibat pelanggaran *Terms of Service* (ToS) atau error `403 PERMISSION_DENIED`.

---

## 📌 Ringkasan Tautan Resmi

| Layanan / Kebutuhan | URL Resmi |
| :--- | :--- |
| **Formulir Banding Resmi (Personal)** | [https://forms.gle/hGzM9MEUv2azZsrb9](https://forms.gle/hGzM9MEUv2azZsrb9) |
| **Pusat Bantuan Resmi Antigravity** | [https://antigravity.google/support](https://antigravity.google/support) |
| **Dashboard Izin & Koneksi Akun Google** | [https://myaccount.google.com/connections](https://myaccount.google.com/connections) |
| **Banding Akun Google Dinonaktifkan (Global)** | [https://support.google.com/accounts/contact/disabled2](https://support.google.com/accounts/contact/disabled2) |
| **Google Cloud Console Support (Enterprise)** | [https://console.cloud.google.com/support](https://console.cloud.google.com/support) |

---

## ⚠️ Mengapa Akun Antigravity Bisa Terkena Ban?

Sebagian besar penangguhan akun terjadi akibat **pemindaian keamanan otomatis (*automated security sweeps*)** oleh Google Trust & Safety Team karena:

1. **Penggunaan Tool / Wrapper Pihak Ketiga Tidak Resmi:** Menggunakan CLI wrapper tidak resmi, custom bridge, atau plugin tanpa sertifikasi yang mengakses internal endpoint Antigravity.
2. **Reverse Engineering / Scraper OAuth:** Mengambil token OAuth dari web UI untuk digunakan pada agent eksternal atau skrip otomatis tanpa otorisasi.
3. **Loop Otomasi Ekstrem (Rate Limit Abuse):** Menjalankan loop agentic yang memicu ribuan panggilan API per menit tanpa *exponential backoff*.
4. **Pelanggaran Konten / Abuse Policy:** Menggunakan model untuk generasi prompt atau kode yang melanggar kebijakan keamanan Google.

> [!CAUTION]
> **Kebijakan One-Time Remediation:**
> Google umumnya hanya memberikan **satu kali kesempatan** pemulihan (*one-time remediation*) untuk akun personal. Jika akun terkena penangguhan untuk kedua kalinya, penangguhan tersebut hampir dipastikan permanen.

---

## 🛠️ Langkah Remediasi (Wajib Sebelum Mengisi Formulir)

Jangan langsung mengirim banding sebelum membersihkan sistem Anda! Jika tim review Google mendeteksi token tidak sah masih aktif, permohonan banding akan langsung ditolak.

### 1. Cabut Akses OAuth Pihak Ketiga
Buka [Google Account Connections](https://myaccount.google.com/connections):
- Cari aplikasi atau script pihak ketiga yang baru saja Anda hubungkan.
- Klik aplikasi tersebut dan pilih **Hapus Akses / Delete Access**.

### 2. Uninstall Tools Tidak Resmi
Hapus binary, package pip/npm, atau ekstensi pihak ketiga yang berinteraksi dengan Antigravity tanpa izin resmi.

### 3. Bersihkan Cache & Konfigurasi Lokal
Gunakan skrip pembersih otomatis di repositori ini atau jalankan manual:
```bash
# Untuk Linux / macOS
rm -rf ~/.antigravity/cache ~/.cache/antigravity
# Periksa juga konfigurasi auth gemini/google yang tidak valid
```
*(Atau jalankan skrip `./scripts/cleanup.sh`)*

---

## 📝 Pengajuan Banding (*Submitting Appeal*)

1. **Buka Formulir Resmi:** Buka [https://forms.gle/hGzM9MEUv2azZsrb9](https://forms.gle/hGzM9MEUv2azZsrb9).
2. **Gunakan Akun yang Terdampak:** Pastikan browser login menggunakan akun Google yang terkena ban.
3. **Isi Pernyataan Banding dengan Jujur & Profesional:**
   - Jelaskan bahwa pelanggaran terjadi tanpa sengaja (misal: pengujian tool/wrapper pihak ketiga).
   - Nyatakan bahwa Anda telah mencabut seluruh token OAuth dan meng-uninstall software terkait.
   - Berikan komitmen untuk hanya menggunakan interface dan SDK resmi ke depannya.
   - *Lihat contoh template pernyataan di [templates/appeal_statements.md](templates/appeal_statements.md).*

---

## ⏳ Waktu Peninjauan & Hasil

* **Estimasi Waktu:** **48 hingga 72 jam kerja**.
* **Notifikasi:** Google umumnya **tidak** mengirimkan email konfirmasi penerimaan atau status peninjauan.
* **Cara Cek Status:** Coba login kembali ke Antigravity IDE atau CLI setelah 3 hari. Jika disetujui, akses akan langsung aktif secara otomatis.

---

## 🏢 Untuk Akun Perusahaan / Google Workspace

Jika Anda menggunakan akun Google Workspace (kantor/kampus):
1. Formulir publik consumer di atas **tidak berlaku**.
2. Hubungi Super Admin Google Workspace / Google Cloud di organisasi Anda.
3. Super Admin harus membuka tiket resmi melalui **Google Cloud Support Console** dengan menyertakan `Error ID`, email pengguna, dan bukti audit log.

---

## 📂 Struktur Repositori

```text
├── README.md                      # Panduan utama
├── CHECKLIST.md                   # Checklist sebelum & sesudah banding
├── LICENSE                        # MIT License
├── templates/
│   └── appeal_statements.md       # Draf teks banding (Bahasa Inggris & Indonesia)
└── scripts/
    ├── cleanup.sh                 # Skrip pembersih cache untuk Linux/macOS
    └── cleanup.ps1                # Skrip pembersih cache untuk Windows PowerShell
```

---

## ⚖️ Lisensi & Disclaimer

Dokumentasi ini dilisensikan di bawah [MIT License](LICENSE). Repositori ini adalah panduan komunitas independen dan tidak berafiliasi secara resmi dengan Google LLC atau Google DeepMind.
