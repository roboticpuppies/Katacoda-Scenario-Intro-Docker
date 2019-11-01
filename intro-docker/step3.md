## Expose Port to External

Setelah membuat container berdasarkan image Wordpress, Ryza tidak bisa mengakses halaman Wordpressnya. Padahal container dalam keadaan Running.

Hal ini dikarenakan container istilahnya berjalan didalam sandbox. Apabila sebuah service harus bisa diakses dari luar host Dockernya, maka port tersebut harus diexpose terlebih dahulu.

Setelah diexpose, maka service bisa diakses melalui port yang sudah ditentukan.

## Task

Ryza tau bahwa seharusnya website tersebut bisa diakses melalui browser port 80 (HTTP). Setelah membaca dokumentasi, Ryza akhirnya paham bahwa **port yang diekspose diatur ketika container dibuat**, yaitu ketika dia menjalankan command `docker run`. Ryza juga mengetahui bahwa dia bisa menamai containernya sendiri dan tidak menggunakan nama yang digenerate secara random agar mudah diidentifikasi.

Sehingga dia ingin membuat container bernama `WP_Staging` berdasarkan image `Wordpress:latest` yang bisa diakses melalui port 80 dan running secara background. Maka command yang digunakan oleh Ryza adalah :

`docker run -d --name WP_Staging -p 80:80 wordpress:latest`{{execute}}

Secara default, port di Docker akan dibinding ke IP 0.0.0.0. Artinya port tersebut bisa diakses melalui IP apa saja yang ada di host Dockernya (Listen to all address).