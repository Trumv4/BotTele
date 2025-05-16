#!/bin/bash
# Cập nhật và cài các gói cần thiết
apt update && apt install -y python3 python3-pip screen wget

# Cài thư viện Python
pip3 install python-telegram-bot requests

# Tải file bot.py từ GitHub RAW (bản chuẩn của bạn)
wget -O /root/bot.py "https://raw.githubusercontent.com/Trumv4/bot.py/main/bot.py"

# Tạo các file cấu hình rỗng
touch /root/proxy.txt /root/vps.txt

# Chạy bot trong nền bằng screen
screen -dmS bot python3 /root/bot.py
