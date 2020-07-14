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

var title5 = "swift学习第4天"

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

//第6天 7.8 6/100
//闭包（一）
//1.创建基本闭包
let driving = {
    print("I'm driving in my car")
}
driving()
//2.闭包传参
let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving1("London")
//3.有返回值的闭包
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)
//4.作为参数
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

//5.尾随闭包语法
travel() {
 print("I'm driving in my car")
}
travel {
    print("I'm driving in my car")
}

var title6 = "swift学习第6天"
//Summary
//nil

//第7天 7.9 7/100
//闭包（二）
//1.使用闭包作为参数时，闭包也接受参数
func travel7(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel7 { (place:String) in
    print("I'm going to \(place) in my car")
}
//2.使用闭包作为参数时，闭包也能够返回值
func travel7_1(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel7_1 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//3.简写参数名
travel7_1 { place in
    return "I'm going to \(place) in my car"
}
//由于闭包只有一行必须是返回值的代码行，所以Swift也允许我们删除return关键字
travel7_1 { place in
      "I'm going to \(place) in my car"
}
//Swift提供闭包参数的自动名称,这些是用美元符号命名的，然后是从0开始的数字。
travel7_1 {
     "I'm going to \($0) in my car"
}

//4.多个参数的闭包
func travel72(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel72 {
    "I'm going to \($0) at \($1) miles per hour."
}

//5.闭包作为函数返回值
func travel73() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result7 = travel73()
result7("London")
travel73()("London")

//6.捕获值
func travel76() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let counterR = travel76()
counterR("London")
counterR("London")
counterR("London")

var title7  = "swift学习第7天"

//Summary
/**
 * 1.您可以为变量分配闭包，然后在以后调用它们。
 * 2.闭包可以接受参数和返回值，就像常规函数一样。
 * 3.可以将闭包作为参数传递到函数中，这些闭包可以有自己的参数和返回值。
 * 4.如果函数的最后一个参数是闭包，则可以使用尾部闭包语法。
 * 5.Swift自动提供诸如$0和$1之类的速记参数名，但并非所有人都使用它们。
 * 6.如果在闭包中使用外部值，那么将捕获这些值，以便闭包稍后可以引用它们。
 */

//第8天 7.10 8/100
//结构、属性和方法
//1.创建自己的结构
struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
tennis.name = "Lawn tennis"
//2.计算属性

struct Sport8 {
    var name: String
    var isOlympicSport: Bool
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name)is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
let chessBoxing = Sport8(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//3.属性观察者
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 5)
progress.amount = 1

//4.方法
struct City {
    var population: Int
    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
london.collectTaxes()

//5.mutating 方法 只允许变量示例调用
struct Person {
    var name: String
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()

//6.字符串的属性和方法
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())
//7.数组的属性和方法
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

//Summary
//nil

//第9天 7.11 9/100
//结构体 二
//1.初始化
struct User {
    var userName: String
    
    init() {
        userName = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.userName = "twostraws"
//2.引用当前实例
struct Person9 {
    var name: String
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
//3.惰性属性 懒加载
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct Person91 {
    var name: String
    lazy var familyTree = FamilyTree()
    init(name: String) {
        self.name = name
    }
}
var ed = Person91(name: "Ed")
ed.familyTree
//4.静态特性和方法
struct Student {
    static var classSize = 0
    var name: String
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
Student(name: "Ed")
Student(name: "Taylor")
print(Student.classSize)

//5.访问控制
struct Person95 {
    private var id: String
    init(id: String) {
        self.id = id
    }
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

var title9  = "swift学习第9天"

//Summary
/**
 * 1.可以使用结构创建自己的类型，结构可以有自己的属性和方法。
 * 2.可以使用存储属性或使用计算属性动态计算值。
 * 3.如果要更改方法内部的属性，则必须将其标记为 mutating
 * 4.初始值设定项是创建结构的特殊方法。默认情况下，您将获得
 * 一个memberwise初始值设定项，但如果您创建自己的初始值设定项，则必须为所有属性指定一个值。
 * 5.使用self常量引用方法中结构的当前实例。
 * 6.lazy关键字告诉Swift只在第一次使用属性时创建它们。
 * 7.可以使用static关键字在结构的所有实例之间共享属性和方法。
 * 8.访问控制允许您限制哪些代码可以使用属性和方法。
 */

//第10天 7.13 10/100
// 类  (和struct类似，但又有5个不同)
//1.创建自己的类 不同之一：没有自己的默认初始化，需要自己写
class Dog {
    var name: String
    var breed: String
    init (name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

//2.继承 不同：能够基于一个存在的类去创建一个类，它继承了原始类的所有属性和方法，并且可以在上面添加自己的属性和方法
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//3.重载
class Dog3 {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle3: Dog3 {
    override func makeNoise() {
         print("Yip!")
    }
}
let poppy3 = Poodle3()
poppy3.makeNoise()

//4.final类 不能被继承和方法重写
final class Dog4 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
//5.对象拷贝 不同之三：copy不一样
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

//6.去初始化器 不同之四：去初始化器-当类的实例被破坏时运行的代码
class Person10 {
    var name = "John Doe"
    init() {
        print("\(name) is alive!")
    }
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person10 = Person10()
    person10.printGreeting()
}

//7.可变 不同之五：如果您有一个带有变量属性的常量结构，则不能更改该属性，因为该结构本身是常量。类的实例可以
class Singer7 {
    var name = "Taylor Swift"
}

let taylor7 = Singer()
taylor7.name = "Ed Sheeran"
print(taylor7.name)

var title10  = "swift学习第10天"

//Summary
/**
 * 1.类和结构是相似的，因为它们都可以使用属性和方法创建自己的类型。
 * 2.一个类可以从另一个类继承，它获得父类的所有属性和方法。
 * 类层次结构很常见——一个类基于另一个类，而另一个类本身又基于另一个类。
 * 3.您可以用final关键字标记一个类，这将阻止其他类从中继承。
 * 4.方法重写允许子类用新实现替换其父类中的方法。
 * 5.当两个变量指向同一个类实例时，它们都指向同一个内存块—更改其中一个会更改另一个。
 * 6.类可以有一个去初始化器，它是在类的实例被破坏时运行的代码。
 * 7.类不像structs那样强制使用常量——如果属性被声明为变量，那么无论类实例是如何创建的，它都可以被更改。
 */

//第11天 7.14 11/100
//协议和扩展
//1.协议
protocol Identifiable {
    var id: String { get set }
}
struct User11: Identifiable {
    var id :String
}
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}
//2.协议继承
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

//3.扩展
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number11 = 8
number11.squared()
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
number11.isEven
//4.协议扩展
let pythons11 = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles11 = Set(["John", "Paul", "George", "Ringo"])
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
pythons11.summarize()
beatles11.summarize()
//5.面向协议编程
protocol Identifiable111 {
    var id: String { get set }
    func identify()
}
extension Identifiable111 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User111: Identifiable111 {
    var id: String
}

let twostraws = User111(id: "twostraws")
twostraws.identify()

var title11 = "swift学习第11天"

//Summary
/**
 * 1.协议描述了符合标准的类型必须具有的方法和属性，但不提供这些方法的实现。
 * 2.您可以在其他协议之上构建协议，类似于类。
 * 3.扩展允许您向特定类型（如Int）添加方法和计算属性。
 * 4.协议扩展允许您向协议添加方法和计算属性。
 * 5.面向协议的编程是将你的应用程序架构设计成一系列协议，然后使用协议扩展来提供默认的方法实现。
 */
