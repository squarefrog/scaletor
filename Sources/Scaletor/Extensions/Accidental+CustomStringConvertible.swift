import Foundation

extension Accidental: CustomStringConvertible {
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
