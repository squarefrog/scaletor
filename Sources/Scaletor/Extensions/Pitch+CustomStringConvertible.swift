import Foundation

extension Pitch: CustomStringConvertible {
    public var description: String {
        rawValue.uppercased()
    }
}
