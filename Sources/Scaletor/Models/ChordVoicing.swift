import Foundation

public enum Chord: String {
    case major, minor, diminished
}

public extension Chord {
    enum Style {
        case short, medium, full
    }

    func describe(using style: Style) -> String {
        switch style {
        case .short:
            return shortStyle
        case .medium:
            return mediumStyle
        case .full:
            return fullStyle
        }
    }

    private var shortStyle: String {
        switch self {
        case .minor:
            return "m"
        case .major:
            return "M"
        case .diminished:
            return "o"
        }
    }

    private var mediumStyle: String {
        switch self {
        case .minor:
            return "min"
        case .major:
            return "Maj"
        case .diminished:
            return "Dim"
        }
    }

    private var fullStyle: String {
        switch self {
        case .minor:
            return rawValue
        default:
            return rawValue.capitalized
        }
    }
}
