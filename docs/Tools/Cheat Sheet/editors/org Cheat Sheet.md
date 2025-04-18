---
title: org Cheat Sheet
tags:
  - CheatSheet
categories: 
date: 2025-02-01T14:22:36+08:00
modify: 2025-02-01T14:22:36+08:00
dir: 
share: false
cdate: 2025-02-01
mdate: 2025-02-01
---

# org Cheat Sheet

```
#+title: 快速入门 Org Mode
#+author: 谢骐 <https://github.com/shynur>

(由于 GitHub 对 Org 的支持不完整, 你可以在 Emacs 或 VS Code 中阅读本文件, \\
更好的做法是[[https://shynur.github.io/CheatSheets/Org.html][阅读导出的 HTML 版本]].)

* 关于文档自身

允许在文件的 *最开头* 添加附属信息:

#+BEGIN_SRC org
,#+title: 标题 (比一级标题还要高一级)
,#+author: 作者
,#+date: 年年年年-月-日

正文 ... ...
#+END_SRC

** 键位

| 导出 | =C-c C-e= |
| 折叠标题 | =<tab>= |

* 结构化文本
** 标题层次

顶格写 ‘​=*=​’ , 并续上至少 *1 个空格*, 表示一级标题.
星号 (=*=) 的数量代表标题的级数.
二级标题从属一级标题, 以此类推.

** 列表
*** 列表序号

有序列表用 =+=​/​=-=​, 无序列表用 =1.=​/​=A.=​, 可以嵌套:

#+BEGIN_SRC org
A. 植物
   + 水果
     1. 桃子
   + 谷物
     - 大米
B. 动物
#+END_SRC

*** 给列表打标

可以给列表的表项添加 /勾选框/ (=[ ]=), 也可以加 /tag/:

#+BEGIN_SRC org
- [ ] 买橘子
- 作业 :: 写数学作业
- [ ] 锻炼 :: 跑步
#+END_SRC

这样的列表提供了 *交互式* 操作, 见 [[任务清单]].

* 排版
** 标记法

#+BEGIN_SRC org
/斜体/  *粗体*  +删除线+  _下划线_  强制换行 \\
~代码~  =不是代码但需要等宽=
/*+_~组合~_+*/

S_{c} = \pi{}r_c^2
#+END_SRC

效果如下[fn:: 当我说 ‘​/效果如下/​’ 时, 指的是 *导出后* 的效果, 比如, 用 =C-c C-e h o= 导出成 ~HTML~.]:

/斜体/  *粗体*  +删除线+  _下划线_  强制换行 \\
~代码~  =不是代码但需要等宽=
/*+_~组合~_+*/

S_{c} = \pi{}r_c^2

*** 注意事项

内联标记时, 大部分情况下标记的两端必须保留 /空白字符/.

例如, =‘~code~’= 中的 =code= 就不能正常渲染.
常见的做法是在 =‘这里~code~这里’= 添加零宽字符.

比如, 在你的 Org 文件的 *最尾端* 写下:

#+BEGIN_SRC org
正文 ... ...

# Local Variables:
# eval: (keymap-local-set "<f9>"
#                         "\N{ZERO WIDTH SPACE}")
# End:
#+END_SRC

当你的 Emacs 打开该文件时, 按下 =<f9>= 即输入 ‘零宽字符’.

** 链接

 : [[类型:定位][描述]]

其中, =[描述]= 是可选的.

*** 内部链接                                                :linked:内部链接:

省略掉 =类型:=, =定位= 填入同一个文件的某个标题.
例如, =[[内部链接]]= 指向 [[内部链接]] (也就是本小节).

*** 外部链接

+ =http=​/​=https= \\
   : [[https://github.com/shynur][本文的作者]]
  [[https://github.com/shynur][本文的作者]]
+ =file= 本地文件 \\
   : [[file:./][当前目录]]
  [[file:./][当前目录]]

**** 图片链接

Org 会根据后缀自动识别图片.

若 图片 就位于你的 *本地机器* 上, 则在 Emacs 中键入 =C-c C-x C-v= 即时渲染.

** 块文本

使用 =#+BEGIN_XXX= 和 =#+END_XXX= (无所谓大小写, 但大写显然更直观) 包裹文本, 赋予其特殊含义.
如果块中文本在行首出现了 =*= 或 =#+=, 则 /额外/ 添加一个 =,=.

下面是 [[https://github.com/shynur/.emacs.d/tree/main/etc/yas-snippets/org-mode/BEGIN-END-block.yasnippet][我写的补全模板]]:

#+ATTR_HTML: :alt 如果看到了这句话, 说明图片失效了 (那么请到 <https://github.com/shynur/.emacs.d/issues/1> 查看), 或者你的网络环境有问题.
#+ATTR_HTML: :width 400px
[[https://user-images.githubusercontent.com/98227472/260117711-02936942-76fe-4ee5-a5c9-e60ced038e73.gif]]

*** 等宽块

#+BEGIN_SRC org
,#+BEGIN_EXAMPLE
ABCdef<>/;"
,#+END_EXAMPLE
#+END_SRC

效果如下:

#+BEGIN_EXAMPLE
ABCdef<>/;"
#+END_EXAMPLE

*** 代码块

等宽块仅仅是为了等宽, 而 /代码块/ 允许你 *在 Org 文件中运行代码* (见 [[文字编程]]).
这一节仅展示语法.

#+BEGIN_SRC org
,#+BEGIN_SRC bash
ls
,#+END_SRC
#+END_SRC

通过指定编程语言 (此例中是 ~Bash~), Org 会调用不同的程序 (编译并) 执行这段代码, 并且 (如果你有相关插件的话, 还会在导出时) 对其选择不同的高亮方案.

**** 单行代码

#+BEGIN_SRC org
# 任意数量的额外的缩进
 : assume cs:code, ss:stack
#+END_SRC

效果如下 (没有高亮):
 : assume cs:code, ss:stack

**** 代码块行号

 : #+BEGIN_SRC Language -n 第一行的行号 (缺省为 1)
 : #+BEGIN_SRC Language +n 第一行的行号比上一个代码块最后一行的行号多的数值 (缺省为 1)

*** 诗句块

保留 *缩进* 与 *换行*.

#+BEGIN_SRC org
,#+BEGIN_VERSE
     我的前面有五个空格
  这边只有两个
               ---佚名
,#+END_VERSE
#+END_SRC

效果如下:

#+BEGIN_VERSE
     我的前面有五个空格
  这边只有两个
               ---佚名
#+END_VERSE

*** 引用块

使用 ~#+BEGIN_QUOTE~.

*** 居中块

#+BEGIN_SRC org
,#+BEGIN_CENTER
Thank you, \\
shynur
<one.last.kiss@outlook.com>.  \\
August 12, 2023
,#+END_CENTER
#+END_SRC

效果如下:

#+BEGIN_CENTER
Thank you, \\
shynur <one.last.kiss@outlook.com>.  \\
August 12, 2023
#+END_CENTER

** 表格
*** 不带字段的表格

#+BEGIN_SRC org
| 我是 | 一个   | 只由 |
| 两行 | 组成的 | 表格 |
#+END_SRC

效果如下:

| 我是 | 一个   | 只由 |
| 两行 | 组成的 | 表格 |

*** 带字段的表格

#+BEGIN_SRC org
| 年龄 | 职业 | ID     |
|------+------+--------+
| 24   | 学生 | 114514 |
#+END_SRC

效果如下:

| 年龄 | 职业 | ID     |
|------+------+--------+
| 24   | 学生 | 114514 |

* LaTeX
* 交互
** 任务清单                                              :linked:给列表打标:

在 *标题* 前加上 =TODO= 关键字,
可选地加上优先级 =[#字母]=, 可选地在末尾加上 =[%]=:

#+BEGIN_SRC org
,*** TODO [#B] 示例 [%]

- [ ] TAG1 :: 未完成
- [-] 正在进行中
- [ ] TAG1 :: 等会完成
#+END_SRC

在 Emacs 中, 将光标置于第三个任务中, 键入 =C-c C-c= 将会勾选 =[X]= 并更新任务进度,
见 [[任务清单示例]].

*** TODO [#B] 任务清单示例 [33%]                            :linked:任务清单:

- [ ] TAG1 :: 未完成
- [-] 正在进行中
- [X] TAG1 :: 等会完成

全部完成后, =TODO= 关键字会变成 =DONE=.

** 文字编程                                                  :linked:代码块:
* 注解
** 脚注
*** 具名脚注

 : 那个人发明了 C++[fn:OOP: 这是一种面向对象的编程语言.].

效果如下:

那个人发明了 C++[fn:OOP: 这是一种面向对象的编程语言.].

*** 引用脚注

 : 那个人发明了 Python[fn:OOP].

效果如下:

那个人发明了 Python[fn:OOP].

*** 匿名脚注

 : 我[fn:: 菜鸡]不喜欢 Bash.

效果如下:

我[fn:: 菜鸡]不喜欢 Bash.

** 注释
*** 单行注释

顶格写 =#一个空格=:
 : # 这是注释.
# 这真的是注释.

*** 内联注释

 : 你@@comment:这是注释@@好!
@@comment:这是注释@@

*** 块注释

#+BEGIN_SRC org
,#+BEGIN_COMMENT
这里是注释.

这里也是!
,#+END_COMMENT
#+END_SRC

#+BEGIN_COMMENT
这里是真的注释.

这里也是!
#+END_COMMENT

*** 结构化注释

#+BEGIN_SRC org
,* 大标题
,** COMMENT 大批注
,*** 小批注
批注...
,** 小标题
#+END_SRC

**** COMMENT 批注
***** 子批注

批注 ... ...

* 下一步
** 支持 Org Mode 的软件
*** 编写 Org 文件

+ Vim
  - =org.vim=
  - =vim-orgmode=
  - =orgmode.nvim=
+ Visual Studio Code
  - =vscode-org-mode=
+ Atom
  - =org-mode=

*** 格式转换
**** 导入导出

+ Pandoc
+ Drupal converter
+ ox-hugo
+ ox-​*
+ VimWiki
+ Exchange calendars

**** 发布博客

+ Hugo
+ Org-Jekyll
+ o-blog
+ Org2Blog

** 更多资料

+ [[https://orgmode.org/guide/][Org Mode Compact Guide]]
+ [[https://orgmode.org/quickstart.html][Getting started with Org-mode]]
+ [[https://orgmode.org/manual/Markup-for-Rich-Contents.html][Markup for Rich Contents]]

-----

# Local Variables:
# coding: utf-8-unix
# End:
```
