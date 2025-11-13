source ${PWD}/source/config.txt
echo "flash project $ESP_PROJECT on port $ESP_PORT with chip $ESP_CHIP " 
if [-z "$ESP_PROJECT" ]||[! -e "$ESP_PROJECT"]; then
    echo "không có dự án hãy dùng lệnh create.sh để tạo dự án"
    exit 1
fi 
if [ -z "$ESP_CHIP" ] || [ ! -e "$ESP_CHIP" ]; then
    read -p "nhập tên chip:" ESP_CHIP
    :>${PWD}/source/config.txt
    echo "ESP_PROJECT=$ESP_PROJECT" >> ${PWD}/source/config.txt
    echo "ESP_CHIP=$ESP_CHIP" >> ${PWD}/source/config.txt
    echo "ESP_PORT=$ESP_PORT" >> ${PWD}/source/config.txt
fi
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
  -w /Esp/source/$ESP_PROJECT \
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