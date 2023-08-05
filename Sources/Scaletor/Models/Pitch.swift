import Foundation

public enum Pitch: String, CaseIterable {
    case a, b, c, d, e, f, g
}

extension Pitch {
    internal var id: Int {
        switch self {
        case .a:
            return 0
        case .b:
            return 2
        case .c:
            return 3
        case .d:
            return 5
        case .e:
            return 7
        case .f:
            return 8
        case .g:
            return 10
        }
    }
}
