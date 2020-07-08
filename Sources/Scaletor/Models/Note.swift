import Foundation

public struct Note {
    public let pitch: Pitch
    public let accidental: Accidental
    public var description: String { "\(pitch.description)\(accidental.description)" }

    public init(pitch: Pitch, accidental: Accidental = .natural) {
        self.pitch = pitch
        self.accidental = accidental
    }
}

extension Note: CustomDebugStringConvertible {
    public var debugDescription: String { description }
}

public extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Note) {
        appendLiteral(value.description)
    }
}
