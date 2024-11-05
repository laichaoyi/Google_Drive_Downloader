#!/bin/bash

echo "Google Drive Uploader/Downloader - by Andy N Le 0908.231181"
echo "Please wait....!"

# Di chuyển vào thư mục chứa script hiện tại
cd "$(dirname "$0")"

# Kiểm tra và kích hoạt môi trường ảo
if [ -f "./venv/bin/activate" ]; then
    source ./venv/bin/activate
else
    echo "Virtual environment not found. Please set up the virtual environment first."
    exit 1
fi


python app.py


read -p "Press [Enter] to close..."
