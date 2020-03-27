ARG BUILD_FROM
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Setup base
# hadolint ignore=DL3003
RUN \
    apk add --no-cache python3 \
    && pip3 install websockets gmqtt requests \
    && curl -J -L -o /tmp/tydom2mqtt.tar.gz \
        "https://github.com/mrwiwi/tydom2mqtt/archive/0.85.tar.gz" \
    && tar zxvf \
        /tmp/tydom2mqtt.tar.gz \
        --strip 1 -C /opt \
    && rm -f -r \
        /tmp/*

# Copy root filesystem
COPY rootfs /

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION
# Labels
LABEL \
    io.hass.name="tydom2mqtt" \
    io.hass.description="Link between a Delta Dore's Tydom Hub and and a MQTT broker, unofficial of course." \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="William Friconneau>" \
    org.label-schema.description="Link between a Delta Dore's Tydom Hub and and a MQTT broker, unofficial of course." \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="tydom2MQTT" \
    org.label-schema.schema-version="0.85" \
    org.label-schema.url="https://community.home-assistant.io/t/home-assistant-community-add-on-tydom2MQTT/68836?u=frenck" \
    org.label-schema.usage="https://github.com/mrwiwi/tydom2mqtt/blob/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/mrwiwi/tydom2mqtt" \
    org.label-schema.vendor="Home Assistant Add-ons"


# FROM python:3.8-slim-buster
# COPY . /app
# WORKDIR /app
# RUN pip3 install -r requirements.txt
# CMD [ "python", "-u", "./main.py" ]