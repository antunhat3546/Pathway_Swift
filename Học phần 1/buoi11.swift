var bank_cards = [Int: Double]()
var lockCards = [Int: String]()

func addCard(id: Int) {
    if (bank_cards[id] == nil) {
        bank_cards[id] = 0
        print("Thẻ ngân hàng đã được thêm vào")
    } else {
        print("Thẻ ngân hàng này đã tồn tại")
    }
}

func addMoney(id: Int, value: Double) {
    if (bank_cards[id] != nil) {
        if (lockCards[id] == nil) {
            bank_cards[id] = (bank_cards[id] ?? 0) + value
            print("Đã gửi tiền vào thẻ này")
        } else {
            print("Thẻ này đã bị khoá")
        }
    } else {
        print("Thẻ ngân hàng này không tồn tại")
    }
}

func delCard(id: Int) {
    if (bank_cards[id] != nil) {
        if (lockCards[id] == nil) {
            bank_cards[id] = nil
            print("Đã thành công xoá thẻ ngân hàng với số \(id)")
        } else {
            print("Thẻ này đã bị khoá")
        }
    } else {
        print("Thẻ ngân hàng này không tồn tại")
    }
}

func extractMoney(id: Int, value: Double) {
    if (bank_cards[id] != nil) {
        if (lockCards[id] == nil) {
            if (bank_cards[id]! > value) {
                bank_cards[id] = bank_cards[id]! - value
                print("Đã trích xuất thành công")
            } else {
                print("Số dư trong tài khoản không đủ")
            }
        } else {
            print("Thẻ này đã bị khoá")
        }
    } else {
        print("Thẻ ngân hàng này không tồn tại")
    }
}

func getCard(id: Int) {
    if (bank_cards[id] != nil) {
        print("Thẻ ngân hàng")
        print("Số thẻ: \(id)")
        print("Số dư: \(bank_cards[id]!)")
        if (lockCards[id] != nil) {
            print("Tình trạng: Bị khoá")
        } else {
            print("Tình trạng: Bình thường")
        }
    } else {
        print("Thẻ ngân hàng này không tồn tại")
    }
}

func getAllCard() {
    for (id, balance) in bank_cards {
        print("Thẻ ngân hàng")
        print("Số thẻ: \(id)")
        print("Số dư: \(balance)\n")
    }
}

func lockCard(id: Int, password: String) {
    if (bank_cards[id] != nil) {
        if (lockCards[id] == nil) {
            lockCards[id] = password
            print("Đã khoá thẻ này")
        } else {
            print("Thẻ này đã bị khoá")
        }
    } else {
        print("Thẻ ngân hàng này không tồn tại")
    }
}

func unlockCard(id: Int, password: String) {
    if (bank_cards[id] != nil) {
        if (lockCards[id] != nil) {
            if (lockCards[id] == password) {
                lockCards[id] = nil
                print("Đã mở khoá thẻ này")
            } else {
                print("Sai mật khẩu")
            }
        } else {
            print("Thẻ này không bị khoá")
        }
    } else {
        print("Thẻ ngân hàng này không tồn tại")
    }
}

while (true) {
    print("DANH SÁCH QUẢN LÝ THẺ NGÂN HÀNG")
    print("1. Thêm thẻ ngân hàng")
    print("2. Gửi tiền vào thẻ")
    print("3. Xoá thẻ ngân hàng")
    print("4. Trích xuất tiền")
    print("5. Xem số dư")
    print("6. Xem số dư của tất cả thẻ")
    print("7. Khoá thẻ")
    print("8. Mở khoá thẻ")
    print("0. Thoát chương trình")
    print("Vui lòng lựa chọn công việc từ 0 - 6:")

    if let choice = Int(readLine()!) {
        if (choice == 1) {
            print("Số thẻ ngân hàng: (Chỉ nhập số)")
            if let card_id: Int = Int(readLine()!) {
                addCard(id: card_id)
            } else {
                print("Không hợp lệ")
            }
        } else if (choice == 2) {
            print("Số thẻ ngân hàng: (Chỉ nhập số)")
            if let card_id: Int = Int(readLine()!) {
                print("Số tiền muốn gửi vào: (Chỉ nhập số)")
                if let money: Double = Double(readLine()!) {
                    addMoney(id: card_id, value: money)
                } else {
                    print("Thông tin nhập vào không hợp lệ")
                }
            } else {
                print("Thông tin nhập vào không hợp lệ")
            }
        } else if (choice == 3) {
            print("Số thẻ ngân hàng: (Chỉ nhập số)")
            if let card_id = Int(readLine()!) {
                print("Bạn có chắc chắn muốn xoá không? (y: Có/n: Không)")
                if let sure = readLine() {
                    if (sure == "y") {
                        delCard(id: card_id)
                    } else {
                        print("Đã huỷ xoá thẻ ngân hàng")
                    }
                } else {
                    print("Thông tin nhập vào không hợp lệ")
                }
            }
        } else if (choice == 4) {
            print("Số thẻ ngân hàng: (Chỉ nhập số)")
            if let card_id = Int(readLine()!) {
                print("Số tiền muốn trích xuất: (Chỉ nhập số)")
                if let money = Double(readLine()!) {
                    extractMoney(id: card_id, value: money)
                } else {
                    print("Thông tin nhập vào không hợp lệ")
                }
            } else {
                print("Thông tin nhập vào không hợp lệ")
            }
        } else if (choice == 5) {
            print("Số thẻ ngân hàng: (Chỉ nhập số)")
            if let card_id = Int(readLine()!) {
                getCard(id: card_id)
            } else {
                print("Thông tin nhập vào không hợp lệ")
            }
        } else if (choice == 6) {
            print("Tất cả thông tin của thẻ ngân hàng")
            getAllCard()
        } else if (choice == 7) {
            print("Số thẻ ngần hàng: (Chỉ nhập số)")
            if let card_id = Int(readLine()!) {
                print("Đặt mật khẩu:")
                if let pass = readLine() {
                    lockCard(id: card_id, password: pass)
                } else {
                    print("Thông tin nhập vào không hợp lệ")
                }
            } else {
                print("Thông tin nhập vào không hợp lệ")
            }
        } else if (choice == 8) {
            print("Số thẻ ngân hàng: (Chỉ nhập số)")
            if let card_id = Int(readLine()!) {
                print("Mật khẩu:")
                if let pass = readLine() {
                    unlockCard(id: card_id, password: pass)
                } else {
                    print("Thông tin nhập vào không hợp lệ")
                }
            } else {
                print("Thông tin nhập vào không hợp lệ")
            }
        } else if (choice == 0) {
            print("Đóng chương trình")
            break
        } else {
            print("Thông tin nhập vào không hợp lệ")
        }
    } else {
        print("Thông tin nhập vào không hợp lệ")
    }
}