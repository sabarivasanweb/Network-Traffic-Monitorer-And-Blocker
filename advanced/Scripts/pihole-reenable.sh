#!/bin/bash

# Network-wide ad blocking via your own hardware.
#
# Present script is responsible for the sleep & re-enable part of the job and
# is automatically terminated if it is still running when pihole is enabled by
# other means.
#
# This ensures that pihole ends up in the correct state after a sequence of
# commands suchs as: `pihole disable 30s; pihole enable; pihole disable`

readonly PI_HOLE_BIN_DIR="/usr/local/bin"

sleep "${1}"
"${PI_HOLE_BIN_DIR}"/pihole enable
