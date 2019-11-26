## Data Volumes

Docker Volume dibuat dan dipasang (attached) ketika sebuah container dibuat atau dijalankan. Docker Volume memungkinkan kita untuk memetakan (mapping) sebuah directory dari Docker Host ke dalam sebuah container.

Mapping ini berlaku dua arah. Artinya data yang ada di dalam Docker Volume bisa diakses oleh container sendiri, maupun dibuka oleh Docker Host. Docker Host di sini berperan sebagai penyimpan data tersebut (Data persistence).

Docker Volumes umumnya digunakan untuk menyimpan data yang berubah-ubah (dynamic). Contohnya pada sebuah database server. Data pada database server pasti berubah-ubah dan tidak mungkin data tersebut kita letakkan langsung didalam container. Karena jika container tersebut rusak atau terhapus, data yang disimpan juga akan hilang. Maka dari itu digunakanlah Docker Volume.

Analogi lain misalnya Docker Volume ini adalah harddisk. Sedangkan container adalah laptop. Apabila laptop tersebut rusak, kita tinggal melepas harddisknya, lalu pasang harddisk tersebut ke laptop yang baru. Sehingga data kita tetap bisa diakses walau laptop yang lama rusak.

## Task
Pada scenario ini kita akan mempraktekkan bagaimana membuat sebuah container dan memasang volume-nya. Kita akan menggunakan image dari MariaDB dan memasangkan volume di dalamnya, karena isi dari database pasti berubah-ubah dan tidak boleh hilang. Seperti yang kita tau bahwa MariaDB atau MySQL menyimpan file databasenya di `/var/lib/mysql`.

Pertama kita perlu menjalankan container dengan image `mariadb:10.3.20-bionic`. Kemudian pada parameter `-v` kita membuat Docker Volume bernama `db` dan dipasang / di-attach ke `/var/lib/mysql` yang ada di dalam container tersebut.

```
docker run -d -p 3306:3306 -v db:/var/lib/mysql mariadb:10.3.20-bionic
```{{execute}}

Parameter `-v` ini berisi 3 bagian, dibatasi oleh colon (:), dan urutannya harus sesuai. Contohnya seperti ini :
`db:/var/lib/mysql:ro`

- Section pertama (db) menandakan nama volumenya.
- Section kedua (/var/lib/mysql) menandakan dimana volume akan di attach di dalam container.
- Section ketiga (ro) ini opsional, digunakan untuk memberikan opsi pada volumenya. Contohnya (ro), artinya mount volume secara read-only.

Selain menggunakan `-v`, kita juga bisa menggunakan `--mount`. Syntaxnya juga berbeda dari `-v`. Dulu `--mount` ini digunakan di Docker Swarm. Namun pada versi Docker diatas 17.06, `--mount` juga bisa digunakan untuk container secara individual. Secara umum `--mount` ini lebih verbose. Berikut perbedaannya :

**Menggunakan --mount :**
```
docker run -d \
  --name devtest \
  --mount source=myvol2,target=/app \
  nginx:latest
```

**Menggunakan -v :**
```
docker run -d \
  --name devtest \
  -v myvol2:/app \
  nginx:latest
```


Jika sudah, maka kita bisa mencari tahu dimana volume `db` ini disimpan di Docker Host dengan command :

```
docker volume inspect db
```{{execute}}

Pada bagian `Mountpoint` tertulis dimana path volume tersebut disimpan di Docker Hostnya. Kita bisa mengaksesnya langsung dari Docker Host menggunakan perintah `cd` pada umumnya.