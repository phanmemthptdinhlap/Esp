export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
podman run --rm -it \
  --userns=keep-id \
  -v ${PWD}:/Esp:z \
  -w /Esp/source \
  -e HOME=/tmp \
  --security-opt label=disable \
  espressif/idf:v5.5.1 \
  idf.py menuconfig
if [ $? -ne 0 ]; then
  echo "lỗi không thể config"
  exit 1
fi
echo "lệnh thực hiện thành công"