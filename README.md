# php_hello_world-docker
Docker with PHP's Hello World run by PHP's build-in web server

## Running

```bash
    docker run --name paq85-php_hello_world -p=8088:8088 -d paq85/php_hello_world
```

## Building docker image 

    docker build -t paq85/php_hello_world .