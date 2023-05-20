#!/bin/sh

if [ $GRAV_SETUP = 1 ] && [ -z "$(ls -A .)" ]; then
    if [ $GRAV_VERSION = "latest" ]; then
        runuser -g www-data -u www-data -- composer create-project getgrav/grav .
    else
        runuser -g www-data -u www-data -- composer create-project getgrav/grav . $GRAV_VERSION
    fi

    # Install Grav Standard Administration Panel Plugin
    runuser -g www-data -u www-data -- bin/gpm install admin
fi

exec sh -c "cron && apache2-foreground"
