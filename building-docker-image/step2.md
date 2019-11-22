## Build the Image

Setelah Dockerfile dibuat, kita bisa mulai membuat Docker imagenya. Pada scenario ini image yang akan dibuat diberi nama `hello-php`

## Task
Jalankan command berikut untuk mem-build Docker imagenya dan kita beri tag `v1` :

```
docker build . -t hello-php:v1
```{{execute}}