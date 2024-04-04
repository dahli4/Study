import UIKit

struct Movie {
    var name: String
}

var movie = Movie(name: "탑건")
print(movie.name)

movie.name = "탑건: 매버릭"
print(movie.name)


struct Movie2 {
    var name: String
    var director: String
    
    var description: String {
        return "\(name) is \(director)'s best movie ever"
    }
}

var movie2 = Movie2(name: "인셉션", director: "놀란")
print(movie2.description)


struct Task {
    var name: String
    var progress: Int {
        didSet {
//            print("Current Progress: \(progress) %")
            
            var str = ""
            for i in 1...10 {
//                if progress >= i * 10 {
//                    str += "*"
//                } else {
//                    str += "-"
//                }
                progress >= i * 10 ? "\(str += "*")" : "\(str += "-")"
            }
            print("Current Progress : \(str)")
        }
    }
    
    var isDone: Bool {
        return progress == 100
    }
}

var task = Task(name: "Very Important Task", progress: 0)

task.progress = 30
task.progress = 50
task.progress = 90
task.progress = 100
task.isDone


struct Student {
    var name: String
    var major: String
    var knowledge: Double
    
    func didFinalTest() -> Int {
        let howMuchIdontKnow = (1 - knowledge) * 100
        let score = 100 - Int(howMuchIdontKnow)
        return score
    }
}

var student = Student(name: "Jason", major: "CS", knowledge: 0.5)

let score = student.didFinalTest()


struct Student2 {
    let name: String
    var major: String
    var knowledge: Double
    
    func didFinalTest() -> Int {
        let howMuchIdontKnow = (1 - knowledge) * 100
        let score = 100 - Int(howMuchIdontKnow)
        return score
    }
    
    mutating func didStudy() {
        if knowledge >= 1 {
            knowledge = 1
        } else {
            knowledge += 0.1
        }
    }
}

var student2 = Student2(name: "Jason", major: "CS", knowledge: 0.5)

let score2 = student2.didFinalTest()

student2.didStudy()
student2.didStudy()

let score3 = student2.didFinalTest()

