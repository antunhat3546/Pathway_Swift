// Thực hành 1

func name() {
    print("An Tư Nhất")
    return
}

func school() {
    print("Teky")
    return
}

func age() {
    print("12")
    return
}

name()
school()
age()

// Thực hành 2

func tbc(toan: Double, ly: Double, anh: Double) {
    let tb = (toan + ly + anh) / 3
    print(tb)
}

tbc(toan: 9.5, ly: 9.5, anh: 9.5)

// Thực hành 3

func rect(_ cd: Double, _ cr: Double) -> Double {
    return cd * cr
}

print(rect(10.5, 5.2))

// Bài 1

func tong1(_ array: [Int]) -> Int {
    var sum = 0
    for i in array {
        sum = sum + i
    }
    return sum
}

print(tong1([12, 13, 14, 15]))

// Bài 2

func check_even(_ array: [Int]) -> [Int] {
    var even: [Int] = []
    for i in array {
        if i % 2 == 0 {
            even.append(i)
        }
    }
    return even
}

print(check_even([1, 2, 3, 4, 5]))

// Bài 3

func sumof_odd(_ array: [Int]) -> Int {
    var sum: Int = 0
    for i in array {
        if (i % 2 != 0) {
            sum = sum + i
        }
    }
    return sum
}

print(sumof_odd([1, 2, 3, 4, 5]))

// Bài 4

func find_max(_ array: [Int]) -> Int {
    var max: Int = 0
    for i in array {
        if (i > max) {
            max = i
        }
    }
    return max
}

print(find_max([1, 2, 3, 4, 5]))

// Bài 5

func reverse(_ string: String) -> String {
    return String(string.reversed())
}

print(reverse("abc"))

// Bài 6

import Foundation

func can(_ n: Int) -> Double {
    return sqrt(n)
}

print(can(25))

// Bài 7

func bp(_ n: Int) -> Int {
    return n * n
}

print(bp(3))