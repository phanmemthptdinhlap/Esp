export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
if [${ESP_PORT} -ne ""]; then
    export ESP_PORT=/dev/ttyUSB0
fi
podman run --rm -it \
  -v ${PWD}:/Esp:z \
  -w /Esp/source \
  -e HOME=/tmp \
  --device=${ESP_PORT} \
  --security-opt label=disable \
  espressif/idf:v5.5.1 \
  /bin/bash
idf.py clean 
idf.py build 
idf.py -p ${ESP_PORT} flash
idf.py -p ${ESP_PORT} monitor
if [ $? -ne 0 ]; then
  echo "lỗi không thể kết nối"
  exit 1
fi
echo "lệnh thực hiện thành công"