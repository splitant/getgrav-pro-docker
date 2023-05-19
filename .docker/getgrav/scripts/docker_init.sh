#!/bin/sh

if [ $GRAV_SETUP = 1 ]; then
    if [ $GRAV_VERSION = "latest" ]; then
        runuser -g www-data -u www-data -- composer create-project getgrav/grav .
    else
        runuser -g www-data -u www-data -- composer create-project getgrav/grav . $GRAV_VERSION
    fi
fi

exec sh -c "cron && apache2-foreground"