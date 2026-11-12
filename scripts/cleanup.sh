#!/usr/bin/env bash
#
# Antigravity Environment Cleanup Script
# Bersihkan cache lokal & buka dashboard koneksi Google sebelum banding.
#

set -e

echo "======================================================"
echo " 🛡️ Antigravity Local Environment Cleaner & Checker"
echo "======================================================"
echo ""

# Daftar direktori cache umum
CACHE_DIRS=(
    "$HOME/.antigravity/cache"
    "$HOME/.cache/antigravity"
    "$HOME/.config/antigravity/temp"
)

echo "🔍 Memeriksa direktori cache lokal..."
FOUND=0
for DIR in "${CACHE_DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        echo "  - Ditemukan: $DIR"
        FOUND=$((FOUND+1))
    fi
done

if [ "$FOUND" -eq 0 ]; then
    echo "  ✅ Tidak ditemukan folder cache bermasalah."
else
    read -p "❓ Apakah Anda ingin menghapus direktori cache di atas? (y/N): " CONFIRM
    if [[ "$CONFIRM" =~ ^[Yy]$ ]]; then
        for DIR in "${CACHE_DIRS[@]}"; do
            if [ -d "$DIR" ]; then
                rm -rf "$DIR"
                echo "  🗑️ Dihapus: $DIR"
            fi
        done
        echo "✅ Cache berhasil dibersihkan!"
    else
        echo "ℹ️ Pembersihan dibatalkan oleh pengguna."
    fi
fi

echo ""
echo "------------------------------------------------------"
echo "🌐 Langkah Berikutnya:"
echo "1. Buka Google Account Connections untuk mencabut izin aplikasi pihak ketiga:"
echo "   👉 https://myaccount.google.com/connections"
echo ""
echo "2. Buka Formulir Banding Resmi Antigravity:"
echo "   👉 https://forms.gle/hGzM9MEUv2azZsrb9"
echo "------------------------------------------------------"

# Opsional: Membuka browser otomatis jika didukung
read -p "❓ Buka tautan di atas pada browser default sekarang? (y/N): " OPEN_BROWSER
if [[ "$OPEN_BROWSER" =~ ^[Yy]$ ]]; then
    URL_CONNECTIONS="https://myaccount.google.com/connections"
    URL_FORM="https://forms.gle/hGzM9MEUv2azZsrb9"

    if command -v xdg-open &> /dev/null; then
        xdg-open "$URL_CONNECTIONS" &> /dev/null &
        xdg-open "$URL_FORM" &> /dev/null &
    elif command -v open &> /dev/null; then
        open "$URL_CONNECTIONS"
        open "$URL_FORM"
    else
        echo "⚠️ Tidak dapat membuka browser otomatis. Silakan salin link di atas secara manual."
    fi
fi

echo ""
echo "Selesai. Pastikan menunggu 48-72 jam setelah mengirim formulir banding!"
