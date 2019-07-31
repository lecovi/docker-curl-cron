[![](https://images.microbadger.com/badges/version/lecovi/curl-cron.svg)](https://microbadger.com/images/lecovi/curl-cron "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lecovi/curl-cron.svg)](https://microbadger.com/images/lecovi/curl-cron "Get your own image badge on microbadger.com")


# lecovi/curl-cron

Docker image that runs periodically runs a curl command

## Usage

    docker run -d [URL] jsonfry/curl-cron


### Required Parameters:

* `-e URL=<URL>`: curl URL (you can add command options)
* `-e CRON_SCHEDULE="0 1 * * *"`: specifies when cron job starts ([details](http://en.wikipedia.org/wiki/Cron)), e.g. `0 1 * * *` (runs every night at 1:00).

### Optional parameters:

* `now`: run container once and exit (no cron scheduling).

## Examples:

Run every hour with cron schedule (container keeps running):

    docker run -d \
        -e OPTIONS=example.com \
        -e CRON_SCHEDULE="0 1 * * *" \
        lecovi/curl-cron

Run just once (container is deleted afterwards):

    docker run --rm \
        -e OPTIONS=example.com \
        lecovi/curl-cron now

