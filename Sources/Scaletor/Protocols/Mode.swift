import Foundation

public protocol Mode: CustomStringConvertible {
    static var description: String { get }
    var intervals: [Interval] { get }
    var chords: [ChordVoicing] { get }
}
