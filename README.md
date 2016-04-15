# Redis container for Laravel

This is a [Docker](http://www.docker.com) image for the [Redis](http://redis.io/) data structure store to be used with the [Laravel PHP Framework](http://laravel.com/).

An automated build for this repo is available on the [Docker Hub](https://registry.hub.docker.com/u/vcarreira/redis/).

This image extends the [Redis Official Image] by allowing to customize the container through the following environment variables:

 - REDIS_HOST
 - REDIS_PORT
 - REDIS_PASSWORD

## Starting a redis instance
```docker run --name my-redis-instance -d vcarreira/redis```

## Running redis with persistence storage
```docker run --name my-redis-instance -v $(pwd)/redis:/data -d vcarreira/redis redis-server --appendonly yes```

When persistence is enabled, data is stored inside the volume ```/data```.

## Other Laravel images

This image works well with the below related images.

  - [vcarreira/nginx-php5-fpm](https://registry.hub.docker.com/u/vcarreira/nginx-php5-fpm)
  - [vcarreira/phpspec](https://registry.hub.docker.com/u/vcarreira/phpspec)
  - [vcarreira/composer](https://registry.hub.docker.com/u/vcarreira/composer)
  - [vcarreira/artisan](https://registry.hub.docker.com/u/vcarreira/composer)
  - [vcarreira/phpunit](https://registry.hub.docker.com/u/vcarreira/phpunit)

---

:ok_hand: Happy Coding.

If you have any feedback or questions, feel free to contact me on Twitter with [@vcarreira](https://twitter.com/vcarreira) or email with [vitor.carreira@gmail.com](mailto:vitor.carreira@gmail.com).
