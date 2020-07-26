import Foundation

public enum Mode: String, CaseIterable {
    case ionian, dorian, phrygian, lydian, mixolydian, aeolian, locrian

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
