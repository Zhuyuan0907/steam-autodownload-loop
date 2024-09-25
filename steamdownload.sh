#!/bin/bash

# 設定你要下載的 AppID 和下載目標目錄
APP_ID=730          # 替換為你想要下載的 AppID
DOWNLOAD_DIR="/etc/steam"  # 替換為你想要下載到的目錄
STEAMCMD_DIR="/root"      # 替換為你手動安裝 SteamCMD 的目錄

# 檢查 SteamCMD 是否存在
if [ ! -f "$STEAMCMD_DIR/steamcmd.sh" ]; then
    echo "未找到 SteamCMD，請確認你已經正確安裝在 $STEAMCMD_DIR 中"
    exit 1
fi

# 確保下載目錄存在
mkdir -p "$DOWNLOAD_DIR"

# 下載並重複執行的循環
while true; do
    echo "下載 AppID: $APP_ID 中..."

    # 使用手動安裝的 SteamCMD 來下載
    "$STEAMCMD_DIR/steamcmd.sh" +login anonymous +force_install_dir "$DOWNLOAD_DIR" +app_update "$APP_ID" validat>

    # 檢查下載是否成功
    if [ $? -eq 0 ]; then
        echo "下載完成: $DOWNLOAD_DIR"

        # 刪除下載的文件
        echo "刪除已下載的文件..."
        rm -rf "$DOWNLOAD_DIR"/*

        echo "已刪除，準備再次下載..."
    else
        echo "下載失敗，請檢查網絡或 AppID。"
    fi

    # 等待 10 秒再重複下載，可根據需要調整
    sleep 10
done
