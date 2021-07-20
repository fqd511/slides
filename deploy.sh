#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# get current branch name
branch=$(git symbolic-ref --short HEAD)

echo "Current branch: $branch"

# 生成部署文件
npm run build

# 进入生成的文件夹
cd dist

# 如果是发布到自定义域名
# echo 'www.digvan.com' > CNAME

git init
git add -A
git commit -m 'deploy branch: $branch'

# 如果发布到 https://<USERNAME>.github.io
# git push -f https://github.com/<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/fqd511/slides.git master:gh-pages