import Foundation

public enum MinorMode: String, CaseIterable {
    case harmonicMinor
    case locrianSharpSix
    case ionianSharpFive
}

extension MinorMode: Mode {
    public var chords: [ChordVoicing] {
        [.minor, .diminished, .augmented, .minor, .major, .major, .diminished]
            .offset(by: index)
    }

    public var intervals: [Interval] {
        [.tone, .semitone, .tone, .tone, .semitone, .toneAndHalf, .semitone]
            .offset(by: index)
    }

    private var index: Int {
        Self.allCases.firstIndex(of: self)!
    }
}
