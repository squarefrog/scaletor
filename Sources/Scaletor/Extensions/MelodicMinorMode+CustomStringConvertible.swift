import Foundation

extension MelodicMinorMode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .melodicMinor:
            return "Melodic Minor"
        case .dorianFlatTwo:
            return "Dorian ♭2"
        case .lydianAugmented:
            return "Lydian Augmented"
        case .lydianDominant:
            return "Lydian Dominant"
        case .mixolydianFlatSix:
            return "Mixolydian ♭6"
        case .aeolianFlatFive:
            return "Aeolian ♭5"
        case .superLocrian:
            return "Super Locrian"
        }
    }
}
