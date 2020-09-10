# PHP 7.2 for Laravel

This image contains PHP 7.2 for running Laravel in 1 single command line.

## How to run

From command line, navigate to your Laravel app folder and run

```shell
$ cd /your/laravel/app/path
$ docker run --rm --name laravel-app-name -v "$PWD":/usr/src/myapp -p 8000:8000 carlouni/php-7-2-for-laravel:latest
```

## Using MySQL

If you are running your MySQL database on Docker, you'll require to link "--link" your "PHP 7.2 for Laravel" container to your MySQL container

```shell
$ sudo docker run --rm --name laravel-app-name --link your-mysql-container -v "$PWD":/usr/src/myapp -p 8000:8000 carlouni/php-7-2-for-laravel:latest
```

Note: If your MySQL database runs somewhere else, you just need to insert the connection details in Laravel's .env file.
