source ${PWD}/source/config.txt
if [$ESP_PORT -ne ""]; then
    echo "nhập cổng kết nối esp"
    ESP_PORT= 
fi
sudo chmod 666 ${ESP_PORT}
export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
podman run --rm -it \
  -v ${PWD}:/Esp:z \
  -w /Esp/source \
  -e HOME=/tmp \
  --device=${ESP_PORT} \
  --security-opt label=disable \
  espressif/idf:v5.5.1 \
  /bin/bash -c "idf.py clean && idf.py build && idf.py -p $ESP_PORT flash && idf.py -p $ESP_PORT monitor"
if [ $? -ne 0 ]; then
  echo "Lỗi trong quá trình thực hiện: $?"
  exit 1
fi
echo "lệnh thực hiện thành công"