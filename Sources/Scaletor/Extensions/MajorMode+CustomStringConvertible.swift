import Foundation

extension MajorMode: CustomStringConvertible {
    public var description: String {
        return self.rawValue.capitalized
    }
}
