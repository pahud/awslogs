#!/bin/sh

shutdown_awslogs()
{
    echo "Stopping container..."
    kill $(pgrep -f /var/awslogs/bin/aws)
    exit 0
}

trap shutdown_awslogs INT TERM HUP

cp -f /root/awslogs.conf.dummy /var/awslogs/etc/awslogs.conf


/var/awslogs/bin/awslogs-agent-launcher.sh &

wait
