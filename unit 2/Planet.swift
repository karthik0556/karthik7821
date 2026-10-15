
enum Planet: CaseIterable {
    case mercury
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune

    var order: Int {
        switch self {
        case .mercury: return 1
        case .venus: return 2
        case .earth: return 3
        case .mars: return 4
        case .jupiter: return 5
        case .saturn: return 6
        case .uranus: return 7
        case .neptune: return 8
        }
    }
}

for planet in Planet.allCases {
    print("\(planet): \(planet.order)")
}
