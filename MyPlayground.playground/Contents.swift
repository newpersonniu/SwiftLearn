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


var title = "swift学习第2天"

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


