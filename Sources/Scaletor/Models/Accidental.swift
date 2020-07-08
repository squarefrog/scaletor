import Foundation

public enum Accidental {
    case doubleFlat
    case flat
    case natural
    case sharp
    case doubleSharp

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
