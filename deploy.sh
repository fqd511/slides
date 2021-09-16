#!/usr/bin/env sh

# 流程：
# 1.获取分支名称并打包
# 2.将部署文件拷贝到__temp__下对应目录
# 3.切换分支到 homepage
# 4.执行 sh update $branch


# 确保脚本抛出遇到的错误
set -e

# get current branch name
branch=$(git symbolic-ref --short HEAD)

echo "Current branch: $branch"

# 生成部署文件,注意路径单独注明
slidev build --base /slides/$branch/
#slidev build --base /slides/

# refresh branch folder
rm -rf __temp__
mkdir  __temp__

# 复制 dist 中部署文件到 __temp__/$branch
cp -R ./dist/ __temp__/$branch/

# 切到 homepage 分支
git checkout homepage

# 在 homepage 分支部署
#npm run deploy -- $branch $1
