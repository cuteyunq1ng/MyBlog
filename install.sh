#! /usr/bin/sh


BLOG_ROOT=`pwd`
sed -i "s#^BLOG_ROOT=.*#BLOG_ROOT=\"$BLOG_ROOT\"#g" blog
# 创建文章目录软链接到根目录
ln -s $BLOG_ROOT/source/_posts $HOME/Myblog

# 将 blog、hexo 添加到PATH
echo "export PATH=\$PATH:$BLOG_ROOT/:$BLOG_ROOT/node_modules/hexo-cli/bin" >> $HOME/.zshrc

echo "安装完成"
echo "请执行 blog 命令查看帮助信息"
