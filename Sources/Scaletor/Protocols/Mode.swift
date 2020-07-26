import Foundation

public protocol Mode {
    var chords: [ChordVoicing] { get }
    var intervals: [Interval] { get }
}
