#!/bin/bash
#
# This worked for me using Ubuntu 16.04 LTS on my desktop and laptop

echo "$(date) - Unuting"
amixer -q -D pulse sset Master unmute
