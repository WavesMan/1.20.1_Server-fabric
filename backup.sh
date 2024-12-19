#!/bin/bash

# 设置源目录和目标目录
SOURCE_DIR="/A-Server/Minecraft_Server/Server_Main/1.20.1_Server-fabric/world"
DEST_DIR="/A-Server/Minecraft_Server/Copy/1.20.1_Server-fabric"

# 获取当前日期，格式为 MM-DD
DATE=$(date +%m-%d)

# 创建备份目录，路径为目标目录/日期（例如：/Copy/1.20.1_Server-fabric/12-18）
DEST_PATH="$DEST_DIR/$DATE"

# 如果目标备份目录不存在，创建它
mkdir -p "$DEST_PATH"

# 使用rsync备份"world"文件夹
rsync -av --delete "$SOURCE_DIR/" "$DEST_PATH/"

# 输出备份完成消息（可选）
echo "Backup of world completed at $DATE"
