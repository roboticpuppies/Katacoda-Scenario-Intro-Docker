## Membuat Dockerfile

Dockerfile adalah file konfigurasi atau instruksi yang digunakan oleh Docker Daemon untuk membuat suatu Docker Image.

Pada scenario ini kita sudah mempunyai file PHP sederhana. Kita ingin membuat Docker Image yang berisi file tersebut. Kita anggap file index.php ini adalah file dari aplikasi yang sudah kita develop.

## Task

Pada scenario ini Dockerfile sudah dibuat, namun masih kosong. Pertama kita harus menentukan base image nya terlebih dahulu menggunakan command `FROM`. Karena kita membutuhkan PHP, gunakan base image PHP versi 7.2 :

```
FROM php:7.2-apache
COPY index.php /var/www/html
```{{copy}}

Command COPY akan mengcopy file index.php dari aplikasi kita ke directory `/var/www/html/` yang ada di dalam container.

<pre class="file" data-filename="app.js" data-target="replace">var http = require('http');
var requestListener = function (req, res) {
  res.writeHead(200);
  res.end('Hello, World!');
}

var server = http.createServer(requestListener);
server.listen(3000, function() { console.log("Listening on port 3000")});
</pre>
          

<pre class="file" data-target="clipboard">Test</pre>
          

<pre class="file" data-target="regex???">Test</pre>