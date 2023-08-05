import Foundation

public struct Note: Equatable, Identifiable {
    public let id: Int
    public let pitch: Pitch
    public let accidental: Accidental

    public init(pitch: Pitch, accidental: Accidental = .natural) {
        self.pitch = pitch
        self.accidental = accidental
        self.id = Self.makeId(from: pitch, accidental: accidental)
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
        let symbol = String(input.suffix(1))

        guard let pitch = Pitch(rawValue: letter.lowercased()) else {
            throw NoteError.invalidNote
        }

        let accidental = input.count == 2 ? Accidental(rawValue: symbol) : .natural

        self.init(pitch: pitch, accidental: accidental)
    }
}

extension Note: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(description)
    }
}

extension Note {
    private static func makeId(from pitch: Pitch, accidental: Accidental) -> Int {
        let id = pitch.id + accidental.id
        let max = 12
        return ((id % max) + max) % max
    }
}
