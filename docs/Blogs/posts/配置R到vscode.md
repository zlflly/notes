# 如何在 VSCODE 中高效使用 R 语言 （图文详解）

> 作者：未知

## 目录

[一、功能特性展示](#%E4%B8%80%E3%80%81%E5%8A%9F%E8%83%BD%E7%89%B9%E6%80%A7%E5%B1%95%E7%A4%BA)

## 如何在 VSCODE 中高效使用 R 语言 （图文详解）

> 原发布于 [知乎](https://zhuanlan.zhihu.com/p/369698816)，未知

### 一、功能特性展示

之前一直在用 [Rstudio](https://zhida.zhihu.com/search?content_id=170285012&content_type=Article&match_order=1&q=Rstudio&zhida_source=entity) 来编写 R，也尝试用过 [Pycharm](https://zhida.zhihu.com/search?content_id=170285012&content_type=Article&match_order=1&q=Pycharm&zhida_source=entity) 配置 R 环境。

但是由于现在需求要同时满足 Python，R 和网站要同时开发，为了避免来回切换不同的IDE，重复配置，还有路径一堆麻烦事。

今天我们先介绍在 [VSCODE](https://zhida.zhihu.com/search?content_id=170285012&content_type=Article&match_order=1&q=VSCODE&zhida_source=entity) 中配置 R 环境，看看它有什么特性足以让我们更改自己习惯。

1、绘图

![](https://pic3.zhimg.com/v2-f727d49d86fc1a4bea09cc91df3d776e_1440w.jpg)

2、查看及搜索数据

![](https://pic4.zhimg.com/v2-9d3cfd83378a82cb2858615685748831_1440w.jpg)

3、多行输出

![](https://pic2.zhimg.com/v2-3a1a6203f641f00e67d90db58d73c913_1440w.jpg)

4、鼠标悬停，显示函数文档

![](https://pic3.zhimg.com/v2-2f2ff26be6a87c211e180d005934b3aa_1440w.jpg)

5、鼠标悬停，显示变量信息

![](https://pica.zhimg.com/v2-b1a6536287b5e43690f4794775d4f7ec_1440w.jpg)

6、格式化代码

![](https://pic4.zhimg.com/v2-47979b9c5b8abfdb8887b9b29c4dfee1_1440w.jpg)

### 二、材料

- vscode
- R
- vscode 插件：
- R support for Visual Studio Code
- R LSP Client
- 

### 三、安装

#### 1、安装 vscode

官网：[https://code.visualstudio.com/](https://link.zhihu.com/?target=https://code.visualstudio.com/)

#### 2、安装 R

- 下载：
- 选择清华的

![](https://pic4.zhimg.com/v2-8e376dd1b56f0846d5b57398bef5c325_1440w.jpg)

- 根据需要选择下载，以windows下载为例

![](https://pic3.zhimg.com/v2-3b8adb10f18e96c987e1b6103c3a3454_1440w.jpg)

- 选择`base`

![](https://pic3.zhimg.com/v2-b6e262be78a48b6783db30db53d15482_1440w.jpg)

- 点击下载

![](https://pic3.zhimg.com/v2-80aa811f233800df995421afb6a91784_1440w.jpg)

安装时需要注意：

选安装目录时候，需要注意没必要安装在C盘，后续安装包会占用资源。建议在其他盘创建目录，然后以R版本号命名的方式安装R。

> 比如我在E盘下的`R`目录:

![](https://pic1.zhimg.com/v2-c58874c532bba1b533e4ae28c33af87e_1440w.jpg)

![](https://pic4.zhimg.com/v2-c8442b89a1151146161350589cc8ed79_1440w.jpg)

#### 3、安装插件

#### R support for Visual Studio Code

这是在 vscode 运行 R 语言的核心插件

![](https://pic4.zhimg.com/v2-d0bb561d461aca3736e2c727bfefcab3_1440w.jpg)

#### R LSP Client

R LSP Client 插件依托于 Language Server Protocol，LSP 可以使编程语言在编辑器上得到语法支持。提供自动补全，代码格式化，帮助文档等功能。

![](https://pic2.zhimg.com/v2-7983f5af44390cfba251758b22a6a459_1440w.jpg)

#### 4、Radian

官网称 radian 是一款21世纪的R语言编辑器。

因为radian 是 python编写，首先我们得先有 python 环境，安装参考：[https://zhenglei.blog.csdn.net/article/details/88828229](https://link.zhihu.com/?target=https://zhenglei.blog.csdn.net/article/details/88828229)。

在 cmd 里输入 `radian` 查看是否安装正常

![](https://pic1.zhimg.com/v2-00512d472d07f23db290d2261ded07b8_1440w.jpg)

### 四、配置

1、在 VSCODE 右下角进入设置页面

![](https://pic4.zhimg.com/v2-19bcd1be5c8c8135c821db2c1c4986d9_1440w.jpg)

2、根据不同操作系统，比如windows配置时，输入`r.rterm.windows`，填写 R 或 radian 路径。

如果为了更好的体验，建议配置 radian 的路径。

> 在 shell 中拿到 radian 路径信息`where radian` 比如我的路径是：

![](https://pic4.zhimg.com/v2-54a4073f2564dceb4bb671cf1cf3706b_1440w.png)

![](https://pic3.zhimg.com/v2-90c8429e3ba165d6183b3099dc475ec0_1440w.jpg)

3、输入`r.br`，选中`bracketed paste`

不勾选，Radian 不会启用

![](https://pic3.zhimg.com/v2-22f664b9adbc03808b3ba17822933faa_1440w.jpg)

4、输入 `r.rterm.option`，删除`--no-save,--no-restore`，添加`--no-site-file`

![](https://pic4.zhimg.com/v2-02e01fff397c56808311be031a69cb79_1440w.jpg)

5、输入`r.sessionWatcher`，勾选

可以实现绘图IDE，查看dataframe。如果想用原生绘图，取消勾选即可。

![](https://pic4.zhimg.com/v2-1ab0b2a57e446c5c853ffa57aeb86169_1440w.jpg)

6、要实现自动补齐还需要安装：Languageserver

````
install.packages("languageserver")
````

![](https://picx.zhimg.com/v2-2ed8dfeeb99bbeb90f526de53ea8d46d_1440w.jpg)

### 五、测试

1、计算和输出

````
add <- function(x, y) {
    x + y
}

print(add(1, 2))
print(add(1.0e10, 2.0e10))
print(paste("one", NULL))
print(paste(NA, "two"))
print(paste("multi-line", "multi-line"))
````

![](https://pic2.zhimg.com/v2-3a1a6203f641f00e67d90db58d73c913_1440w.jpg)

2、绘图

````
h <- c(1, 2, 3, 4, 5, 6)
M <- c("A", "B", "C", "D", "E", "F")
barplot(h,
    names.arg = M, xlab = "X", ylab = "Y",
    col = "#00cec9", main = "Chart", border = "#fdcb6e"
)
````

![](https://picx.zhimg.com/v2-b5ed6da4cb48e572096b72d415631e4d_1440w.jpg)



## 报错的解决：

1. VScode无法运行R程序
```powershell
   
   PS D:\User\Desktop\CS61A> Rscript "d:\User\Desktop\CS61A\first.R" 
   Rscript : 无法将“Rscript”项识别为 cmdlet、函数、脚本文件或可运行程序的名称。请检查名称的拼写，如果包括路径，请确保路径正确，然后再试一次。 
   所在位置 行:1 字符: 1 
   + Rscript "d:\User\Desktop\CS61A\first.R" 
   + ~~~~~~~ + CategoryInfo : ObjectNotFound: (Rscript:String) [], CommandNotFoundException + FullyQualifiedErrorId : CommandNotFoundException
   
```

**解决办法：**

 **将 R 添加到系统环境变量（推荐）**

1. **检查 R 是否已安装**  
   打开 R 的安装目录（如 `C:\Program Files\R\R-4.3.1\bin`），确认 `Rscript.exe` 存在。
2. **添加 R 到环境变量**

   - 右键点击“此电脑” → 属性 → 高级系统设置 → 环境变量 → 系统变量 → 找到 `Path` → 编辑 → 新建。
   - 添加 R 的 `bin` 目录路径：

     plaintext

     复制

     C:\Program Files\R\R-4.3.1\bin

   - 保存并重启 PowerShell。

3. **验证是否生效**  
   输入命令：

   powershell

   复制

   Rscript --version

   如果显示版本号（如 `R scripting front-end version 4.3.1`），则配置成功。


2. 运行R脚本时镜像未设置
```powershell
   PS D:\User\Desktop\CS61A> Rscript "d:\User\Desktop\CS61A\first.R"
   错误于contrib.url(repos, "source"): 试试在不设定镜像的情况下用CRAN
   Calls: install.packages -> contrib.url
   停止执行
```

**解决办法：**

要解决在运行R脚本时出现的CRAN镜像未设置错误，可以按照以下步骤操作：

**步骤一：修改R脚本中的包安装命令**

在安装包的代码行中，明确指定CRAN镜像源。例如，将：

```r
install.packages("包名")
```

修改为：

```R
install.packages("包名", repos = " https://cloud.r-project.org ")
```

**步骤二：或者在脚本开头设置镜像源**

在脚本的最开始添加以下代码，设置默认的CRAN镜像：

```r
options(repos = c(CRAN = " https://cloud.r-project.org "))
```

**示例修改后的****`first.R`** **first.R脚本：**

```r
# 设置CRAN镜像
options(repos = c(CRAN = " https://cloud.r-project.org "))

# 安装需要的包（示例）
install.packages("ggplot2")

# 后续其他代码...

```

**说明：**

- 使用`repos`参数直接指定镜像地址，确保R能够正确访问CRAN服务器。
- 设置`options(repos=...)`可避免每次安装包时重复指定镜像。

完成上述修改后，重新运行脚本即可解决镜像未配置导致的错误。

