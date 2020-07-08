public struct Scaletor {
    private init() {}

    public static func generateScale(withRoot note: Note, in mode: Mode) throws -> [Note] {
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

enum ScaleError: Error {
    case theoreticalKey
    var localizedDescription: String { "Theoretical keys not supported" }
}
