ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /run.sh
RUN chmod a+x /run.sh

COPY rootfs /

COPY requirements.txt /tmp/
RUN apk add --no-cache python3

RUN pip3 install --requirement /tmp/requirements.txt

RUN curl -L -s \
        "https://github.com/mrwiwi/tydom2mqtt/archive/0.90c.tar.gz" \
        | tar zxvf - -C /opt/

RUN mv /opt/tydom2mqtt* /opt/tydom2mqtt
# RUN chmod a+x /run.sh

# WORKDIR /data

CMD [ "/run.sh" ]
