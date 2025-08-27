#!/bin/bash

# 清理旧的生成文件
echo "正在清理旧文件..."
hexo clean

# 生成静态文件
echo "正在生成静态文件..."
hexo generate

# 部署到 GitHub Pages
echo "正在部署到 GitHub Pages..."
hexo deploy

echo "部署完成！"
