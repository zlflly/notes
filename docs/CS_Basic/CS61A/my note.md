# CS 61 C

## Expressions

传统的表达式 : $18+69,sin\pi$ , 学习计算机的观点是：所有的表达式都可以用函数调用的方式表示

在 `Python` 当中，对计算符号有一些定义

### 直接用传统运算符号表示

```python
1*2*((3*4*5//6)**3)+7+8
=
2015
```

用Python里面的 调用表达式

```python
mul(add(2, mul(4, 6)), add(3, 5))
```

### 还可以自定义语句

先写一个def 语句，类似于这样

```python
>>>def square(x):
       return mul(x,x)
```

它们的标准形式是：

```python
>>>def <name>(<formal parameters>)
       return <return expression> #函数体，也叫函数主体，为第一行代码之后的所有内容
```

- 函数的原始名称用于标记本地框架

   - 目的是追踪本地框架



一个环境是一系列的框架，一个框架是变量名称和值之间的绑定

## Environment Diagrams

用方框和箭头示意**计算机运行时发生了什么**

> 一个Python代码可视化的网站  [`online Python tutor`](https://pythontutor.com/visualize.html#mode=edit) \
> 其中灰绿色箭头表示刚刚执行的代码，红色箭头表示下一步执行的代码

## Print AND None

### Demo

下面是一组输入输出

```python
>>> print(print(1),print(2))
1
2
None None
```

下面解释

None 表示什么都没有，一个没有明确返回值的函数就会返回 `None`

- 解释器不会自动显示None作为表达式的值，也就是说不会自动打印 None

- None 可以绑定到一个符号

   ```python
   >>> def does_not_square(x):
     x * x
   >>> does_not_square(4)
   >>> sixteen=does_not_square(4)
   >>> sixteen+4 #
   TypeError : unsupported operand type(s) for +: 'NoneType' and 'int'
   ```

   报错提示：不支持现在的 None 类型 和 整数类型数 的加法

### Pure Functions & Non-Pure Functions

#### Pure Functions

![image.png](https://cdn.jsdelivr.net/gh/zlflly/picture@main/img/61A01.png)

#### Non-Pure Functions

![image.png](https://cdn.jsdelivr.net/gh/zlflly/picture@main/img/61A02.png)

非纯函数返回的不是一个值，而是输出发出的事情 

---

接下来看 Demo，利用 expression trees 来表示

![image.png](https://cdn.jsdelivr.net/gh/zlflly/picture@main/img/61A03.png)

最后一步发生的事情：

![image.png](https://cdn.jsdelivr.net/gh/zlflly/picture@main/img/61A04.png)

虚线框住的 `None` 不会自动显示，Python的交互解释器在提示键入的表达式的值为 None 时不会自动显示