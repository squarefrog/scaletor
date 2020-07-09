import Foundation

internal struct IntervalFactory {
    private init() {}

    internal static func apply(interval: Interval, to note: Note) -> Note {
        let newAccidental = nextAccidental(interval: interval, to: note)
        return Note(pitch: note.pitch.next, accidental: newAccidental)
    }

    private static func nextAccidental(interval: Interval, to note: Note) -> Accidental {
        switch interval {
        case .semitone where note.pitch.isSemitonePitch:
            return note.accidental
        case .semitone:
            return note.accidental.lower
        case .tone where note.pitch.isSemitonePitch:
            return note.accidental.raise
        case .tone:
            return note.accidental
        }
    }
}

fileprivate extension Pitch {
    var isSemitonePitch: Bool { self == .b || self == .e }
    var next: Pitch {
        let nextIndex = Self.allCases.firstIndex(of: self)! + 1
        return Self.allCases[nextIndex % Self.allCases.count]
    }
}

fileprivate extension Accidental {
    var lower: Accidental {
        switch self {
        case .doubleFlat:
            fatalError("Triple flats are not supported")
        case .flat:
            return .doubleFlat
        case .natural:
            return .flat
        case .sharp:
            return .natural
        case .doubleSharp:
            return .sharp
        }
    }

    var raise: Accidental {
        switch self {
        case .doubleFlat:
            return .flat
        case .flat:
            return .natural
        case .natural:
            return .sharp
        case .sharp:
            return .doubleSharp
        case .doubleSharp:
            fatalError("Triple sharps are not supported")
        }
    }
}
