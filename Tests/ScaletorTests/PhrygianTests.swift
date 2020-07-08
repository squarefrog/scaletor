import XCTest
import Scaletor

final class PhrygianTests: XCTestCase {
    func test_Generate_C_Phrygian_Scale() {
        assertMatches("C D♭ E♭ F G A♭ B♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .c), in: .phrygian)
        }
    }

    func test_Generate_G_Phrygian_Scale() {
        assertMatches("G A♭ B♭ C D E♭ F") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g), in: .phrygian)
        }
    }

    func test_Generate_D_Phrygian_Scale() {
        assertMatches("D E♭ F G A B♭ C") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d), in: .phrygian)
        }
    }

    func test_Generate_A_Phrygian_Scale() {
        assertMatches("A B♭ C D E F G") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a), in: .phrygian)
        }
    }

    func test_Generate_E_Phrygian_Scale() {
        assertMatches("E F G A B C D") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e), in: .phrygian)
        }
    }

    func test_Generate_B_Phrygian_Scale() {
        assertMatches("B C D E F♯ G A") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b), in: .phrygian)
        }
    }

    func test_Generate_Gb_Phrygian_Scale() {
        assertMatches("G♭ A♭♭ B♭♭ C♭ D♭ E♭♭ F♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g, accidental: .flat), in: .phrygian)
        }
    }

    func test_Generate_Db_Phrygian_Scale() {
        assertMatches("D♭ E♭♭ F♭ G♭ A♭ B♭♭ C♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d, accidental: .flat), in: .phrygian)
        }
    }

    func test_Generate_Ab_Phrygian_Scale() {
        assertMatches("A♭ B♭♭ C♭ D♭ E♭ F♭ G♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a, accidental: .flat), in: .phrygian)
        }
    }

    func test_Generate_Eb_Phrygian_Scale() {
        assertMatches("E♭ F♭ G♭ A♭ B♭ C♭ D♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e, accidental: .flat), in: .phrygian)
        }
    }

    func test_Generate_Bb_Phrygian_Scale() {
        assertMatches("B♭ C♭ D♭ E♭ F G♭ A♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b, accidental: .flat), in: .phrygian)
        }
    }

    func test_Generate_F_Phrygian_Scale() {
        assertMatches("F G♭ A♭ B♭ C D♭ E♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .f), in: .phrygian)
        }
    }

    static var allTests = [
        ("test_Generate_C_Phrygian_Scale", test_Generate_C_Phrygian_Scale),
        ("test_Generate_G_Phrygian_Scale", test_Generate_G_Phrygian_Scale),
        ("test_Generate_D_Phrygian_Scale", test_Generate_D_Phrygian_Scale),
        ("test_Generate_A_Phrygian_Scale", test_Generate_A_Phrygian_Scale),
        ("test_Generate_E_Phrygian_Scale", test_Generate_E_Phrygian_Scale),
        ("test_Generate_B_Phrygian_Scale", test_Generate_B_Phrygian_Scale),
        ("test_Generate_Gb_Phrygian_Scale", test_Generate_Gb_Phrygian_Scale),
        ("test_Generate_Db_Phrygian_Scale", test_Generate_Db_Phrygian_Scale),
        ("test_Generate_Ab_Phrygian_Scale", test_Generate_Ab_Phrygian_Scale),
        ("test_Generate_Eb_Phrygian_Scale", test_Generate_Eb_Phrygian_Scale),
        ("test_Generate_Bb_Phrygian_Scale", test_Generate_Bb_Phrygian_Scale),
        ("test_Generate_F_Phrygian_Scale", test_Generate_F_Phrygian_Scale)
    ]
}
