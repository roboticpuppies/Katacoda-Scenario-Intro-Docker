## Expose Port to External (Random Port)

Setelah Ryza berhasil mengekspose port containernya pada port 80, dia menyadari bahwa dia tidak bisa lagi membuat container lain yang juga diekspose ke port 80. Tidak mungkin kan ada 2 service yang menggunakan port yang sama?

Biasanya developer mengembangkan beberapa aplikasi yang menggunakan server yang berbeda, namun portnya sama. Misalnya mereka mempunyai 2 project yang berbeda dengan web server yang berbeda, namun portnya sama yaitu 80. Dengan Docker, mereka tidak perlu membuat 2 server. Mereka cukup membuat container baru di laptop mereka, namun membedakan portnya untuk masing-masing project. Misalnya port 80 dan 8080.

Akhirnya Ryza tau bahwa hanya dengan menggunakan option `-p 80` dia bisa mengekspose port containernya, namun menggunakan port available yang random.

`docker run -d --name WP_Staging_Random -p 80 wordpress:latest`{{execute}}

Dia berhasil mengekspose port containernya, namun tidak tau port berapa yang bisa dia akses (karena random). Untuk melihat portnya, menggunakan command

`docker port WP_Staging_Random`{{execute}}

Dia juga mengetahui bahwa dia bisa melihat port mappingnya melalui `docker ps`{{execute}}