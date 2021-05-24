import Foundation
import Swift
 
class Account {
   var cardNumber: String
   var password: String
   var balance: Double
   var cashLimit: Double
   var minBalance: Double
   init(cardNumber:String,
        password: String,
        balance: Double,
        cashLimit: Double,
        minBalance: Double) {
       self.cardNumber = cardNumber
       self.password = password
       self.balance = balance
       self.cashLimit = cashLimit
       self.minBalance = minBalance
   }
}
 
let myAccount = Account (
   cardNumber: "12345678900",
   password: "Giaply123",
   balance: 800000,
   cashLimit: 5000000000,
   minBalance: 50000
)
 
let myFriendAccount = Account (
   cardNumber: "000987654321",
   password: "1111111",
   balance: 900000,
   cashLimit: 5000000000,
   minBalance: 50000
)
 
let myCardNumber = "12345678900"
 
func isValidString(_ str: String) -> Bool {
   return str.trimmingCharacters(in: .whitespacesAndNewlines) != ""
}
 
func isValidLogin(_ password: String) -> Bool {
   if (isValidString(password) && password == myAccount.password) {
       return true
   }
   return false
}
 
func getBalance(_ account: Account) -> Double {
   return account.balance
}
 
func checkWithDraw(_ amountValue: Double, _ account: Account) -> (status: Bool, message: String) {
   if (account.balance < amountValue) {
        return (status: false, message: "Số tiền nhập vào nhỏ hơn số dư" )
   }
   if (account.balance - amountValue <  account.minBalance) {
       return (status: false, message: "Tiền nhập vào không đủ duy trì số dư" )
   }
   if (account.cashLimit < amountValue) {
       return (status: false, message: "Tiền nhập vào quá hạn mức" )
   }
   return (status: true, message: "")
}
 
func transferMoney(_ amountValue: Double, _ myAcc: Account, _ friendAcc: Account) ->  (status: Bool, message: String) {
   let valueCheck = checkWithDraw(amountValue, myAcc)
   if valueCheck.status {
       myAcc.balance -= amountValue
       friendAcc.balance  += amountValue
       return (status: true, message: "Chuyển tiền thành công")
   }
   return valueCheck
}
 
func withDrawMoney(_ amountValue: Double, _ myAcc: Account) ->  (status: Bool, message: String) {
    let valueCheck = checkWithDraw(amountValue, myAcc)
   if valueCheck.status {
       myAcc.balance -= amountValue
       return (status: true, message: "Rút tiền thành công")
   }
   return valueCheck
}
 
func isValidNewPassword(_ newPassword1: String, _ newPassword2: String) -> Bool {
   if (isValidString(newPassword1)
       && isValidString(newPassword2)
       && newPassword1 == newPassword2) {
       return true
   }
   return false
}
 
func changePassword(_ newPassword1: String,_ newPassword2: String, _ account: Account ) -> Bool {
   if isValidNewPassword(newPassword1, newPassword2) {
       account.password = newPassword1
       return true
   }
   return false
}
 
// login
let passwordValue = "Giaply123"
// người dùng nhập vào
let isValid = isValidLogin(passwordValue)
if isValid {
   print("Đăng nhập thành công")
} else {
   print("Đăng nhập không thành công")
}
 
// get balance
let balanceValue = getBalance(myAccount)
print("Số dư của bạn là: \(balanceValue)")
 
// transfer money
let amountTransferValue: Double = 7000000 // người dùng nhập vào
let resultTransfer = transferMoney(amountTransferValue, myAccount, myFriendAccount)
print(resultTransfer.message)
 
 
// withdraw money
let amountWithDrawValue: Double = 700000 // người dùng nhập vào
let resultWithDraw = withDrawMoney(amountWithDrawValue, myAccount)
print(resultWithDraw.message)
 
//change password
let newPassword1 = "999999" // người dùng nhập vào
let newPassword2 = "999999" // người dùng nhập vào
let resultChangePassword = changePassword(newPassword1, newPassword2, myAccount)
if resultChangePassword {
   print("Thay đổi mật khẩu thành công")
   print("Mật khẩu mới là: \(myAccount.password)")
} else {
   print("Thay đổi mật khẩu không thành công")
}

