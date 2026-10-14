
enum Grade: String {
    case A = "A"
    case B = "B"
    case C = "C"
    case D = "D"
    case F = "F"
}

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Double

    var grade: Grade {
        switch marks {
        case 90...100:
            return .A
        case 80..<90:
            return .B
        case 70..<80:
            return .C
        case 60..<70:
            return .D
        default:
            return .F
        }
    }
}

class School {
    var students: [Student] = []

    func addStudent(_ student: Student) {
        students.append(student)
        print("Student added: \(student.name)")
    }

    func printReport() {
        let sortedStudents = students.sorted {
            $0.marks > $1.marks
        }

        print("\n--- Student Report ---")
        print("Name | Roll Number | Marks | Grade")

        for student in sortedStudents {
            print("\(student.name) | \(student.rollNumber) | \(student.marks) | \(student.grade.rawValue)")
        }
    }
}

// Create School
let school = School()

// Add Students
school.addStudent(
    Student(name: "Arun", rollNumber: 101, marks: 95)
)

school.addStudent(
    Student(name: "Kumar", rollNumber: 102, marks: 78)
)

school.addStudent(
    Student(name: "Priya", rollNumber: 103, marks: 88)
)

school.addStudent(
    Student(name: "Ravi", rollNumber: 104, marks: 55)
)

// Print sorted report
school.printReport()
