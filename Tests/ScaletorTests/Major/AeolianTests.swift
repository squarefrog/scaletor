import XCTest
import Scaletor

final class AeolianTests: XCTestCase {
    func test_Generate_C_Aeolian_Scale() {
        assertMatches("C D E♭ F G A♭ B♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MajorMode.aeolian)
        }
    }

    func test_Generate_G_Aeolian_Scale() {
        assertMatches("G A B♭ C D E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MajorMode.aeolian)
        }
    }

    func test_Generate_D_Aeolian_Scale() {
        assertMatches("D E F G A B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MajorMode.aeolian)
        }
    }

    func test_Generate_A_Aeolian_Scale() {
        assertMatches("A B C D E F G") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MajorMode.aeolian)
        }
    }

    func test_Generate_E_Aeolian_Scale() {
        assertMatches("E F♯ G A B C D") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MajorMode.aeolian)
        }
    }

    func test_Generate_B_Aeolian_Scale() {
        assertMatches("B C♯ D E F♯ G A") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MajorMode.aeolian)
        }
    }

    func test_Generate_Gb_Aeolian_Scale() {
        assertMatches("G♭ A♭ B♭♭ C♭ D♭ E♭♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MajorMode.aeolian)
        }
    }

    func test_Generate_Db_Aeolian_Scale() {
        assertMatches("D♭ E♭ F♭ G♭ A♭ B♭♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MajorMode.aeolian)
        }
    }

    func test_Generate_Ab_Aeolian_Scale() {
        assertMatches("A♭ B♭ C♭ D♭ E♭ F♭ G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MajorMode.aeolian)
        }
    }

    func test_Generate_Eb_Aeolian_Scale() {
        assertMatches("E♭ F G♭ A♭ B♭ C♭ D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MajorMode.aeolian)
        }
    }

    func test_Generate_Bb_Aeolian_Scale() {
        assertMatches("B♭ C D♭ E♭ F G♭ A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MajorMode.aeolian)
        }
    }

    func test_Generate_F_Aeolian_Scale() {
        assertMatches("F G A♭ B♭ C D♭ E♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MajorMode.aeolian)
        }
    }
}
