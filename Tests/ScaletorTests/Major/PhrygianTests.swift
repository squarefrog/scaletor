import XCTest
import Scaletor

final class PhrygianTests: XCTestCase {
    func test_Generate_C_Phrygian_Scale() {
        assertMatches("C D♭ E♭ F G A♭ B♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MajorMode.phrygian)
        }
    }

    func test_Generate_G_Phrygian_Scale() {
        assertMatches("G A♭ B♭ C D E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MajorMode.phrygian)
        }
    }

    func test_Generate_D_Phrygian_Scale() {
        assertMatches("D E♭ F G A B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MajorMode.phrygian)
        }
    }

    func test_Generate_A_Phrygian_Scale() {
        assertMatches("A B♭ C D E F G") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MajorMode.phrygian)
        }
    }

    func test_Generate_E_Phrygian_Scale() {
        assertMatches("E F G A B C D") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MajorMode.phrygian)
        }
    }

    func test_Generate_B_Phrygian_Scale() {
        assertMatches("B C D E F♯ G A") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MajorMode.phrygian)
        }
    }

    func test_Generate_Gb_Phrygian_Scale() {
        assertMatches("G♭ A♭♭ B♭♭ C♭ D♭ E♭♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MajorMode.phrygian)
        }
    }

    func test_Generate_Db_Phrygian_Scale() {
        assertMatches("D♭ E♭♭ F♭ G♭ A♭ B♭♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MajorMode.phrygian)
        }
    }

    func test_Generate_Ab_Phrygian_Scale() {
        assertMatches("A♭ B♭♭ C♭ D♭ E♭ F♭ G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MajorMode.phrygian)
        }
    }

    func test_Generate_Eb_Phrygian_Scale() {
        assertMatches("E♭ F♭ G♭ A♭ B♭ C♭ D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MajorMode.phrygian)
        }
    }

    func test_Generate_Bb_Phrygian_Scale() {
        assertMatches("B♭ C♭ D♭ E♭ F G♭ A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MajorMode.phrygian)
        }
    }

    func test_Generate_F_Phrygian_Scale() {
        assertMatches("F G♭ A♭ B♭ C D♭ E♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MajorMode.phrygian)
        }
    }
}
