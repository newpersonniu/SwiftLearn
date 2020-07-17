# SwiftLearn
swift learn

参考地址：https://www.hackingwithswift.com/

## 学习安排
### 第1天 7.2
#### 学习内容
- 什么是变量，常量
- 基本类型 int string
- 多行字符串
- double bool
- 字符串插值
- 类型的显示指明

#### 总结
* 1.创建变量使用 var，创建常量使用 let，最好尽可能使用常量。
* 2.字符串以双引号开头和结尾，但是如果你想让它们跨多行，你应该使用三组双引号。
* 3.Integers包含整数，doubles度表示小数，booleans 表示真或假。
* 4.字符串插值允许您从其他变量和常量创建字符串，将它们的值放入字符串中。
* 5.Swift使用类型推断为每个变量或常量指定一个类型，但是如果需要，可以提供显式类型。

### 第2天 7.3
#### 学习内容
- 数组 Array
- 集合 Set
- 元组  Tuples
- 上面三种的不同
- 字典
- 字典默认值
- 空集合
- 枚举
- 枚举关联
- 原始值枚举

#### 总结
* 1.数组、集合、元组和字典允许在单个值下存储一组项。它们的方法各不相同，所以你使用哪种取决于你想要的行为。
* 2.数组按添加顺序存储项，并使用数字位置访问它们。
* 3.设置没有任何顺序的存储项，因此无法使用数字位置访问它们。
* 4.元组的大小是固定的，您可以为它们的每个项附加名称。你可以用数字位置或用你的名字来读。
* 5.字典根据键存储项目，您可以使用这些键读取项目。
* 6.枚举是对相关值进行分组的一种方式，因此可以使用它们而不会出现拼写错误。
* 7.可以将原始值附加到枚举，以便可以从整数或字符串创建这些值，也可以添加关联值以存储有关每个事例的附加信息。

### 第3天 7.5
#### 学习内容
操作运算符 条件表达式
- 算数运算符 +-*/ %
- 操作符重载
- 符合赋值运算符
- 条件表达式 - if
- 条件 -逻辑运算符
- 三元运算
- switch 语句
- 范围运算符

#### 总结
* 1.Swift有做算术和比较的操作符；它们的工作方式和你已经知道的差不多。
* 2.有算术运算符的复合变体，它们可以就地修改它们的变量：+=、-=，等等。
* 3.可以使用if、else和else if根据条件的结果运行代码。
* 4.Swift有一个三元运算符，它将check与true和false代码块组合起来。尽管您可能在其他代码中看到它，但我不建议您自己使用它。
* 5.如果有多个条件使用同一个值，那么使用switch通常会更清楚。
* 6.您可以使用..< 和 ...取决于最后一个数字是应排除还是包括在内。

### 第4天 7.6
#### 学习内容
循环
- for
- while
- repeat
- 退出循环
- 同时退出多个循环
- 退出循环中的某个操作
- 无限循环
#### 总结
* 1.循环允许我们重复代码，直到条件为false。
* 2.最常见的循环是for，它将循环中的每个项分配给一个临时常量。
* 3.如果不需要for循环提供的临时常量，请使用下划线，这样Swift就可以跳过这项工作。
* 4.有while循环，您提供了一个显式条件来检查它。
* 5.尽管它们类似于while循环，但repeat循环始终至少运行一次循环体。
* 6.可以使用break退出单个循环，但如果有嵌套循环，则需要使用break后跟放在外循环之前的标签。
* 7.可以使用continue跳过循环中的项。
* 8.无限循环不会结束，直到您要求它们结束，并且是使用while true生成的。确保你有条件结束你的无限循环！

### 第5天 7.7
#### 学习内容
- 函数
- 参数
- 返回值
- 参数标签
- 省略参数标签
- 默认参数
- 可变函数
- 异常函数
- 运行异常函数 do try catch
- 输入参数
#### 总结
* 1.函数让我们不用重复使用代码。
* 2.函数可以接受参数-只需告诉Swift每个参数的类型。
* 3.函数可以返回值，同样，您只需指定返回的类型。如果要返回多个值，请使用元组
* 4.可以在外部和内部为参数使用不同的名称，也可以完全忽略外部名称。
* 5.参数可以有默认值，这有助于通常需要特定值时编写更少的代码。
* 6.可变函数接受零个或多个特定参数，Swift将输入转换为数组。
* 7.函数可以抛出错误，但必须使用try调用它们，并使用catch处理错误。
* 8.可以使用inout更改函数内部的变量，但通常最好返回一个新值。

### 第6天 7.8
#### 学习内容
闭包的使用一
- 闭包的简单写法
- 有参数的闭包
- 有返回值的闭包
- 闭包作为参数
- 尾随闭包
#### 总结
暂无

