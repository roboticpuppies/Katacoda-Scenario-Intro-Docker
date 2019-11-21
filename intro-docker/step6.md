## Menghapus Container

Ryza ingin menghapus container yang sudah tidak digunakan agar tidak memakan storage. Dia ingin menghapus container yang bernama `WP_Staging_Random`, sehingga command yang digunakan adalah `docker rm WP_Staging_Random`{{execute}}

Jika dia jalankan command `docker ps -a`, sudah tidak ada container dengan nama `WP_Staging_Random`.

Pada Docker, terdapat command `docker system prune`{{execute}}. Command ini akan menghapus :

- Semua container yang ada dalam keadaan stopped
- Semua Docker network yang tidak digunakan oleh container
- Semua docker images yang tidak mempunyai nama (dangling images).
- Semua build cache