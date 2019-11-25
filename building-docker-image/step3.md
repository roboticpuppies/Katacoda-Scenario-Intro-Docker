## Run the Image

Ingat, Docker Image yang dijalankan akan menjadi sebuah container. Pada step ini kita akan menjalankan sebuah container dari Docker Image yang sudah dibuat sebelumnya.

## Task

Jalankan sebuah container dari image `hello-php:v1` dan expose port 80 agar bisa diakses dari browser.

`docker run -d -p 80:80 hello-php:v1`{{execute}}

Command `curl -i localhost`{{execute}} akan memunculkan tulisan "Hello World" yang berasal dari dalam container kita.