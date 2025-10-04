# 使用 HEXO + Butterfly + Github Action 搭建个人博客

本仓库是个人配置好的使用 HEXO + Butterfly + Github Action 搭建的博客的复制。目的是一次搭建，一劳永逸。并且在日常中只需要专注于文章的创作

## 关于
除了对 HEXO 和 Butterfly 的个性化配置外，还有以下改动：
1. 添加了Github actions文件 `.github/workflows/hexo-deploy.yml`，使文章的编译和发布都在 Github 上完成，本地只需要专注于文章的创作，push 到仓库后自动发布。
2. 添加了一个自定义的脚本 `blog`，实现在任意目录下新建文章，以及对整个仓库进行提交同步操作。

## 使用 

1. 本地需要安装好 node.js 以及 hexo
2. 复制整个仓库到本地
3. 给 `source/_posts` 创建一个软链接到你喜欢的地方
   ```ln -s source/_posts $HOME/Myblog```
4. 将 blog 添加到 path
   ```export PATH=$PATH:$HOME/Public/myblog # 添加到你的bash或zsh等的配置文件中,注意修改路径```
5. 这样就可以使用 `blog` 命令完成新建文章，同步仓库等操作了

## blog 脚本
博客管理助手 - 简化你的写作工作流

可用命令:
```shell
  blog new '文章标题'     - 创建新文章
  blog status            - 检查博客状态
  blog sync '提交信息'    - 提交并同步到远程仓库
  blog posts            - 列出当前文章目录
  blog test             - 快速进行本地测试
  blog help             - 显示此帮助信息
```

工作流示例:
  1. blog new '我的新文章'     # 创建文章
  2. 编辑 ~/my_blog_posts/我的新文章.md
  3. blog test '本地查看文章'    # 提交发布
  4. blog sync '添加新文章'    # 提交发布
