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
