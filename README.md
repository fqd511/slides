# homepage

slides 的汇总入口

## todo

- [x] 验证 a 标签直接跳转
- [x] 入口页index
- [x] 命令行更新 json 文件
- [x] 入口页简单做一下
    - [x] favicon
    - [ ] 预览：看下 slidev 文档的预览是怎么做的

## How to use

### add link

在入口页中添加新的 `silde` 入口链接

```shell
# 在根目录下运行，link_example 为链接举例
node update link_example link_description
```

> 该命令行会将`link_example`写入`db.json`，页面加载时会运行`generator.js`读取`db.json`内容生成链接列表
