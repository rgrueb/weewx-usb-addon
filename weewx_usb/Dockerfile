FROM felddy/weewx:5
USER root
RUN /opt/venv/bin/pip install --no-cache-dir paho-mqtt
COPY --chmod=755 run.sh /run.sh
ENTRYPOINT []
CMD [ "/run.sh" ]
