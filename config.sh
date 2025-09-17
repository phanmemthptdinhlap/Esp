#!/bin/bash

# Danh sách các tùy chọn
options=("esp32s3" "esp32" "esp32c3" "Thoát")
selected=0

# Hàm hiển thị menu
show_menu() {
    clear
    echo "Chọn một dòng chip:"
    for i in "${!options[@]}"; do
        if [ $i -eq $selected ]; then
            echo "> ${options[$i]}" # Hiển thị dấu > cho mục được chọn
        else
            echo "  ${options[$i]}"
        fi
    done
}

# Hàm đọc phím
read_arrow() {
    local key
    read -rsn1 key  # Đọc 1 ký tự
    if [[ $key == $'\x1b' ]]; then
        read -rsn2 key # Đọc thêm 2 ký tự để xác định phím mũi tên
        case $key in
            '[A') # Phím mũi tên lên
                ((selected--))
                if [ $selected -lt 0 ]; then
                    selected=$((${#options[@]} - 1))
                fi
                ;;
            '[B') # Phím mũi tên xuống
                ((selected++))
                if [ $selected -ge ${#options[@]} ]; then
                    selected=0
                fi
                ;;
        esac
    elif [[ $key == "" ]]; then # Phím Enter
        return 0
    fi
    return 1
}

# Vòng lặp chính
while true; do
    show_menu
    read_arrow
    if [ $? -eq 0 ]; then # Kiểm tra nếu nhấn Enter
        if [ "${options[$selected]}" == "Thoát" ]; then
            echo "Đã thoát."
            exit 0
        else
            echo "Bạn đã chọn: ${options[$selected]}"
            TARGET="${options[$selected]}"
            break
        fi
    fi
done
export CONTAINERS_STORAGE_CONF=${PWD}/podman/temp-storage.conf
podman run --rm -it \
  -v ${PWD}:/Esp:z \
  -w /Esp/source \
  -e HOME=/tmp \
  --security-opt label=disable \
  espressif/idf:v5.5.1 \
  /bin/bash -c "idf.py set-target ${TARGET}  && idf.py menuconfig" 
if [ $? -ne 0 ]; then
  echo "lỗi không thể config"
  exit 1
fi
echo "lệnh thực hiện thành công"