# Catatan Praktikum - Hari 1

## Hari 1: Sesi Pagi
di yg hari 1 pagi ini saya fokusnye bikin kerangka dasar halaman profil dan benerin beberapa error code yg ada dimateri bapak aksih

### yg diperbaiki dan diubah ada:
1. **Jarak foto profil ke nama mepet**
   - Di kode awal pakenya `SizedBox(width: 16)`. Karena posisinya di dalam `Column` (susunannya ke bawah), `width` itu gak ada efeknya sama sekali, jadi fotonya nempel sama teks nama.
   - **Solusinya:** Diganti jadi `SizedBox(height: 16)` biar ada jarak ke bawah.
   - namanya saya ubah pake nama saya sendiri dan rolenya juga 

2. **Error kurung dobel di paling bawah**
   - di barisan paling akhir kode dosen ada kelebihan tanda tutup kurung dan titik koma `); );` yg bikin kodenya merah/error pas mau dijalankan.
   - **Solusinya:** dihapus penutup yang lebihnya biar kodenya normal lagi.

3. **Kodenya masih numpuk di satu tempat**
   - awalnya tuh semua kodenya digabungin di `main.dart`.
   - **Solusinya:** dipisah jadi 2 file sesuai arahan tugasnya:
     - `main.dart` buat jalanin aplikasinya.
     - `profile_page.dart` buat isi tampilan profilnya.

---

## Hari 1: Sesi Siang (Extract Widget)
Di sesi siang ini kodenya di-refactor / dipecah biar lebih modular dan rapi:
1. **Bikin widget `ProfileAvatar`:** buat nampung komponen foto profil (`CircleAvatar`).
2. **Bikin widget `ProfileInfo`:** buat nampung teks nama sama role, lengkap pake parameter data passing (`userName` dan `role`).
