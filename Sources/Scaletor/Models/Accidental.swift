import Foundation

public enum Accidental {
    case doubleFlat
    case flat
    case natural
    case sharp
    case doubleSharp
}

extension Accidental {
    public init(rawValue: String) {
        switch rawValue {
        case "♭", "b":
            self = .flat
        case "♯", "#":
            self = .sharp
        default:
            self = .natural
        }
    }

    internal var id: Int {
        switch self {
        case .doubleFlat:
            return -2
        case .flat:
            return -1
        case .natural:
            return 0
        case .sharp:
            return 1
        case .doubleSharp:
            return 2
        }
    }
}
