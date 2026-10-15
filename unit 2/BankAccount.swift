
struct BankAccount {
    var balance: Double

    mutating func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
            print("Deposited: \(amount)")
        } else {
            print("Invalid deposit amount")
        }
    }

    mutating func withdraw(amount: Double) {
        if amount <= 0 {
            print("Invalid withdrawal amount")
        } else if amount <= balance {
            balance -= amount
            print("Withdrawn: \(amount)")
        } else {
            print("Insufficient balance. Withdrawal denied.")
        }
    }
}

var account = BankAccount(balance: 1000)

account.deposit(amount: 500)
account.withdraw(amount: 300)
account.withdraw(amount: 1500)

print("Final Balance: \(account.balance)")
