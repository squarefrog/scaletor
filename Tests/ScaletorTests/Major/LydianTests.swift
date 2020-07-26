import XCTest
import Scaletor

final class LydianTests: XCTestCase {
    func test_Generate_C_Lydian_Scale() {
        assertMatches("C D E F♯ G A B") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MajorMode.lydian)
        }
    }

    func test_Generate_G_Lydian_Scale() {
        assertMatches("G A B C♯ D E F♯") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MajorMode.lydian)
        }
    }

    func test_Generate_D_Lydian_Scale() {
        assertMatches("D E F♯ G♯ A B C♯") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MajorMode.lydian)
        }
    }

    func test_Generate_A_Lydian_Scale() {
        assertMatches("A B C♯ D♯ E F♯ G♯") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MajorMode.lydian)
        }
    }

    func test_Generate_E_Lydian_Scale() {
        assertMatches("E F♯ G♯ A♯ B C♯ D♯") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MajorMode.lydian)
        }
    }

    func test_Generate_B_Lydian_Scale() {
        assertMatches("B C♯ D♯ E♯ F♯ G♯ A♯") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MajorMode.lydian)
        }
    }

    func test_Generate_Gb_Lydian_Scale() {
        assertMatches("G♭ A♭ B♭ C D♭ E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MajorMode.lydian)
        }
    }

    func test_Generate_Db_Lydian_Scale() {
        assertMatches("D♭ E♭ F G A♭ B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MajorMode.lydian)
        }
    }

    func test_Generate_Ab_Lydian_Scale() {
        assertMatches("A♭ B♭ C D E♭ F G") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MajorMode.lydian)
        }
    }

    func test_Generate_Eb_Lydian_Scale() {
        assertMatches("E♭ F G A B♭ C D") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MajorMode.lydian)
        }
    }

    func test_Generate_Bb_Lydian_Scale() {
        assertMatches("B♭ C D E F G A") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MajorMode.lydian)
        }
    }

    func test_Generate_F_Lydian_Scale() {
        assertMatches("F G A B C D E") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MajorMode.lydian)
        }
    }
}
