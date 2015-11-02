Nginx
=====

Slim image (6 MB) of Nginx 1.8.0 running under Alpine Linux 3.2.

How to use
=========

```
docker run -p 80:80 chrisdaish/nginx
```

With bespoke configuration:

```
docker run  -v <configPath>/nginx.conf:/etc/nginx/nginx.conf:ro \
            -v <webrootPath:/usr/share/nginx/html:ro \
            -v /var/log/nginx:/var/log/nginx:rw \
            -v /etc/localtime:/etc/localtime:ro \
            -p 80:80 \
            chrisdaish/nginx
```
