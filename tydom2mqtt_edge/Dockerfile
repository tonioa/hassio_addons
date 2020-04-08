ARG BUILD_FROM=hassioaddons/base:latest
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# Copy data for add-on


COPY requirements.txt /tmp/
RUN apk add --no-cache python3

RUN pip3 install --requirement /tmp/requirements.txt

RUN curl -L -s \
        "https://github.com/mrwiwi/tydom2mqtt/archive/0.90d.tar.gz" \
        | tar zxvf - -C /opt/

RUN mv /opt/tydom2mqtt* /opt/tydom2mqtt
COPY rootfs /
COPY run.sh /run.sh
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
