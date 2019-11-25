## Data Volumes

Docker Volume dibuat dan dipasang (attached) ketika sebuah container dibuat atau dijalankan. Docker Volume memungkinkan kita untuk memetakan (mapping) sebuah directory dari Docker Host ke dalam sebuah container.

Mapping ini berlaku dua arah. Artinya data yang ada di dalam Docker Volume bisa diakses oleh container sendiri, maupun dibuka oleh Docker Host. Docker Host di sini berperan sebagai penyimpan data tersebut (Data persistence).

Docker Volumes umumnya digunakan untuk menyimpan data yang berubah-ubah (dynamic). Contohnya pada sebuah database server. Data pada database server pasti berubah-ubah dan tidak mungkin data tersebut kita letakkan langsung didalam container. Karena jika container tersebut rusak atau terhapus, data yang disimpan juga akan hilang. Maka dari itu digunakanlah Docker Volume.

Anggap saja Docker Volume ini adalah harddisk. Sedangkan container adalah laptop. Apabila laptop tersebut rusak, kita tinggal melepas harddisknya, lalu pasang harddisk tersebut ke laptop yang baru. Sehingga data kita tetap bisa diakses walau laptop rusak.

## Task
Pada scenario ini kita akan mempraktekkan bagaimana membuat sebuah container dan memasang volume-nya. Pada directory `/root/html` kita mempunyai file-file website (PHP) yang digunakan untuk upload sebuah gambar. Sehingga data didalamnya pasti berubah-ubah. Aplikasi ini menggunakan PHP. Jalankan command berikut untuk langsung membuat container berdasarkan image PHP, membuat volume yang dimapping ke `/root/html` di Docker Host-nya, dan memasang volumenya ke `/var/www/html` di dalam container :
