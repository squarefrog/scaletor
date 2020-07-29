import Foundation

public struct Chord: Equatable {
    public let root: Note
    public let voicing: ChordVoicing

    public init(root: Note, voicing: ChordVoicing) {
        self.root = root
        self.voicing = voicing
    }
}
