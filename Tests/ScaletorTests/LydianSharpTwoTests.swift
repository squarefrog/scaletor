import XCTest
import Scaletor

final class LydianSharpTwoTests: XCTestCase {
    func test_Generate_C_LydianSharpTwo_Scale() {
        assertMatches("C D♯ E F♯ G A B") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_G_LydianSharpTwo_Scale() {
        assertMatches("G A♯ B C♯ D E F♯") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_D_LydianSharpTwo_Scale() {
        assertMatches("D E♯ F♯ G♯ A B C♯") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_A_LydianSharpTwo_Scale() {
        assertMatches("A B♯ C♯ D♯ E F♯ G♯") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_E_LydianSharpTwo_Scale() {
        assertMatches("E F♯♯ G♯ A♯ B C♯ D♯") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_B_LydianSharpTwo_Scale() {
        assertMatches("B C♯♯ D♯ E♯ F♯ G♯ A♯") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_Gb_LydianSharpTwo_Scale() {
        assertMatches("G♭ A B♭ C D♭ E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_Db_LydianSharpTwo_Scale() {
        assertMatches("D♭ E F G A♭ B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_Ab_LydianSharpTwo_Scale() {
        assertMatches("A♭ B C D E♭ F G") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_Eb_LydianSharpTwo_Scale() {
        assertMatches("E♭ F♯ G A B♭ C D") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_Bb_LydianSharpTwo_Scale() {
        assertMatches("B♭ C♯ D E F G A") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MinorMode.lydianSharpTwo)
        }
    }

    func test_Generate_F_LydianSharpTwo_Scale() {
        assertMatches("F G♯ A B C D E") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MinorMode.lydianSharpTwo)
        }
    }
}
