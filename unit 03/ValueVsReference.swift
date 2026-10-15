
struct Student {
    var name: String
}

class Person {
    var name: String

    init(name: String) {
        self.name = name
    }
}

// Struct: Value Type
var student1 = Student(name: "Arun")
var student2 = student1

student2.name = "Kumar"

print("Original Student: \(student1.name)")
print("Copied Student: \(student2.name)")

// Class: Reference Type
var person1 = Person(name: "Arun")
var person2 = person1

person2.name = "Kumar"

print("Original Person: \(person1.name)")
print("Copied Person: \(person2.name)")

// Explanation:
// Struct is a value type, so copying creates an independent copy.
// Changing student2 does not affect student1.
// Class is a reference type, so both variables refer to the same object.
// Changing person2 also changes the object accessed by person1.
