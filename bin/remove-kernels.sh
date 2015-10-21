#!/bin/bash
#
# This script removes all old kernels except for the currently running one.
#
# It came from: http://ubuntuforums.org/showthread.php?t=1961409

sudo apt-get purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | head -n -1) --assume-yes
