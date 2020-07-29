import Foundation

public struct ChordFormatter {
    public var style: Style

    public init(style: Style = .full) {
        self.style = style
    }

    /// Produce a string representation of a chord
    /// - Parameter chord: The chord to describe
    /// - Returns: A string description of a chord
    public func string(from chord: Chord) -> String {
        chord.root.description + spacer + chord.voicing.description(for: style)
    }

    private var spacer: String {
        style == .short ? "" : " "
    }
}

extension ChordFormatter {
    public enum Style {
        /// Specifies a short style, such as "C", "Cm", "Cº", "C+".
        case short

        /// Specifies a medium style, with abbreviated text such as
        /// "C maj", "C min", "C dim", "C aug".
        case medium

        /// Specifies a full written style such as
        /// "C major", "C minor", "C diminished", "C augmented".
        case full
    }
}

private extension ChordVoicing {
    func description(for style: ChordFormatter.Style) -> String {
        switch (self, style) {
        case (.major, .short):
            return ""
        case (.major, .medium):
            return "maj"
        case (.minor, .short):
            return "m"
        case (.minor, .medium):
            return "min"
        case (.diminished, .short):
            return "º"
        case (.diminished, .medium):
            return "dim"
        case (.augmented, .short):
            return "+"
        case (.augmented, .medium):
            return "aug"
        case (_, .full):
            return self.rawValue
        }
    }
}
