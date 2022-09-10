### 编译步骤  

1.先用vcpkg安装zydis  

vcpkg install zydis  

vcpkg install zydis:x64-windows  

zydis 4022f22f9280650082a9480519c86a6e2afde2f3 commit版本  

2.下载llvm源代码，要自己编译一些lib和工具

~~用vcpkg安装llvm （这个方案所需时间和磁盘巨大），不推荐~~  

用visual studio按需编译比较好。

3.安装retdec  

直接把github上的Releases下载下来就行。大概解压后五六个g。   

##### c/c++添加包含目录

\retdec-v4.0-windows-64b\retdec\include  

\retdec-v4.0-windows-64b\retdec\include\retdec\llvm

##### 链接器输入库里添加lib

在库目录那里加入lib目录，然后输入加入lib









需要用到的llvm tools 命令



llc .\main_optimize.ii --x86-asm-syntax=intel -march=x86		将ir转asm

clang -c .\main_optimize.ii.s -m32												 将asm转.o











库目录  

\retdec-v4.0-windows-64b\retdec\lib  			//x64编译链接这些lib

\retdec-v4.0-windows-32b\retdec\lib			  //x86编译链接这些lib



















llvm 编译一些参考和省磁盘和编译时间技巧

https://bbs.pediy.com/thread-262247.htm



