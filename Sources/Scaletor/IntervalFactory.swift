import Foundation

struct IntervalFactory {
    private init() {}

    static func apply(interval: Interval, to note: Note) -> Note {
        let currentIndex = Pitch.allCases.firstIndex(of: note.pitch)!
        let nextPitch = Pitch.allCases.item(atWrappedIndex: currentIndex + 1)
        let newAccidental = nextAccidental(interval: interval, to: note)
        return Note(pitch: nextPitch, accidental: newAccidental)
    }

    private static func nextAccidental(interval: Interval, to note: Note) -> Accidental {
        if interval == .semitone {
            switch note.accidental {
            // Bb -> Cb (Cb major)
            case .flat where note.pitch.isSpecialPitch:
                return .flat

            // Ab -> Bbb?
            case .flat:
                fatalError("Not sure how to add a semitone to \(note)")

            // B -> C
            case .natural where note.pitch.isSpecialPitch:
                return .natural

            // A -> Bb
            case .natural:
                return .flat

            // B# ???
            case .sharp where note.pitch.isSpecialPitch:
                fatalError("Not sure how to add a semitone to \(note)")

            // F# -> G
            case .sharp:
                return .natural
            }
        } else {
            switch note.accidental {
            case .flat where note.pitch.isSpecialPitch:
                return .natural

            case .natural where note.pitch.isSpecialPitch:
                return .sharp

            case .sharp where note.pitch.isSpecialPitch:
                fatalError("Unsure how to add a tone to \(note)")

            default:
                return note.accidental
            }
        }
    }
}

extension Pitch {
    var isSpecialPitch: Bool { self == .b || self == .e }
}
