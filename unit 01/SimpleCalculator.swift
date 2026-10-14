
var number1: Double = 20
var number2: Double = 5
var op: Character = "/"

switch op {
case "+":
    print("Result: \(number1 + number2)")

case "-":
    print("Result: \(number1 - number2)")

case "*":
    print("Result: \(number1 * number2)")

case "/":
    if number2 != 0 {
        print("Result: \(number1 / number2)")
    } else {
        print("Error: Division by zero")
    }

default:
    print("Invalid operator")
}
