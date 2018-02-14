# shell-auto-install

## 简介
shell自动安装，简称sai，类似centos的yum或者ubuntu的apt命令

可以快速，准确的安装各种服务，集群，可视化工具和其他类型脚本

sai不是单纯的一键安装脚本，它是脚本管理平台，让脚本编写简单并格式化

## 优点
支持中英文显示

服务安装包可以预先下载，下载后对脚本整体打包再批量部署，节省下载时间

脚本有大量效验，防止大部分的误操作和安装环境问题

当不符合脚本要求时,会退出并提示如何解决

当手动解决后，可以继续进行安装，而不是卸载后从头装

服务部署后会产生-man系列的管理脚本中，方便对服务启动关闭和个性化设置

## 相比其它一键脚本
sai是基于自带的shell函数库，那意味着在脚本里安装依赖时用test_install函数更加可靠

test_install会判断是否安装上，而不是没装上还进行下一步，这也间接较少代码行数

服务之间互相依赖，当前功能不满意，只需要更改少量代码即可

## 使用方法
yum -y install git

git clone https://github.com/goodboy23/shell-auto-install.git

cd shell-auto-install

chmod +x sai.sh

./sai.sh

以上操作后即可使用，建议多看帮助

## 编写方法
暂无
