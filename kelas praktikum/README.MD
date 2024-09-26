# Praktikum Manajemen Basis Data

## Deskripsi
Praktikum **Manajemen Basis Data** ini dirancang untuk membantu mahasiswa memahami konsep dasar hingga lanjutan mengenai pengelolaan basis data (database), dari perancangan, implementasi, hingga pemeliharaan. Peserta akan mempelajari SQL, normalisasi, desain ERD, serta teknik-teknik pengelolaan database menggunakan sistem manajemen basis data (DBMS) seperti MySQL, PostgreSQL, dan lain-lain.

## Daftar Isi
- [Tujuan](#tujuan)
- [Persyaratan](#persyaratan)
- [Struktur Direktori](#struktur-direktori)
- [Langkah Instalasi](#langkah-instalasi)
- [Materi Praktikum](#materi-praktikum)
- [Lisensi](#lisensi)

## Tujuan
1. Memahami konsep dan terminologi dalam basis data.
2. Merancang struktur basis data yang efisien menggunakan **Entity Relationship Diagram (ERD)**.
3. Menerapkan teknik normalisasi basis data hingga bentuk normal ke-3 (3NF).
4. Menulis kueri SQL untuk mengelola data dalam basis data.
5. Mengimplementasikan fungsi dan prosedur dalam SQL untuk kebutuhan bisnis.
6. Melakukan backup dan pemeliharaan basis data.

## Persyaratan
Untuk dapat mengikuti praktikum ini, peserta diharapkan:
- Memahami dasar pemrograman
- Memiliki dasar pengetahuan tentang database
- Telah menginstal salah satu DBMS yang digunakan dalam praktikum

### Software yang dibutuhkan:
- **MySQL** atau **PostgreSQL** (sesuaikan dengan instruktur)
- **DB Browser** untuk SQLite (opsional)
- **ERD Tools**: MySQL Workbench, Draw.io, atau Lucidchart

## Struktur Direktori
```
praktikum-manajemen-basis-data/
│
├── /contoh_kueri/       # Kumpulan contoh kueri SQL
├── /materi/             # Materi teoritis terkait basis data
├── /soal_praktikum/     # Soal dan studi kasus untuk setiap pertemuan
├── /tugas/              # Tempat untuk tugas mahasiswa
└── README.md            # Panduan dan dokumentasi praktikum
```

## Langkah Instalasi
1. **Download dan Install DBMS**:
   - Untuk MySQL: [Download MySQL](https://dev.mysql.com/downloads/installer/)
   - Untuk PostgreSQL: [Download PostgreSQL](https://www.postgresql.org/download/)

2. **Konfigurasi DBMS**:
   - Buat pengguna baru dan buat basis data untuk praktikum.
   - Sesuaikan hak akses pengguna untuk pengelolaan basis data.

3. **Instalasi ERD Tools**:
   - Download dan install [MySQL Workbench](https://dev.mysql.com/downloads/workbench/) atau gunakan alternatif seperti [Draw.io](https://app.diagrams.net/) untuk membuat ERD.

## Materi Praktikum
1. **Pertemuan 1**: Pengantar Basis Data & Instalasi DBMS
   - Pengenalan database
   - Instalasi dan konfigurasi MySQL/PostgreSQL
   - Pembuatan tabel sederhana dengan SQL

2. **Pertemuan 2**: Desain Database dengan ERD
   - Pengenalan ERD
   - Membuat ERD menggunakan MySQL Workbench atau Draw.io
   - Implementasi ERD ke dalam DBMS

3. **Pertemuan 3**: Normalisasi Basis Data
   - Pengenalan normalisasi hingga 3NF
   - Studi kasus dan contoh penerapan

4. **Pertemuan 4**: Operasi CRUD dengan SQL
   - CREATE, READ, UPDATE, DELETE
   - Studi kasus: pengelolaan data mahasiswa

5. **Pertemuan 5**: Fungsi & Prosedur dalam SQL
   - Pengenalan fungsi agregasi
   - Membuat prosedur dan fungsi dalam database

6. **Pertemuan 6**: Backup & Restore Database
   - Cara backup dan restore data dalam MySQL/PostgreSQL
   - Latihan backup dan pemulihan basis data

## Lisensi
Materi praktikum ini disediakan untuk tujuan pembelajaran dan penelitian. Penggunaan lain harus mendapatkan izin dari pembuatnya.