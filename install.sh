mkdir -p ${PWD}/podman/storage
mkdir -p ${PWD}/podman/user-data/$(id -u)/containers
cat > ${PWD}/podman/temp-storage.conf << EOF
[storage]
driver = "overlay"
graphroot="${PWD}/podman/storage"
runroot = "${PWD}/podman/user-data/$(id -u)/containers"  # Tùy chọn, cho runtime data tạm thời
EOF
export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
podman pull espressif/idf:v5.5.1