#!/usr/bin/env bash

# 流程：
# 1. node update link(slide 代号) desc(slide 介绍) 更新 db.json，并提交 homepage 分支
# 2. npm run install && npm run build 输出静态部署文件到 dist
# 3. 将 dist 的静态文件复制到 __temp__
# 4. 将 __temp__ 部署到 gh-pages

# 确保脚本抛出遇到的错误
set -e

# step 1
echo "update db.json : slide ($1:$2)"
node update "$1" "$2"

git diff --quiet && git diff --staged --quiet || git commit -am 'feat(homepage): update slide link ($1:$2)'

# step 2
npm install
npm run build

# step 3
cp -R ./dist/ __temp__/

# step 4
cd __temp__
git init
git add -A
git commit -m "deploy: update slide ($1:$2)"
git push -f git@github.com:fqd511/slides.git master:gh-pages

echo "update slide ($1:$2)"
