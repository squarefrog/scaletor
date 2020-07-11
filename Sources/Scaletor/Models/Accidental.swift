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

    public var description: String {
        switch self {
        case .doubleFlat:
            return "♭♭"
        case .flat:
            return "♭"
        case .natural:
            return ""
        case .sharp:
            return "♯"
        case .doubleSharp:
            return "♯♯"
        }
    }
}
