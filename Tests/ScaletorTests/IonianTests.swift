import XCTest
import Scaletor

final class IonianTests: XCTestCase {
    func test_Generate_C_Ionian_Scale() {
        assertMatches("C D E F G A B") {
            try Scaletor.generateScale(withRoot: Note(pitch: .c), in: .ionian)
        }
    }

    func test_Generate_G_Ionian_Scale() {
        assertMatches("G A B C D E F♯") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g), in: .ionian)
        }
    }

    func test_Generate_D_Ionian_Scale() {
        assertMatches("D E F♯ G A B C♯") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d), in: .ionian)
        }
    }

    func test_Generate_A_Ionian_Scale() {
        assertMatches("A B C♯ D E F♯ G♯") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a), in: .ionian)
        }
    }

    func test_Generate_E_Ionian_Scale() {
        assertMatches("E F♯ G♯ A B C♯ D♯") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e), in: .ionian)
        }
    }

    func test_Generate_B_Ionian_Scale() {
        assertMatches("B C♯ D♯ E F♯ G♯ A♯") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b), in: .ionian)
        }
    }

    func test_Generate_Gb_Ionian_Scale() {
        assertMatches("G♭ A♭ B♭ C♭ D♭ E♭ F") {
            try Scaletor.generateScale(withRoot: Note(pitch: .g, accidental: .flat), in: .ionian)
        }
    }

    func test_Generate_Db_Ionian_Scale() {
        assertMatches("D♭ E♭ F G♭ A♭ B♭ C") {
            try Scaletor.generateScale(withRoot: Note(pitch: .d, accidental: .flat), in: .ionian)
        }
    }

    func test_Generate_Ab_Ionian_Scale() {
        assertMatches("A♭ B♭ C D♭ E♭ F G") {
            try Scaletor.generateScale(withRoot: Note(pitch: .a, accidental: .flat), in: .ionian)
        }
    }

    func test_Generate_Eb_Ionian_Scale() {
        assertMatches("E♭ F G A♭ B♭ C D") {
            try Scaletor.generateScale(withRoot: Note(pitch: .e, accidental: .flat), in: .ionian)
        }
    }

    func test_Generate_Bb_Ionian_Scale() {
        assertMatches("B♭ C D E♭ F G A") {
            try Scaletor.generateScale(withRoot: Note(pitch: .b, accidental: .flat), in: .ionian)
        }
    }

    func test_Generate_F_Ionian_Scale() {
        assertMatches("F G A B♭ C D E") {
            try Scaletor.generateScale(withRoot: Note(pitch: .f), in: .ionian)
        }
    }

    static var allTests = [
        ("test_Generate_C_Ionian_Scale", test_Generate_C_Ionian_Scale),
        ("test_Generate_G_Ionian_Scale", test_Generate_G_Ionian_Scale),
        ("test_Generate_D_Ionian_Scale", test_Generate_D_Ionian_Scale),
        ("test_Generate_A_Ionian_Scale", test_Generate_A_Ionian_Scale),
        ("test_Generate_E_Ionian_Scale", test_Generate_E_Ionian_Scale),
        ("test_Generate_B_Ionian_Scale", test_Generate_B_Ionian_Scale),
        ("test_Generate_Gb_Ionian_Scale", test_Generate_Gb_Ionian_Scale),
        ("test_Generate_Db_Ionian_Scale", test_Generate_Db_Ionian_Scale),
        ("test_Generate_Ab_Ionian_Scale", test_Generate_Ab_Ionian_Scale),
        ("test_Generate_Eb_Ionian_Scale", test_Generate_Eb_Ionian_Scale),
        ("test_Generate_Bb_Ionian_Scale", test_Generate_Bb_Ionian_Scale),
        ("test_Generate_F_Ionian_Scale", test_Generate_F_Ionian_Scale)
    ]
}
