import Foundation

struct User {
    var name: String
    var age: Int
    var email: String

    func introduce() {
        print("Hi, my name is \(name). I'm \(age) years old. My email is \(email)")
    }

    mutating func haveBirthday() {
        age = age + 1
    }
}

var user1 = User(name: "Teky", age: 4, email: "tekylongbian@teky.com")
var user2 = User(name: "A", age: 20, email: "a@a.com")
var user3 = User(name: "b", age: 1, email: "b.b@b.b")
var user4 = User(name: "c", age: 100, email: "c@gmail.com")

print(user1)
print(user2)
print(user3)
print(user4)

user1.introduce()
user1.haveBirthday()
print(user1.age)

// Bài 1

import Foundation

struct Person {
    var name: String
    var age: Int
    var isStudent: Bool
    
    func info() {
        print("Thông tin cá nhân\nTên: \(name)\nTuổi: \(age)\nCó phải học sinh không: \(isStudent)")
    }
    
    mutating func end_of_school() {
        age = age + 1
    }
}

var student1 = Person(name: "Nguyễn Văn A", age: 13, isStudent: true)
var person1 = Person(name: "Nguyễn Thị B", age: 20, isStudent: false)
var student2 = Person(name: "Trần Văn C", age: 15, isStudent: true)

student1.info()
person1.info()
student2.info()
student1.end_of_school()
print(student1.age)

// Bài 2

import Foundation

struct Student {
    var name: String
    
    var mathScore: Double
    var englishScore: Double
    var itScore: Double

    func averageScore() -> Double {
        return (mathScore + englishScore + itScore) / 3
    }
}

var max_average: Double

var student1 = Student(name: "A", mathScore: 9, englishScore: 8, itScore: 7)
let average_student1 = student1.averageScore()
max_average = average_student1

var student2 = Student(name: "B", mathScore: 7, englishScore: 9, itScore: 8)
let average_student2 = student2.averageScore()
if (max_average < average_student2) {
    max_average = average_student2
}

var student3 = Student(name: "C", mathScore: 10, englishScore: 7, itScore: 9)
let average_student3 = student3.averageScore()
if (max_average < average_student3) {
    max_average = average_student3
}

var student4 = Student(name: "D", mathScore: 9, englishScore: 8, itScore: 8)
let average_student4 = student4.averageScore()
if (max_average < average_student4) {
    max_average = average_student4
}

var student5 = Student(name: "E", mathScore: 6, englishScore: 10, itScore: 9)
let average_student5 = student5.averageScore()
if (max_average < average_student5) {
    max_average = average_student5
}

print("Điểm trung bình lớn nhất là \(max_average)")

// Bài 3

import Foundation

struct Product {
    var name: String
    var price: Double
    var isInStock: Bool
    
    func introduce() {
        if (isInStock == true) {
            print("Sản phẩm (Còn hàng) \"\(name)\", giá: \(price)")
        } else {
            print("Sản phẩm (Hết hàng) \"\(name)\", giá: \(price)")
        }
    }
}

func mostExpensive(_ products: [Product]) -> Product {
    var max: Product = products[0]
    for product in products {
        if (product.price > max.price) {
            max = product
        }
    }
    return max
}

var products = [Product]()

products.append(Product(name: "Iphone 16 Pro Max", price: 50000000, isInStock: true))
products.append(Product(name: "Iphone 7", price: 1000000, isInStock: false))
products.append(Product(name: "Iphone 11", price: 10000000, isInStock: true))

for product in products {
    product.introduce()
}

print("Sản phẩm đắt nhất là:", terminator: " ")
mostExpensive(products).introduce()