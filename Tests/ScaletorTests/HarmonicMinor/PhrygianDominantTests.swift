import XCTest
import Scaletor

final class PhrygianDominantTests: XCTestCase {
    func test_Generate_C_PhrygianDominant_Scale() {
        assertMatches("C D♭ E F G A♭ B♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_G_PhrygianDominant_Scale() {
        assertMatches("G A♭ B C D E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_D_PhrygianDominant_Scale() {
        assertMatches("D E♭ F♯ G A B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_A_PhrygianDominant_Scale() {
        assertMatches("A B♭ C♯ D E F G") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_E_PhrygianDominant_Scale() {
        assertMatches("E F G♯ A B C D") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_B_PhrygianDominant_Scale() {
        assertMatches("B C D♯ E F♯ G A") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_Gb_PhrygianDominant_Scale() {
        assertMatches("G♭ A♭♭ B♭ C♭ D♭ E♭♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_Db_PhrygianDominant_Scale() {
        assertMatches("D♭ E♭♭ F G♭ A♭ B♭♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_Ab_PhrygianDominant_Scale() {
        assertMatches("A♭ B♭♭ C D♭ E♭ F♭ G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_Eb_PhrygianDominant_Scale() {
        assertMatches("E♭ F♭ G A♭ B♭ C♭ D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_Bb_PhrygianDominant_Scale() {
        assertMatches("B♭ C♭ D E♭ F G♭ A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: HarmonicMinorMode.phrygianDominant)
        }
    }

    func test_Generate_F_PhrygianDominant_Scale() {
        assertMatches("F G♭ A B♭ C D♭ E♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: HarmonicMinorMode.phrygianDominant)
        }
    }
}
