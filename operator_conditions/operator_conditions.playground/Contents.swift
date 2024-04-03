import UIKit

let first = 10
let second = 3

let sum = first + second
let diff = first - second

let multiple = first * second
let divided = first / second

let remainder = first % second


let str1 = "aaa"
let str2 = "bbb"

let str = str1 + str2

let name1 = ["april", "bob"]
let name2 = ["chuck"]

let name = name1 + name2


var price1 = 10
price1 += 1

var price2 = 20
price2 -= 5

var price3 = 30
price3 *= 3

var price4 = 40
price4 /= 2


var quote = "Hello, Swift"
quote += "Playgrounds"


let score1 = 6
let score2 = 4

score1 == score2
score1 != score2

score1 > score2
score1 >= score2

score1 < score2
score1 <= score2


let num1 = 13
let num2 = 6

let sum1 = num1 + num2

if sum1 > 10{
    print("over 10")
} else {
    print("not over 10")
}

let age1 = 14
let age2 = 25

if age1 > 19 && age2 > 19 {
    print("over 19 age")
} else {
    print("not over")
}

if age1 > 20 || age2 > 20 {
    print("can")
}


let age3 = 30
let age4 = 40

let text = age3 == age4 ? "same" : "not same"


enum Direction {
    case up
    case down
    case left
    case right
}

let direction = Direction.down

switch direction {
case .up:
    print("up")
case .down:
    print("down")
case .left:
    print("left")
case .right:
    print("right")
}
