import UIKit

func printHello() {
    print("Hello Swift World!")
}

printHello()

// input parameter
func printName(name: String) {
    print("name is \(name)")
}

printName(name: "Jason")


// return output
func makeDouble(num: Int) -> Int {
    return num * 2
}

let result = makeDouble(num: 3)

print(result)


// input parameter label
// 외/내부 paramter label 변경 -> 호출할때 더 읽기 쉬움
func printName(of name: String) {
    print("name is \(name)")
}

printName(of: "Jason")

func printName(_ name: String) {
    print("name is \(name)")
}

printName("Jason")
