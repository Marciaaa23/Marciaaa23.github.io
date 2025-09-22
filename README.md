# Marciaaa23的个人博客

## 📝 博客更新指南

### 1. 添加新的博客文章

#### 文章位置
- 所有博客文章的 Markdown 文件存放在：`source/_posts/` 目录下
- 文件名格式：`文章标题.md` 或 `article-title.md`

#### 创建新文章
```bash
# 方法1: 使用 Hexo 命令创建新文章
hexo new "文章标题"

# 方法2: 直接在 source/_posts/ 目录下创建 .md 文件
```

#### 文章 Front Matter 格式
每篇文章的开头需要包含以下信息：
```yaml
---
title: 文章标题
date: 2025-08-31  # 发布日期
categories: 
- 分类名称
tags: 
- 标签1
- 标签2
comments: true    # 是否开启评论
---
```

### 2. 图片管理

#### 图片存储位置
- 所有图片文件存放在：`source/images/` 目录下
- 建议按照文章或主题创建子文件夹，例如：
  ```
  source/images/
  ├── posts/           # 文章相关图片
  │   ├── article1/    # 具体文章的图片
  │         ├── xxx.jpg
  │         ├── xxx.jpg
  │         ├── ...
  │   ├── article2/
  │         ├── xxx.jpg
  │         ├── xxx.jpg
  │         ├── ...
  ├── website/         # 网站图标、头像等
  ```

#### 在文章中插入图片
使用相对路径引用图片：
```markdown
# 引用文章图片
![图片描述](../images/posts/article-name/image.jpg)
```

## 🚀 部署更新指南

### 部署方式

项目包含自动化部署脚本 `deploy.sh`，可以一键完成博客的生成和部署。

#### 执行部署命令
```bash
# 在项目根目录下执行
bash deploy.sh
```

#### deploy.sh 脚本功能
1. **清理缓存**: `hexo clean` - 清理之前生成的文件
2. **生成静态文件**: `hexo generate` - 根据 Markdown 文件生成 HTML
3. **部署到 GitHub Pages**: `hexo deploy` - 推送到 GitHub 仓库
4. **提交源码**: 自动提交源代码到 main 分支

### 手动部署方式（备选）
如果需要逐步执行，可以使用以下命令：
```bash
# 1. 清理缓存
hexo clean

# 2. 生成静态文件
hexo generate

# 3. 部署到 GitHub Pages
hexo deploy

# 4. 提交源代码（可选）
git add .
git commit -m "更新博客内容"
git push origin main
```

## 📋 更新博客流程
1. 在 `source/_posts/` 创建新的 `.md` 文件
2. 添加正确的 Front Matter
3. 编写文章内容
4. 如需要，添加图片到 `source/images/` 对应目录
5. 在文章中正确引用图片路径
6. 执行 `bash deploy.sh` 部署更新
