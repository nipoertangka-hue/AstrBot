#!/bin/bash

set -e

echo "=== AstrBot Start ==="

# GitHub repo（換成你的）
REPO="https://github.com/nipoertangka-hue/astrbot-data.git"

# 清理舊 data
rm -rf /AstrBot/data

echo "=== Pulling config from GitHub ==="
git clone $REPO /tmp/data

# 只取 data
cp -r /tmp/data/data /AstrBot/data

echo "=== Data restored ==="

# 啟動 AstrBot
exec python main.py
