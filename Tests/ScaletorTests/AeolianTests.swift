import XCTest
import Scaletor

final class AeolianTests: XCTestCase {
    func test_Generate_C_Aeolian_Scale() {
        assertMatches("C D E♭ F G A♭ B♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .c), in: .aeolian)
        }
    }

    func test_Generate_G_Aeolian_Scale() {
        assertMatches("G A B♭ C D E♭ F") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g), in: .aeolian)
        }
    }

    func test_Generate_D_Aeolian_Scale() {
        assertMatches("D E F G A B♭ C") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d), in: .aeolian)
        }
    }

    func test_Generate_A_Aeolian_Scale() {
        assertMatches("A B C D E F G") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a), in: .aeolian)
        }
    }

    func test_Generate_E_Aeolian_Scale() {
        assertMatches("E F♯ G A B C D") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e), in: .aeolian)
        }
    }

    func test_Generate_B_Aeolian_Scale() {
        assertMatches("B C♯ D E F♯ G A") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b), in: .aeolian)
        }
    }

    func test_Generate_Gb_Aeolian_Scale() {
        assertMatches("G♭ A♭ B♭♭ C♭ D♭ E♭♭ F♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g, accidental: .flat), in: .aeolian)
        }
    }

    func test_Generate_Db_Aeolian_Scale() {
        assertMatches("D♭ E♭ F♭ G♭ A♭ B♭♭ C♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d, accidental: .flat), in: .aeolian)
        }
    }

    func test_Generate_Ab_Aeolian_Scale() {
        assertMatches("A♭ B♭ C♭ D♭ E♭ F♭ G♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a, accidental: .flat), in: .aeolian)
        }
    }

    func test_Generate_Eb_Aeolian_Scale() {
        assertMatches("E♭ F G♭ A♭ B♭ C♭ D♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e, accidental: .flat), in: .aeolian)
        }
    }

    func test_Generate_Bb_Aeolian_Scale() {
        assertMatches("B♭ C D♭ E♭ F G♭ A♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b, accidental: .flat), in: .aeolian)
        }
    }

    func test_Generate_F_Aeolian_Scale() {
        assertMatches("F G A♭ B♭ C D♭ E♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .f), in: .aeolian)
        }
    }
}
