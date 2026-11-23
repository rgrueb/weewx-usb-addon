#!/usr/bin/env bash
set -e
printf "y\n\n\n" | weectl device --config=/addon_configs/0eaaa81f_weewx/weewx.conf --pair
exec weewxd --config /addon_configs/0eaaa81f_weewx/weewx.conf
