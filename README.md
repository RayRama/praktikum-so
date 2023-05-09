
## Monitoring Resources

### RAM
Untuk monitoring penggunaan RAM, bisa menggunakan perintah seperti ini
```bash
free [options]
```
Opsi yang bisa digunakan adalah
- -h : Untuk menampilkan dalam format yang mudah dibaca oleh manusia
- -mega : Untuk menampilkan dalam format Megabyte
dll.

[RAM](screenshots/ram.gif)

### CPU
Untuk monitoring penggunaan CPU, bisa menggunakan perintah
```bash
top
```
atau
```bash
ps -aux
``` 

### Storage
Untuk monitoring penggunaan Hardisk atau Storage, bisa menggunakan perintah
```bash
df [options]
```
Opsi yang bisa digunakan adalah
- -h : Untuk menampilkan dalam format yang mudah dibaca oleh manusia

Ada beberapa tools yang bisa memudahkan dalam monitoring resources, salah satunya adalah `htop`. Namun program tersebut perlu diinstal terlebih dahulu. Untuk lebih jelas, silahkan baca dokumennya [disini](https://htop.dev/downloads.html).
## Manajemen Program

### Monitoring program
Untuk monitoring program, bisa menggunakan beberapa command yang sudah dijelaskan sebelumnya seperti `top` dan `htop`.

### Menghentikan program
Untuk menghentikan program yang sedang berjalan, bisa menggunakan perintah
```bash
kill <PID>
```
Catatan: PID adalah nomor proses dari program yang bisa kita lihat menggunakan perintah `top` atau `htop`.

### Otomasi perintah dengan shell script
Misal, kita ingin otomasi pembuatan folder dan file di dalamnya, maka perintah yang digunakan adalah `mkdir`, `cd`, dan `touch`.

Selanjutnya, kita buat dulu file shell script dengan perintah

```bash
touch namafile.sh
```

Setelah file shell script dibuat, edit file tersebut menggunakan teks editor yang ada. Penulis sendiri menggunakan `vim` untuk mengedit filenya.

```bash
vim namafile.sh
```

Kemudian, isikan dengan perintah membuat folder dan file

```bash
mkdir namafolder
cd namafolder
touch namafile.ext
```
Setelah itu save filenya.

Catatan: `ext` adalah ekstensi file, bisa diubah ke `.txt`, `.md`, `.sh`, dll.

Selanjutnya, ubah permission dari file tersebut menggunakan perintah

```bash
chmod +x namafile.sh

Options +x adalah untuk memberikan permission eksekusi terhadap program
```

Setelah permission diubah, file bisa langsung dieksekusi menggunakan perintah
```bash
./namafile.sh
atau
bash namafile.sh
```

### Penjadwalan menggunakan cron
BELUM ADA
## Manajemen Network

### Akses server menggunakan SSH

Untuk mengakses server menggunakan SSH, bisa menggunakan perintah

```bash
ssh <account>@<ip-server>

Biasanya akan dimintai password
```

Jika ingin mengakses server dengan port custom, bisa menggunakan perintah

```bash
ssh <account>@<ip-server> -p <port>
```
Umumnya, port yang digunakan ssh adalah `22`. Namun jika ingin menggunakan port lain, bisa mengikuti cara di atas.

### Monitoring program yang menggunakan network
Untuk memonitoring program yang menggunakan internet atau network, bisa menggunakan perintah `nethogs`. Namun, perlu diketahui bahwa perintah tersebut tidak tersedia secara default. Oleh karena itu anda perlu menginstallnya terlebih dahulu.

### Mengoperasikan HTTP Client

Untuk mengoperasikan HTTP Client, bisa menggunakan perintah `curl` atau `wget`. Penggunaanya pun cukup sederhana yaitu

#### curl
```bash
curl <URL> [options]
atau
curl <URL>

contoh:
curl https://timeapi.io/api/Time/current/zone?timeZone=Asia/Jakarta

output:
{
  "year": 2023,
  "month": 5,
  "day": 4,
  "hour": 14,
  "minute": 44,
  "seconds": 33,
  "milliSeconds": 486,
  "dateTime": "2023-05-04T14:44:33.4868092",
  "date": "05/04/2023",
  "time": "14:44",
  "timeZone": "Asia/Jakarta",
  "dayOfWeek": "Thursday",
  "dstActive": false
}
```

#### wget
```bash
wget <URL>

contoh:
wget https://file-examples.com/wp-content/uploads/2017/10/file-sample_150kB.pdf

output:
wget ini fungsinya untuk mendownload file
```
## Manajemen File dan Folder

### CRUD file dan folder
Ada beberapa perintah untuk melakukan CRUD file dan folder diantaranya

- `cd` untuk berpindah direktori / folder
- `ls` untuk melihat isi direktori / folder
- `mkdir` untuk membuat folder
- `touch` untuk membuat file
- `nano` atau `vim` untuk mengedit isi file
- `rmdir` untuk menghapus folder
- `rm` untuk menghapus file / folder
- `mv` untuk memindahkan file atau folder
- `cp` untuk menyalin file atau folder


### Manajemen Izin dan Hak Milik File & Folder
Untuk mengubah izin file atau folder bisa menggunakan perintah `chmod`. Untuk mengubah hak milik bisa menggunakan perintah `chown`. Berikut adalah cara penggunaannya

```bash
chmod [options] <file/folder>
```

```bash
chown [user:group] <file/folder> 
```
Untuk lebih jelasnya bisa membaca artikel [berikut](https://www.hostinger.co.id/tutorial/pengertian-chmod-dan-chown-untuk-ganti-permission-di-linux/)

### Pencarian File dan Folder
Untuk mencari file dan folder bisa menggunakan perintah `find`. Berikut adalah cara penggunaannya

```bash
find [options] [path] [expressions]
```
Ada juga perintah untuk mencari teks di dalam file teks dan lainnya yaitu `grep`. Berikut cara penggunaannya

```bash
grep [options] pattern [file ...]
```

Agar lebih jelas bisa membaca artikel-artikel berikut
- [find](https://www.linuxid.net/25319/tutorial-perintah-find-untuk-mencari-file-di-linux-terminal/)
- [grep](https://www.linuxid.net/25319/tutorial-perintah-find-untuk-mencari-file-di-linux-terminal/)
## Kompresi Data
Ada beberapa perintah untuk melakukan kompresi data, namun yang akan penulis bahas hanya 2 yaitu `tar` dan `gzip`. Berikut adalah cara penggunaanya

### tar
```bash
tar [options] [output] [file or folder]

contoh
tar -cfv output.tar file.txt
```
Untuk mengekstrak file yang dikompresi `tar` bisa dengan cara
```bash
tar -xfv output.tar
```
Agar lebih jelas, bisa membaca artikel tentang `tar` di link [berikut](https://www.linuxid.net/25490/tutorial-perintah-tar-dan-penggunaan-di-linux-terminal/)

### gzip
```bash
gzip [options] [file]

contoh
gzip -k file.txt
```
Untuk mengekstrak file yang dikompresi `gzip` bisa dengan cara
```bash
gzip -d output.gz
```
Agar lebih jelas, bisa membaca artikel tentang `gzip` di link [berikut](https://www.linuxid.net/31408/tutorial-penggunaan-perintah-gzip-di-linux-terminal/)
