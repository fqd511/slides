#!/usr/bin/env bash

# 流程：
# 1. node update link_example 更新 db.json
# 2. npm run build 输出静态部署文件到 dist
# 3. 将 link_example对应的部署文件移到 sub 下（覆盖:先删掉原来的，再移入）[提交 homepage 分支]
# 4. 复制 sub 下目录到 dist
# 5. 进入 dist 部署到 gh-pages