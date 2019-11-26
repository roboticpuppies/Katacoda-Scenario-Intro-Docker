## Run it

Setelah `docker-compose.yml` selesai dibuat, maka kita bisa menjalankan beberapa container dan konfigurasi lainnya berdasarkan perintah yang ada di `docker-compose.yml`. Jalankan command berikut :

`docker-compose up -d`{{execute}}

Pastikan bahwa sudah ada 2 container yang berjalan (Wordpress dan database) :

`docker ps`{{execute}}

Jika tidak ada masalah, buka URL berikut untuk mengakses website tersebut :
http://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com