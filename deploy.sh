#!/bin/bash

# 🚀 Hexo博客一键部署脚本
# 简化版本 - 只包含核心操作

echo "🚀 开始执行博客部署..."

# 1. 清理和生成
echo "📝 清理并生成网站..."
hexo clean && hexo generate

# 2. 部署到GitHub Pages
echo "🌐 部署到GitHub Pages..."
hexo deploy

# 3. 提交源码到GitHub
echo "� 提交源码到GitHub..."
echo -n "输入提交信息 (回车使用默认): "
read commit_message

if [ -z "$commit_message" ]; then
    commit_message="Update blog - $(date +'%Y-%m-%d %H:%M:%S')"
fi

git add .
git commit -m "$commit_message"
git push origin main

echo "✅ 部署完成！"
echo "🌐 网站: https://marciaaa23.github.io"
