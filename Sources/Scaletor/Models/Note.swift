import Foundation

public struct Note: Equatable {
    public let pitch: Pitch
    public let accidental: Accidental
    public var description: String {
        "\(pitch.description)\(accidental.description)"
    }

    public init(pitch: Pitch, accidental: Accidental = .natural) {
        self.pitch = pitch
        self.accidental = accidental
    }

    /// Create a note from a string.
    ///
    /// Accidentals can be specified as `b`, `♭`, `#`, `♯`. For example:
    ///
    ///     `Note("A")` -> A
    ///     `Note("A#")` -> A Sharp
    ///     `Note("Ab")` -> A flat
    ///
    /// - Note: If the accidental is missing or invalid, a natural note is
    ///         returned.
    ///
    /// - Parameter input: String representation of a note.
    /// - Throws: `NoteError.invalidNote` if the note is invalid, or
    ///           `NoteError.outOfBounds` if the input is not 1 or 2 characters.
    public init(_ input: String) throws {
        guard (1...2).contains(input.count) else { throw NoteError.outOfBounds }

        let letter = String(input.prefix(1))
        let accidental = String(input.suffix(1))

        guard let pitch = Pitch(rawValue: letter.lowercased()) else {
            throw NoteError.invalidNote
        }

        self.pitch = pitch
        self.accidental = input.count == 2 ? Accidental(rawValue: accidental) : .natural
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
