# Catatan Praktikum - Hari 1, 2 & 3

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

---

## Hari 2: Sesi Pagi (Membangun Baris Statistik)
Di sesi pagi hari ke-2 ini fokusnya nambahin baris statistik profil (Proyek, Followers, Following):
1. **Nambahin `Container` dan `Row`:** di dalemnya langsung disusun 3 `Column` untuk nampilin angka dan label (15 Proyek, 1.2K Followers, 42 Following). Kodingannya masih ditulis langsung di dalam `profile_page` (belum dipisah/di-extract).
2. **Benerin bug dosen pada jarak antar statistik:**
   - **Masalah:** Di kode contoh bapak, antara proyek dan followers tertulis `SizedBox(height: 24)`. karena posisinya di dalam `Row` (arah horizontal ke samping), `height` gak ngefek buat ngasih jarak ke samping.
   - **Solusinya:** Diubah jadi `SizedBox(width: 24)` biar ada jarak horizontal yang rapi.

---

## Hari 2: Sesi Malam (Extract Widget Statistik)
Di sesi malam hari ke-2 ini baris statistiknya di-refactor / dipecah biar kodenya gak numpuk dan lebih rapi:
1. **Bikin widget `StatItem`:** satu komponen kolom statistik (angka & label) di-extract jadi widget `StatItem` yang nerima parameter `count` dan `label`. Jadi di dalam `Row`, kita tinggal panggil `StatItem` 3 kali buat Proyek, Followers, dan Following.
2. **Benerin bug code awal pada tipe data:**
   - **Masalah:** Di materi contoh bapak, bagian following tertulis `StatItem(count: 42, label: 'Following')`. Nilai `42` itu bentuknya angka (`int`), padahal widget `StatItem` butuhnya teks (`String count`), jadi bikin error *type mismatch*.
   - **Solusinya:** Diubah jadi string `'42'` pake tanda petik biar cocok dan gak error lagi.

---

## Hari 3: Sesi Pagi (menampilkan list Pengalaman Kerja)
Di sesi pagi hari ke-3 ini fokusnya nambahin daftar riwayat pengalaman kerja pake list:
1. **Nambahin data list `experiences`:** data pengalaman kerja disimpan di dalam list `List<String>`.
2. **Nambahin judul & garis pemisah:** pake widget `Align` teks "Pengalaman Kerja" dan widget `Divider` buat garis pemisahnya.
3. **Nampilin data pake `ListView.builder`:** kodingannya masih monolitik langsung di dalam `profile_page` (belum di-extract). Tiap item ditampilkan pake `Card` dan `ListTile` yang ada icon tas kerjanya (`Icons.work`).
4. **Bungkus body pake `SingleChildScrollView`:** biar halaman profilnya bisa di-scroll ke bawah dengan rapi dan gak mentok/overflow pas layarnya kecil.
5. **Benerin bug dosen pada listview:**
   - **Masalah:** Di contoh awal bapak, `ListView.builder` dimasukkan langsung ke dalam `Column` tanpa settingan tinggi. Ini bikin aplikasi langsung merah/error layout *RenderFlex unbounded height* karena listview bingung ngitung batas tingginya.
   - **Solusinya:** Ditambah properti `shrinkWrap: true` dan `physics: const NeverScrollableScrollPhysics()` biar tingginya pas ngikutin isi itemnya.
