args="$@"
export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
podman run --rm -it \
  --userns=keep-id \
  -v ${PWD}:/Esp:z \
  -w /Esp/source \
  -e HOME=/tmp \
  --device=/dev/ttyACM0 \
  --security-opt label=disable \
  espressif/idf:v5.5.1 /bin/bash
if [ $? -ne 0 ]; then
  echo "lỗi $args"
  exit 1
fi
echo "lệnh thực hiện thành công"