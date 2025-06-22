// Bài 1: Unwrap Optional bằng if let
// Khai báo một biến username kiểu String?. Nếu biến có giá trị, in ra:
// Xin chào, <username>
// Nếu không có giá trị, in ra:
// Chưa có tên người dùng

let username: String? = "antunhat"

if let unwrappedUsername = username {
    print("Xin chào, \(unwrappedUsername)")
} else {
    print("Chưa có tên người dùng")
}

// Bài 2: Sử dụng guard let
// Viết hàm showAge nhận vào một tham số age: Int?
// Nếu có tuổi, in: "Tuổi của bạn là <age>" 
// Nếu không có tuổi, in: "Không có thông tin tuổi"

func showAge(age: Int?) {
    guard let unwrappedAge = age else {
        print("Không có thông tin tuổi")
        return
    }
    print("Tuổi của bạn là \(unwrappedAge)")
}

showAge(age: 12)
showAge(age: nil)

// Bài 3: Force Unwrap và xử lý lỗi
// Khai báo email: String? = nil
// Hãy force unwrap biến này để in ra, và sau đó sửa lại để tránh lỗi bằng if let.  

let email: String? = nil

// print(email!)

if let unwrappedEmail = email {
    print(unwrappedEmail)
} else {
    print("Không có email")
}