#!/usr/bin/env bash
set -e
weectl device --config=/addon_configs/0eaaa81f_weewx/weewx.conf --pair
exec weewxd --config /addon_configs/0eaaa81f_weewx/weewx.conf
