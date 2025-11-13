source ${PWD}/source/config.txt
echo "flash project $ESP_PROJECT on port $ESP_PORT with chip $ESP_CHIP " 
if [-z "$ESP_PROJECT" ]||[! -e "$ESP_PROJECT"]; then
    echo "không có dự án hãy dùng lệnh create.sh để tạo dự án"
    exit 1
fi 
export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
podman run --rm \
  -v ${PWD}:/Esp:z \
  -w /Esp/source/$ESP_PROJECT \
  -e HOME=/tmp \
  --security-opt label=disable \
  espressif/idf:v5.5.1 \
  idf.py build
if [ $? -ne 0 ]; then
  echo "lỗi không thể build"
  exit 1
fi
echo "lệnh thực hiện thành công"