import XCTest
import Scaletor

final class HarmonicMinorTests: XCTestCase {
    func test_Generate_C_HarmonicMinor_Scale() {
        assertMatches("C D E♭ F G A♭ B") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_G_HarmonicMinor_Scale() {
        assertMatches("G A B♭ C D E♭ F♯") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_D_HarmonicMinor_Scale() {
        assertMatches("D E F G A B♭ C♯") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_A_HarmonicMinor_Scale() {
        assertMatches("A B C D E F G♯") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_E_HarmonicMinor_Scale() {
        assertMatches("E F♯ G A B C D♯") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_B_HarmonicMinor_Scale() {
        assertMatches("B C♯ D E F♯ G A♯") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_Gb_HarmonicMinor_Scale() {
        assertMatches("G♭ A♭ B♭♭ C♭ D♭ E♭♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_Db_HarmonicMinor_Scale() {
        assertMatches("D♭ E♭ F♭ G♭ A♭ B♭♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_Ab_HarmonicMinor_Scale() {
        assertMatches("A♭ B♭ C♭ D♭ E♭ F♭ G") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_Eb_HarmonicMinor_Scale() {
        assertMatches("E♭ F G♭ A♭ B♭ C♭ D") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_Bb_HarmonicMinor_Scale() {
        assertMatches("B♭ C D♭ E♭ F G♭ A") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MinorMode.harmonicMinor)
        }
    }

    func test_Generate_F_HarmonicMinor_Scale() {
        assertMatches("F G A♭ B♭ C D♭ E") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MinorMode.harmonicMinor)
        }
    }
}
