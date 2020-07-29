public struct Scaletor {
    private init() {}

    /// Generate a scale for a given root note and mode.
    ///
    /// - Parameters:
    ///   - note: A root note to base the scale off
    ///   - mode: The mode to use when generating the scale
    /// - Throws: `ScaleError.theoreticalKey` if the root note is either double flat or double sharp.
    /// - Returns: An array of notes corresponding to a scale.
    public static func makeScale(from root: Note, for mode: Mode) throws -> [Note] {
        guard
            root.accidental != .doubleFlat,
            root.accidental != .doubleSharp
            else { throw ScaleError.theoreticalKey }

        var notes = [root]
        var lastNote = root
        for i in 0 ..< mode.intervals.count - 1 {
            let interval = mode.intervals[i]
            let nextNote = IntervalFactory.apply(interval: interval, to: lastNote)
            notes.append(nextNote)
            lastNote = nextNote
        }

        return notes
    }

    /// Generate an array of chords for a given root not and mode.
    ///
    /// - Parameters:
    ///   - root: The root note of the mode.
    ///   - mode: The mode to use when generating the chords.
    /// - Throws: `ScaleError.theoreticalKey` if the root note is either double flat or double sharp.
    /// - Returns: An array of `Chord` types for a given mode.
    public static func makeChords(with root: Note, for mode: Mode) throws -> [Chord] {
        let scale = try makeScale(from: root, for: mode)
        return zip(scale, mode.chords).map(Chord.init)
    }
}
