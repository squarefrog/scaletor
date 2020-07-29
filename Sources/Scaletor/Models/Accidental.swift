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
}
