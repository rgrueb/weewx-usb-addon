#!/usr/bin/env bash
set -e
if ! /opt/venv/bin/python -c "import paho.mqtt.client" 2>/dev/null; then
    /opt/venv/bin/python -m ensurepip --upgrade || true
    /opt/venv/bin/python -m pip install --no-cache-dir "paho-mqtt<2.0.0"
fi
exec /opt/venv/bin/weewxd --config /addon_configs/0eaaa81f_weewx/weewx.conf
