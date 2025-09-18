ESP_PORT="$1"
export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
if [${ESP_PORT} -ne ""]; then
    export ESP_PORT=/dev/ttyUSB0
fi
podman run --rm -it \
  --userns=keep-id \
  -v ${PWD}:/Esp:z \
  -w /Esp/source \
  -e HOME=/tmp \
  --device=${ESP_PORT} \
  --security-opt label=disable \
  espressif/idf:v5.5.1 /bin/bash
if [ $? -ne 0 ]; then
  echo "lỗi $?"
  exit 1
fi
echo "lệnh thực hiện thành công"