source source/config.txt
if [ -z "$ESP_PORT" ] || [ ! -e "$ESP_PORT" ]; then
    read -p "nhập cổng kết nối:" ESP_PORT
    sudo chmod 666 ${ESP_PORT}
    :>${PWD}/source/config.txt
    echo "ESP_PROJECT=$ESP_PROJECT" >> ${PWD}/source/config.txt
    echo "ESP_CHIP=$ESP_CHIP" >> ${PWD}/source/config.txt
    echo "ESP_PORT=$ESP_PORT" >> ${PWD}/source/config.txt
else 
  if [ ! -r "$ESP_PORT" ] || [ ! -w "$ESP_PORT" ]; then
      sudo chmod 666 ${ESP_PORT}
  fi 
fi
export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
podman run --rm -it \
  -v ${PWD}:/Esp:z \
  -w /Esp/source \
  -e HOME=/tmp \
  --device=${ESP_PORT} \
  --security-opt label=disable \
  espressif/idf:v5.5.1 \
  idf.py -p ${ESP_PORT} monitor
if [ $? -ne 0 ]; then
  echo "lỗi không thể kết nối"
  exit 1
fi
echo "lệnh thực hiện thành công"