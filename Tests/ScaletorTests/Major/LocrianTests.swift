import XCTest
import Scaletor

final class LocrianTests: XCTestCase {
    func test_Generate_C_Locrian_Scale() {
        assertMatches("C D♭ E♭ F G♭ A♭ B♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MajorMode.locrian)
        }
    }

    func test_Generate_G_Locrian_Scale() {
        assertMatches("G A♭ B♭ C D♭ E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MajorMode.locrian)
        }
    }

    func test_Generate_D_Locrian_Scale() {
        assertMatches("D E♭ F G A♭ B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MajorMode.locrian)
        }
    }

    func test_Generate_A_Locrian_Scale() {
        assertMatches("A B♭ C D E♭ F G") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MajorMode.locrian)
        }
    }

    func test_Generate_E_Locrian_Scale() {
        assertMatches("E F G A B♭ C D") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MajorMode.locrian)
        }
    }

    func test_Generate_B_Locrian_Scale() {
        assertMatches("B C D E F G A") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MajorMode.locrian)
        }
    }

    func test_Generate_Gb_Locrian_Scale() {
        assertMatches("G♭ A♭♭ B♭♭ C♭ D♭♭ E♭♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MajorMode.locrian)
        }
    }

    func test_Generate_Db_Locrian_Scale() {
        assertMatches("D♭ E♭♭ F♭ G♭ A♭♭ B♭♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MajorMode.locrian)
        }
    }

    func test_Generate_Ab_Locrian_Scale() {
        assertMatches("A♭ B♭♭ C♭ D♭ E♭♭ F♭ G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MajorMode.locrian)
        }
    }

    func test_Generate_Eb_Locrian_Scale() {
        assertMatches("E♭ F♭ G♭ A♭ B♭♭ C♭ D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MajorMode.locrian)
        }
    }

    func test_Generate_Bb_Locrian_Scale() {
        assertMatches("B♭ C♭ D♭ E♭ F♭ G♭ A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MajorMode.locrian)
        }
    }

    func test_Generate_F_Locrian_Scale() {
        assertMatches("F G♭ A♭ B♭ C♭ D♭ E♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MajorMode.locrian)
        }
    }
}
