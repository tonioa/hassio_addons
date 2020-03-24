#/bin/sh
docker run \
  --restart=always \
  --net=host \
  --name=tydom2mqtt_edge \
  mrwiwi/tydom2mqtt_edge