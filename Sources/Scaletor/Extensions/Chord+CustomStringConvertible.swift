import Foundation

extension Chord: CustomStringConvertible {
    public var description: String {
        ChordFormatter().string(from: self)
    }
}
