## Melihat Semua Container

Container yang dibuat pada step sebelumnya sedang berjalan secara background. Untuk melihat semua container yang sedang berjalan, gunakan command `docker ps`{{execute}}.

Command tersebut akan menampilkan list semua container yang sedang berjalan, id container, image yang digunakan, command yang sedang dijalankan di container tersebut, uptime containernya, dan friendly name dari containernya.

Sedangkan untuk melihat semua container baik yang sedang running atau tidak, gunakan `docker ps -a`{{execute}}

Untuk melihat detail containernya, gunakan command `docker inspect <friendly-name | container-id>`

Lalu command `docker logs <friendly-name | container-id>` digunakan untuk melihat message yang ditulis oleh container melalui stderr atau stdout

**Note** : Pada kolom ketiga, gunakan friendly-name atau container-id saja