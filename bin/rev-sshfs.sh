#!/bin/bash

set -x

REMOTE_HOST="$1"
if [ -z "${REMOTE_HOST}" ]; then
    echo "Usage: $(basename $0) REMOTE_HOST"
    exit 1
fi

# This method requires you to install dpipe: `sudo apt install vde2`
if [[ "${REMOTE_HOST}" == *.local ]]; then
    REMOTE_USER=${USER}
    REMOTE_OPTS=slave
else
    REMOTE_USER=kepler
    REMOTE_OPTS=slave,nonempty
fi

dpipe /usr/lib/openssh/sftp-server = ssh ${REMOTE_USER}@${REMOTE_HOST} sshfs :/home/${USER}/kepler /home/${REMOTE_USER}/kepler -o ${REMOTE_OPTS} &
DPIPE_PID=$!
ssh ${REMOTE_USER}@${REMOTE_HOST}
kill ${DPIPE_PID}

# The sleep causes the disconnect message from killing dpipe to show up before your prompt is displayed
sleep 0.1
