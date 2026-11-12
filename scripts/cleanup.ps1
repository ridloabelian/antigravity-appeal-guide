#
# Antigravity Environment Cleanup Script (PowerShell)
# Bersihkan cache lokal & buka dashboard koneksi Google sebelum banding.
#

Write-Host "======================================================" -ForegroundColor Cyan
Write-Host " 🛡️ Antigravity Local Environment Cleaner & Checker" -ForegroundColor Cyan
Write-Host "======================================================"
Write-Host ""

$cacheDirs = @(
    "$env:USERPROFILE\.antigravity\cache",
    "$env:LOCALAPPDATA\antigravity\cache",
    "$env:APPDATA\antigravity\temp"
)

$foundDirs = @()
foreach ($dir in $cacheDirs) {
    if (Test-Path $dir) {
        Write-Host "  - Ditemukan: $dir" -ForegroundColor Yellow
        $foundDirs += $dir
    }
}

if ($foundDirs.Count -eq 0) {
    Write-Host "  ✅ Tidak ditemukan folder cache bermasalah." -ForegroundColor Green
} else {
    $confirm = Read-Host "❓ Apakah Anda ingin menghapus direktori cache di atas? (y/N)"
    if ($confirm -match '^[Yy]$') {
        foreach ($dir in $foundDirs) {
            Remove-Item -Recurse -Force $dir -ErrorAction SilentlyContinue
            Write-Host "  🗑️ Dihapus: $dir" -ForegroundColor DarkGray
        }
        Write-Host "✅ Cache berhasil dibersihkan!" -ForegroundColor Green
    } else {
        Write-Host "ℹ️ Pembersihan dibatalkan oleh pengguna." -ForegroundColor Gray
    }
}

Write-Host ""
Write-Host "------------------------------------------------------"
Write-Host "🌐 Langkah Berikutnya:"
Write-Host "1. Buka Google Account Connections untuk mencabut izin aplikasi pihak ketiga:"
Write-Host "   👉 https://myaccount.google.com/connections" -ForegroundColor Cyan
Write-Host ""
Write-Host "2. Buka Formulir Banding Resmi Antigravity:"
Write-Host "   👉 https://forms.gle/hGzM9MEUv2azZsrb9" -ForegroundColor Cyan
Write-Host "------------------------------------------------------"

$openBrowser = Read-Host "❓ Buka tautan di atas pada browser default sekarang? (y/N)"
if ($openBrowser -match '^[Yy]$') {
    Start-Process "https://myaccount.google.com/connections"
    Start-Process "https://forms.gle/hGzM9MEUv2azZsrb9"
}

Write-Host ""
Write-Host "Selesai. Pastikan menunggu 48-72 jam setelah mengirim formulir banding!" -ForegroundColor Green
