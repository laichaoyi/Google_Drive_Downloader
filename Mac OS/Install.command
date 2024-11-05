#!/bin/bash

echo "Google Drive Uploader/Downloader - by Andy N Le 0908.231181"

# Chuyển sang thư mục chứa script
cd "$(dirname "$0")"

# Kiểm tra xem Python 3 có sẵn không
if command -v python3 &>/dev/null; then
    echo "Python 3 is available. Generating Python 3.11 VENV"
    python3 -m venv venv
else
    echo "Python 3 is not available. Please install Python 3.11 to proceed."
    exit 1
fi

# Kích hoạt môi trường ảo
source ./venv/bin/activate

# Đảm bảo pip được cài đặt và cập nhật
python3 -m ensurepip --upgrade
pip install --upgrade pip

# Cài đặt các thư viện cần thiết
pip install google-api-python-client
pip install gradio
pip install tk
pip install google-auth
pip install google-auth-oauthlib
pip install google-auth-httplib2

# Thông báo hoàn tất cài đặt
echo "GDrive Downloader installation completed, check messages for any errors."

# Giữ cửa sổ terminal mở để xem kết quả
read -p "Press [Enter] to close..."
