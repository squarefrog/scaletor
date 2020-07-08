import XCTest
import Scaletor

final class DorianTests: XCTestCase {
    func test_Generate_C_Dorian_Scale() {
        assertMatches("C D E♭ F G A B♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .c), in: .dorian)
        }
    }

    func test_Generate_G_Dorian_Scale() {
        assertMatches("G A B♭ C D E F") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g), in: .dorian)
        }
    }

    func test_Generate_D_Dorian_Scale() {
        assertMatches("D E F G A B C") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d), in: .dorian)
        }
    }

    func test_Generate_A_Dorian_Scale() {
        assertMatches("A B C D E F♯ G") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a), in: .dorian)
        }
    }

    func test_Generate_E_Dorian_Scale() {
        assertMatches("E F♯ G A B C♯ D") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e), in: .dorian)
        }
    }

    func test_Generate_B_Dorian_Scale() {
        assertMatches("B C♯ D E F♯ G♯ A") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b), in: .dorian)
        }
    }

    func test_Generate_Gb_Dorian_Scale() {
        assertMatches("G♭ A♭ B♭♭ C♭ D♭ E♭ F♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g, accidental: .flat), in: .dorian)
        }
    }

    func test_Generate_Db_Dorian_Scale() {
        assertMatches("D♭ E♭ F♭ G♭ A♭ B♭ C♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d, accidental: .flat), in: .dorian)
        }
    }

    func test_Generate_Ab_Dorian_Scale() {
        assertMatches("A♭ B♭ C♭ D♭ E♭ F G♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a, accidental: .flat), in: .dorian)
        }
    }

    func test_Generate_Eb_Dorian_Scale() {
        assertMatches("E♭ F G♭ A♭ B♭ C D♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e, accidental: .flat), in: .dorian)
        }
    }

    func test_Generate_Bb_Dorian_Scale() {
        assertMatches("B♭ C D♭ E♭ F G A♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b, accidental: .flat), in: .dorian)
        }
    }

    func test_Generate_F_Dorian_Scale() {
        assertMatches("F G A♭ B♭ C D E♭") {
            try Scaletor.generateScale(withRoot: Note(pitch: .f), in: .dorian)
        }
    }

    static var allTests = [
        ("test_Generate_C_Dorian_Scale", test_Generate_C_Dorian_Scale),
        ("test_Generate_G_Dorian_Scale", test_Generate_G_Dorian_Scale),
        ("test_Generate_D_Dorian_Scale", test_Generate_D_Dorian_Scale),
        ("test_Generate_A_Dorian_Scale", test_Generate_A_Dorian_Scale),
        ("test_Generate_E_Dorian_Scale", test_Generate_E_Dorian_Scale),
        ("test_Generate_B_Dorian_Scale", test_Generate_B_Dorian_Scale),
        ("test_Generate_Gb_Dorian_Scale", test_Generate_Gb_Dorian_Scale),
        ("test_Generate_Db_Dorian_Scale", test_Generate_Db_Dorian_Scale),
        ("test_Generate_Ab_Dorian_Scale", test_Generate_Ab_Dorian_Scale),
        ("test_Generate_Eb_Dorian_Scale", test_Generate_Eb_Dorian_Scale),
        ("test_Generate_Bb_Dorian_Scale", test_Generate_Bb_Dorian_Scale),
        ("test_Generate_F_Dorian_Scale", test_Generate_F_Dorian_Scale)
    ]
}
