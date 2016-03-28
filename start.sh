#!/bin/sh

shutdown_awslogs()
{
    echo "Stopping container..."
    kill $(pgrep -f /var/awslogs/bin/aws)
    exit 0
}

trap shutdown_awslogs INT TERM HUP

cp -f /root/awslogs.conf.dummy /var/awslogs/etc/awslogs.conf

cat > /var/awslogs/etc/aws.conf <<EOF
[plugins]
cwlogs = cwlogs
[default]
region = ${REGION}
EOF


/var/awslogs/bin/awslogs-agent-launcher.sh &

wait
