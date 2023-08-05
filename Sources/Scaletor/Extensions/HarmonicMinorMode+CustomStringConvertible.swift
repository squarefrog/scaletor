import Foundation

extension HarmonicMinorMode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .harmonicMinor:
            return "Harmonic Minor"
        case .locrianSharpSix:
            return "Locrian ♯6"
        case .ionianSharpFive:
            return "Ionian ♯5"
        case .dorianSharpFour:
            return "Dorian ♯4"
        case .phrygianDominant:
            return "Phrygian Dominant"
        case .lydianSharpTwo:
            return "Lydian ♯2"
        case .ultraLocrian:
            return "Ultra Locrian"
        }
    }
}
