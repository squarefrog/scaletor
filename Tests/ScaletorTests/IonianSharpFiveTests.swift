import XCTest
import Scaletor

final class IonianSharpFiveTests: XCTestCase {
    func test_Generate_C_IonianSharpFive_Scale() {
        assertMatches("C D E F G♯ A B") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_G_IonianSharpFive_Scale() {
        assertMatches("G A B C D♯ E F♯") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_D_IonianSharpFive_Scale() {
        assertMatches("D E F♯ G A♯ B C♯") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_A_IonianSharpFive_Scale() {
        assertMatches("A B C♯ D E♯ F♯ G♯") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_E_IonianSharpFive_Scale() {
        assertMatches("E F♯ G♯ A B♯ C♯ D♯") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_B_IonianSharpFive_Scale() {
        assertMatches("B C♯ D♯ E F♯♯ G♯ A♯") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_Gb_IonianSharpFive_Scale() {
        assertMatches("G♭ A♭ B♭ C♭ D E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_Db_IonianSharpFive_Scale() {
        assertMatches("D♭ E♭ F G♭ A B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_Ab_IonianSharpFive_Scale() {
        assertMatches("A♭ B♭ C D♭ E F G") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_Eb_IonianSharpFive_Scale() {
        assertMatches("E♭ F G A♭ B C D") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_Bb_IonianSharpFive_Scale() {
        assertMatches("B♭ C D E♭ F♯ G A") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: HarmonicMinorMode.ionianSharpFive)
        }
    }

    func test_Generate_F_IonianSharpFive_Scale() {
        assertMatches("F G A B♭ C♯ D E") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: HarmonicMinorMode.ionianSharpFive)
        }
    }
}
