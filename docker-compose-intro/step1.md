## Create Second Container

Jika kita membuat Docker Image maka kita menggunakan Dockerfile. Sedangkan jika kita akan menggunakan Docker Compose, maka file konfigurasinya dinamakan `docker-compose.yml`. File tersebut berisi instruksi apa saja yang harus dilakukan oleh Docker Compose. Misalnya membuat beberapa container, mengatur networknya, membuat volume, dan lainnya. Format filenya menggunakan YAML. Contohnya :

```
nama_container:
    property_1: value

    property_2:
        - opsi_1
        - opsi_2
```

Pada scenario ini kita akan membuat sebuah website berisi Wordpress. Normalnya kita harus membuat 2 container, yaitu container untuk database dan untuk Wordpressnya sendiri.

## Task
Tambahkan file konfigurasi berikut ke dalam file `docker-compose.yml` untuk mendefinisikan container yang berisi server database (MariaDB).

Pada bagian `ports` kita mendefinisikan port yang diekspose, sama halnya dengan parameter `-p` ketika melakukan `docker run`.

Kemudian pada bagian `environment` kita mendefinisikan beberapa variable yang digunakan untuk membuat sebuah database, mendefinisikan user databasenya, dan memberikan password pada user tersebut.

Terakhir pada bagian `volumes`, kita membuat Docker Volume bernama `db` yang di-attach ke dalam container dalam directory `/var/lib/mysql`. Hal ini dilakukan karena file-file database pastinya dinamis, dan kita ingin agar data tersebut masih tetap ada ketika container dihapus atau rusak.

<pre class="file" data-filename="docker-compose.yml">
version: '3.1'

services:
  db:
    image: mariadb:10.4.10-bionic
    ports:
      - 3306:3306
    environment:
      WORDPRESS_DB_HOST: db
      WORDPRESS_DB_USER: exampleuser
      WORDPRESS_DB_PASSWORD: examplepass
      WORDPRESS_DB_NAME: exampledb
    volumes:
      - db:/var/lib/mysql
</pre>