### 第7天 7.9
#### 学习内容
闭包的使用二
- 闭包作为参数时，能够接收参数
- 闭包作为参数时，能够返回值
- 多个参数的闭包
- 参数名简写
- 闭包作为函数的返回值
- 捕获值
#### 总结
* 1.您可以为变量分配闭包，然后在以后调用它们。
* 2.闭包可以接受参数和返回值，就像常规函数一样。
* 3.可以将闭包作为参数传递到函数中，这些闭包可以有自己的参数和返回值。
* 4.如果函数的最后一个参数是闭包，则可以使用尾部闭包语法。
* 5.Swift自动提供诸如$0和$1之类的速记参数名，但并非所有人都使用它们。
* 6.如果在闭包中使用外部值，那么将捕获这些值，以便闭包稍后可以引用它们。

### 第8天 7.10
#### 学习内容
- 创建一个简单的结构体
- 计算属性
- 属性观察者
- 方法
- mutating 方法 只能被可变的实例调用
- 字符串的属性和方法
- 数组的属性和方法
#### 总结

### 第9天 7.11
#### 学习内容
- 自定义初始化
- 引用当前实例 
- 惰性属性
- 静态属性和方法
- 访问控制
#### 总结
* 1.可以使用结构创建自己的类型，结构可以有自己的属性和方法。
* 2.可以使用存储属性或使用计算属性动态计算值。
* 3.如果要更改方法内部的属性，则必须将其标记为 mutating
* 4.初始值设定项是创建结构的特殊方法。默认情况下，您将获得
* 一个memberwise初始值设定项，但如果您创建自己的初始值设定项，则必须为所有属性指定一个值。
* 5.使用self常量引用方法中结构的当前实例。
* 6.lazy关键字告诉Swift只在第一次使用属性时创建它们。
* 7.可以使用static关键字在结构的所有实例之间共享属性和方法。
* 8.访问控制允许您限制哪些代码可以使用属性和方法。

### 第10天 7.13
#### 学习内容
类
- 创建类
- 继承
- 重载
- final 
- 拷贝
- deinit
- 可变
#### 总结
* 1.类和结构是相似的，因为它们都可以使用属性和方法创建自己的类型。
* 2.一个类可以从另一个类继承，它获得父类的所有属性和方法。类层次结构很常见——一个类基于另一个类，而另一个类本身又基于另一个类。
* 3.您可以用final关键字标记一个类，这将阻止其他类从中继承。
* 4.方法重写允许子类用新实现替换其父类中的方法。
* 5.当两个变量指向同一个类实例时，它们都指向同一个内存块—更改其中一个会更改另一个。
* 6.类可以有一个去初始化器，它是在类的实例被破坏时运行的代码。
* 7.类不像structs那样强制使用常量——如果属性被声明为变量，那么无论类实例是如何创建的，它都可以被更改。

### 第11天 7.14
#### 学习内容
协议与扩展
- 协议
- 协议继承
- 扩展
- 协议扩展
- 面向协议编程 pop
#### 总结
* 1.协议描述了符合标准的类型必须具有的方法和属性，但不提供这些方法的实现。
* 2.您可以在其他协议之上构建协议，类似于类。
* 3.扩展允许您向特定类型（如Int）添加方法和计算属性。
* 4.协议扩展允许您向协议添加方法和计算属性。
* 5.面向协议的编程是将你的应用程序架构设计成一系列协议，然后使用协议扩展来提供默认的方法实现。

### 第12天 7.15
#### 学习内容
Optionals
- 处理丢失的数据
- 解包 if let
- 解包 guard let
- 强制解包 ！
- 隐式解包 
- nil 合并,解包并提供默认值
- 可选链
- Optional try
- 初始化器失败
- 类型转换

#### 总结
* 1.Optionals让我们以清晰明确的方式表示没有值。
* 2.Swift不会让我们在没有拆包的情况下使用可选值，无论是使用if let还是使用guard let。
* 3.可以使用！强制展开选项，但如果尝试强制展开为nil，则代码将崩溃。
* 4.隐式解包没有常规的optionals安全检查。
* 5.您可以使用nil coalescing来展开一个可选的，并在内部没有任何内容的情况下提供一个默认值。
* 6.可选链接允许我们编写代码来操作一个可选的，但是如果可选的结果是空的，那么代码就会被忽略。
* 7.你可以使用try？把抛出函数转换成可选的返回值，或者try！（会在抛出错误时崩溃）。
* 8.如果你需要初始化器在输入错误时失败，使用init?()以生成失败的初始值设定项。
* 9.可以使用类型转换将一种对象转换为另一种类型。

### 巩固 1
### 第13天 7.16
#### 学习内容
- 变量和常量
- 数据类型
- 运算符 +-*/ %
- 字符串插入
- 数组
- 字典
- 条件语句
- 循环
- Switch
#### 总结
nil

### 巩固 2
### 第14天 7.17
- 函数
- 可选值
- 可选链
- 枚举
- 结构体
- 类
#### 总结
