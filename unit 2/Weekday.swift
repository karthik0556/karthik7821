
enum Weekday: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

let day = Weekday.wednesday

print("Raw value: \(day.rawValue)")

if let selectedDay = Weekday(rawValue: 5) {
    print("Selected day: \(selectedDay)")
} else {
    print("Invalid day")
}
