## Step 1 : Deploy Docker Container Pertamamu

Untuk memulai menggunakan Docker pastinya adalah dengan membuat container pertamamu. Seperti yang kita tahu bahwa Docker akan membuat sebuah container berdasarkan sebuah image.

Sebagai Ryza, dia harus mencari image yang berisi Wordpress. Ryza bisa mencarinya melalui https://hub.docker.com/ atau menggunakan command `docker search wordpress`{{execute}}

## Task :
Setelah menggunakan command search diatas, Ryza tau bahwa nama Docker Image untuk Wordpress adalah `Wordpress`. Dia perlu membuat dan menjalankan container berdasarkan Image tersebut secara background.

Docker CLI mempunyai command `docker run`, dimana command tersebut akan membuat sebuah container dan menjalankannya. Command ini sama dengan ketika kita menjalankan 2 command, yaitu `docker create` dan `docker start`. Struktur dari command ini adalah :

`docker run <options> <nama-image>`

Secara default, Docker akan menjalankan containernya secara foreground. Agar Docker menjalankannya secara background, maka tambahkan option `-d`

`docker run -d wordpress`{{execute}}

Secara default, Docker akan menjalankan versi latest dari Docker Imagenya. Jika ingin menggunakan versi atau varian tertentu sebagai contoh image Wordpress 5.2, maka strukturnya adalah :

`docker run -d wordpress:5.2-php7.3-fpm`

Karena ini adalah pertama kalinya Ryza menjalankan image Wordpress, maka Docker akan mendownload (pull) imagenya ke host Docker tersebut dan membuat container berdasarkan image tersebut. Jika sebelumnya sudah ada image yang diinginkan di host Docker, maka proses pull image akan otomatis dilewati.

Untuk menyelesaikan step ini, deploy sebuah Docker container berdasarkan image Wordpress secara background.