import XCTest
import Scaletor

final class LydianTests: XCTestCase {
    func test_Generate_C_Lydian_Scale() {
        assertMatches("C D E F♯ G A B") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: .lydian)
        }
    }

    func test_Generate_G_Lydian_Scale() {
        assertMatches("G A B C♯ D E F♯") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: .lydian)
        }
    }

    func test_Generate_D_Lydian_Scale() {
        assertMatches("D E F♯ G♯ A B C♯") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: .lydian)
        }
    }

    func test_Generate_A_Lydian_Scale() {
        assertMatches("A B C♯ D♯ E F♯ G♯") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: .lydian)
        }
    }

    func test_Generate_E_Lydian_Scale() {
        assertMatches("E F♯ G♯ A♯ B C♯ D♯") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: .lydian)
        }
    }

    func test_Generate_B_Lydian_Scale() {
        assertMatches("B C♯ D♯ E♯ F♯ G♯ A♯") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: .lydian)
        }
    }

    func test_Generate_Gb_Lydian_Scale() {
        assertMatches("G♭ A♭ B♭ C D♭ E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: .lydian)
        }
    }

    func test_Generate_Db_Lydian_Scale() {
        assertMatches("D♭ E♭ F G A♭ B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: .lydian)
        }
    }

    func test_Generate_Ab_Lydian_Scale() {
        assertMatches("A♭ B♭ C D E♭ F G") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: .lydian)
        }
    }

    func test_Generate_Eb_Lydian_Scale() {
        assertMatches("E♭ F G A B♭ C D") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: .lydian)
        }
    }

    func test_Generate_Bb_Lydian_Scale() {
        assertMatches("B♭ C D E F G A") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: .lydian)
        }
    }

    func test_Generate_F_Lydian_Scale() {
        assertMatches("F G A B C D E") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: .lydian)
        }
    }
}
