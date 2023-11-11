# docker-php8.2-nginx

## Need software

* git
* docker
* docker-compose
* make

Need opens ports 8090.

## First step

```shell
git clone https://github.com/xeritt/Docker-Php-8.2-Nginx.git
```
## Second step
```text
cd [project_name]
make docker.start
```

You can now access your website in the browser under [http://localhost:8090](http://localhost:8090/)

## Stop docker

```shell
make docker.stop
```

