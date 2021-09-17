#!/usr/bin/env bash

# 流程：
# 1. node update link(slide 代号) desc(slide 介绍) 更新 db.json，并提交 homepage 分支
# 2. npm run install && npm run build 输出静态部署文件到 dist
# 3. 将 link 对应的部署文件(在__temp__/link下)移到 dist 的 sub 下（覆盖:先删掉原来的，再移入）
# 4. 进入 dist 部署到 gh-pages



# 确保脚本抛出遇到的错误
set -e

# step 1
echo "update db.json : slide ($1:$2)"
node update "$1" "$2"

git commit -a -m "feat(homepage): update link ($1:$2)"

# step 2
npm install
npm run build

# step 3
rm -rf

echo "update slide ($1:$2)"
