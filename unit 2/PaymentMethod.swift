
enum PaymentMethod {
    case cash
    case card(number: String)
    case upi(id: String)
}

func printPaymentMessage(_ payment: PaymentMethod) {
    switch payment {
    case .cash:
        print("Payment made using Cash")

    case .card(let number):
        print("Payment made using Card: \(number)")

    case .upi(let id):
        print("Payment made using UPI: \(id)")
    }
}

printPaymentMessage(.cash)
printPaymentMessage(.card(number: "123456789012"))
printPaymentMessage(.upi(id: "user@upi"))
