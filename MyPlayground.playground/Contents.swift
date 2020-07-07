import UIKit

//第一天
//变量
var str = "Hello, playground"
str = "Goodbye"

//基本类型
var age = 38

var population = 8_000_000

var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over mutiple \
lines
"""
var pi = 3.141

var awesome = true

//字符串插入
var score = 85
var strScore = "Your score was \(score)"
var resultScore = "This test results are here: \(strScore)"

//常量
let taylor = "swift"

//类型注解
let album: String = "Repulation"
let year: Int = 1991
let height: Double = 1.75
let taylorRocks: Bool = true


//var title = "swift学习第一天"

//Summary
/**
 * 1.创建变量使用 var，创建常量使用 let，最好尽可能使用常量。
 * 2.字符串以双引号开头和结尾，但是如果你想让它们跨多行，你应该使用三组双引号。
 * 3.Integers包含整数，doubles度表示小数，booleans 表示真或假。
 * 4.字符串插值允许您从其他变量和常量创建字符串，将它们的值放入字符串中。
 * 5.Swift使用类型推断为每个变量或常量指定一个类型，但是如果需要，可以提供显式类型。
 */


//第2天 7.3
//复杂数据结构

//Arrays
let john = "John Lennon"
let paul = "Paul McCartn"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]
//如果使用类型注释，数组写在括号中：[String]、[Int]、[Double]和[Bool]。

//Sets
let colors = Set(["red", "green", "bule"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

//Tuples 多元组
var name = (first: "Taylor", last: "Swift")
name.0
name.first

//Arrays vs sets vs tuples
//如果需要特定的、固定的相关值集合，其中每个项都有精确的位置或名称，则应使用元组：
let address = (house: 55, street: "Taylor Swift Avenue", city: "Nashville")

//如果您需要一个必须是唯一的值集合，或者您需要能够快速检查特定项是否在其中，则应使用集合：
let set = Set(["aardvark", "astronaut", "azalea"])

//如果需要包含重复项的值集合，或者项的顺序很重要，则应使用数组：
let pythons = ["Eric", "john", "Michael", "Terry", "Terry"]

//Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.75
]
heights["Taylor Swift"]

//字典默认值
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Shophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unkonw"]

//创建空集合
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scoreE = Dictionary<String, String>()
var resultsE = Array<Int>()

//枚举
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.success

//枚举关联值
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: String)
}
let talking = Activity.talking(topic: "footbal")

//原始值枚举 Enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)


var title2 = "swift学习第2天"

//Summary
/**
 * 1.数组、集合、元组和字典允许在单个值下存储一组项。它们的方法各不相同，所以你使用哪种取决于你想要的行为。
 * 2.数组按添加顺序存储项，并使用数字位置访问它们。
 * 3.设置没有任何顺序的存储项，因此无法使用数字位置访问它们。
 * 4.元组的大小是固定的，您可以为它们的每个项附加名称。你可以用数字位置或用你的名字来读。
 * 5.字典根据键存储项目，您可以使用这些键读取项目。
 * 6.枚举是对相关值进行分组的一种方式，因此可以使用它们而不会出现拼写错误。
 * 7.可以将原始值附加到枚举，以便可以从整数或字符串创建这些值，也可以添加关联值以存储有关每个事例的附加信息。
 */

//第3天 7.5 3/100
//操作运算符&条件表达式

//算数运算符 +-*/ %
let firstScore = 12
let secongScore = 4

let total = firstScore + secongScore
let difference = firstScore - secongScore
let product = firstScore * secongScore
let divided = firstScore / secongScore
let remainder = 13 % secongScore

//操作符重载
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatless = firstHalf + secondHalf

//复合赋值运算符 +-*/ + =
var scoreM = 95
scoreM -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spanards"

//比较运算符
firstScore == secongScore
firstScore != secongScore
firstScore < secongScore
firstScore >= secongScore
"Taylor" <= "Swift"

//条件表达式
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 21 {
    print("Blackjack!")
} else if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else {
    print("Regular cards")
}
//条件结合-逻辑运算符
if firstCard > 10 && secondCard > 10 {
    print("Both are over 10")
}
if firstCard > 10 || secondCard > 10 {
    print("At least one is over 10")
}

//三元运算符
print(secondCard == firstCard ? "Cards are the same" : "Cards are different")

//switch 语句
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//范围运算符
switch score {
case 0..<50:
    print("You failed badly.")
case 50...100:
    print("You did OK.")
default:
    print("You did great!")
}

var title3 = "swift学习第3天"

//Summary
/**
 * 1.Swift有做算术和比较的操作符；它们的工作方式和你已经知道的差不多。
 * 2.有算术运算符的复合变体，它们就可以修改它们的变量：+=、-=，等等。
 * 3.可以使用if、else和else if根据条件的结果运行代码。
 * 4.Swift有一个三元运算符，它将check与true和false代码块组合起来。尽管您可能在其他代码中看到它，但我不建议您自己使用它。
 * 5.如果有多个条件使用同一个值，那么使用switch通常会更清楚。
 * 6.您可以使用..< 和 ...取决于最后一个数字是应排除还是包括在内。
 */

//第4天 7.6 4/100
//循环
//for 循环
let count = 1...10
for number in count {
    print("Number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}
print("Players gonna")
for _ in 1...5 {
    print("play")
}

//while
var number = 1
while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")

//repeat
repeat {
    print(number)
    number += 1
} while number <= 20

//退出循环
var countDown = 10
while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    
    countDown -= 1
}

//退出多个循环
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) = \(product)")
        if product == 50 {
            break outerLoop
        }
    }
}
//跳过某一次循环
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}
//无限循环
var counter = 0;
while true {
    print("")
    counter += 1
    if counter == 273 {
        break
    }
}

var title4 = "swift学习第4天"

//Summary
/**
 * 1.循环允许我们重复代码，直到条件为false。
 * 2.最常见的循环是for，它将循环中的每个项分配给一个临时常量。
 * 3.如果不需要for循环提供的临时常量，请使用下划线，这样Swift就可以跳过这项工作。
 * 4.有while循环，您提供了一个显式条件来检查它。
 * 5.尽管它们类似于while循环，但repeat循环始终至少运行一次循环体。
 * 6.可以使用break退出单个循环，但如果有嵌套循环，则需要使用break后跟放在外循环之前的标签。
 * 7.可以使用continue跳过循环中的项。
 * 8.无限循环不会结束，直到您要求它们结束，并且是使用while true生成的。确保你有条件结束你的无限循环！
 */

//第5天 7.7 5/100
//函数

//1.写函数
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}
printHelp()

//2.参数传递
func squre(number:Int) {
    print(number * number)
}
squre(number: 5)

//3.返回值
func squre1(number:Int) ->Int {
    return number * number
}
squre1(number: 8)

//4.参数标签
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

//5.省略参数标签
func greet(_ person: String) {
    print("Hello, \(person)")
}
greet("Taylor")

//6.默认参数
func greet1(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello1, \(person)!")
    } else {
         print("Oh no, it's \(person) again...")
    }
}
greet1("Taylor")
greet1("Taylor", nicely: false)

//7.可变函数 参数可变：同一类型多个参数
func squareA(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
squareA(numbers: 1, 2)
//8.写入异常抛出函数
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

//9.运行异常抛出函数
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
//10.输入参数
func doubleInPlace(number: inout Int) {
    number *= number
}
var myN = 10;
doubleInPlace(number: &myN)

//Summary
/**
 * 1.函数让我们不用重复使用代码。
 * 2.函数可以接受参数-只需告诉Swift每个参数的类型。
 * 3.函数可以返回值，同样，您只需指定返回的类型。如果要返回多个值，请使用元组
 * 4.可以在外部和内部为参数使用不同的名称，也可以完全忽略外部名称。
 * 5.参数可以有默认值，这有助于通常需要特定值时编写更少的代码。
 * 6.可变函数接受零个或多个特定参数，Swift将输入转换为数组。
 * 7.函数可以抛出错误，但必须使用try调用它们，并使用catch处理错误。
 * 8.可以使用inout更改函数内部的变量，但通常最好返回一个新值。
 */
