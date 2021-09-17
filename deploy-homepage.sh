#!/usr/bin/env bash

# 流程：
# 1. npm run install && npm run build 输出静态部署文件到 dist
# 2. 将 dist 的静态文件复制到 __temp__
# 3. 将 __temp__ 部署到 gh-pages

# 确保脚本抛出遇到的错误
set -e

# step 1
npm install
npm run build

# step 2
cp -R ./dist/ __temp__/

# step 3
cd __temp__
git init
git add -A
git commit -m "deploy: update homepage"
git push -f https://github.com/fqd511/slides.git master:gh-pages

echo "update homepage"
