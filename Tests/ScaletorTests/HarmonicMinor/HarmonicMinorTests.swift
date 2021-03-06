import XCTest
import Scaletor

final class HarmonicMinorTests: XCTestCase {
    func test_Generate_C_HarmonicMinor_Scale() {
        assertMatches("C D E♭ F G A♭ B") {
            try Scaletor.makeScale(from: Note(pitch: .c), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_G_HarmonicMinor_Scale() {
        assertMatches("G A B♭ C D E♭ F♯") {
            try Scaletor.makeScale(from: Note(pitch: .g), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_D_HarmonicMinor_Scale() {
        assertMatches("D E F G A B♭ C♯") {
            try Scaletor.makeScale(from: Note(pitch: .d), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_A_HarmonicMinor_Scale() {
        assertMatches("A B C D E F G♯") {
            try Scaletor.makeScale(from: Note(pitch: .a), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_E_HarmonicMinor_Scale() {
        assertMatches("E F♯ G A B C D♯") {
            try Scaletor.makeScale(from: Note(pitch: .e), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_B_HarmonicMinor_Scale() {
        assertMatches("B C♯ D E F♯ G A♯") {
            try Scaletor.makeScale(from: Note(pitch: .b), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_Gb_HarmonicMinor_Scale() {
        assertMatches("G♭ A♭ B♭♭ C♭ D♭ E♭♭ F") {
            try Scaletor.makeScale(from: Note(pitch: .g, accidental: .flat), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_Db_HarmonicMinor_Scale() {
        assertMatches("D♭ E♭ F♭ G♭ A♭ B♭♭ C") {
            try Scaletor.makeScale(from: Note(pitch: .d, accidental: .flat), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_Ab_HarmonicMinor_Scale() {
        assertMatches("A♭ B♭ C♭ D♭ E♭ F♭ G") {
            try Scaletor.makeScale(from: Note(pitch: .a, accidental: .flat), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_Eb_HarmonicMinor_Scale() {
        assertMatches("E♭ F G♭ A♭ B♭ C♭ D") {
            try Scaletor.makeScale(from: Note(pitch: .e, accidental: .flat), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_Bb_HarmonicMinor_Scale() {
        assertMatches("B♭ C D♭ E♭ F G♭ A") {
            try Scaletor.makeScale(from: Note(pitch: .b, accidental: .flat), for: HarmonicMinorMode.harmonicMinor)
        }
    }

    func test_Generate_F_HarmonicMinor_Scale() {
        assertMatches("F G A♭ B♭ C D♭ E") {
            try Scaletor.makeScale(from: Note(pitch: .f), for: HarmonicMinorMode.harmonicMinor)
        }
    }
}
