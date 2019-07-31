#!/bin/sh

set -e

export URL=$URL

if [[ "$1" == 'now' ]]; then
    exec /curl.sh
else
	echo "$CRON_SCHEDULE /curl.sh" >> /var/spool/cron/crontabs/root
    crond -l 2 -f
fi
