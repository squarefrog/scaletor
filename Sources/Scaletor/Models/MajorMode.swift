import Foundation

public enum MajorMode: String, CaseIterable {
    case ionian, dorian, phrygian, lydian, mixolydian, aeolian, locrian
}

extension MajorMode: Mode {
    public static var description: String {
        "Major"
    }

    public var chords: [ChordVoicing] {
        [.major, .minor, .minor, .major, .major, .minor, .diminished]
            .offset(by: index)
    }

    public var intervals: [Interval] {
        [.tone, .tone, .semitone, .tone, .tone, .tone, .semitone]
            .offset(by: index)
    }

    private var index: Int {
        Self.allCases.firstIndex(of: self)!
    }
}
