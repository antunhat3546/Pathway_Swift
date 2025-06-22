// Bài 1

let number = 10

if (number > 0) {
    print("Số dương")
} else if (number == 0) {
    print("Số 0")
} else {
    print("Số âm")
}

// Bài 2

let num = 32

if (num % 2 == 0) {
    print("Số chẵn")
} else {
    print("Số lẻ")
}

// Bài 3

let age = 12

if (age < 6 && age > 60) {
    print("Giảm giá 50%")
} else {
    print("Không giảm giá")
}

// Bài 4

let month = 4

if (month >= 3 && month <= 5) {
    print("Mùa Xuân")
} else if (month >= 6 && month <= 8) {
    print("Mùa Hạ")
} else if (month >= 9 && month <= 11) {
    print("Mùa Thu")
} else if (month >= 12 && month <= 2) {
    print("Mùa Đông")
}

// Bài 5

let electric =  1000

print("Số tiền phải trả:", terminator: " ")
if (electric <= 50) {
    print(1500 * electric)
} else if (electric >= 51 && electric <= 100) {
    print(2000 * electric)
} else if (electric > 100) {
    print(2500 * electric)
}

// Bài 6

let user = "admin"
let password = "123546"

if (user == "admin" && password == "123456") {
    print("Đăng nhập thành công")
} else {
    print("Đăng nhập thất bại")
}

