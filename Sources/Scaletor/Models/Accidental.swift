import Foundation

public enum Accidental {
    case flat
    case natural
    case sharp

    public var description: String {
        switch self {
            case .flat:
                return "♭"
            case .natural:
                return ""
            case .sharp:
                return "♯"
        }
    }
}
