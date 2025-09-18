#!/bin/bash

# Danh sách các tùy chọn
source source/config.txt
if [ -z "$ESP_PROJECT" ] || [ -z "$ESP_CHIP" ]; then
  echo "Vui lòng chạy script create.sh để tạo dự án trước khi cấu hình."
  exit 1
fi
export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
podman run --rm -it \
  -v ${PWD}:/Esp:z \
  -w /Esp/source/$ESP_PROJECT \
  -e HOME=/tmp \
  --security-opt label=disable \
  espressif/idf:v5.5.1 \
  /bin/bash -c "idf.py set-target $ESP_CHIP  && idf.py menuconfig" 
if [ $? -ne 0 ]; then
  echo "lỗi không thể config"
  exit 1
fi
echo "lệnh thực hiện thành công"