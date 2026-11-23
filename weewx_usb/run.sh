#!/usr/bin/env bash
set -e
if [ ! -f /addon_configs/0eaaa81f_weewx/bin/user/mqtt.py ]; then
    REPO_HOST="github.com"
    REPO_PATH="matthewwall/weewx-mqtt/archive/master.zip"
    /opt/venv/bin/weectl extension install "https://${REPO_HOST}/${REPO_PATH}" --yes --config=/addon_configs/0eaaa81f_weewx/weewx.conf
fi
exec /opt/venv/bin/weewxd --config /addon_configs/0eaaa81f_weewx/weewx.conf
