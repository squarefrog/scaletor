import Foundation

public extension String.StringInterpolation {
    mutating func appendInterpolation(_ chord: Chord, style: ChordFormatter.Style) {
        let formatter = ChordFormatter(style: style)
        appendInterpolation(formatter.string(from: chord))
    }
}
