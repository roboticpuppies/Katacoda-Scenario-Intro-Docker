## Create Wordpress Container
Tambahkan file konfigurasi berikut ke dalam file `docker-compose.yml` untuk mendefinisikan container yang berisi Wordpress.

Kemudian definisikan port yang diekspose ada bagian `ports`.

Pada bagian `environment` kita mendefinisikan beberapa variable yang diperlukan oleh container Wordpress, yaitu informasi database yang akan digunakan oleh Wordpressnya. Variable ini menyesuaikan variable yang kita gunakan ketika membuat container database sebelumnya.

Terakhir buat volume bernama `wordpress` yang di-attach ke dalam container dalam directory `/var/www/html`. Hal ini dilakukan karena file-file Wordpress pastinya dinamis, dan kita ingin agar data tersebut masih tetap ada ketika container dihapus atau rusak.

<pre class="file" data-filename="docker-compose.yml">

  wp_latihan:
    image: wordpress
    ports:
      - 80:80
    environment:
      WORDPRESS_DB_HOST: db
      WORDPRESS_DB_USER: exampleuser
      WORDPRESS_DB_PASSWORD: examplepass
      WORDPRESS_DB_NAME: exampledb
    volumes:
      - wordpress:/var/www/html
</pre>