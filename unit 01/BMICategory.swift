
var bmi: Double = 23.5

switch bmi {
case ..<18.5:
    print("Underweight")

case 18.5..<25:
    print("Normal")

case 25..<30:
    print("Overweight")

case 30... where bmi.isFinite:
    print("Obese")

default:
    print("Invalid BMI")
}
