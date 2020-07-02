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

//Summary
/**
 * 1.创建变量使用 var，创建常量使用 let，最好尽可能使用常量。
 * 2.字符串以双引号开头和结尾，但是如果你想让它们跨多行，你应该使用三组双引号。
 * 3.Integers包含整数，doubles度表示小数，booleans 表示真或假。
 * 4.字符串插值允许您从其他变量和常量创建字符串，将它们的值放入字符串中。
 * 5.Swift使用类型推断为每个变量或常量指定一个类型，但是如果需要，可以提供显式类型。
 */


