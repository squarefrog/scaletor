import Foundation

public enum NoteError: Error {
    /// Note was not A, B, C, D, E, F, or G
    case invalidNote

    /// Input string count was less than 1, or greater than 2.
    case outOfBounds
}
