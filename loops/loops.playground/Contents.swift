import UIKit

// for loops
let numRange = 1...10

for num in numRange {
    print("num is \(num)")
}

let names = ["John", "Kevin", "Jason"]

for name in names {
    print("name is \(name)")
}

// while loops

var num1 = 1

while num1 <= 20 {
    print(num1)
    num1 += 1
}

print("조건을 더 이상 만족하지 않아서, 탈출")


// repeat loops

var num2 = 1

repeat {
    print(num2)
    num2 += 1
} while num2 <= 20

print("조건을 더 이상 만족하지 않아서, 탈출")


// exiting loop

print("---> Exiting")

for i in 0...10 {
    if i == 4 {
        break
    }
    print(i)
}

var countDown1 = 10
while countDown1 > 0 {
    countDown1 -= 1
    if countDown1 == 3 {
        break
    }
    print(countDown1)
}


// skipping items

print("----> Skipping")

for i in 0...10 {
    if i == 4 {
        continue
    }
    print(i)
}

var countDown2 = 10
while countDown2 > 0 {
    countDown2 -= 1
    if countDown2 == 3 {
        continue
    }
    print(countDown2)
}
