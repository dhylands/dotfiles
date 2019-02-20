#!/bin/sh

echo "$(date) - Pausing Sonos Speakers"
echo "  $(~/bin/sonos --verbose --zone Dave pause)"
echo "  $(~/bin/sonos --verbose --zone Garage pause)"
