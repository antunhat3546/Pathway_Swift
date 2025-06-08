// Thực hành

var score : [String: Double] = [
    "Toán": 9.5,
    "Văn": 7.25,
    "Anh": 8.5,
    "KHTN": 8.75,
]
print(score)
score["KHTN"] = 9
print(score)
score["Tin"] = 10
print(score)

// BT
var studentScore : [String :[String: Double]] = [
    "Nguyễn Văn A": [
        "Toán": 10,
        "Văn": 10,
        "Anh": 10
    ],
    "Trần Văn B": [
        "Toán": 9,
        "Văn": 7.5,
        "Anh": 8
    ],
    
]

studentScore["Nguyễn Thị C"] = [
    "Toán": 7,
    "Văn": 8,
    "Anh": 6
]

var average_studenScore = [String: Double]()

for (student, scores) in studentScore {
    print("Điểm của học sinh \(student) :")
    var average: Double = 0
    for (subject, score) in scores {
        print(" \(subject): \(score)")
        average += score
    }
    average /= 3

    average_studenScore[student] = average
    print("--------------------------------")
}

var maxScore: Double = 0

for (student, averageScore) in average_studenScore {
    print("Điểm trung binh của học sinh \(student) là \(averageScore)")
    if (averageScore > 8) {
        print("Điểm trung binh của học sinh \(student) hơn 8.0")
    } else {
        print("Điểm trung bình của học sinh \(student) thấp hơn 8.0")
    }

    if (averageScore > 9) {
        print("Học sinh \(student) đạt học sinh xuất sắc")
    } else if (averageScore > 8) {
        print("Học sinh \(student) đạt học sinh giỏi")
    } else if (averageScore > 7) {
        print("Học sinh \(student) đạt học sinh khá")
    } else if (averageScore > 5) { 
        print("Học sinh \(student) đạt học sinh trung bình")
    } else {
        print("Học sinh \(student) đạt học sinh yếu")
    }

    if (averageScore > maxScore) {
        maxScore = averageScore
    }

    print("---------------------------------")
}

print("Học sinh có điểm cao nhất là \(maxScore)")