# shell-auto-install

## 一.它有什么用？
支持中英文

一键安装 LNMP，Redis，python3 等服务和语言

一键安装 系统信息脚本，备份脚本 等常用命令型脚本

sai可以对所支持的脚本进行安装，卸载，查看，自定义编辑

拥有函数库，可以很方便的添加脚本和修改

## 二.如何安装sai？
[不同版本地址](https://github.com/goodboy23/shell-auto-install/releases "不同版本下载地址")

如下是安装最新版本，此命令需要curl软件

`curl https://raw.githubusercontent.com/goodboy23/shell-auto-install/master/conf/install-sai.sh -o install-sai.sh &&  chmod +x install-sai.sh && ./install-sai.sh`

## 三.如何使用sai？

### 1.设置中文

默认是英文，vim sai.sh 可以修改全局的安装目录，中英文显示

![](http://www.52wiki.cn/uploads/201803/shell/attach_1520aa59400f0727.png)

### 2.查看帮助

![](http://www.52wiki.cn/uploads/201803/shell/attach_1520aa578d4a5b68.png)

### 3.查看列表

列表分为3部分，应用名，版本，介绍

![](http://www.52wiki.cn/uploads/201803/shell/attach_1520aa553ba217c0.png)

### 4.安装使用

![](http://www.52wiki.cn/uploads/201803/shell/attach_1520aa5cb4ad6362.png)

## 四.如何参与本项目？
直接修改再提交即可，也可以加qq1969679546，一起讨论。

## 五.默认安装的服务是1.6版本，我怎么换成1.7的？
例如，默认脚本安装的是1.6版本的nginx，但是你需要1.7版本的。将nginx安装包复制到package文件夹中

再使用./sai.sh edit nginx 将get_nginx函数中网址部分替换为安装包名，md5部分替换为相应md5值

## 六.这些目录和文件都是干什么的？
conf #存放脚本的简略信息

lib #shell函数文件

material #存放脚本用到的配置文件或者txt文件

package #存放一键安装脚本用到的安装包

script #存放脚本文件

README.md #说明书

sai.sh #管理脚本，管理其它脚本

## 七.如何添加一个新的脚本到合集中？
如果你想将你自己的一键安装脚本添加进来，可以仿照script/mysql.sh，如果想将备份脚本这种常用命令型脚本添加进来，可以仿照script/cha.sh。

其中用了大量test_exit等函数，可以从lib文件夹中查看函数具体用法

添加完成后，rm -rf conf/list*，删除存在的脚本列表

./sai.sh list，生产新的脚本列表，使用./sai.sh list 脚本名，来查看脚本是否被添加进去了
