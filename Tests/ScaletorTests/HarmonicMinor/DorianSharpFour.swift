import XCTest
import Scaletor

final class DorianSharpFourTests: XCTestCase {
    func test_Generate_C_DorianSharpFour_Scale() {
        assertMatches("C D E♭ F♯ G A B♭") {
            try Scaletor.makeScale(from: Note(pitch: .c), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_G_DorianSharpFour_Scale() {
        assertMatches("G A B♭ C♯ D E F") {
            try Scaletor.makeScale(from: Note(pitch: .g), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_D_DorianSharpFour_Scale() {
        assertMatches("D E F G♯ A B C") {
            try Scaletor.makeScale(from: Note(pitch: .d), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_A_DorianSharpFour_Scale() {
        assertMatches("A B C D♯ E F♯ G") {
            try Scaletor.makeScale(from: Note(pitch: .a), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_E_DorianSharpFour_Scale() {
        assertMatches("E F♯ G A♯ B C♯ D") {
            try Scaletor.makeScale(from: Note(pitch: .e), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_B_DorianSharpFour_Scale() {
        assertMatches("B C♯ D E♯ F♯ G♯ A") {
            try Scaletor.makeScale(from: Note(pitch: .b), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_Gb_DorianSharpFour_Scale() {
        assertMatches("G♭ A♭ B♭♭ C D♭ E♭ F♭") {
            try Scaletor.makeScale(from: Note(pitch: .g, accidental: .flat), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_Db_DorianSharpFour_Scale() {
        assertMatches("D♭ E♭ F♭ G A♭ B♭ C♭") {
            try Scaletor.makeScale(from: Note(pitch: .d, accidental: .flat), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_Ab_DorianSharpFour_Scale() {
        assertMatches("A♭ B♭ C♭ D E♭ F G♭") {
            try Scaletor.makeScale(from: Note(pitch: .a, accidental: .flat), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_Eb_DorianSharpFour_Scale() {
        assertMatches("E♭ F G♭ A B♭ C D♭") {
            try Scaletor.makeScale(from: Note(pitch: .e, accidental: .flat), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_Bb_DorianSharpFour_Scale() {
        assertMatches("B♭ C D♭ E F G A♭") {
            try Scaletor.makeScale(from: Note(pitch: .b, accidental: .flat), for: HarmonicMinorMode.dorianSharpFour)
        }
    }

    func test_Generate_F_DorianSharpFour_Scale() {
        assertMatches("F G A♭ B C D E♭") {
            try Scaletor.makeScale(from: Note(pitch: .f), for: HarmonicMinorMode.dorianSharpFour)
        }
    }
}
