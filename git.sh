#!/data/data/com.termux/files/usr/bin/bash

# Cek apakah ada pesan commit
if [ -z "$1" ]; then
    echo "Masukkan pesan commit:"
    read commit_msg
else
    commit_msg="$1"
fi

echo "➕ Menambahkan semua perubahan..."
git add .

echo "📝 Melakukan commit..."
git commit -m "$commit_msg"

echo "⬆️ Mengirim ke GitHub..."
git push origin main

echo "✨ Selesai!"