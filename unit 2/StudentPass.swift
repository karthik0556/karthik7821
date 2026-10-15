
struct Student {
    var name: String
    var rollNumber: Int
    var marks: Double

    func isPassed() -> Bool {
        return marks >= 40
    }
}

let student1 = Student(name: "Arun", rollNumber: 101, marks: 85.5)
let student2 = Student(name: "Kumar", rollNumber: 102, marks: 35.0)

print("\(student1.name) Passed: \(student1.isPassed())")
print("\(student2.name) Passed: \(student2.isPassed())")
