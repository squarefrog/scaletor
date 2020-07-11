public struct Scaletor {
    private init() {}


    /// Generate a scale for a given root note and mode.
    ///
    /// - Parameters:
    ///   - note: A root note to base the scale off
    ///   - mode: The mode to use when generating the scale
    /// - Throws: `ScaleError.theoreticalKey` if the root note is either double
    ///           flat or double sharp.
    /// - Returns: An array of notes corresponding to a scale.
    public static func generateScale(withRoot note: Note, in mode: Mode) throws -> [Note] {
        guard
            note.accidental != .doubleFlat,
            note.accidental != .doubleSharp
            else { throw ScaleError.theoreticalKey }

        var notes = [note]
        var lastNote = note

        for i in 0...5 {
            let interval = mode.intervals[i]
            let nextNote = IntervalFactory.apply(interval: interval, to: lastNote)
            notes.append(nextNote)
            lastNote = nextNote
        }

        return notes
    }
}
