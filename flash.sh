export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
if [${ESP_PORT} -ne ""]; then
    export ESP_PORT=/dev/ttyUSB0
fi
podman run --rm\
  --userns=keep-id \
  -v ${PWD}:/Esp:z \
  -w /Esp/source \
  -e HOME=/tmp \
  --device=ESP_PORT \
  --security-opt label=disable \
  espressif/idf:v5.5.1 \
  idf.py -p ${ESP_PORT} flash
if [ $? -ne 0 ]; then
  echo "lỗi không thể flash"
  exit 1
fi
echo "lệnh thực hiện thành công"