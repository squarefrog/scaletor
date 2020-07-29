import Foundation

extension Note: CustomStringConvertible {
    public var description: String {
        "\(pitch.description)\(accidental.description)"
    }
}
