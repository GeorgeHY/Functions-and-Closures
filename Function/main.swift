//
//  main.swift
//  Function
//
//  Created by GE on 15/12/15.
//  Copyright © 2015年 GE. All rights reserved.
//

import Foundation
//使用func来声明一个函数，使用名字和参数来调用函数。使用->来指定函数返回值的类型。
    //func greet(name:String,count:Int,food:String) -> String
    //{
    //    return "今天 \(name)中午吃了\(count)个\(food)."
    //}
    //var str = greet("George",count: 2,food: "牛排")
    //print(str)


//使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示。
    //func calculateStatistics(scores:[Int]) -> (min: Int,max: Int, sum:Int)
    //{
    //    var max = scores[0]
    //    var min = scores[0]
    //    var sum = 0
    //    
    //    for score in scores
    //    {
    //        if score > max{
    //            max = score
    //        }else if score < min{
    //            min = score
    //        }
    //        sum += score
    //    }
    //    
    //    return(min,max,sum)
    //    
    //}
    //
    //let statistics = calculateStatistics([5,3,100,3,9])
    //print(statistics.sum)
    //print(statistics.0)

//函数可以带有可变个数的参数，这些参数在函数内表现为数组的形式
    //func sumof(numbers: Int...) -> Int
    //{
    //    var sum = 0
    //    for number in numbers
    //    {
    //        sum += number
    //    }
    //    return sum
    //}
    //print(sumof())
    //print(sumof(42, 56, 100))

    //func averageof(numbers:Int...) -> Float
    //{
    //    var sum = 0
    //    for number in numbers
    //    {
    //        sum += number
    //    }
    //    return Float(sum)/Float(numbers.count)
    //}
    //
    //print(averageof(13,67,32))

//函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用嵌套函数来重构一个太长或者太复杂的函数。
    //func returnFifteen() -> Int
    //{
    //    var y = 10
    //    func add()
    //    {
    //        y += 5
    //    }
    //    add()
    //    return y
    //}
    //
    //print(returnFifteen())

//函数是第一等类型，这意味着函数可以作为另一个函数的返回值。
    //func makeIncrementer() -> (Int -> Int)
    //{
    //    func addOne(number: Int) -> Int
    //    {
    //        return 1 + number
    //    }
    //    return addOne
    //}
    //
    //var increment = makeIncrementer()
    //print(increment(7))
//函数也可以当做参数传入另一个函数。
    //func hasAnyMatches(list: [Int], condition: Int -> Bool) ->Bool
    //{
    //    for item in list
    //    {
    //        if condition(item)
    //        {
    //            return true
    //        }
    //    }
    //    return false
    //}
    //
    //func lessThanTen(number: Int) -> Bool
    //{
    //    return number < 10
    //}
    //
    //var numbers = [20, 19, 15, 12]
    //print(hasAnyMatches(numbers, condition: lessThanTen))

//函数实际上是一种特殊的闭包:它是一段能之后被调取的代码。闭包中的代码能访问闭包所建作用域中能得到的变量和函数，即使闭包是在一个不同的作用域被执行的 - 你已经在嵌套函数例子中所看到。你可以使用{}来创建一个匿名闭包。使用in将参数和返回值类型声明与闭包函数体进行分离。
var numbers = [20, 19, 7, 12]
//numbers.map({
//    (number: Int) -> Int in
//    
//    let result = 3 * number
//    return result
//})

//let mappedNumbers = numbers.map({ number in 3 * number})
//print(mappedNumbers)

let sorterNumbers = numbers.sort { $0 > $1 }
print(sorterNumbers)


