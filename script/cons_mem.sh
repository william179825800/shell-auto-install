get_cons_mem() {
    [ $language -eq 1 ] && echo "不用下载" || ehco "Do not download"
}

install_cons_mem() {
    cp conf/alone/cons_mem /usr/local/bin/cons_mem
    chmod +x /usr/local/bin/cons_mem

    echo "cons-mem" >> conf/installed.txt
    [ $language -eq 1 ] && echo "cons-mem安装完毕，使用cons-mem 开始游戏" || ehco "cons-mem installation is completed, use cons-mem Start the game"
}

remove_cons_mem() {
    rm -rf /usr/local/bin/cons_mem
    [ $language -eq 1 ] && echo "cons-mem已卸载" || ehco "cons-mem Uninstalled"
}


info_cons_mem() {
    if [ $language -eq 1 ];then
        echo "名字：cons-mem
        
类型：系统

版本：1.0

作者：LingYi

介绍：监控或消耗内存资源，　指定需要消耗到的百分比

提示：无

使用：直接回车，查看当前内存的百分比，或者输入欲消耗的内存百分比，消耗固定内存"
    else
        echo "Name：cons-mem
        
Type：sys

version：1.0

Author：LingYi

Introduction：Monitor or consume memory resources, specifying the percentage that needs to be consumed

Prompt：none

use：Enter directly to see the current percentage of memory, or enter the percentage of memory to consume, consume fixed memory"
    fi
}
