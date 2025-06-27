# ANW Auto Installer

Skrip untuk install dan jalankan tool ANW by Abg Ayob dengan sistem kunci.

## Struktur
- `anw-auto-install.sh` → Installer + kunci lebuh tahap
- `key.txt` → Senarai kunci sah
- `start.sh` → Skrip utama selepas lulus kunci

## Cara Guna (User)
1. Muat turun `anw-auto-install.sh`:
   ```bash
   wget https://raw.githubusercontent.com/ayob77/termuxanw/main/anw-auto-install.sh
   chmod +x anw-auto-install.sh
   ```
2. Jalankan:
   ```bash
   ./anw-auto-install.sh
   ```
3. Masukkan kunci daripada pembekal (Abg Ayob).

## Cara Ubah (Repo Maintainer)
- Tambah atau ubah kunci dalam `key.txt`.
- Edit `start.sh` untuk tambah fungsionaliti tool sebenar.
- Update `README.md` untuk panduan terkini.
