import XCTest
import Scaletor

final class MixolydianTests: XCTestCase {
    func test_Generate_C_Mixolydian_Scale() {
        assertMatches("C D E F G A B♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .c), in: .mixolydian)
        }
    }

    func test_Generate_G_Mixolydian_Scale() {
        assertMatches("G A B C D E F") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g), in: .mixolydian)
        }
    }

    func test_Generate_D_Mixolydian_Scale() {
        assertMatches("D E F♯ G A B C") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d), in: .mixolydian)
        }
    }

    func test_Generate_A_Mixolydian_Scale() {
        assertMatches("A B C♯ D E F♯ G") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a), in: .mixolydian)
        }
    }

    func test_Generate_E_Mixolydian_Scale() {
        assertMatches("E F♯ G♯ A B C♯ D") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e), in: .mixolydian)
        }
    }

    func test_Generate_B_Mixolydian_Scale() {
        assertMatches("B C♯ D♯ E F♯ G♯ A") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b), in: .mixolydian)
        }
    }

    func test_Generate_Gb_Mixolydian_Scale() {
        assertMatches("G♭ A♭ B♭ C♭ D♭ E♭ F♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g, accidental: .flat), in: .mixolydian)
        }
    }

    func test_Generate_Db_Mixolydian_Scale() {
        assertMatches("D♭ E♭ F G♭ A♭ B♭ C♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d, accidental: .flat), in: .mixolydian)
        }
    }

    func test_Generate_Ab_Mixolydian_Scale() {
        assertMatches("A♭ B♭ C D♭ E♭ F G♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a, accidental: .flat), in: .mixolydian)
        }
    }

    func test_Generate_Eb_Mixolydian_Scale() {
        assertMatches("E♭ F G A♭ B♭ C D♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e, accidental: .flat), in: .mixolydian)
        }
    }

    func test_Generate_Bb_Mixolydian_Scale() {
        assertMatches("B♭ C D E♭ F G A♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b, accidental: .flat), in: .mixolydian)
        }
    }

    func test_Generate_F_Mixolydian_Scale() {
        assertMatches("F G A B♭ C D E♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .f), in: .mixolydian)
        }
    }
}
