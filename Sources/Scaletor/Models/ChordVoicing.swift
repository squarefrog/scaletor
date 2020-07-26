import Foundation

public enum ChordVoicing: String {
    case major, minor, diminished
}

public extension ChordVoicing {
    enum Style {
        case short, medium, full
    }

    /// Return a text description of a chord with a given formatter style.
    /// - Parameter style: Short, medium or full style
    /// - Returns: A string description of a chord
    func describe(using style: Style = .full) -> String {
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
