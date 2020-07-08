import Foundation

public enum Pitch: String, CaseIterable {
    case a, b, c, d, e, f, g

    public var description: String { rawValue.uppercased() }
}
