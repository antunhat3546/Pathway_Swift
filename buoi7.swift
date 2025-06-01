// Thực hành 1

var strList = ["Swift", "Python", "C++"]
var intList = [1, 2, 3, 4, 5]

print(strList)
print(intList)

Thực hành 2

var anyList: [Any] = ["text", "string", 1, 2, 3, true]

anyList[0] = "str"

anyList.append("abc")

print("Danh sách: \(anyList)")
print("Độ dài danh sách: \(anyList.count)")

// Thực hành 3

var list1 = ["a", "b", "c", "d"]

list1.insert("abc", at: 2)
print(list1)

list1.remove(at: 0)
print(list1)

list1.removeLast()
print(list1)

// Thực hành 4

var strList: [String] = ["b", "a", "d", "c"]

strList.sort()
print(strList)

print(strList.contains("a"))

for i in strList {
    print(i)
}

// Bài 1

var intArray1: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var sum1 = 0

for i in intArray1 {
    sum1 = sum1 + i
}

print(sum1)

// Bài 2

var intArray2: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var sum2 = 0

for i in intArray2 {
    if (i % 2 == 0) {
        sum2 = sum2 + i
    }
}

print(sum2)

// Bài 3

var intArray3: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print(intArray3.max()!)

// Bài 4

var intArray4: [Int] = [1,2,3,3,4,3,5,5,6,7,8,9,10]
var repeatSet: [Int] = []
var repeatArray: [Int] = []

func int_count(value: Int, array: Array) -> Int {
    var count1: Int = 0
    for i in array {
        if {i == value} {
            count1 = count1 + 1
        }
    }
    return count1
} 

for i in intArray4 {
    if !intArray4.contains(i) {
        repeatSet.append(i)
    }
}

for i in repeatSet {
    repeatArray.append(count(value: i, array: intArray4))
}

print(repeatArray)

// Bài 5

var intArray5: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var evenArray5: [Int] = []

for i in intArray5 {
    if (i % 2 == 0) {
        evenArray5.append(i)
    }
}

// Bài 6

var strArray1: [String] = ["apple", "banana", "cherry"]

print("x =")
let x: String? = readLine()

func str_count(value: Character, stri: String) {
    var count: Int = 0
    for i in stri {
        if (i == value) {
            count = count + 1
        }
    }
}

if (let unwrapped_x = x!) {
    if (strArray1.contains(unwrapped_x)) {
        print("Danh sách có chứa phần từ \(unwrapped_x)")
    }
}

for i in strArray1 {
    print("Số chữ \"a\" trong phần tử \(i) là \(str_count(value: "a", stri: i))")
}

// Bài 7

var strArray2: [String] = ["apple", "banana", "cherry"]

print(Array(Set(strArray2)))