
name="$1" 
chip="$2"
port="$3"
if [ -z "$name" ] || [ -z "$chip" ] || [ -z "$port" ]; then
  echo "Vui lòng cung cấp đầy đủ tên dự án, chip ESP và cổng kết nối."
  echo "Cú pháp: ./create.sh <tên dự án> <chip esp> <cổng kết nối>"
  exit 1
fi
export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
podman run --rm \
  -v ${PWD}:/Esp:z \
  -w /Esp/source \
  -e HOME=/tmp \
  --security-opt label=disable \
  -it espressif/idf:v5.5.1 \
  /bin/bash -c "idf.py create-project $name && cd $name && idf.py set-target $chip"
if [ $? -ne 0 ]; then
  echo "lỗi $?"
  rm -rf ${PWD}/source/$name
  exit 1
fi
:>${PWD}/source/config.txt
echo "ESP_PROJECT=$name" >> ${PWD}/source/config.txt
echo "ESP_CHIP=$chip" >> ${PWD}/source/config.txt
echo "ESP_PORT=$port" >> ${PWD}/source/config.txt
echo "lệnh thực hiện thành công"