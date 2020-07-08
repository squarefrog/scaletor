import XCTest
import Scaletor

final class LocrianTests: XCTestCase {
    func test_Generate_C_Locrian_Scale() {
        assertMatches("C D♭ E♭ F G♭ A♭ B♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .c), in: .locrian)
        }
    }

    func test_Generate_G_Locrian_Scale() {
        assertMatches("G A♭ B♭ C D♭ E♭ F") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g), in: .locrian)
        }
    }

    func test_Generate_D_Locrian_Scale() {
        assertMatches("D E♭ F G A♭ B♭ C") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d), in: .locrian)
        }
    }

    func test_Generate_A_Locrian_Scale() {
        assertMatches("A B♭ C D E♭ F G") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a), in: .locrian)
        }
    }

    func test_Generate_E_Locrian_Scale() {
        assertMatches("E F G A B♭ C D") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e), in: .locrian)
        }
    }

    func test_Generate_B_Locrian_Scale() {
        assertMatches("B C D E F G A") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b), in: .locrian)
        }
    }

    func test_Generate_Gb_Locrian_Scale() {
        assertMatches("G♭ A♭♭ B♭♭ C♭ D♭♭ E♭♭ F♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g, accidental: .flat), in: .locrian)
        }
    }

    func test_Generate_Db_Locrian_Scale() {
        assertMatches("D♭ E♭♭ F♭ G♭ A♭♭ B♭♭ C♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d, accidental: .flat), in: .locrian)
        }
    }

    func test_Generate_Ab_Locrian_Scale() {
        assertMatches("A♭ B♭♭ C♭ D♭ E♭♭ F♭ G♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a, accidental: .flat), in: .locrian)
        }
    }

    func test_Generate_Eb_Locrian_Scale() {
        assertMatches("E♭ F♭ G♭ A♭ B♭♭ C♭ D♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e, accidental: .flat), in: .locrian)
        }
    }

    func test_Generate_Bb_Locrian_Scale() {
        assertMatches("B♭ C♭ D♭ E♭ F♭ G♭ A♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b, accidental: .flat), in: .locrian)
        }
    }

    func test_Generate_F_Locrian_Scale() {
        assertMatches("F G♭ A♭ B♭ C♭ D♭ E♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .f), in: .locrian)
        }
    }

    static var allTests = [
        ("test_Generate_C_Locrian_Scale", test_Generate_C_Locrian_Scale),
        ("test_Generate_G_Locrian_Scale", test_Generate_G_Locrian_Scale),
        ("test_Generate_D_Locrian_Scale", test_Generate_D_Locrian_Scale),
        ("test_Generate_A_Locrian_Scale", test_Generate_A_Locrian_Scale),
        ("test_Generate_E_Locrian_Scale", test_Generate_E_Locrian_Scale),
        ("test_Generate_B_Locrian_Scale", test_Generate_B_Locrian_Scale),
        ("test_Generate_Gb_Locrian_Scale", test_Generate_Gb_Locrian_Scale),
        ("test_Generate_Db_Locrian_Scale", test_Generate_Db_Locrian_Scale),
        ("test_Generate_Ab_Locrian_Scale", test_Generate_Ab_Locrian_Scale),
        ("test_Generate_Eb_Locrian_Scale", test_Generate_Eb_Locrian_Scale),
        ("test_Generate_Bb_Locrian_Scale", test_Generate_Bb_Locrian_Scale),
        ("test_Generate_F_Locrian_Scale", test_Generate_F_Locrian_Scale)
    ]
}
