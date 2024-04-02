import UIKit
// Array
let yoo = "유재석"
let ji = "지석진"
let ha = "하하"
let so = "전소민"
let song = "송지효"
let kim = "김종국"

let runningMans = [yoo, ji, ha, so, song, kim]

runningMans[3]
runningMans[2]
runningMans[5]

var emptyArr: [Int] = []
emptyArr = [Int]()

// Dictionary
let languageCode = [
    "한국" : "ko",
    "일본" : "jp",
    "미국" : "un"
]

languageCode["한국"]
languageCode["베트남"]
languageCode["ko"]

var emptyDic: [String: Any] = [:]
emptyDic = [String: Any]()

// Set
var primes: Set<Int> = [2, 3, 4, 6]

var evens = Set<Int>([2, 4, 6, 8, 2, 4])

var emptySet: Set<Int> = []

emptySet = Set<Int>()

// Tuple

var phone = (os: "iOS", model: "iPhone12Pro")

phone.0
phone.1
phone.model

var rawPhone = ("iOS", "iPhone12Pro")

rawPhone.0
rawPhone.1

// enum

enum WeekDay: String {
    case mon = "Monday"
    case tue
    case wed
    case thu
    case fri
}

var today: WeekDay = .mon
today.rawValue
var today2 = WeekDay.tue

enum MediaType {
    case audio
    case video
}

var mediaType: MediaType = .audio

enum MediaType2 {
    case audio(String)
    case video(String)
}

var mp3: MediaType2 = .audio("mp3")
var h264: MediaType2 = .video("h264")

enum MasterLevel: Int {
    case beginner
    case intermediate
    case professional
}

var beginner: MasterLevel = .beginner
beginner.rawValue

let pro = MasterLevel(rawValue: 2)
let otherLevel = MasterLevel(rawValue: 9)

enum Direction: String {
    case up
    case down = "ddd"
    case leftRight = "left_right"
}

let dir: Direction = .down
dir.rawValue

let up = Direction(rawValue: "up")
let otherDirection = Direction(rawValue: "left")
