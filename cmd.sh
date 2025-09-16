args="$@"
export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
podman run --rm \
  --userns=keep-id \
  -v ${PWD}:/Esp:z \
  -w /Esp/source \
  -e HOME=/tmp \
  --device /dev/null:/dev/ttyUSB0 \
  --security-opt label=disable \
  -it espressif/idf:v5.5.1 \
  idf.py $args
if [ $? -ne 0 ]; then
  echo "lỗi $args"
  exit 1
fi
echo "lệnh thực hiện thành công"