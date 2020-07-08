import XCTest
import Scaletor

final class LydianTests: XCTestCase {
    func test_Generate_C_Lydian_Scale() {
        assertMatches("C D E F♯ G A B") {
            try Scaletor.generateScale(withRoot: Note(pitch: .c), in: .lydian)
        }
    }

    func test_Generate_G_Lydian_Scale() {
        assertMatches("G A B C♯ D E F♯") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g), in: .lydian)
        }
    }

    func test_Generate_D_Lydian_Scale() {
        assertMatches("D E F♯ G♯ A B C♯") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d), in: .lydian)
        }
    }

    func test_Generate_A_Lydian_Scale() {
        assertMatches("A B C♯ D♯ E F♯ G♯") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a), in: .lydian)
        }
    }

    func test_Generate_E_Lydian_Scale() {
        assertMatches("E F♯ G♯ A♯ B C♯ D♯") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e), in: .lydian)
        }
    }

    func test_Generate_B_Lydian_Scale() {
        assertMatches("B C♯ D♯ E♯ F♯ G♯ A♯") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b), in: .lydian)
        }
    }

    func test_Generate_Gb_Lydian_Scale() {
        assertMatches("G♭ A♭ B♭ C D♭ E♭ F") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g, accidental: .flat), in: .lydian)
        }
    }

    func test_Generate_Db_Lydian_Scale() {
        assertMatches("D♭ E♭ F G A♭ B♭ C") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d, accidental: .flat), in: .lydian)
        }
    }

    func test_Generate_Ab_Lydian_Scale() {
        assertMatches("A♭ B♭ C D E♭ F G") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a, accidental: .flat), in: .lydian)
        }
    }

    func test_Generate_Eb_Lydian_Scale() {
        assertMatches("E♭ F G A B♭ C D") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e, accidental: .flat), in: .lydian)
        }
    }

    func test_Generate_Bb_Lydian_Scale() {
        assertMatches("B♭ C D E F G A") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b, accidental: .flat), in: .lydian)
        }
    }

    func test_Generate_F_Lydian_Scale() {
        assertMatches("F G A B C D E") {
            try Scaletor.generateScale(withRoot: Note(pitch: .f), in: .lydian)
        }
    }
}
