import XCTest
import Scaletor

final class DorianTests: XCTestCase {
    func test_Generate_C_Dorian_Scale() {
        assertMatches("C D E♭ F G A B♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: .dorian)
        }
    }

    func test_Generate_G_Dorian_Scale() {
        assertMatches("G A B♭ C D E F") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: .dorian)
        }
    }

    func test_Generate_D_Dorian_Scale() {
        assertMatches("D E F G A B C") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: .dorian)
        }
    }

    func test_Generate_A_Dorian_Scale() {
        assertMatches("A B C D E F♯ G") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: .dorian)
        }
    }

    func test_Generate_E_Dorian_Scale() {
        assertMatches("E F♯ G A B C♯ D") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: .dorian)
        }
    }

    func test_Generate_B_Dorian_Scale() {
        assertMatches("B C♯ D E F♯ G♯ A") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: .dorian)
        }
    }

    func test_Generate_Gb_Dorian_Scale() {
        assertMatches("G♭ A♭ B♭♭ C♭ D♭ E♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: .dorian)
        }
    }

    func test_Generate_Db_Dorian_Scale() {
        assertMatches("D♭ E♭ F♭ G♭ A♭ B♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: .dorian)
        }
    }

    func test_Generate_Ab_Dorian_Scale() {
        assertMatches("A♭ B♭ C♭ D♭ E♭ F G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: .dorian)
        }
    }

    func test_Generate_Eb_Dorian_Scale() {
        assertMatches("E♭ F G♭ A♭ B♭ C D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: .dorian)
        }
    }

    func test_Generate_Bb_Dorian_Scale() {
        assertMatches("B♭ C D♭ E♭ F G A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: .dorian)
        }
    }

    func test_Generate_F_Dorian_Scale() {
        assertMatches("F G A♭ B♭ C D E♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: .dorian)
        }
    }
}
