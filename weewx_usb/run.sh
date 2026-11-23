#!/usr/bin/env bash
set -e
if [ ! -f /addon_configs/0eaaa81f_weewx/bin/user/mqtt.py ]; then
    /opt/venv/bin/weectl extension install https://github.com --yes --config=/addon_configs/0eaaa81f_weewx/weewx.conf
fi
exec /opt/venv/bin/weewxd --config /addon_configs/0eaaa81f_weewx/weewx.conf
