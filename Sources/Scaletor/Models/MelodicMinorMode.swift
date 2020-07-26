import Foundation

public enum MelodicMinorMode: String, CaseIterable {
    case melodicMinor
    case dorianFlatTwo
    case lydianAugmented
    case lydianDominant
}

extension MelodicMinorMode: Mode {
    public var chords: [ChordVoicing] {
        [.minor, .diminished, .augmented, .major, .major, .diminished, .diminished]
            .offset(by: index)
    }

    public var intervals: [Interval] {
        [.tone, .semitone, .tone, .tone, .tone, .tone, .semitone]
            .offset(by: index)
    }

    private var index: Int {
        Self.allCases.firstIndex(of: self)!
    }
}
